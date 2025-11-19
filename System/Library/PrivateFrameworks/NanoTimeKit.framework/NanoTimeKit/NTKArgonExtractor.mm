@interface NTKArgonExtractor
+ (BOOL)_createUnprotectedDirectoryAtPath:(id)a3 error:(id *)a4;
- (NTKArgonExtractor)initWithSourcePath:(id)a3 inProgressPath:(id)a4 extractionPath:(id)a5;
- (void)_queue_extractKeyDescriptor:(id)a3;
- (void)_queue_extractUsingKeyDescriptor:(id)a3 completion:(id)a4;
- (void)_queue_performNextOperationIfNeeded;
- (void)_queue_removeKeyDescriptor:(id)a3;
- (void)_queue_removeKeyDescriptor:(id)a3 completion:(id)a4;
- (void)extractUsingKeyDescriptor:(id)a3 completion:(id)a4;
- (void)removeExtractedKeyDescriptor:(id)a3 completion:(id)a4;
@end

@implementation NTKArgonExtractor

+ (BOOL)_createUnprotectedDirectoryAtPath:(id)a3 error:(id *)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = *MEMORY[0x277CCA1B0];
    v13[0] = *MEMORY[0x277CCA1B8];
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = [v9 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:v10 error:a4];
  }

  return v8;
}

- (NTKArgonExtractor)initWithSourcePath:(id)a3 inProgressPath:(id)a4 extractionPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v38.receiver = self;
  v38.super_class = NTKArgonExtractor;
  v11 = [(NTKArgonExtractor *)&v38 init];
  if (v11)
  {
    v12 = [v10 copy];
    extractionPath = v11->_extractionPath;
    v11->_extractionPath = v12;

    v14 = v11->_extractionPath;
    v37 = 0;
    v15 = [NTKArgonExtractor _createUnprotectedDirectoryAtPath:v14 error:&v37];
    v16 = v37;
    if (!v15)
    {
      v17 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [NTKArgonExtractor initWithSourcePath:inProgressPath:extractionPath:];
      }
    }

    v18 = [v9 copy];
    inProgressPath = v11->_inProgressPath;
    v11->_inProgressPath = v18;

    v20 = v11->_inProgressPath;
    v36 = 0;
    v21 = [NTKArgonExtractor _createUnprotectedDirectoryAtPath:v20 error:&v36];
    v22 = v36;
    if (!v21)
    {
      v23 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [NTKArgonExtractor initWithSourcePath:inProgressPath:extractionPath:];
      }
    }

    v24 = [v8 copy];
    sourcePath = v11->_sourcePath;
    v11->_sourcePath = v24;

    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create("com.apple.nanotimekit.facesupport.extractor", v26);
    workQueue = v11->_workQueue;
    v11->_workQueue = v27;

    v29 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    extractionCallbacksByDescriptor = v11->_extractionCallbacksByDescriptor;
    v11->_extractionCallbacksByDescriptor = v29;

    v31 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    removalCallbacksByDescriptor = v11->_removalCallbacksByDescriptor;
    v11->_removalCallbacksByDescriptor = v31;

    v33 = [MEMORY[0x277CBEB40] orderedSet];
    queuedKeyDescriptorOperations = v11->_queuedKeyDescriptorOperations;
    v11->_queuedKeyDescriptorOperations = v33;
  }

  return v11;
}

- (void)removeExtractedKeyDescriptor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = [(NTKArgonExtractor *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __61__NTKArgonExtractor_removeExtractedKeyDescriptor_completion___block_invoke;
      block[3] = &unk_27877DC88;
      block[4] = self;
      v11 = v6;
      v12 = v7;
      dispatch_async(v8, block);
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKArgonExtractorErrorDomain" code:300 userInfo:&unk_2841899A8];
      (*(v7 + 2))(v7, 0, v9);
    }
  }
}

- (void)_queue_removeKeyDescriptor:(id)a3 completion:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(NTKArgonExtractor *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(NTKArgonExtractor *)self removalCallbacksByDescriptor];
  v9 = [v8 objectForKey:v13];
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    [v8 setObject:v9 forKey:v13];
  }

  v10 = _Block_copy(v6);
  [v9 addObject:v10];

  v11 = [[NTKArgonExtractorOperation alloc] initWithKeyDescriptor:v13 operationType:2];
  v12 = [(NTKArgonExtractor *)self queuedKeyDescriptorOperations];
  [v12 addObject:v11];

  [(NTKArgonExtractor *)self _queue_performNextOperationIfNeeded];
}

