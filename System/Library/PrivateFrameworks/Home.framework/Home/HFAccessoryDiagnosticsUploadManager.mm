@interface HFAccessoryDiagnosticsUploadManager
+ (id)sharedManager;
- (BOOL)_didPreviouslySubmitLog:(id)a3;
- (BOOL)_isValidFilenameIdentifier:(id)a3;
- (BOOL)_needsToPurgeOldLogs;
- (HFAccessoryDiagnosticsUploadManager)init;
- (id)_nextFilenameIdentifierToProcess;
- (id)filePathForIdentifier:(id)a3;
- (id)fileURLForIdentifier:(id)a3;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3;
- (void)_addToPendingUploads:(id)a3;
- (void)_cleanUpLocalFilesForIdentifier:(id)a3;
- (void)_failAttemptToUploadCurrentIdentifier;
- (void)_finalizeHandlingOfIdentifier:(id)a3;
- (void)_submitNextPendingLog;
- (void)_updatePreviousLogIdentifiers:(id)a3 forKey:(id)a4;
- (void)purgeStaleSubmittedLogs;
- (void)resumeServiceForURLSessionIdentifier:(id)a3;
- (void)updateLastPurgeDate;
- (void)uploadDiagnosticLogUsingItem:(id)a3;
- (void)willResignActive:(id)a3;
@end

@implementation HFAccessoryDiagnosticsUploadManager

+ (id)sharedManager
{
  if (qword_280E02CD8 != -1)
  {
    dispatch_once(&qword_280E02CD8, &__block_literal_global_37);
  }

  v3 = _MergedGlobals_228;

  return v3;
}

void __52__HFAccessoryDiagnosticsUploadManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(HFAccessoryDiagnosticsUploadManager);
  v1 = _MergedGlobals_228;
  _MergedGlobals_228 = v0;
}

- (HFAccessoryDiagnosticsUploadManager)init
{
  v16.receiver = self;
  v16.super_class = HFAccessoryDiagnosticsUploadManager;
  v2 = [(HFAccessoryDiagnosticsUploadManager *)&v16 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB40] orderedSet];
    pendingIdentifiers = v2->_pendingIdentifiers;
    v2->_pendingIdentifiers = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    uploadedIdentifiers = v2->_uploadedIdentifiers;
    v2->_uploadedIdentifiers = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    failedUploadIdentifiers = v2->_failedUploadIdentifiers;
    v2->_failedUploadIdentifiers = v7;

    v9 = [MEMORY[0x277CBEB38] dictionary];
    diagnosticItems = v2->_diagnosticItems;
    v2->_diagnosticItems = v9;

    v11 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Accessory Diagnostics Upload service started", v15, 2u);
    }

    v12 = +[HFAccessoryDiagnosticsUploadManager backgroundURLSessionIdentifier];
    [(HFAccessoryDiagnosticsUploadManager *)v2 resumeServiceForURLSessionIdentifier:v12];

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v2 selector:sel_willResignActive_ name:*MEMORY[0x277D76768] object:0];
  }

  return v2;
}

- (void)resumeServiceForURLSessionIdentifier:(id)a3
{
  v10 = a3;
  v4 = [(HFAccessoryDiagnosticsUploadManager *)self backgroundSession];
  v5 = [v4 configuration];
  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:v10];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x277CCAD38] backgroundSessionConfigurationWithIdentifier:v10];
    v9 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v8 delegate:self delegateQueue:0];
    [(HFAccessoryDiagnosticsUploadManager *)self setBackgroundSession:v9];
  }
}

- (void)uploadDiagnosticLogUsingItem:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([v5 isEligibleForUpload] & 1) == 0)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [v5 filename];
    [v17 handleFailureInMethod:a2 object:self file:@"HFAccessoryDiagnosticsUploadManager.m" lineNumber:102 description:{@"Attempting to upload a diagnostic item that is not eligible for uploading. Log: (%@)", v18}];
  }

  v6 = [v5 filename];
  v7 = [(HFAccessoryDiagnosticsUploadManager *)self _didPreviouslySubmitLog:v6];

  if (!v7)
  {
    v8 = [v5 filename];
    v9 = [v5 metadata];
    v10 = [(HFAccessoryDiagnosticsUploadManager *)self diagnosticItems];
    [v10 setObject:v9 forKeyedSubscript:v8];

    [(HFAccessoryDiagnosticsUploadManager *)self _addToPendingUploads:v8];
    v11 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v5 metadata];
      v13 = [v12 uploadDestination];
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Accessory Diagnostics upload requested for log %@  to URL %@", buf, 0x16u);
    }
  }

  v14 = [(HFAccessoryDiagnosticsUploadManager *)self pendingIdentifiers];
  v15 = [v14 count];

  if (v15 <= 1)
  {
    [(HFAccessoryDiagnosticsUploadManager *)self _submitNextPendingLog];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)fileURLForIdentifier:(id)a3
{
  v3 = [(HFAccessoryDiagnosticsUploadManager *)self filePathForIdentifier:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)filePathForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HFAccessoryDiagnosticsUploadManager *)self diagnosticItems];
  v6 = [v5 objectForKey:v4];

  v7 = [v6 snapshotPath];

  return v7;
}

