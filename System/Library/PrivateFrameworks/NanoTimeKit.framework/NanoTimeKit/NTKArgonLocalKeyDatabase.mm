@interface NTKArgonLocalKeyDatabase
+ (BOOL)_decodedKeyDescriptors:(id *)descriptors changeTokens:(id *)tokens fromData:(id)data error:(id *)error;
+ (id)_jsonDataForKeyDescriptors:(id)descriptors changeTokens:(id)tokens error:(id *)error;
- (BOOL)addKeyDescriptor:(id)descriptor error:(id *)error;
- (NTKArgonLocalKeyDatabase)initWithKeyStoragePath:(id)path;
- (id)keyDescriptorForFileName:(id)name;
- (id)latestChangeTokenForServerIdentifier:(id)identifier;
- (void)_queue_flushImmediately;
- (void)_queue_requestDelayedFlushWithMaximumTimeInterval:(double)interval;
- (void)enumerateKeyDescriptors:(id)descriptors;
- (void)flushWithinTimeInterval:(double)interval;
- (void)recordChangeToken:(id)token forServerIdentifier:(id)identifier;
@end

@implementation NTKArgonLocalKeyDatabase

- (NTKArgonLocalKeyDatabase)initWithKeyStoragePath:(id)path
{
  v59 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v55.receiver = self;
  v55.super_class = NTKArgonLocalKeyDatabase;
  v5 = [(NTKArgonLocalKeyDatabase *)&v55 init];
  if (!v5)
  {
    goto LABEL_29;
  }

  v6 = [pathCopy copy];
  storagePath = v5->_storagePath;
  v5->_storagePath = v6;

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.nanotimekit.facesupport.keydatabase", v8);
  stateQueue = v5->_stateQueue;
  v5->_stateQueue = v9;

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [defaultManager fileExistsAtPath:v5->_storagePath];

  v13 = 0;
  if (!v12)
  {
    goto LABEL_13;
  }

  v14 = MEMORY[0x277CBEA90];
  storagePath = [(NTKArgonLocalKeyDatabase *)v5 storagePath];
  v54 = 0;
  v16 = [v14 dataWithContentsOfFile:storagePath options:0 error:&v54];
  v17 = v54;

  if (!v16)
  {
    v24 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [NTKArgonLocalKeyDatabase initWithKeyStoragePath:];
    }

    v13 = 0;
    goto LABEL_13;
  }

  v52 = 0;
  v53 = 0;
  v51 = v17;
  v18 = [NTKArgonLocalKeyDatabase _decodedKeyDescriptors:&v53 changeTokens:&v52 fromData:v16 error:&v51];
  v19 = v53;
  v13 = v52;
  v20 = v51;

  if (!v18)
  {
    v21 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [NTKArgonLocalKeyDatabase initWithKeyStoragePath:];
    }
  }

  if (!v19)
  {
LABEL_13:
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    v44 = 0;
    persistedKeyDescriptors = v5->_persistedKeyDescriptors;
    goto LABEL_14;
  }

  orderedSet = v19;
  persistedKeyDescriptors = v5->_persistedKeyDescriptors;
  v44 = orderedSet;
LABEL_14:
  v5->_persistedKeyDescriptors = orderedSet;

  v45 = v13;
  v46 = pathCopy;
  if (v13)
  {
    dictionary = v13;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  persistedChangeTokens = v5->_persistedChangeTokens;
  v5->_persistedChangeTokens = dictionary;

  orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
  newlyAddedKeyDescriptors = v5->_newlyAddedKeyDescriptors;
  v5->_newlyAddedKeyDescriptors = orderedSet2;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  newlyAddedChangeTokens = v5->_newlyAddedChangeTokens;
  v5->_newlyAddedChangeTokens = dictionary2;

  v31 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSMutableOrderedSet count](v5->_persistedKeyDescriptors, "count")}];
  persistedKeyDescriptorsByFileName = v5->_persistedKeyDescriptorsByFileName;
  v5->_persistedKeyDescriptorsByFileName = v31;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v33 = v5->_persistedKeyDescriptors;
  v34 = [(NSMutableOrderedSet *)v33 countByEnumeratingWithState:&v47 objects:v58 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v48;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v48 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v47 + 1) + 8 * i);
        fileName = [v38 fileName];
        if (fileName)
        {
          [(NSMutableDictionary *)v5->_persistedKeyDescriptorsByFileName setObject:v38 forKeyedSubscript:fileName];
          v40 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v57 = fileName;
            _os_log_impl(&dword_22D9C5000, v40, OS_LOG_TYPE_DEFAULT, "Loaded key descriptor for file name %@", buf, 0xCu);
          }
        }
      }

      v35 = [(NSMutableOrderedSet *)v33 countByEnumeratingWithState:&v47 objects:v58 count:16];
    }

    while (v35);
  }

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  newlyAddedKeyDescriptorsByFileName = v5->_newlyAddedKeyDescriptorsByFileName;
  v5->_newlyAddedKeyDescriptorsByFileName = dictionary3;

  v5->_nextFlushTime = 0;
  pathCopy = v46;
