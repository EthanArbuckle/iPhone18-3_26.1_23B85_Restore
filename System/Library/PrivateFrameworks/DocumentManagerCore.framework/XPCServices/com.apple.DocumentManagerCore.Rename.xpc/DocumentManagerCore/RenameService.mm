@interface RenameService
- (void)importDocumentAtURL:(id)l completionHandler:(id)handler;
- (void)renameDocumentAtURL:(id)l proposedName:(id)name completionHandler:(id)handler;
@end

@implementation RenameService

- (void)renameDocumentAtURL:(id)l proposedName:(id)name completionHandler:(id)handler
{
  lCopy = l;
  nameCopy = name;
  handlerCopy = handler;
  v10 = +[NSXPCConnection currentConnection];
  v11 = [lCopy url];
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
    bundleIdentifier = [v21 bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [v21 bundleIdentifier];
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

      bundleIdentifier2 = @"com.apple.Fallback";
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
      *&buf[14] = lCopy;
      *&buf[22] = 2112;
      *&buf[24] = nameCopy;
      v34 = 2112;
      v35 = bundleIdentifier2;
      _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "[Rename] %s bookmark: %@ proposedName: %@ caller: %@", buf, 0x2Au);
    }

    v26 = [lCopy url];
    startAccessingSecurityScopedResource = [v26 startAccessingSecurityScopedResource];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100001190;
    v28[3] = &unk_100004120;
    v30 = handlerCopy;
    v31 = startAccessingSecurityScopedResource;
    v29 = lCopy;
    [DOCFileRenamingSupport _workaroundWrapper_renameDocumentAtURL:v29 newName:nameCopy hostIdentifier:bundleIdentifier2 completionHandler:v28];
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

    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

- (void)importDocumentAtURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = +[NSXPCConnection currentConnection];
  v8 = [lCopy url];
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
    bundleIdentifier = [v18 bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [v18 bundleIdentifier];
      v21 = [lCopy url];
      startAccessingSecurityScopedResource = [v21 startAccessingSecurityScopedResource];

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000014C8;
      v30[3] = &unk_100004120;
      v32 = handlerCopy;
      v33 = startAccessingSecurityScopedResource;
      v31 = lCopy;
      [DOCFileRenamingSupport _workaroundWrapper_importDocumentAtURL:v31 hostIdentifier:bundleIdentifier2 completionHandler:v30];
    }

    else
    {
      bundleIdentifier2 = [NSError errorWithDomain:NSCocoaErrorDomain code:4 userInfo:0];
      v23 = docRenameLogHandle;
      if (!docRenameLogHandle)
      {
        DOCInitLogging();
        v23 = docRenameLogHandle;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000016C4(bundleIdentifier2, v23, v24, v25, v26, v27, v28, v29);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, bundleIdentifier2);
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

    (*(handlerCopy + 2))(handlerCopy, 0, v10);
  }
}

@end