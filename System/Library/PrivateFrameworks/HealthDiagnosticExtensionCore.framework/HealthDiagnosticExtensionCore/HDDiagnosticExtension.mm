@interface HDDiagnosticExtension
- (BOOL)_captureLog;
- (HDDiagnosticExtension)init;
- (id)_currentProtectionStateString;
- (id)_generateTemporaryAttachmentDirectory;
- (id)_loadOperationsFromPluginsWithAttachmentDirectoryURL:(id)a3;
- (id)attachmentsForParameters:(id)a3;
- (void)_beginMonitoringForContentProtectionStatus;
- (void)_captureLog;
- (void)_endMonitoringForContentProtectionStatus;
- (void)_log:(id)a3;
- (void)diagnosticOperation:(id)a3 logMessage:(id)a4;
@end

@implementation HDDiagnosticExtension

- (HDDiagnosticExtension)init
{
  v7.receiver = self;
  v7.super_class = HDDiagnosticExtension;
  v2 = [(DEExtensionProvider *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(DEExtensionProvider *)v2 setLoggingConsent:@"The attached logs may contain some of your personal information, including sensitive health information from HealthKit."];
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    collectionLog = v3->_collectionLog;
    v3->_collectionLog = v4;

    v3->_logLock._os_unfair_lock_opaque = 0;
    v3->_contentProtectionNotifyToken = 2;
  }

  return v3;
}

