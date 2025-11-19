@interface NTKDebugRadarArgonErrorReporterQueue
- (NTKDebugRadarArgonErrorReporterQueue)initWithQueueDirectoryPath:(id)a3;
- (void)_queue_deleteStagedReports;
- (void)_queue_handleEnqueuedReports;
- (void)enqueueReportWithTitle:(id)a3 description:(id)a4 attachmentURLs:(id)a5;
- (void)queue_enqueueReportWithTitle:(id)a3 description:(id)a4 attachmentURLs:(id)a5;
@end

@implementation NTKDebugRadarArgonErrorReporterQueue

- (NTKDebugRadarArgonErrorReporterQueue)initWithQueueDirectoryPath:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = NTKDebugRadarArgonErrorReporterQueue;
  v5 = [(NTKDebugRadarArgonErrorReporterQueue *)&v23 init];
  if (v5)
  {
    v6 = [v4 copy];
    queueDirectoryPath = v5->_queueDirectoryPath;
    v5->_queueDirectoryPath = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.nanotimekit.facesupport.taptoradar", v8);
    queue = v5->_queue;
    v5->_queue = v9;

    objc_initWeak(&location, v5);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __67__NTKDebugRadarArgonErrorReporterQueue_initWithQueueDirectoryPath___block_invoke;
    aBlock[3] = &unk_27877DC58;
    objc_copyWeak(&v21, &location);
    v11 = _Block_copy(aBlock);
    v12 = [[NTKFirstUnlockQueue alloc] initWithName:"com.apple.nanotimekit.facesupport.taptoradar.firstunlock"];
    unlockQueue = v5->_unlockQueue;
    v5->_unlockQueue = v12;

    v14 = v5->_unlockQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __67__NTKDebugRadarArgonErrorReporterQueue_initWithQueueDirectoryPath___block_invoke_3;
    v17[3] = &unk_278781070;
    objc_copyWeak(&v19, &location);
    v15 = v11;
    v18 = v15;
    [(NTKFirstUnlockQueue *)v14 dispatch:v17];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __67__NTKDebugRadarArgonErrorReporterQueue_initWithQueueDirectoryPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NTKDebugRadarArgonErrorReporterQueue_initWithQueueDirectoryPath___block_invoke_2;
  block[3] = &unk_27877DB10;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

uint64_t __67__NTKDebugRadarArgonErrorReporterQueue_initWithQueueDirectoryPath___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCanSubmitReports:1];
  v2 = *(a1 + 32);

  return [v2 _queue_handleEnqueuedReports];
}

void __67__NTKDebugRadarArgonErrorReporterQueue_initWithQueueDirectoryPath___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*(a1 + 32) + 16))();
    WeakRetained = v3;
  }
}

- (void)enqueueReportWithTitle:(id)a3 description:(id)a4 attachmentURLs:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [a5 copy];
  v11 = [(NTKDebugRadarArgonErrorReporterQueue *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__NTKDebugRadarArgonErrorReporterQueue_enqueueReportWithTitle_description_attachmentURLs___block_invoke;
  v15[3] = &unk_278780FF8;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(v11, v15);
}

- (void)_queue_deleteStagedReports
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(NTKDebugRadarArgonErrorReporterQueue *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "Cleaning up staged reports.", buf, 2u);
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(NTKDebugRadarArgonErrorReporterQueue *)self queueDirectoryPath];
  v25 = 0;
  v7 = [v5 contentsOfDirectoryAtPath:v6 error:&v25];
  v8 = v25;
  if (v7)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v18 = v8;
      v19 = v7;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [v6 stringByAppendingPathComponent:{*(*(&v21 + 1) + 8 * i), v18, v19}];
          v20 = 0;
          v15 = [v5 removeItemAtPath:v14 error:&v20];
          v16 = v20;
          if ((v15 & 1) == 0)
          {
            v17 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v27 = v14;
              v28 = 2112;
              v29 = v16;
              _os_log_error_impl(&dword_22D9C5000, v17, OS_LOG_TYPE_ERROR, "Could not cleanup %@ - %@", buf, 0x16u);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v30 count:16];
      }

      while (v11);
      v8 = v18;
      v7 = v19;
    }
  }

  else
  {
    v9 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NTKDebugRadarArgonErrorReporterQueue _queue_deleteStagedReports];
    }
  }
}