- (id)_nextFilenameIdentifierToProcess
{
  v2 = [(HFAccessoryDiagnosticsUploadManager *)self pendingIdentifiers];
  v3 = [v2 firstObject];

  return v3;
}

- (void)_submitNextPendingLog
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(HFAccessoryDiagnosticsUploadManager *)self _nextFilenameIdentifierToProcess];
  if (v3)
  {
    v4 = [(HFAccessoryDiagnosticsUploadManager *)self diagnosticItems];
    v5 = [v4 objectForKey:v3];

    v6 = [v5 snapshotPath];
    v7 = [v5 hf_serviceURLWithParameters];
    if (v7 && v6)
    {
      v8 = HFLogForCategory(1uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v30 = v6;
        v31 = 2112;
        v32 = v7;
        _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Preparing to upload %@ to %@", buf, 0x16u);
      }

      v9 = [v6 lastPathComponent];
      v10 = NSTemporaryDirectory();
      v27 = v9;
      v11 = [v10 stringByAppendingPathComponent:v9];

      v12 = [MEMORY[0x277CCAA00] defaultManager];
      v26 = v12;
      if ([v12 fileExistsAtPath:v11])
      {
        v25 = 0;
      }

      else
      {
        v28 = 0;
        v13 = [v12 copyItemAtPath:v6 toPath:v11 error:&v28];
        v14 = v28;
        v25 = v14;
        if ((v13 & 1) == 0)
        {
          v15 = v14;
          v16 = HFLogForCategory(1uLL);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v30 = v6;
            v31 = 2112;
            v32 = v11;
            v33 = 2112;
            v34 = v15;
            _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Copying %@ to %@ failed:%@", buf, 0x20u);
          }
        }
      }

      v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11];
      v18 = MEMORY[0x277CCACA8];
      v19 = [v17 lastPathComponent];
      v20 = [v18 stringWithFormat:@"attachment filename=%@", v19];;

      v21 = [MEMORY[0x277CCAB70] requestWithURL:v7];
      [v21 setHTTPMethod:@"POST"];
      [v21 setValue:@"application/zip" forHTTPHeaderField:@"Content-Type"];
      [v21 setValue:v20 forHTTPHeaderField:@"Content-Disposition"];
      v22 = [(HFAccessoryDiagnosticsUploadManager *)self backgroundSession];
      v23 = [v22 uploadTaskWithRequest:v21 fromFile:v17];

      [v23 setTaskDescription:v3];
      [v23 resume];
    }
  }

  else
  {
    v5 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "No pending logs to upload.", buf, 2u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_addToPendingUploads:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(HFAccessoryDiagnosticsUploadManager *)self pendingIdentifiers];
    v9 = 138412546;
    v10 = v4;
    v11 = 2048;
    v12 = [v6 count];
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Adding log:%@ to Accessory Diagnostics upload service pending queue %lu.", &v9, 0x16u);
  }

  v7 = [(HFAccessoryDiagnosticsUploadManager *)self pendingIdentifiers];
  [v7 addObject:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_didPreviouslySubmitLog:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFAccessoryDiagnosticsUploadManager *)self pendingIdentifiers];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v4;
      v8 = "Previously submitted. Pending identifiers contains log: %@";
