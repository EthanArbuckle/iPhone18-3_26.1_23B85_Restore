@interface MADEmbeddingStoreClientHandler
+ (id)clientHandlerWithXPCConnection:(id)a3;
- (MADEmbeddingStoreClientHandler)initWithXPCConnection:(id)a3;
- (void)cancelAllRequests;
- (void)fetchEmbeddingsWithAssetUUIDs:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 reply:(id)a6;
- (void)prewarmSearchWithConcurrencyLimit:(unint64_t)a3 photoLibraryURL:(id)a4 reply:(id)a5;
- (void)requestEmbeddingStoreSandboxExtensionWithPhotoLibraryURL:(id)a3 reply:(id)a4;
- (void)searchWithEmbeddings:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 reply:(id)a6;
@end

@implementation MADEmbeddingStoreClientHandler

- (MADEmbeddingStoreClientHandler)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = MADEmbeddingStoreClientHandler;
  v6 = [(MADEmbeddingStoreClientHandler *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    [(NSXPCConnection *)v7->_connection setExportedObject:v7];
    connection = v7->_connection;
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MADEmbeddingStoreClientProtocol];
    [(NSXPCConnection *)connection setRemoteObjectInterface:v9];

    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MADEmbeddingStoreServerProtocol];
    [MADEmbeddingStoreService configureServerInterface:v10];
    [(NSXPCConnection *)v7->_connection setExportedInterface:v10];
    objc_initWeak(&location, v7);
    v11 = v7->_connection;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10009C368;
    v16[3] = &unk_100285360;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)v11 setInterruptionHandler:v16];
    v12 = v7->_connection;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10009C404;
    v14[3] = &unk_100285360;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)v12 setInvalidationHandler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v7;
}

+ (id)clientHandlerWithXPCConnection:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithXPCConnection:v3];

  return v4;
}

- (void)cancelAllRequests
{
  if (MediaAnalysisLogLevel() >= 4)
  {
    v2 = VCPLogToOSLogType[4];
    if (os_log_type_enabled(&_os_log_default, v2))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "[MADEmbeddingStoreClientHandler cancelAllRequests] Method not implemented", v3, 2u);
    }
  }
}

- (void)requestEmbeddingStoreSandboxExtensionWithPhotoLibraryURL:(id)a3 reply:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v7 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v7))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "[MADEmbeddingStoreClientHandler] Received sandbox extension request for embedding store file", buf, 2u);
    }
  }

  v8 = +[VCPPhotoLibraryManager sharedManager];
  v9 = [v8 photoLibraryWithURL:v5];

  if (!v9)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v16 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v16))
      {
        *buf = 138412290;
        v33 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v16, "[MADEmbeddingStoreClientHandler] Failed to open photo library at %@", buf, 0xCu);
      }
    }

    v30 = NSLocalizedDescriptionKey;
    v11 = [NSString stringWithFormat:@"[MADEmbeddingStoreClientHandler] Failed to open photo library at %@", v5];
    v31 = v11;
    v17 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v18 = [NSError errorWithDomain:NSOSStatusErrorDomain code:-18 userInfo:v17];
    v6[2](v6, 0, v18);

    goto LABEL_24;
  }

  v10 = [MADEmbeddingStore embeddingStoreDirectoryForPhotoLibrary:v9];
  v11 = v10;
  if (!v10)
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v19 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v19))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v19, "[MADEmbeddingStoreClientHandler] Failed to find EmbeddingStore directory", buf, 2u);
      }
    }

    v20 = NSOSStatusErrorDomain;
    v28 = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithFormat:@"[MADEmbeddingStoreClientHandler] Failed to find EmbeddingStore directory"];
    v29 = v17;
    v21 = &v29;
    v22 = &v28;
    goto LABEL_23;
  }

  [v10 UTF8String];
  v12 = sandbox_extension_issue_file();
  v13 = MediaAnalysisLogLevel();
  if (!v12)
  {
    if (v13 >= 3)
    {
      v23 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v23))
      {
        *buf = 138412290;
        v33 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v23, "[MADEmbeddingStoreClientHandler] Failed to issue sandbox extension on %@", buf, 0xCu);
      }
    }

    v20 = NSOSStatusErrorDomain;
    v26 = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithFormat:@"[MADEmbeddingStoreClientHandler] Failed to issue sandbox extension on %@", v11];
    v27 = v17;
    v21 = &v27;
    v22 = &v26;
LABEL_23:
    v24 = [NSDictionary dictionaryWithObjects:v21 forKeys:v22 count:1];
    v25 = [NSError errorWithDomain:v20 code:-18 userInfo:v24];
    v6[2](v6, 0, v25);

LABEL_24:
    goto LABEL_25;
  }

  if (v13 >= 7)
  {
    v14 = VCPLogToOSLogType[7];
    if (os_log_type_enabled(&_os_log_default, v14))
    {
      *buf = 138412290;
      v33 = v11;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "[MADEmbeddingStoreClientHandler] Issuing sandbox extension for %@", buf, 0xCu);
    }
  }

  v15 = [NSString stringWithUTF8String:v12];
  (v6)[2](v6, v15, 0);

  free(v12);
LABEL_25:
}

- (void)fetchEmbeddingsWithAssetUUIDs:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v13 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      *buf = 67109120;
      v18 = [v9 count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MADEmbeddingStoreClientHandler] Received fetch embedding request for %u assets", buf, 8u);
    }
  }

  v16 = 0;
  v14 = [MADEmbeddingStore fetchEmbeddingsWithAssetUUIDs:v9 photoLibraryURL:v10 options:v11 error:&v16];
  v15 = v16;
  v12[2](v12, v14, v15);
}

- (void)searchWithEmbeddings:(id)a3 photoLibraryURL:(id)a4 options:(id)a5 reply:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v13 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v13))
    {
      *buf = 67109120;
      v18 = [v9 count];
      _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[MADEmbeddingStoreClientHandler] Received search request for %u embedding", buf, 8u);
    }
  }

  v16 = 0;
  v14 = [MADEmbeddingStore searchWithEmbeddings:v9 photoLibraryURL:v10 options:v11 error:&v16];
  v15 = v16;
  v12[2](v12, v14, v15);
}

- (void)prewarmSearchWithConcurrencyLimit:(unint64_t)a3 photoLibraryURL:(id)a4 reply:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (MediaAnalysisLogLevel() >= 6)
  {
    v9 = VCPLogToOSLogType[6];
    if (os_log_type_enabled(&_os_log_default, v9))
    {
      *buf = 67109120;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, &_os_log_default, v9, "[MADEmbeddingStoreClientHandler] Received prewarm search request with concurrencyLimit %d", buf, 8u);
    }
  }

  v11 = 0;
  [MADEmbeddingStore prewarmSearchWithConcurrencyLimit:a3 photoLibraryURL:v7 error:&v11];
  v10 = v11;
  v8[2](v8, v10);
}

@end