- (id)attachmentsForParameters:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  self->_captureStartTime = CFAbsoluteTimeGetCurrent();
  v4 = [(HDDiagnosticExtension *)self _generateTemporaryAttachmentDirectory];
  temporaryDirectoryURL = self->_temporaryDirectoryURL;
  self->_temporaryDirectoryURL = v4;

  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_captureStartTime];
  [(HDDiagnosticExtension *)self _log:@"Beginning diagnostic capture at %@", v6];

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_INFO))
  {
    v8 = self->_temporaryDirectoryURL;
    v9 = v7;
    v10 = [(NSURL *)v8 path];
    *buf = 138412290;
    v79 = v10;
    _os_log_impl(&dword_2515DC000, v9, OS_LOG_TYPE_INFO, "Writing diagnostics to '%@'", buf, 0xCu);
  }

  [(HDDiagnosticExtension *)self _beginMonitoringForContentProtectionStatus];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = [(HDDiagnosticOperation *)HDDaemonDiagnosticOperation operationWithAttachmentDirectoryURL:self->_temporaryDirectoryURL];
  [v11 addObject:v12];

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v71;
    do
    {
      v17 = 0;
      v18 = v15;
      do
      {
        if (*v71 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v70 + 1) + 8 * v17);
        [v19 setDelegate:self];
        if (v18)
        {
          [v19 addDependency:v18];
        }

        v15 = v19;

        ++v17;
        v18 = v15;
      }

      while (v14 != v17);
      v14 = [obj countByEnumeratingWithState:&v70 objects:v77 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = [(HDDiagnosticOperation *)HDCloudSyncDiagnosticOperation operationWithAttachmentDirectoryURL:self->_temporaryDirectoryURL];
  [v20 addObject:v21];

  v22 = [(HDDiagnosticOperation *)HDNanoSyncDiagnosticOperation operationWithAttachmentDirectoryURL:self->_temporaryDirectoryURL];
  [v20 addObject:v22];

  v23 = [(HDDiagnosticOperation *)HDDatabaseDiagnosticOperation operationWithAttachmentDirectoryURL:self->_temporaryDirectoryURL];
  [v20 addObject:v23];

  v24 = [(HDDiagnosticOperation *)HDWorkoutCondenserDiagnosticOperation operationWithAttachmentDirectoryURL:self->_temporaryDirectoryURL];
  [v20 addObject:v24];

  v25 = [(HDDiagnosticOperation *)HDSummarySharingDiagnosticOperation operationWithAttachmentDirectoryURL:self->_temporaryDirectoryURL];
  [v20 addObject:v25];

  v26 = [(HDDiagnosticOperation *)HDFeatureStatusDiagnosticOperation operationWithAttachmentDirectoryURL:self->_temporaryDirectoryURL];
  [v20 addObject:v26];

  v27 = [(HDDiagnosticOperation *)HDNotificationSyncDiagnosticOperation operationWithAttachmentDirectoryURL:self->_temporaryDirectoryURL];
  [v20 addObject:v27];

  v28 = [(HDDiagnosticOperation *)HDUserDomainConceptDiagnosticOperation operationWithAttachmentDirectoryURL:self->_temporaryDirectoryURL];
  [v20 addObject:v28];

  v29 = [(HDDiagnosticExtension *)self _loadOperationsFromPluginsWithAttachmentDirectoryURL:self->_temporaryDirectoryURL];
  [v20 addObjectsFromArray:v29];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v56 = v20;
  v30 = [v56 countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v67;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v67 != v32)
        {
          objc_enumerationMutation(v56);
        }

        v34 = *(*(&v66 + 1) + 8 * i);
        [v34 setDelegate:self];
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v35 = obj;
        v36 = [v35 countByEnumeratingWithState:&v62 objects:v75 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v63;
          do
          {
            for (j = 0; j != v37; ++j)
            {
              if (*v63 != v38)
              {
                objc_enumerationMutation(v35);
              }

              [v34 addDependency:*(*(&v62 + 1) + 8 * j)];
            }

            v37 = [v35 countByEnumeratingWithState:&v62 objects:v75 count:16];
          }

          while (v37);
        }
      }

      v31 = [v56 countByEnumeratingWithState:&v66 objects:v76 count:16];
    }

    while (v31);
  }

  v40 = [obj arrayByAddingObjectsFromArray:v56];
  -[HDDiagnosticExtension _log:](self, "_log:", @"Running %ld diagnostic operations", [v40 count]);
  v41 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v41 addOperations:v40 waitUntilFinished:1];
  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v43 = v40;
  v44 = [v43 countByEnumeratingWithState:&v58 objects:v74 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v59;
    do
    {
      for (k = 0; k != v45; ++k)
      {
        if (*v59 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = [*(*(&v58 + 1) + 8 * k) attachments];
        [v42 addObjectsFromArray:v48];
      }

      v45 = [v43 countByEnumeratingWithState:&v58 objects:v74 count:16];
    }

    while (v45);
  }

  v49 = [v43 count];
  v50 = [v42 count];
  v51 = [v42 count];
  v52 = "s:";
  if (v51 == 1)
  {
    v52 = ":";
  }

  [(HDDiagnosticExtension *)self _log:@"Finished %ld diagnostic operations, producing %ld attachment%s %@", v49, v50, v52, v42];
  [(HDDiagnosticExtension *)self _endMonitoringForContentProtectionStatus];
  [(HDDiagnosticExtension *)self _captureLog];
  v53 = [objc_alloc(MEMORY[0x277D051B8]) initWithPathURL:self->_temporaryDirectoryURL];
  [v42 addObject:v53];

  v54 = *MEMORY[0x277D85DE8];

  return v42;
}

- (void)diagnosticOperation:(id)a3 logMessage:(id)a4
{
  v5 = a4;
  [(HDDiagnosticExtension *)self _log:@"%@: %@", objc_opt_class(), v5];
}

- (id)_currentProtectionStateString
{
  v2 = MKBGetDeviceLockState();
  if (v2 >= 8)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%d)", v2];
  }

  else
  {
    v3 = off_2796C0BD0[v2];
  }

  return v3;
}

- (void)_beginMonitoringForContentProtectionStatus
{
  v3 = MKBDeviceUnlockedSinceBoot();
  v4 = "has";
  if (!v3)
  {
    v4 = "has not";
  }

  [(HDDiagnosticExtension *)self _log:@"Device %s been unlocked since boot.", v4];
  if (MKBDeviceFormattedForContentProtection())
  {
    v5 = *MEMORY[0x277D28B30];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __67__HDDiagnosticExtension__beginMonitoringForContentProtectionStatus__block_invoke;
    handler[3] = &unk_2796C0BB0;
    handler[4] = self;
    notify_register_dispatch(v5, &self->_contentProtectionNotifyToken, MEMORY[0x277D85CD0], handler);
    v6 = [(HDDiagnosticExtension *)self _currentProtectionStateString];
    [(HDDiagnosticExtension *)self _log:@"Current content protection state is: %@", v6];
  }

  else
  {

    [(HDDiagnosticExtension *)self _log:@"Content protection not enabled on this device."];
  }
}

