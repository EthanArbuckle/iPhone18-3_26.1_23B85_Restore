@interface ICDFileProviderShareOperationProxy
- (ICDFileProviderShareOperationProxy)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4 operationQueue:(id)a5 clientPrivilegesDescriptor:(id)a6;
- (id)remoteObject;
- (void)createSharingInfoWithReply:(id)a3;
- (void)startOperation:(id)a3 toCopyParticipantTokenWithReply:(id)a4;
- (void)startOperation:(id)a3 toCopySharingAccessTokenWithReply:(id)a4;
- (void)startOperation:(id)a3 toCopySharingInfoWithReply:(id)a4;
- (void)startOperation:(id)a3 toCopyShortTokenWithReply:(id)a4;
- (void)startOperation:(id)a3 toPrepFolderForSharingWithReply:(id)a4;
- (void)startOperation:(id)a3 toProcessSubitemsWithMaxSubsharesFailures:(unint64_t)a4 processType:(unint64_t)a5 reply:(id)a6;
@end

@implementation ICDFileProviderShareOperationProxy

- (ICDFileProviderShareOperationProxy)initWithFileProviderExtension:(id)a3 itemIdentifier:(id)a4 operationQueue:(id)a5 clientPrivilegesDescriptor:(id)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = ICDFileProviderShareOperationProxy;
  v12 = [(BaseFileProviderShareOperationProxy *)&v15 initWithItemIdentifier:a4 operationQueue:a5 clientPrivilegesDescriptor:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fileProviderExtension, a3);
  }

  return v13;
}

- (id)remoteObject
{
  v2 = +[BRDaemonConnection defaultConnection];
  v3 = [v2 remoteObjectProxy];

  v4 = [[BRFileProviderXPCAutomaticErrorProxy alloc] initWithConnection:v3 protocol:&OBJC_PROTOCOL___BRProtocolFPFS orError:0 name:@"daemon connection" requestPid:0];

  return v4;
}

- (void)startOperation:(id)a3 toCopySharingInfoWithReply:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v10 = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  v11 = [v10 isSharingProxyEntitled];

  if (v11)
  {
    v12 = sub_100004F10(v6);
    v13 = [(ICDFileProviderShareOperationProxy *)self remoteObject];
    v14 = [(BaseFileProviderShareOperationProxy *)self itemIdentifier];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000A370;
    v17[3] = &unk_100044778;
    v15 = v12;
    v18 = v15;
    v19 = v7;
    [v13 startOperation:v15 toCopySharingInfoWithItemID:v14 reply:v17];

    v16 = &v18;
  }

  else
  {
    v15 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingProxyEntitled"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000A248;
    v20[3] = &unk_100044598;
    v21 = v7;
    sub_10000A248(v20, v15);
    v16 = &v21;
  }

  sub_10001A3DC(v22);
}

- (void)startOperation:(id)a3 toCopySharingAccessTokenWithReply:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v10 = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  v11 = [v10 isSharingProxyEntitled];

  if (v11)
  {
    v12 = sub_100004F10(v6);
    v13 = [(ICDFileProviderShareOperationProxy *)self remoteObject];
    v14 = [(BaseFileProviderShareOperationProxy *)self itemIdentifier];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000A8D8;
    v17[3] = &unk_1000449A8;
    v15 = v12;
    v18 = v15;
    v19 = v7;
    [v13 startOperation:v15 toCopySharingAccessTokenOfItemID:v14 reply:v17];

    v16 = &v18;
  }

  else
  {
    v15 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingProxyEntitled"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000A7B0;
    v20[3] = &unk_100044598;
    v21 = v7;
    sub_10000A7B0(v20, v15);
    v16 = &v21;
  }

  sub_10001A3DC(v22);
}