- (void)_queue_handleEnqueuedReports
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = [(NTKDebugRadarArgonErrorReporterQueue *)self queue];
  dispatch_assert_queue_V2(v3);

  if (![(NTKDebugRadarArgonErrorReporterQueue *)self canSubmitReports])
  {
    v4 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v4, OS_LOG_TYPE_DEFAULT, "Cannot submit reports yet.", buf, 2u);
    }

    goto LABEL_49;
  }

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  [(NTKDebugRadarArgonErrorReporterQueue *)self queueDirectoryPath];
  v57 = v74 = 0;
  v5 = [NSObject contentsOfDirectoryAtPath:v4 error:"contentsOfDirectoryAtPath:error:"];
  v6 = 0;
  if (!v5)
  {
    v23 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [NTKDebugRadarArgonErrorReporterQueue _queue_deleteStagedReports];
    }

    goto LABEL_48;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v70 objects:v80 count:16];
  if (!v8)
  {
    v23 = 0;
    v10 = 0;
    goto LABEL_46;
  }

  v9 = v8;
  v47 = self;
  v48 = v6;
  v49 = v5;
  v10 = 0;
  v52 = 0;
  v11 = *v71;
  v55 = *MEMORY[0x277CCA108];
  v51 = v4;
  obj = v7;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v71 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = [v57 stringByAppendingPathComponent:*(*(&v70 + 1) + 8 * i)];
      v69 = 0;
      v14 = [v4 attributesOfItemAtPath:v13 error:&v69];
      v15 = v69;
      if (v14)
      {
        v16 = [v14 objectForKey:v55];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v10)
          {
            [v16 laterDate:v10];
            v17 = v4;
            v19 = v18 = v10;

            v20 = v16 == v19;
            v10 = v18;
            if (!v20)
            {
              goto LABEL_19;
            }
          }

          v21 = v16;

          v17 = v51;
          v22 = v52;
          v52 = v13;
        }

        else
        {
          v17 = v4;
          v21 = v10;
          v22 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v77 = v13;
            v78 = 2112;
            v79 = v16;
            _os_log_error_impl(&dword_22D9C5000, v22, OS_LOG_TYPE_ERROR, "Couldn't get CTIME for path %@ - %@", buf, 0x16u);
          }
        }

        v10 = v21;
LABEL_19:
        v4 = v17;
        goto LABEL_20;
      }

      v16 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v77 = v13;
        v78 = 2112;
        v79 = v15;
        _os_log_error_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_ERROR, "Couldn't get attributes at path %@ - %@", buf, 0x16u);
      }

LABEL_20:
    }

    v9 = [obj countByEnumeratingWithState:&v70 objects:v80 count:16];
  }

  while (v9);

  if (v52)
  {
    v50 = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __68__NTKDebugRadarArgonErrorReporterQueue__queue_handleEnqueuedReports__block_invoke;
    aBlock[3] = &unk_2787828A8;
    v23 = v52;
    v68 = v23;
    v24 = _Block_copy(aBlock);
    v25 = v24[2](v24, @"title.utf8");
    v26 = v24[2](v24, @"description.utf8");
    v27 = [[NTKDebugRadarReporter alloc] initWithRadarTitle:v25 alertTitle:@"Critical Apple Watch Bug" alertMessage:@"Your device has encountered a hard-to-reproduce bug affecting Apple Watch faces. Please file a bug report. (Subsystem: Argon)"];
    [(NTKDebugRadarReporter *)v27 appendInformationToDescription:@"Reported Error: %@", v26];
    v28 = [v23 stringByAppendingPathComponent:@"URLs"];
    v66 = 0;
    v29 = [v4 contentsOfDirectoryAtPath:v28 error:&v66];
    v53 = v29;
    v46 = v66;
    if (v29)
    {
      v42 = v26;
      v43 = v25;
      v44 = v24;
      v45 = v23;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v56 = v29;
      v30 = [v56 countByEnumeratingWithState:&v62 objects:v75 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v63;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v63 != v32)
            {
              objc_enumerationMutation(v56);
            }

            v34 = *(*(&v62 + 1) + 8 * j);
            v35 = [v28 stringByAppendingPathComponent:v34];
            v36 = [MEMORY[0x277CBEBC0] fileURLWithPath:v35];
            v61 = 0;
            v37 = [(NTKDebugRadarReporter *)v27 addAttachmentAtURL:v36 error:&v61];
            v38 = v61;
            if (!v37)
            {
              v39 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v77 = v36;
                v78 = 2114;
                v79 = v38;
                _os_log_error_impl(&dword_22D9C5000, v39, OS_LOG_TYPE_ERROR, "Failed to archive URL at path %{public}@ - %{public}@", buf, 0x16u);
              }

              [(NTKDebugRadarReporter *)v27 appendInformationToDescription:@"Failed to archive URL named %@: %@", v34, v38];
            }
          }

          v31 = [v56 countByEnumeratingWithState:&v62 objects:v75 count:16];
        }

        while (v31);
      }

      v40 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __68__NTKDebugRadarArgonErrorReporterQueue__queue_handleEnqueuedReports__block_invoke_30;
      block[3] = &unk_27877E438;
      v59 = v27;
      v60 = v47;
      dispatch_async(v40, block);

      p_super = &v59->super;
      v4 = v51;
      v6 = v48;
      v5 = v49;
      v24 = v44;
      v23 = v45;
      v26 = v42;
      v25 = v43;
    }

    else
    {
      p_super = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [NTKDebugRadarArgonErrorReporterQueue _queue_handleEnqueuedReports];
      }

      v6 = v48;
      v5 = v49;
    }

    v7 = v68;
    v10 = v50;