- (void)extractUsingKeyDescriptor:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = [(NTKArgonExtractor *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__NTKArgonExtractor_extractUsingKeyDescriptor_completion___block_invoke;
      block[3] = &unk_27877DC88;
      block[4] = self;
      v11 = v6;
      v12 = v7;
      dispatch_async(v8, block);
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NTKArgonExtractorErrorDomain" code:300 userInfo:&unk_2841899D0];
      (*(v7 + 2))(v7, 0, v9);
    }
  }
}

- (void)_queue_extractUsingKeyDescriptor:(id)a3 completion:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(NTKArgonExtractor *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(NTKArgonExtractor *)self extractionCallbacksByDescriptor];
  v9 = [v8 objectForKey:v13];
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    [v8 setObject:v9 forKey:v13];
  }

  v10 = _Block_copy(v6);
  [v9 addObject:v10];

  v11 = [[NTKArgonExtractorOperation alloc] initWithKeyDescriptor:v13 operationType:1];
  v12 = [(NTKArgonExtractor *)self queuedKeyDescriptorOperations];
  [v12 addObject:v11];

  [(NTKArgonExtractor *)self _queue_performNextOperationIfNeeded];
}

- (void)_queue_performNextOperationIfNeeded
{
  v3 = [(NTKArgonExtractor *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(NTKArgonExtractor *)self performingOperation];

  if (!v4)
  {
    v5 = [(NTKArgonExtractor *)self queuedKeyDescriptorOperations];
    v6 = [v5 firstObject];

    [(NTKArgonExtractor *)self setPerformingOperation:v6];
    if (v6)
    {
      v7 = [(NTKArgonExtractor *)self queuedKeyDescriptorOperations];
      [v7 removeObjectAtIndex:0];

      v8 = [v6 keyDescriptor];
      v9 = [v6 operationType];
      if (v9 == 2)
      {
        [(NTKArgonExtractor *)self _queue_removeKeyDescriptor:v8];
      }

      else if (v9 == 1)
      {
        [(NTKArgonExtractor *)self _queue_extractKeyDescriptor:v8];
      }

      else
      {
        if (v9)
        {
          v10 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [NTKArgonExtractor _queue_performNextOperationIfNeeded];
          }
        }

        else
        {
          v10 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [NTKArgonExtractor _queue_performNextOperationIfNeeded];
          }
        }
      }
    }
  }
}

- (void)_queue_extractKeyDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(NTKArgonExtractor *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v34 = [(NTKArgonExtractor *)self extractionCallbacksByDescriptor];
  v6 = [v34 objectForKey:v4];
  v7 = [(NTKArgonExtractor *)self sourcePath];
  v8 = [v4 fileName];
  v9 = [v7 stringByAppendingPathComponent:v8];

  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9];
  v11 = objc_alloc(MEMORY[0x277CBEA90]);
  v12 = [v4 key];
  v35 = [v11 initWithBase64EncodedString:v12 options:0];

  v33 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v33 UUIDString];
  v14 = [(NSString *)self->_inProgressPath stringByAppendingPathComponent:v13];
  v50[0] = 0;
  LOBYTE(v11) = [NTKArgonExtractor _createUnprotectedDirectoryAtPath:v14 error:v50];
  v15 = v50[0];
  if ((v11 & 1) == 0)
  {
    v16 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(NTKArgonExtractor *)v4 _queue_extractKeyDescriptor:v15, v16];
    }
  }

  v32 = v15;
  v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy_;
  v48 = __Block_byref_object_dispose_;
  v49 = 0;
  v18 = [NTKAppleEncryptedArchiveDiskExtractor alloc];
  v19 = *MEMORY[0x277CCA1B8];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __49__NTKArgonExtractor__queue_extractKeyDescriptor___block_invoke;
  v38[3] = &unk_27877DCD8;
  v38[4] = self;
  v20 = v10;
  v39 = v20;
  v21 = v17;
  v40 = v21;
  v43 = &v44;
  v22 = v14;
  v41 = v22;
  v23 = v6;
  v42 = v23;
  v24 = [(NTKAppleEncryptedArchiveDiskExtractor *)v18 initWithArchiveURL:v20 symmetricKey:v35 outputDirectoryURL:v21 fileProtection:v19 completion:v38];
  v25 = v45[5];
  v45[5] = v24;

  v26 = v45[5];
  v37 = 0;
  v27 = [v26 requiredDiskSpaceWithError:&v37];
  v28 = v37;
  if (v27)
  {
    v29 = [v45[5] outputDirectoryURL];
    v30 = [v27 unsignedIntValue];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __49__NTKArgonExtractor__queue_extractKeyDescriptor___block_invoke_56;
    v36[3] = &unk_27877DD00;
    v36[4] = &v44;
    NTKRequestFreeSpaceOnVolume(v29, v30, v36);
  }

  else
  {
    v31 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [NTKArgonExtractor _queue_extractKeyDescriptor:];
    }

    [v45[5] resume];
  }

  _Block_object_dispose(&v44, 8);
}

