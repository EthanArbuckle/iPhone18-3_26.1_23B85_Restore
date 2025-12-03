@interface ICDFileProviderShareOperationProxy
- (ICDFileProviderShareOperationProxy)initWithFileProviderExtension:(id)extension itemIdentifier:(id)identifier operationQueue:(id)queue clientPrivilegesDescriptor:(id)descriptor;
- (id)remoteObject;
- (void)createSharingInfoWithReply:(id)reply;
- (void)startOperation:(id)operation toCopyParticipantTokenWithReply:(id)reply;
- (void)startOperation:(id)operation toCopySharingAccessTokenWithReply:(id)reply;
- (void)startOperation:(id)operation toCopySharingInfoWithReply:(id)reply;
- (void)startOperation:(id)operation toCopyShortTokenWithReply:(id)reply;
- (void)startOperation:(id)operation toPrepFolderForSharingWithReply:(id)reply;
- (void)startOperation:(id)operation toProcessSubitemsWithMaxSubsharesFailures:(unint64_t)failures processType:(unint64_t)type reply:(id)reply;
@end

@implementation ICDFileProviderShareOperationProxy

- (ICDFileProviderShareOperationProxy)initWithFileProviderExtension:(id)extension itemIdentifier:(id)identifier operationQueue:(id)queue clientPrivilegesDescriptor:(id)descriptor
{
  extensionCopy = extension;
  v15.receiver = self;
  v15.super_class = ICDFileProviderShareOperationProxy;
  v12 = [(BaseFileProviderShareOperationProxy *)&v15 initWithItemIdentifier:identifier operationQueue:queue clientPrivilegesDescriptor:descriptor];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fileProviderExtension, extension);
  }

  return v13;
}

- (id)remoteObject
{
  v2 = +[BRDaemonConnection defaultConnection];
  remoteObjectProxy = [v2 remoteObjectProxy];

  v4 = [[BRFileProviderXPCAutomaticErrorProxy alloc] initWithConnection:remoteObjectProxy protocol:&OBJC_PROTOCOL___BRProtocolFPFS orError:0 name:@"daemon connection" requestPid:0];

  return v4;
}

- (void)startOperation:(id)operation toCopySharingInfoWithReply:(id)reply
{
  operationCopy = operation;
  replyCopy = reply;
  memset(v22, 0, sizeof(v22));
  sub_10001A20C(1, "[ICDFileProviderShareOperationProxy startOperation:toCopySharingInfoWithReply:]", 49, 0, v22);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v24 = v22[0];
    v25 = 2080;
    v26 = "[ICDFileProviderShareOperationProxy startOperation:toCopySharingInfoWithReply:]";
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s %@", buf, 0x20u);
  }

  clientPrivilegesDescriptor = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  isSharingProxyEntitled = [clientPrivilegesDescriptor isSharingProxyEntitled];

  if (isSharingProxyEntitled)
  {
    v12 = sub_100004F10(operationCopy);
    remoteObject = [(ICDFileProviderShareOperationProxy *)self remoteObject];
    itemIdentifier = [(BaseFileProviderShareOperationProxy *)self itemIdentifier];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000A370;
    v17[3] = &unk_100044778;
    v15 = v12;
    v18 = v15;
    v19 = replyCopy;
    [remoteObject startOperation:v15 toCopySharingInfoWithItemID:itemIdentifier reply:v17];

    v16 = &v18;
  }

  else
  {
    v15 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingProxyEntitled"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000A248;
    v20[3] = &unk_100044598;
    v21 = replyCopy;
    sub_10000A248(v20, v15);
    v16 = &v21;
  }

  sub_10001A3DC(v22);
}