LABEL_29:

  return v5;
}

- (void)enumerateKeyDescriptors:(id)descriptors
{
  v21 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  stateQueue = [(NTKArgonLocalKeyDatabase *)self stateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__NTKArgonLocalKeyDatabase_enumerateKeyDescriptors___block_invoke;
  block[3] = &unk_27877E438;
  v7 = orderedSet;
  v18 = v7;
  selfCopy = self;
  dispatch_sync(stateQueue, block);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        descriptorsCopy[2](descriptorsCopy, *(*(&v13 + 1) + 8 * v12++));
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v20 count:16];
    }

    while (v10);
  }
}

void __52__NTKArgonLocalKeyDatabase_enumerateKeyDescriptors___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) persistedKeyDescriptors];
  [v2 unionOrderedSet:v3];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) newlyAddedKeyDescriptors];
  [v4 unionOrderedSet:v5];
}

- (BOOL)addKeyDescriptor:(id)descriptor error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  fileName = [descriptorCopy fileName];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__12;
  v23 = __Block_byref_object_dispose__12;
  v24 = 0;
  stateQueue = [(NTKArgonLocalKeyDatabase *)self stateQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__NTKArgonLocalKeyDatabase_addKeyDescriptor_error___block_invoke;
  v15[3] = &unk_2787805B0;
  v15[4] = self;
  v9 = descriptorCopy;
  v16 = v9;
  v18 = &v19;
  v10 = fileName;
  v17 = v10;
  dispatch_sync(stateQueue, v15);

  v11 = v20;
  if (v20[5])
  {
    v12 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v10;
      _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "Skipped key descriptor for file name %@", buf, 0xCu);
    }

    v11 = v20;
    if (error)
    {
      *error = v20[5];
      v11 = v20;
    }
  }

  v13 = v11[5] == 0;

  _Block_object_dispose(&v19, 8);
  return v13;
}

void __51__NTKArgonLocalKeyDatabase_addKeyDescriptor_error___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistedKeyDescriptors];
  v3 = [*(a1 + 32) newlyAddedKeyDescriptors];
  if (([v2 containsObject:*(a1 + 40)] & 1) != 0 || objc_msgSend(v3, "containsObject:", *(a1 + 40)))
  {
    v4 = [objc_opt_class() _argonKeyDatabaseErrorWithCode:1 userInfo:&unk_284189AC0];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v7 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "Adding key descriptor for file name %@", &v12, 0xCu);
    }

    v9 = [*(a1 + 32) newlyAddedKeyDescriptors];
    [v9 addObject:*(a1 + 40)];

    if (*(a1 + 48))
    {
      v10 = *(a1 + 40);
      v11 = [*(a1 + 32) newlyAddedKeyDescriptorsByFileName];
      [v11 setObject:v10 forKeyedSubscript:*(a1 + 48)];
    }

    [*(a1 + 32) _queue_requestDelayedFlushWithMaximumTimeInterval:30.0];
  }
}