LABEL_46:
  }

  else
  {
    v23 = 0;
    v6 = v48;
    v5 = v49;
  }

LABEL_48:
LABEL_49:
}

id __68__NTKDebugRadarArgonErrorReporterQueue__queue_handleEnqueuedReports__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) stringByAppendingPathComponent:a2];
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v2];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];

  return v4;
}

void __68__NTKDebugRadarArgonErrorReporterQueue__queue_handleEnqueuedReports__block_invoke_30(uint64_t a1)
{
  v2 = [*(a1 + 32) present];
  v3 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      v5 = "User chose to create bug report.";
LABEL_6:
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
    }
  }

  else if (v4)
  {
    *buf = 0;
    v5 = "User chose not to create bug report.";
    goto LABEL_6;
  }

  v6 = [*(a1 + 40) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__NTKDebugRadarArgonErrorReporterQueue__queue_handleEnqueuedReports__block_invoke_31;
  block[3] = &unk_27877DB10;
  block[4] = *(a1 + 40);
  dispatch_async(v6, block);
}

- (void)queue_enqueueReportWithTitle:(id)a3 description:(id)a4 attachmentURLs:(id)a5
{
  v60 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NTKDebugRadarArgonErrorReporterQueue *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [v10 copy];
  if ([v12 count])
  {
    v43 = v8;
    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v13 UUIDString];

    v15 = [(NTKDebugRadarArgonErrorReporterQueue *)self queueDirectoryPath];
    v16 = [v15 stringByAppendingPathComponent:v14];
    v17 = [v16 stringByAppendingPathComponent:@"URLs"];
    v18 = [MEMORY[0x277CCAA00] defaultManager];
    v52 = 0;
    LOBYTE(v13) = [v18 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v52];
    v42 = v52;
    if (v13)
    {
      v36 = v15;
      v37 = self;
      v38 = v14;
      v40 = v10;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __96__NTKDebugRadarArgonErrorReporterQueue_queue_enqueueReportWithTitle_description_attachmentURLs___block_invoke;
      aBlock[3] = &unk_2787846F0;
      v35 = v16;
      v51 = v16;
      v19 = _Block_copy(aBlock);
      (v19)[2](v19, v43, @"title.utf8");
      v33 = v19;
      v41 = v9;
      (v19)[2](v19, v9, @"description.utf8");
      v34 = v17;
      v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v17];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v39 = v12;
      obj = v12;
      v21 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v47;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v47 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v46 + 1) + 8 * i);
            v26 = [v25 lastPathComponent];
            v27 = [v20 URLByAppendingPathComponent:v26];
            v45 = 0;
            v28 = [v18 copyItemAtURL:v25 toURL:v27 error:&v45];
            v29 = v45;
            if ((v28 & 1) == 0)
            {
              v30 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v54 = v25;
                v55 = 2112;
                v56 = v27;
                v57 = 2112;
                v58 = v29;
                _os_log_error_impl(&dword_22D9C5000, v30, OS_LOG_TYPE_ERROR, "Couldn't copy URL from %@ to %@ - %@", buf, 0x20u);
              }
            }
          }

          v22 = [obj countByEnumeratingWithState:&v46 objects:v59 count:16];
        }

        while (v22);
      }

      [(NTKDebugRadarArgonErrorReporterQueue *)v37 _queue_handleEnqueuedReports];
      v31 = v51;
      v10 = v40;
      v9 = v41;
      v14 = v38;
      v12 = v39;
      v16 = v35;
      v15 = v36;
      v17 = v34;
    }

    else
    {
      v31 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = v42;
        [NTKDebugRadarArgonErrorReporterQueue queue_enqueueReportWithTitle:description:attachmentURLs:];
        goto LABEL_17;
      }
    }

    v32 = v42;
LABEL_17:

    v8 = v43;
  }
}

void __96__NTKDebugRadarArgonErrorReporterQueue_queue_enqueueReportWithTitle_description_attachmentURLs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 dataUsingEncoding:4];
  v8 = [*(a1 + 32) stringByAppendingPathComponent:v6];
  if (([v7 writeToFile:v8 atomically:1] & 1) == 0)
  {
    v9 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __96__NTKDebugRadarArgonErrorReporterQueue_queue_enqueueReportWithTitle_description_attachmentURLs___block_invoke_cold_1();
    }
  }
}

@end