void __49__NTKArgonExtractor__queue_extractKeyDescriptor___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__NTKArgonExtractor__queue_extractKeyDescriptor___block_invoke_2;
  v10[3] = &unk_27877DCB0;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = v5;
  v18 = a2;
  v17 = *(a1 + 72);
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  v14 = v7;
  v15 = v8;
  v16 = *(a1 + 64);
  v9 = v5;
  dispatch_async(v6, v10);
}

void __49__NTKArgonExtractor__queue_extractKeyDescriptor___block_invoke_2(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v57 = v3;
    v58 = 2114;
    v59 = v4;
    _os_log_impl(&dword_22D9C5000, v2, OS_LOG_TYPE_DEFAULT, "Successfully extracted %{public}@ to %{public}@", buf, 0x16u);
  }

  v5 = *(a1 + 48);
  if (*(a1 + 88) == 1)
  {
    v6 = *(*(*(a1 + 80) + 8) + 40);
    v54 = v5;
    v7 = [v6 verifyExtractedContentsWithError:&v54];
    v8 = v54;

    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ArgonBugReportShowBugReportAlwaysAfterExtraction", @"com.apple.NanoTimeKit.face", 0);
    if (v7)
    {
      v10 = AppBooleanValue == 1;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        __49__NTKArgonExtractor__queue_extractKeyDescriptor___block_invoke_2_cold_2();
      }

      NTKArgonExtractorReportExtractionFailure("Argon verification failed", *(a1 + 32), v8);
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    v12 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      __49__NTKArgonExtractor__queue_extractKeyDescriptor___block_invoke_2_cold_1();
    }

    NTKArgonExtractorReportExtractionFailure("Argon extraction failed", *(a1 + 32), v5);
    LOBYTE(v7) = 0;
    v8 = v5;
  }

  v13 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 40);
    *buf = 138543362;
    v57 = v14;
    _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "Successfully verified extracted bundle at %{public}@", buf, 0xCu);
  }

  v15 = 0x277CCA000uLL;
  if (*(a1 + 88) & v7)
  {
    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = [v16 contentsOfDirectoryAtPath:*(a1 + 56) error:0];

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v17;
    v18 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v18)
    {
      v20 = v18;
      v21 = *v51;
      *&v19 = 138543874;
      v43 = v19;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v51 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v50 + 1) + 8 * i);
          v24 = [*(a1 + 56) stringByAppendingPathComponent:{v23, v43}];
          v25 = [*(a1 + 64) extractionPath];
          v26 = [v25 stringByAppendingPathComponent:v23];

          v27 = [MEMORY[0x277CCAA00] defaultManager];
          v49 = 0;
          v28 = [v27 moveItemAtPath:v24 toPath:v26 error:&v49];
          v29 = v49;

          v30 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
          v31 = v30;
          if (v28)
          {
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v57 = v24;
              v58 = 2114;
              v59 = v26;
              _os_log_impl(&dword_22D9C5000, v31, OS_LOG_TYPE_DEFAULT, "Successfully moved bundle %{public}@ -> %{public}@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
          {
            *buf = v43;
            v57 = v24;
            v58 = 2114;
            v59 = v26;
            v60 = 2114;
            v61 = v29;
            _os_log_fault_impl(&dword_22D9C5000, v31, OS_LOG_TYPE_FAULT, "Couldn't move %{public}@ to %{public}@ - %{public}@", buf, 0x20u);
          }
        }

        v20 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
      }

      while (v20);
    }

    v32 = [obj firstObject];
    v33 = [*(a1 + 64) extractionPath];
    v34 = [v33 stringByAppendingPathComponent:v32];

    v8 = 0;
    v15 = 0x277CCA000;
  }

  else
  {
    v34 = 0;
  }

  v35 = [*(v15 + 2560) defaultManager];
  [v35 removeItemAtPath:*(a1 + 56) error:0];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v36 = *(a1 + 72);
  v37 = [v36 countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v46;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v46 != v39)
        {
          objc_enumerationMutation(v36);
        }

        (*(*(*(&v45 + 1) + 8 * j) + 16))();
      }

      v38 = [v36 countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v38);
  }

  [*(a1 + 72) removeAllObjects];
  [*(a1 + 64) setPerformingOperation:0];
  [*(a1 + 64) _queue_performNextOperationIfNeeded];
  v41 = *(*(a1 + 80) + 8);
  v42 = *(v41 + 40);
  *(v41 + 40) = 0;
}