void __67__HDDiagnosticExtension__beginMonitoringForContentProtectionStatus__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _currentProtectionStateString];
  [v1 _log:{@"Content protection state changed: %@", v2}];
}

- (void)_endMonitoringForContentProtectionStatus
{
  if (notify_is_valid_token(self->_contentProtectionNotifyToken))
  {
    notify_cancel(self->_contentProtectionNotifyToken);
  }

  v3 = [(HDDiagnosticExtension *)self _currentProtectionStateString];
  [(HDDiagnosticExtension *)self _log:@"Ending content protection state monitoring; final state is %@", v3];
}

- (id)_loadOperationsFromPluginsWithAttachmentDirectoryURL:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEBC0];
  v6 = [GSSystemRootDirectory() stringByAppendingPathComponent:@"/System/Library/Health/DiagnosticExtensionPlugins/"];
  v7 = [v5 fileURLWithPath:v6];

  v8 = MEMORY[0x277CCD798];
  v30[0] = &unk_2863909E0;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  v28 = 0;
  v10 = [v8 loadPrincipalClassesConformingToProtocols:v9 fromBundlesInDirectoryAtURL:v7 skipLoadedBundles:0 error:&v28];
  v11 = v28;

  if (v10)
  {
    v22 = v7;
    v23 = self;
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = objc_alloc_init(*(*(&v24 + 1) + 8 * i));
          v19 = [v18 diagnosticOperationsWithAttachmentDirectoryURL:v4];
          [v12 addObjectsFromArray:v19];
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v15);
    }

    -[HDDiagnosticExtension _log:](v23, "_log:", @"Loaded %ld diagnostic operations from %ld plugins", [v12 count], objc_msgSend(v13, "count"));
    v7 = v22;
  }

  else
  {
    [(HDDiagnosticExtension *)self _log:@"Unable to load diagnostic operation plugin classes: %@", v11];
    v12 = MEMORY[0x277CBEBF8];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)_log:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v4 arguments:&v12];

  os_unfair_lock_lock(&self->_logLock);
  [(NSMutableString *)self->_collectionLog appendFormat:@"[%0.3lf] %@\n", Current - self->_captureStartTime, v6];
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2B0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2515DC000, v7, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  os_unfair_lock_unlock(&self->_logLock);

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_captureLog
{
  v3 = [(NSURL *)self->_temporaryDirectoryURL URLByAppendingPathComponent:@"HDDiagnosticExtension.log" isDirectory:0];
  os_unfair_lock_lock(&self->_logLock);
  v4 = [(NSMutableString *)self->_collectionLog copy];
  os_unfair_lock_unlock(&self->_logLock);
  v9 = 0;
  v5 = [v4 writeToURL:v3 atomically:1 encoding:4 error:&v9];
  v6 = v9;
  if ((v5 & 1) == 0)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2B0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      [(HDDiagnosticExtension *)v7 _captureLog];
    }
  }

  return v5;
}

- (id)_generateTemporaryAttachmentDirectory
{
  v2 = [MEMORY[0x277CCDD30] sharedBehavior];
  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 currentDeviceDisplayName];
  v5 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
  v6 = [v5 invertedSet];
  v7 = [v4 hk_stringByRemovingCharactersInSet:v6];
  v8 = [v2 currentDeviceClass];
  v9 = [v2 currentInternalDeviceModel];
  v10 = [v2 currentOSBuild];
  v11 = [v3 stringWithFormat:@"HealthKitDiagnostics_%@_%@_%@_%@.XXXXXX", v7, v8, v9, v10];

  v12 = NSTemporaryDirectory();
  v13 = [v12 stringByAppendingPathComponent:v11];

  v14 = strdup([v13 UTF8String]);
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:mkdtemp(v14)];
  v16 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v15 isDirectory:1];
  free(v14);

  return v16;
}

- (void)_captureLog
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 path];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = a3;
  _os_log_error_impl(&dword_2515DC000, v5, OS_LOG_TYPE_ERROR, "Error writing %@: %@", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end