- (id)keyDescriptorForFileName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__12;
    v15 = __Block_byref_object_dispose__12;
    v16 = 0;
    stateQueue = [(NTKArgonLocalKeyDatabase *)self stateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__NTKArgonLocalKeyDatabase_keyDescriptorForFileName___block_invoke;
    block[3] = &unk_278780498;
    v10 = &v11;
    block[4] = self;
    v9 = nameCopy;
    dispatch_sync(stateQueue, block);

    v6 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __53__NTKArgonLocalKeyDatabase_keyDescriptorForFileName___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) newlyAddedKeyDescriptorsByFileName];
  v3 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v4 = v3;
  if (!v3)
  {
    v1 = [*(a1 + 32) persistedKeyDescriptorsByFileName];
    v4 = [v1 objectForKeyedSubscript:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
  if (!v3)
  {
  }
}

- (void)recordChangeToken:(id)token forServerIdentifier:(id)identifier
{
  tokenCopy = token;
  identifierCopy = identifier;
  stateQueue = [(NTKArgonLocalKeyDatabase *)self stateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__NTKArgonLocalKeyDatabase_recordChangeToken_forServerIdentifier___block_invoke;
  block[3] = &unk_27877E238;
  block[4] = self;
  v12 = identifierCopy;
  v13 = tokenCopy;
  v9 = tokenCopy;
  v10 = identifierCopy;
  dispatch_sync(stateQueue, block);
}

uint64_t __66__NTKArgonLocalKeyDatabase_recordChangeToken_forServerIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) newlyAddedChangeTokens];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];

  v4 = *(a1 + 32);

  return [v4 _queue_requestDelayedFlushWithMaximumTimeInterval:30.0];
}

- (id)latestChangeTokenForServerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  stateQueue = [(NTKArgonLocalKeyDatabase *)self stateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NTKArgonLocalKeyDatabase_latestChangeTokenForServerIdentifier___block_invoke;
  block[3] = &unk_278780498;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(stateQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __65__NTKArgonLocalKeyDatabase_latestChangeTokenForServerIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) newlyAddedChangeTokens];
  v3 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v4 = v3;
  if (!v3)
  {
    v1 = [*(a1 + 32) persistedChangeTokens];
    v4 = [v1 objectForKeyedSubscript:*(a1 + 40)];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
  if (!v3)
  {
  }
}

- (void)flushWithinTimeInterval:(double)interval
{
  stateQueue = [(NTKArgonLocalKeyDatabase *)self stateQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__NTKArgonLocalKeyDatabase_flushWithinTimeInterval___block_invoke;
  v6[3] = &unk_2787805D8;
  v6[4] = self;
  *&v6[5] = interval;
  dispatch_sync(stateQueue, v6);
}

- (void)_queue_requestDelayedFlushWithMaximumTimeInterval:(double)interval
{
  v17 = *MEMORY[0x277D85DE8];
  if (NTKInternalBuild(self, a2))
  {
    stateQueue = [(NTKArgonLocalKeyDatabase *)self stateQueue];
    dispatch_assert_queue_V2(stateQueue);
  }

  nextFlushTime = [(NTKArgonLocalKeyDatabase *)self nextFlushTime];
  v7 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW_APPROX);
  v8 = (interval * 1000000000.0);
  v9 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  v10 = v9;
  if (nextFlushTime - v8 <= v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [NTKArgonLocalKeyDatabase _queue_requestDelayedFlushWithMaximumTimeInterval:v10];
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      intervalCopy = interval;
      _os_log_impl(&dword_22D9C5000, v10, OS_LOG_TYPE_DEFAULT, "Key Database: Enqueueing flush request within %f seconds.", buf, 0xCu);
    }

    v11 = dispatch_time(0x8000000000000000, (interval * 1000000000.0));
    stateQueue2 = [(NTKArgonLocalKeyDatabase *)self stateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__NTKArgonLocalKeyDatabase__queue_requestDelayedFlushWithMaximumTimeInterval___block_invoke;
    block[3] = &unk_27877DB10;
    block[4] = self;
    dispatch_after(v11, stateQueue2, block);

    if (nextFlushTime <= v7 + v8)
    {
      v13 = v7 + v8;
    }

    else
    {
      v13 = nextFlushTime;
    }

    [(NTKArgonLocalKeyDatabase *)self setNextFlushTime:v13];
  }
}

- (void)_queue_flushImmediately
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "Key Database: Failed to serialize JSON: %@. Skipping persistence attempt.", &v2, 0xCu);
}