void __49__NTKArgonExtractor__queue_extractKeyDescriptor___block_invoke_56(uint64_t a1, void *a2, int a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  v10 = v9;
  if (v7)
  {
    v11 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (a3)
    {
      if (v11)
      {
        v13 = 138477827;
        v14 = v7;
        v12 = "Purged stale data to ensure free space was available. At least %{private}@ bytes are now available.";
LABEL_9:
        _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, v12, &v13, 0xCu);
      }
    }

    else if (v11)
    {
      v13 = 138477827;
      v14 = v7;
      v12 = "Enough space available to attempt extraction. At least %{private}@ bytes are available.";
      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __49__NTKArgonExtractor__queue_extractKeyDescriptor___block_invoke_56_cold_1(a3, v8, v10);
  }

  [*(*(*(a1 + 32) + 8) + 40) resume];
}

- (void)_queue_removeKeyDescriptor:(id)a3
{
  v4 = a3;
  v5 = [(NTKArgonExtractor *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(NTKArgonExtractor *)self removalCallbacksByDescriptor];
  v7 = [v6 objectForKey:v4];
  v8 = [(NTKArgonExtractor *)self extractionPath];
  v9 = [v4 fileName];

  v10 = [v8 stringByAppendingPathComponent:v9];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__NTKArgonExtractor__queue_removeKeyDescriptor___block_invoke;
  aBlock[3] = &unk_27877DD28;
  v11 = v7;
  v20 = v11;
  v21 = self;
  v12 = _Block_copy(aBlock);
  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = 0;
  v14 = [v13 removeItemAtPath:v10 error:&v18];
  v15 = v18;

  if (v14)
  {
    v16 = v10;
    v17 = 0;
  }

  else
  {
    v16 = 0;
    v17 = v15;
  }

  v12[2](v12, v16, v17);
}

void __48__NTKArgonExtractor__queue_removeKeyDescriptor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA7E8];
    v22[0] = @"description";
    v22[1] = v9;
    v23[0] = @"filesystem operation failed";
    v23[1] = v6;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
    v11 = [v8 errorWithDomain:@"NTKArgonExtractorErrorDomain" code:301 userInfo:v10];
  }

  else
  {
    v11 = 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = *(a1 + 32);
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        (*(*(*(&v17 + 1) + 8 * i) + 16))(*(*(&v17 + 1) + 8 * i));
      }

      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }

  [*(a1 + 32) removeAllObjects];
  [*(a1 + 40) setPerformingOperation:0];
  [*(a1 + 40) _queue_performNextOperationIfNeeded];
}

- (void)initWithSourcePath:inProgressPath:extractionPath:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithSourcePath:inProgressPath:extractionPath:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_queue_extractKeyDescriptor:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a1 fileName];
  OUTLINED_FUNCTION_0();
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_22D9C5000, a3, OS_LOG_TYPE_ERROR, "Couldn't make temporary path to extract %@ - %@", v6, 0x16u);
}

- (void)_queue_extractKeyDescriptor:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __49__NTKArgonExtractor__queue_extractKeyDescriptor___block_invoke_2_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_22D9C5000, v0, OS_LOG_TYPE_FAULT, "Argon extraction failed: %{public}@", v1, 0xCu);
}

void __49__NTKArgonExtractor__queue_extractKeyDescriptor___block_invoke_2_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_22D9C5000, v0, OS_LOG_TYPE_FAULT, "Argon verification failed: %{public}@", v1, 0xCu);
}

void __49__NTKArgonExtractor__queue_extractKeyDescriptor___block_invoke_56_cold_1(char a1, uint64_t a2, NSObject *a3)
{
  v3 = "YES";
  if ((a1 & 1) == 0)
  {
    v3 = "NO";
  }

  *v4 = 136315394;
  *&v4[4] = v3;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_2(&dword_22D9C5000, a2, a3, "Failed to ensure free space available (purge attempted: %s): %{public}@. Will continue, since space purging is best effort.", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
}

@end