LABEL_10:
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, v8, &v16, 0xCu);
    }
  }

  else
  {
    v9 = [(HFAccessoryDiagnosticsUploadManager *)self failedUploadIdentifiers];
    v10 = [v9 containsObject:v4];

    if (v10)
    {
      v7 = HFLogForCategory(1uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v4;
        v8 = "Previously submitted. Failed identifiers contains log: %@";
        goto LABEL_10;
      }
    }

    else
    {
      v11 = [(HFAccessoryDiagnosticsUploadManager *)self uploadedIdentifiers];
      v12 = [v11 containsObject:v4];

      if (!v12)
      {
        v13 = 0;
        goto LABEL_12;
      }

      v7 = HFLogForCategory(1uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v4;
        v8 = "Previously submitted. Uploaded identifiers contains log: %@";
        goto LABEL_10;
      }
    }
  }

  v13 = 1;
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_failAttemptToUploadCurrentIdentifier
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__HFAccessoryDiagnosticsUploadManager__failAttemptToUploadCurrentIdentifier__block_invoke;
  block[3] = &unk_277DF3D38;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __76__HFAccessoryDiagnosticsUploadManager__failAttemptToUploadCurrentIdentifier__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) pendingIdentifiers];
  v3 = [v2 firstObject];

  if (v3)
  {
    v4 = [*(a1 + 32) pendingIdentifiers];
    [v4 removeObject:v3];

    v5 = [*(a1 + 32) failedUploadIdentifiers];
    [v5 addObject:v3];

    v6 = *(a1 + 32);
    v7 = [v6 failedUploadIdentifiers];
    [v6 _updatePreviousLogIdentifiers:v7 forKey:@"HFAccessoryDiagnosticsFailed"];

    v8 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Attempting next upload after failure to upload:%@", &v10, 0xCu);
    }
  }

  [*(a1 + 32) _submitNextPendingLog];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_finalizeHandlingOfIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__HFAccessoryDiagnosticsUploadManager__finalizeHandlingOfIdentifier___block_invoke;
  v6[3] = &unk_277DF3370;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __69__HFAccessoryDiagnosticsUploadManager__finalizeHandlingOfIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingIdentifiers];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) failedUploadIdentifiers];
  [v3 removeObject:*(a1 + 40)];

  v4 = [*(a1 + 32) uploadedIdentifiers];
  [v4 addObject:*(a1 + 40)];

  v5 = *(a1 + 32);
  v6 = [v5 uploadedIdentifiers];
  [v5 _updatePreviousLogIdentifiers:v6 forKey:@"HFAccessoryDiagnosticsUploaded"];

  v7 = *(a1 + 32);

  return [v7 _submitNextPendingLog];
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a5;
  v8 = HFLogForCategory(1uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Received auth challenge:%@", &v10, 0xCu);
  }

  v7[2](v7, 1, 0);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = a4;
  if (a6 == a7)
  {
    v11 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 taskDescription];
      v15 = 138412546;
      v16 = v12;
      v17 = 2048;
      v18 = a6;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Finished uploading task %@ of size:%lld", &v15, 0x16u);
    }

    v13 = [v10 taskDescription];
    [(HFAccessoryDiagnosticsUploadManager *)self _finalizeHandlingOfIdentifier:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HFAccessoryDiagnosticsUploadManager *)self pendingIdentifiers];
  v6 = [v5 count];

  v7 = HFLogForCategory(1uLL);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Finished uploading task in background. Submitting next identifier.", &v13, 2u);
    }

    v9 = [(HFAccessoryDiagnosticsUploadManager *)self _nextFilenameIdentifierToProcess];
    [(HFAccessoryDiagnosticsUploadManager *)self _finalizeHandlingOfIdentifier:v9];
  }

  else
  {
    if (v8)
    {
      v10 = [v4 configuration];
      v11 = [v10 identifier];
      v13 = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Did finish all events for background url session:%@ identifier:%@", &v13, 0x16u);
    }

    v9 = [(HFAccessoryDiagnosticsUploadManager *)self backgroundUrlSessionCompletionHandler];
    v9[2]();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  v9 = [v7 response];
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v8)
  {
    v12 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v7 taskDescription];
      v18 = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v8;
      v14 = "Unable to complete task:%@ with error:%@";
LABEL_16:
      _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, v14, &v18, 0x16u);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if ([v11 statusCode] < 200 || objc_msgSend(v11, "statusCode") >= 206)
  {
    v12 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v7 taskDescription];
      v18 = 138412546;
      v19 = v13;
      v20 = 2048;
      v21 = [v11 statusCode];
      v14 = "Unable to complete task:%@ with statusCode:%ld";
      goto LABEL_16;
    }

LABEL_10:

    [(HFAccessoryDiagnosticsUploadManager *)self _failAttemptToUploadCurrentIdentifier];
    goto LABEL_11;
  }

  v16 = HFLogForCategory(1uLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v7 taskDescription];
    v18 = 138412546;
    v19 = v17;
    v20 = 2048;
    v21 = [v11 statusCode];
    _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "Did complete task:%@ with response:%ld", &v18, 0x16u);
  }