- (void)startOperation:(id)operation toCopySharingAccessTokenWithReply:(id)reply
{
  operationCopy = operation;
  replyCopy = reply;
  memset(v22, 0, sizeof(v22));
  sub_10001A20C(1, "[ICDFileProviderShareOperationProxy startOperation:toCopySharingAccessTokenWithReply:]", 62, 0, v22);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v24 = v22[0];
    v25 = 2080;
    v26 = "[ICDFileProviderShareOperationProxy startOperation:toCopySharingAccessTokenWithReply:]";
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s %@", buf, 0x20u);
  }

  clientPrivilegesDescriptor = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  isSharingProxyEntitled = [clientPrivilegesDescriptor isSharingProxyEntitled];

  if (isSharingProxyEntitled)
  {
    v12 = sub_100004F10(operationCopy);
    remoteObject = [(ICDFileProviderShareOperationProxy *)self remoteObject];
    itemIdentifier = [(BaseFileProviderShareOperationProxy *)self itemIdentifier];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000A8D8;
    v17[3] = &unk_1000449A8;
    v15 = v12;
    v18 = v15;
    v19 = replyCopy;
    [remoteObject startOperation:v15 toCopySharingAccessTokenOfItemID:itemIdentifier reply:v17];

    v16 = &v18;
  }

  else
  {
    v15 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingProxyEntitled"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000A7B0;
    v20[3] = &unk_100044598;
    v21 = replyCopy;
    sub_10000A7B0(v20, v15);
    v16 = &v21;
  }

  sub_10001A3DC(v22);
}

- (void)startOperation:(id)operation toCopyShortTokenWithReply:(id)reply
{
  operationCopy = operation;
  replyCopy = reply;
  memset(v22, 0, sizeof(v22));
  sub_10001A20C(1, "[ICDFileProviderShareOperationProxy startOperation:toCopyShortTokenWithReply:]", 73, 0, v22);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v24 = v22[0];
    v25 = 2080;
    v26 = "[ICDFileProviderShareOperationProxy startOperation:toCopyShortTokenWithReply:]";
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s %@", buf, 0x20u);
  }

  clientPrivilegesDescriptor = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  isSharingProxyEntitled = [clientPrivilegesDescriptor isSharingProxyEntitled];

  if (isSharingProxyEntitled)
  {
    v12 = sub_100004F10(operationCopy);
    remoteObject = [(ICDFileProviderShareOperationProxy *)self remoteObject];
    itemIdentifier = [(BaseFileProviderShareOperationProxy *)self itemIdentifier];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000AE34;
    v17[3] = &unk_1000449D0;
    v15 = v12;
    v18 = v15;
    v19 = replyCopy;
    [remoteObject startOperation:v15 toCopyShortTokenOfItemID:itemIdentifier reply:v17];

    v16 = &v18;
  }

  else
  {
    v15 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingProxyEntitled"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000AD18;
    v20[3] = &unk_100044598;
    v21 = replyCopy;
    sub_10000AD18(v20, v15);
    v16 = &v21;
  }

  sub_10001A3DC(v22);
}

- (void)createSharingInfoWithReply:(id)reply
{
  replyCopy = reply;
  memset(v16, 0, sizeof(v16));
  sub_10001A20C(1, "[ICDFileProviderShareOperationProxy createSharingInfoWithReply:]", 84, 0, v16);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v18 = v16[0];
    v19 = 2080;
    v20 = "[ICDFileProviderShareOperationProxy createSharingInfoWithReply:]";
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s %@", buf, 0x20u);
  }

  clientPrivilegesDescriptor = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  isSharingProxyEntitled = [clientPrivilegesDescriptor isSharingProxyEntitled];

  if (isSharingProxyEntitled)
  {
    remoteObject = [(ICDFileProviderShareOperationProxy *)self remoteObject];
    itemIdentifier = [(BaseFileProviderShareOperationProxy *)self itemIdentifier];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000B324;
    v12[3] = &unk_1000449F8;
    v13 = replyCopy;
    [remoteObject createSharingInfoForItemID:itemIdentifier reply:v12];

    v11 = v13;
  }

  else
  {
    v11 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingProxyEntitled"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000B208;
    v14[3] = &unk_100044598;
    v15 = replyCopy;
    sub_10000B208(v14, v11);
  }

  sub_10001A3DC(v16);
}

