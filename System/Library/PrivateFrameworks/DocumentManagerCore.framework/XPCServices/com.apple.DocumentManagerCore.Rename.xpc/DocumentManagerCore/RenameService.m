@interface RenameService
- (void)importDocumentAtURL:(id)a3 completionHandler:(id)a4;
- (void)renameDocumentAtURL:(id)a3 proposedName:(id)a4 completionHandler:(id)a5;
@end

@implementation RenameService

- (void)renameDocumentAtURL:(id)a3 proposedName:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSXPCConnection currentConnection];
  v11 = [v7 url];
  v12 = [v10 doc_hasSandboxAccessToFile:v11 readonly:0];

  if (v12)
  {
    if (v10)
    {
      [v10 auditToken];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    v32 = 0;
    v21 = [LSBundleRecord bundleRecordForAuditToken:buf error:&v32];
    v13 = v32;
    v22 = [v21 bundleIdentifier];

    if (v22)
    {
      v23 = [v21 bundleIdentifier];
    }

    else
    {
      v24 = docRenameLogHandle;
      if (!docRenameLogHandle)
      {
        DOCInitLogging();
        v24 = docRenameLogHandle;
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000015CC(v21, v24);
      }

      v23 = @"com.apple.Fallback";
    }

    v25 = docRenameLogHandle;
    if (!docRenameLogHandle)
    {
      DOCInitLogging();
      v25 = docRenameLogHandle;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "[RenameService renameDocumentAtURL:proposedName:completionHandler:]";
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 2112;
      *&buf[24] = v8;
      v34 = 2112;
      v35 = v23;
      _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "[Rename] %s bookmark: %@ proposedName: %@ caller: %@", buf, 0x2Au);
    }

    v26 = [v7 url];
    v27 = [v26 startAccessingSecurityScopedResource];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100001190;
    v28[3] = &unk_100004120;
    v30 = v9;
    v31 = v27;
    v29 = v7;
    [DOCFileRenamingSupport _workaroundWrapper_renameDocumentAtURL:v29 newName:v8 hostIdentifier:v23 completionHandler:v28];
  }

  else
  {
    v13 = [NSError errorWithDomain:NSCocoaErrorDomain code:513 userInfo:0];
    v14 = docRenameLogHandle;
    if (!docRenameLogHandle)
    {
      DOCInitLogging();
      v14 = docRenameLogHandle;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100001560(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    (*(v9 + 2))(v9, 0, v13);
  }
}

- (void)importDocumentAtURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSXPCConnection currentConnection];
  v8 = [v5 url];
  v9 = [v7 doc_hasSandboxAccessToFile:v8 readonly:1];

  if (v9)
  {
    if (v7)
    {
      [v7 auditToken];
    }

    else
    {
      memset(v35, 0, sizeof(v35));
    }

    v34 = 0;
    v18 = [LSBundleRecord bundleRecordForAuditToken:v35 error:&v34];
    v10 = v34;
    v19 = [v18 bundleIdentifier];

    if (v19)
    {
      v20 = [v18 bundleIdentifier];
      v21 = [v5 url];
      v22 = [v21 startAccessingSecurityScopedResource];

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000014C8;
      v30[3] = &unk_100004120;
      v32 = v6;
      v33 = v22;
      v31 = v5;
      [DOCFileRenamingSupport _workaroundWrapper_importDocumentAtURL:v31 hostIdentifier:v20 completionHandler:v30];
    }

    else
    {
      v20 = [NSError errorWithDomain:NSCocoaErrorDomain code:4 userInfo:0];
      v23 = docRenameLogHandle;
      if (!docRenameLogHandle)
      {
        DOCInitLogging();
        v23 = docRenameLogHandle;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000016C4(v20, v23, v24, v25, v26, v27, v28, v29);
      }

      (*(v6 + 2))(v6, 0, v20);
    }
  }

  else
  {
    v10 = [NSError errorWithDomain:NSCocoaErrorDomain code:257 userInfo:0];
    v11 = docRenameLogHandle;
    if (!docRenameLogHandle)
    {
      DOCInitLogging();
      v11 = docRenameLogHandle;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100001658(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    (*(v6 + 2))(v6, 0, v10);
  }
}

@end