- (void)startOperation:(id)a3 toCopyShortTokenWithReply:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v10 = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  v11 = [v10 isSharingProxyEntitled];

  if (v11)
  {
    v12 = sub_100004F10(v6);
    v13 = [(ICDFileProviderShareOperationProxy *)self remoteObject];
    v14 = [(BaseFileProviderShareOperationProxy *)self itemIdentifier];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000AE34;
    v17[3] = &unk_1000449D0;
    v15 = v12;
    v18 = v15;
    v19 = v7;
    [v13 startOperation:v15 toCopyShortTokenOfItemID:v14 reply:v17];

    v16 = &v18;
  }

  else
  {
    v15 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingProxyEntitled"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000AD18;
    v20[3] = &unk_100044598;
    v21 = v7;
    sub_10000AD18(v20, v15);
    v16 = &v21;
  }

  sub_10001A3DC(v22);
}

- (void)createSharingInfoWithReply:(id)a3
{
  v4 = a3;
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

  v7 = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  v8 = [v7 isSharingProxyEntitled];

  if (v8)
  {
    v9 = [(ICDFileProviderShareOperationProxy *)self remoteObject];
    v10 = [(BaseFileProviderShareOperationProxy *)self itemIdentifier];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000B324;
    v12[3] = &unk_1000449F8;
    v13 = v4;
    [v9 createSharingInfoForItemID:v10 reply:v12];

    v11 = v13;
  }

  else
  {
    v11 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingProxyEntitled"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000B208;
    v14[3] = &unk_100044598;
    v15 = v4;
    sub_10000B208(v14, v11);
  }

  sub_10001A3DC(v16);
}

- (void)startOperation:(id)a3 toCopyParticipantTokenWithReply:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v10 = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  v11 = [v10 isSharingPrivateInterfaceEntitled];

  if (v11)
  {
    v12 = sub_100004F10(v6);
    v13 = [(ICDFileProviderShareOperationProxy *)self remoteObject];
    v14 = [(BaseFileProviderShareOperationProxy *)self itemIdentifier];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000BDD8;
    v17[3] = &unk_100044A20;
    v15 = v12;
    v18 = v15;
    v19 = v7;
    [v13 startOperation:v15 toCopyParticipantTokenWithItemID:v14 reply:v17];

    v16 = &v18;
  }

  else
  {
    v15 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingPrivateInterfaceEntitled"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000BCB0;
    v20[3] = &unk_100044598;
    v21 = v7;
    sub_10000BCB0(v20, v15);
    v16 = &v21;
  }

  sub_10001A3DC(v22);
}

- (void)startOperation:(id)a3 toPrepFolderForSharingWithReply:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v10 = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  v11 = [v10 isSharingPrivateInterfaceEntitled];

  if (v11)
  {
    v12 = sub_100004F10(v6);
    v13 = [(ICDFileProviderShareOperationProxy *)self remoteObject];
    v14 = [(BaseFileProviderShareOperationProxy *)self itemIdentifier];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000C328;
    v17[3] = &unk_1000447C8;
    v15 = v12;
    v18 = v15;
    v19 = v7;
    [v13 startOperation:v15 toPrepFolderForSharingWithItemID:v14 reply:v17];

    v16 = &v18;
  }

  else
  {
    v15 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingPrivateInterfaceEntitled"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10000C218;
    v20[3] = &unk_100044598;
    v21 = v7;
    sub_10000C218(v20, v15);
    v16 = &v21;
  }

  sub_10001A3DC(v22);
}

- (void)startOperation:(id)a3 toProcessSubitemsWithMaxSubsharesFailures:(unint64_t)a4 processType:(unint64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a6;
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

  v14 = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  v15 = [v14 isFolderSharingProxyEntitled];

  if (v15)
  {
    v16 = sub_100004F10(v10);
    v17 = [(ICDFileProviderShareOperationProxy *)self remoteObject];
    v18 = [(BaseFileProviderShareOperationProxy *)self itemIdentifier];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10000C850;
    v21[3] = &unk_1000447C8;
    v19 = v16;
    v22 = v19;
    v23 = v11;
    [v17 startOperation:v19 toProcessSubitemsWithItemID:v18 maxSubsharesFailures:a4 processType:a5 reply:v21];

    v20 = &v22;
  }

  else
  {
    v19 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isFolderSharingProxyEntitled"];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10000C740;
    v24[3] = &unk_100044598;
    v25 = v11;
    sub_10000C740(v24, v19);
    v20 = &v25;
  }

  sub_10001A3DC(v26);
}

@end