LABEL_11:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = HFLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Session %@ Did Become Invalid with error:%@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isValidFilenameIdentifier:(id)a3
{
  v3 = [(HFAccessoryDiagnosticsUploadManager *)self filePathForIdentifier:a3];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5;
}

- (void)willResignActive:(id)a3
{
  v4 = HFLogForCategory(1uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Resigning app.", v5, 2u);
  }

  [(HFAccessoryDiagnosticsUploadManager *)self purgeStaleSubmittedLogs];
}

- (void)purgeStaleSubmittedLogs
{
  if ([(HFAccessoryDiagnosticsUploadManager *)self _needsToPurgeOldLogs])
  {
    v3 = [(HFAccessoryDiagnosticsUploadManager *)self uploadedIdentifiers];
    [(HFAccessoryDiagnosticsUploadManager *)self _updatePreviousLogIdentifiers:v3 forKey:@"HFAccessoryDiagnosticsUploaded"];

    v4 = [(HFAccessoryDiagnosticsUploadManager *)self failedUploadIdentifiers];
    [(HFAccessoryDiagnosticsUploadManager *)self _updatePreviousLogIdentifiers:v4 forKey:@"HFAccessoryDiagnosticsFailed"];

    [(HFAccessoryDiagnosticsUploadManager *)self updateLastPurgeDate];
  }
}

- (BOOL)_needsToPurgeOldLogs
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 valueForKey:@"HFAccessoryDiagnosticsLastCheckedDate"];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    [v4 timeIntervalSinceDate:v3];
    v6 = v5 > 86400.0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)updateLastPurgeDate
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [MEMORY[0x277CBEAA8] date];
  [v3 setObject:v2 forKey:@"HFAccessoryDiagnosticsLastCheckedDate"];
}

- (void)_updatePreviousLogIdentifiers:(id)a3 forKey:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [v9 valueForKey:v7];
  if (v10)
  {
    [v6 addObjectsFromArray:v10];
  }

  v11 = HFLogForCategory(1uLL);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v7;
    v23 = 2048;
    v24 = [v6 count];
    _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Begin update for previous identifiers with key: %@ with count: %lu", buf, 0x16u);
  }

  v12 = [MEMORY[0x277CBEB18] array];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__HFAccessoryDiagnosticsUploadManager__updatePreviousLogIdentifiers_forKey___block_invoke;
  v18[3] = &unk_277DF56F8;
  v18[4] = self;
  v19 = v8;
  v13 = v12;
  v20 = v13;
  v14 = v8;
  [v6 enumerateObjectsUsingBlock:v18];
  v15 = HFLogForCategory(1uLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v13 count];
    *buf = 138412546;
    v22 = v7;
    v23 = 2048;
    v24 = v16;
    _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Finish update for previous identifiers with key: %@ with count: %lu", buf, 0x16u);
  }

  [v6 removeAllObjects];
  [v6 addObjectsFromArray:v13];
  [v9 setObject:v13 forKey:v7];

  v17 = *MEMORY[0x277D85DE8];
}

void __76__HFAccessoryDiagnosticsUploadManager__updatePreviousLogIdentifiers_forKey___block_invoke(id *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] fileURLForIdentifier:v3];
  v15 = 0;
  v5 = *MEMORY[0x277CBE7C0];
  v14 = 0;
  v6 = [v4 getResourceValue:&v15 forKey:v5 error:&v14];
  v7 = v15;
  v8 = v14;
  if (v6 && ([a1[5] timeIntervalSinceDate:v7], v9 < 864000.0))
  {
    v10 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v3;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "NOT purging %@ with date = %@", buf, 0x16u);
    }

    [a1[6] addObject:v3];
  }

  else
  {
    v11 = HFLogForCategory(1uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v3;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Purging expired identifier %@ with date = %@", buf, 0x16u);
    }

    [a1[4] _cleanUpLocalFilesForIdentifier:v3];
    v12 = [a1[4] diagnosticItems];
    [v12 removeObjectForKey:v3];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_cleanUpLocalFilesForIdentifier:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(HFAccessoryDiagnosticsUploadManager *)self filePathForIdentifier:a3];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v4 fileExistsAtPath:v3])
  {
    v8 = 0;
    [v4 removeItemAtPath:v3 error:&v8];
    v5 = v8;
    if (v5)
    {
      v6 = HFLogForCategory(1uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v10 = v3;
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Failure to clean up file:%@ with error:%@", buf, 0x16u);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end