+ (id)_jsonDataForKeyDescriptors:(id)descriptors changeTokens:(id)tokens error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  tokensCopy = tokens;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(descriptorsCopy, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = descriptorsCopy;
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v10);
        }

        argon_JSONRepresentation = [*(*(&v40 + 1) + 8 * i) argon_JSONRepresentation];
        [v9 addObject:argon_JSONRepresentation];
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v12);
  }

  errorCopy = error;

  v16 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(tokensCopy, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = tokensCopy;
  v18 = [v17 countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v36 + 1) + 8 * j);
        v23 = [v17 objectForKeyedSubscript:v22];
        v24 = [v23 base64EncodedStringWithOptions:0];
        [v16 setObject:v24 forKeyedSubscript:v22];
      }

      v19 = [v17 countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v19);
  }

  v48[0] = @"kd";
  v48[1] = @"ct";
  v49[0] = v9;
  v49[1] = v16;
  v48[2] = @"v";
  v49[2] = &unk_2841824D0;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v25])
  {
    v35 = 0;
    v26 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v25 options:0 error:&v35];
    v27 = v35;
    if (v26)
    {
      v26 = v26;
      v28 = v26;
    }

    else
    {
      if (errorCopy)
      {
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not encode JSON %@", v27];
        v31 = objc_opt_class();
        v44 = @"description";
        v45 = v30;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        *errorCopy = [v31 _argonKeyDatabaseErrorWithCode:3 userInfo:v32];
      }

      v28 = 0;
    }

    goto LABEL_23;
  }

  if (errorCopy)
  {
    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Object %@ is not valid JSON", v25];
    v29 = objc_opt_class();
    v46 = @"description";
    v47 = v27;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    [v29 _argonKeyDatabaseErrorWithCode:2 userInfo:v26];
    *errorCopy = v28 = 0;
LABEL_23:

    goto LABEL_24;
  }

  v28 = 0;
LABEL_24:

  return v28;
}