- (void)startOperation:(id)operation toCopyParticipantTokenWithReply:(id)reply
{
  operationCopy = operation;
  replyCopy = reply;
  memset(v22, 0, sizeof(v22));
  sub_10001A20C(1, "[ICDFileProviderShareOperationProxy startOperation:toCopyParticipantTokenWithReply:]", 104, 0, v22);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v24 = v22[0];
    v25 = 2080;
    v26 = "[ICDFileProviderShareOperationProxy startOperation:toCopyParticipantTokenWithReply:]";
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s %@", buf, 0x20u);
  }

  clientPrivilegesDescriptor = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  isSharingPrivateInterfaceEntitled = [clientPrivilegesDescriptor isSharingPrivateInterfaceEntitled];

  if (isSharingPrivateInterfaceEntitled)
  {
    v12 = sub_100004F10(operationCopy);
    remoteObject = [(ICDFileProviderShareOperationProxy *)self remoteObject];
    itemIdentifier = [(BaseFileProviderShareOperationProxy *)self itemIdentifier];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000BDD8;
    v17[3] = &unk_100044A20;
    v15 = v12;
    v18 = v15;
    v19 = replyCopy;
    [remoteObject startOperation:v15 toCopyParticipantTokenWithItemID:itemIdentifier reply:v17];

    v16 = &v18;
  }

  else
  {
    v15 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingPrivateInterfaceEntitled"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000BCB0;
    v20[3] = &unk_100044598;
    v21 = replyCopy;
    sub_10000BCB0(v20, v15);
    v16 = &v21;
  }

  sub_10001A3DC(v22);
}

- (void)startOperation:(id)operation toPrepFolderForSharingWithReply:(id)reply
{
  operationCopy = operation;
  replyCopy = reply;
  memset(v22, 0, sizeof(v22));
  sub_10001A20C(1, "[ICDFileProviderShareOperationProxy startOperation:toPrepFolderForSharingWithReply:]", 115, 0, v22);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v24 = v22[0];
    v25 = 2080;
    v26 = "[ICDFileProviderShareOperationProxy startOperation:toPrepFolderForSharingWithReply:]";
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s %@", buf, 0x20u);
  }

  clientPrivilegesDescriptor = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  isSharingPrivateInterfaceEntitled = [clientPrivilegesDescriptor isSharingPrivateInterfaceEntitled];

  if (isSharingPrivateInterfaceEntitled)
  {
    v12 = sub_100004F10(operationCopy);
    remoteObject = [(ICDFileProviderShareOperationProxy *)self remoteObject];
    itemIdentifier = [(BaseFileProviderShareOperationProxy *)self itemIdentifier];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000C328;
    v17[3] = &unk_1000447C8;
    v15 = v12;
    v18 = v15;
    v19 = replyCopy;
    [remoteObject startOperation:v15 toPrepFolderForSharingWithItemID:itemIdentifier reply:v17];

    v16 = &v18;
  }

  else
  {
    v15 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingPrivateInterfaceEntitled"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000C218;
    v20[3] = &unk_100044598;
    v21 = replyCopy;
    sub_10000C218(v20, v15);
    v16 = &v21;
  }

  sub_10001A3DC(v22);
}

- (void)startOperation:(id)operation toProcessSubitemsWithMaxSubsharesFailures:(unint64_t)failures processType:(unint64_t)type reply:(id)reply
{
  operationCopy = operation;
  replyCopy = reply;
  memset(v26, 0, sizeof(v26));
  sub_10001A20C(1, "[ICDFileProviderShareOperationProxy startOperation:toProcessSubitemsWithMaxSubsharesFailures:processType:reply:]", 127, 0, v26);
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v28 = v26[0];
    v29 = 2080;
    v30 = "[ICDFileProviderShareOperationProxy startOperation:toProcessSubitemsWithMaxSubsharesFailures:processType:reply:]";
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s %@", buf, 0x20u);
  }

  clientPrivilegesDescriptor = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  isFolderSharingProxyEntitled = [clientPrivilegesDescriptor isFolderSharingProxyEntitled];

  if (isFolderSharingProxyEntitled)
  {
    v16 = sub_100004F10(operationCopy);
    remoteObject = [(ICDFileProviderShareOperationProxy *)self remoteObject];
    itemIdentifier = [(BaseFileProviderShareOperationProxy *)self itemIdentifier];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000C850;
    v21[3] = &unk_1000447C8;
    v19 = v16;
    v22 = v19;
    v23 = replyCopy;
    [remoteObject startOperation:v19 toProcessSubitemsWithItemID:itemIdentifier maxSubsharesFailures:failures processType:type reply:v21];

    v20 = &v22;
  }

  else
  {
    v19 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isFolderSharingProxyEntitled"];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000C740;
    v24[3] = &unk_100044598;
    v25 = replyCopy;
    sub_10000C740(v24, v19);
    v20 = &v25;
  }

  sub_10001A3DC(v26);
}

@end