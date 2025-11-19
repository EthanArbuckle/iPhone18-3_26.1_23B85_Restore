@interface DiskSpaceDiagnosticsExtension
- (id)attachmentsForParameters:(id)a3 withProgressHandler:(id)a4;
- (id)snapshotFilesystemMetadata:(id *)a3 progressHandler:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation DiskSpaceDiagnosticsExtension

- (id)snapshotFilesystemMetadata:(id *)a3 progressHandler:(id)a4
{
  v6 = a4;
  v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DSFilesystemMetadataSnapshotting];
  v8 = [NSXPCConnection alloc];
  v9 = [v8 initWithServiceName:kDSFilesystemMetadataSnapshotServiceName];
  [v9 setRemoteObjectInterface:v7];
  [v9 resume];
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = dispatch_semaphore_create(0);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v10 = [v9 remoteObjectProxy];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __76__DiskSpaceDiagnosticsExtension_snapshotFilesystemMetadata_progressHandler___block_invoke;
  v28[3] = &unk_100004200;
  v28[4] = &v29;
  v28[5] = &v41;
  v28[6] = &v35;
  v11 = [v10 generateFilesystemMetadataSnapshotWithOptions:0 reply:v28];

  v12 = [[DECollectionProgress alloc] initWithPercentComplete:0.0];
  v26 = objc_retainBlock(v6);
  v13 = v12;
  v27 = v13;
  v14 = NSStringFromSelector("fractionCompleted");
  [v11 addObserver:self forKeyPath:v14 options:5 context:&v26];

  v15 = v36[5];
  v16 = dispatch_time(0, 1800000000000);
  if (dispatch_semaphore_wait(v15, v16))
  {
    v17 = [NSString stringWithFormat:@"Timed out after %d mins of waiting to snapshot filesystem metadata.", 30, v26, v27];
    v18 = shared_diagnostics_extension_log_handle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    if (a3)
    {
      v19 = [NSMutableDictionary dictionaryWithCapacity:2];
      [v19 setObject:v17 forKeyedSubscript:NSLocalizedFailureReasonErrorKey];
      v20 = v30[5];
      if (v20)
      {
        [v19 setObject:v20 forKeyedSubscript:NSUnderlyingErrorKey];
      }

      v21 = [NSError errorWithDomain:@"com.apple.DiskSpaceDiagnostics.diagnosticextension" code:0 userInfo:v19];
      v22 = *a3;
      *a3 = v21;
    }
  }

  v23 = NSStringFromSelector("fractionCompleted");
  [v11 removeObserver:self forKeyPath:v23];

  v24 = v42[5];
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v24;
}

void __76__DiskSpaceDiagnosticsExtension_snapshotFilesystemMetadata_progressHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = shared_diagnostics_extension_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __76__DiskSpaceDiagnosticsExtension_snapshotFilesystemMetadata_progressHandler___block_invoke_cold_1(v6, v7);
    }

    objc_storeStrong((*(a1[4] + 8) + 40), a3);
  }

  else if (v5)
  {
    v8 = [NSURL fileURLWithPath:v5];
    v9 = *(a1[5] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v11 = shared_diagnostics_extension_log_handle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __76__DiskSpaceDiagnosticsExtension_snapshotFilesystemMetadata_progressHandler___block_invoke_cold_2(v11);
    }
  }

  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v13 = a4;
  v8 = a3;
  v9 = NSStringFromSelector("fractionCompleted");
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    [v13 fractionCompleted];
    [*(a6 + 1) setPercentComplete:{fmin(v11 * 100.0, 100.0)}];
    v12 = *(a6 + 1);
    (*(*a6 + 16))();
  }
}

- (id)attachmentsForParameters:(id)a3 withProgressHandler:(id)a4
{
  v9 = 0;
  v4 = [(DiskSpaceDiagnosticsExtension *)self snapshotFilesystemMetadata:&v9 progressHandler:a4];
  v5 = shared_diagnostics_extension_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Path to filesystem metadata snapshot archive: %@, error: %@", buf, 0x16u);
  }

  v6 = 0;
  if (v4 && !v9)
  {
    v7 = [DEAttachmentItem attachmentWithPathURL:v4];
    v10 = v7;
    v6 = [NSArray arrayWithObjects:&v10 count:1];
  }

  return v6;
}

void __76__DiskSpaceDiagnosticsExtension_snapshotFilesystemMetadata_progressHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to snapshot filesystem metadata: %@", &v2, 0xCu);
}

@end