+ (BOOL)_decodedKeyDescriptors:(id *)descriptors changeTokens:(id *)tokens fromData:(id)data error:(id *)error
{
  v113[1] = *MEMORY[0x277D85DE8];
  v96 = 0;
  v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:data options:0 error:&v96];
  v10 = v96;
  if (!error || v9)
  {
    descriptorsCopy = descriptors;
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        tokensCopy = tokens;
        v77 = v10;
        v81 = orderedSet;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v79 = v9;
        v42 = v9;
        v43 = [v42 countByEnumeratingWithState:&v84 objects:v101 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v85;
          while (2)
          {
            for (i = 0; i != v44; ++i)
            {
              if (*v85 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = *(*(&v84 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (error)
                {
                  v61 = [MEMORY[0x277CCACA8] stringWithFormat:@"Array contains class %@, not dictionary", objc_opt_class()];
                  v62 = objc_opt_class();
                  v99 = @"description";
                  v100 = v61;
                  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
                  v64 = [v62 _argonKeyDatabaseErrorWithCode:5 userInfo:v63];

                  v65 = v64;
                  *error = v64;
                }

                v13 = 0;
                v10 = v77;
                v9 = v79;
                orderedSet = v81;
                goto LABEL_70;
              }

              v48 = [NTKArgonKeyDescriptor alloc];
              v49 = [(NTKArgonKeyDescriptor *)v48 argon_initWithJSONRepresentation:v47];

              if (v49)
              {
                [v81 addObject:v49];
              }

              else
              {
                v50 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
                if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v103 = v47;
                  _os_log_error_impl(&dword_22D9C5000, v50, OS_LOG_TYPE_ERROR, "Could not create descriptor from %@", buf, 0xCu);
                }
              }
            }

            v44 = [v42 countByEnumeratingWithState:&v84 objects:v101 count:16];
            if (v44)
            {
              continue;
            }

            break;
          }
        }

        orderedSet = v81;
        v51 = v81;
        *descriptorsCopy = v81;
        [MEMORY[0x277CBEB38] dictionary];
        *tokensCopy = v10 = v77;
        v13 = 1;
        v9 = v79;
      }

      else
      {
        if (error)
        {
          v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown format with root object of class %@", objc_opt_class()];
          v59 = objc_opt_class();
          v97 = @"description";
          v98 = v58;
          v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
          *error = [v59 _argonKeyDatabaseErrorWithCode:5 userInfo:v60];
        }

        v13 = 0;
      }

      goto LABEL_70;
    }

    v14 = v9;
    v15 = [v14 objectForKeyedSubscript:@"v"];
    v16 = [v15 isEqual:&unk_2841824D0];

    if (v16)
    {
      v17 = [v14 objectForKeyedSubscript:@"kd"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        tokensCopy2 = tokens;
        v18 = [v14 objectForKeyedSubscript:@"ct"];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v76 = v10;
          v78 = v9;
          v20 = [v14 objectForKeyedSubscript:@"kd"];
          v72 = v14;
          v73 = [v14 objectForKeyedSubscript:@"ct"];
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          obj = v20;
          v21 = [obj countByEnumeratingWithState:&v92 objects:v107 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v93;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v93 != v23)
                {
                  objc_enumerationMutation(obj);
                }

                v25 = *(*(&v92 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v26 = [NTKArgonKeyDescriptor alloc];
                  v27 = [(NTKArgonKeyDescriptor *)v26 argon_initWithJSONRepresentation:v25];

                  if (v27)
                  {
                    [orderedSet addObject:v27];
                  }

                  else
                  {
                    v28 = orderedSet;
                    v29 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v103 = v25;
                      _os_log_error_impl(&dword_22D9C5000, v29, OS_LOG_TYPE_ERROR, "Could not create descriptor from %@", buf, 0xCu);
                    }

                    orderedSet = v28;
                  }
                }

                else
                {
                  v27 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v103 = v25;
                    _os_log_error_impl(&dword_22D9C5000, v27, OS_LOG_TYPE_ERROR, "Could not create key descriptor from %@", buf, 0xCu);
                  }
                }
              }

              v22 = [obj countByEnumeratingWithState:&v92 objects:v107 count:16];
            }

            while (v22);
          }

          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v30 = v73;
          v31 = [v30 countByEnumeratingWithState:&v88 objects:v106 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v89;
            v34 = 0x277CBE000uLL;
            do
            {
              for (k = 0; k != v32; ++k)
              {
                if (*v89 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v36 = *(*(&v88 + 1) + 8 * k);
                v37 = [v30 objectForKeyedSubscript:v36];
                objc_opt_class();
                if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
                {
                  v38 = [objc_alloc(*(v34 + 2704)) initWithBase64EncodedString:v37 options:0];
                  if (!v38)
                  {
                    v39 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412290;
                      v103 = v37;
                      _os_log_error_impl(&dword_22D9C5000, v39, OS_LOG_TYPE_ERROR, "Could not create change token from %@: not encoded correctly", buf, 0xCu);
                    }

                    v34 = 0x277CBE000;
                  }

                  [dictionary setObject:v38 forKeyedSubscript:v36];
                }

                else
                {
                  v38 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v103 = v36;
                    v104 = 2112;
                    v105 = v37;
                    _os_log_error_impl(&dword_22D9C5000, v38, OS_LOG_TYPE_ERROR, "Could not create change token from %@ -> %@", buf, 0x16u);
                  }
                }
              }

              v32 = [v30 countByEnumeratingWithState:&v88 objects:v106 count:16];
            }

            while (v32);
          }

          v40 = orderedSet;
          *descriptorsCopy = orderedSet;
          v10 = v76;
          *tokensCopy2 = dictionary;
          v13 = 1;
          v9 = v78;
          v14 = v72;
          v41 = obj;
          goto LABEL_67;
        }
      }

      else
      {
      }

      if (error)
      {
        v66 = MEMORY[0x277CCACA8];
        v67 = [v14 objectForKeyedSubscript:@"kd"];
        v68 = objc_opt_class();
        v69 = [v14 objectForKeyedSubscript:@"ct"];
        v41 = [v66 stringWithFormat:@"Unknown format with key descriptor container of class %@ and change token container of class %@", v68, objc_opt_class()];

        v54 = objc_opt_class();
        v108 = @"description";
        v109 = v41;
        v55 = MEMORY[0x277CBEAC0];
        v56 = &v109;
        v57 = &v108;
        goto LABEL_66;
      }
    }

    else if (error)
    {
      v52 = MEMORY[0x277CCACA8];
      v53 = [v14 objectForKeyedSubscript:@"v"];
      v41 = [v52 stringWithFormat:@"Unknown format version %@", v53];

      v54 = objc_opt_class();
      v110 = @"description";
      v111 = v41;
      v55 = MEMORY[0x277CBEAC0];
      v56 = &v111;
      v57 = &v110;
LABEL_66:
      [v55 dictionaryWithObjects:v56 forKeys:v57 count:1];
      v30 = v70 = error;
      [v54 _argonKeyDatabaseErrorWithCode:5 userInfo:v30];
      *v70 = v13 = 0;
LABEL_67:

LABEL_69:
LABEL_70:

      goto LABEL_71;
    }

    v13 = 0;
    goto LABEL_69;
  }

  v11 = objc_opt_class();
  v112 = *MEMORY[0x277CCA7E8];
  v113[0] = v10;
  orderedSet = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:&v112 count:1];
  [v11 _argonKeyDatabaseErrorWithCode:4 userInfo:orderedSet];
  *error = v13 = 0;
LABEL_71:

  return v13;
}

@end