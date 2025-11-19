@interface BaseFileProviderShareOperationProxy
- (BaseFileProviderShareOperationProxy)initWithItemIdentifier:(id)a3 operationQueue:(id)a4 clientPrivilegesDescriptor:(id)a5;
- (id)remoteObject;
- (void)copyCurrentUserNameAndDisplayHandleWithReply:(id)a3;
- (void)startOperation:(id)a3 toCopyShareURLForShare:(id)a4 reply:(id)a5;
- (void)startOperation:(id)a3 toLookupShareParticipants:(id)a4 reply:(id)a5;
- (void)startOperation:(id)a3 toSaveSharingInfo:(id)a4 reply:(id)a5;
@end

@implementation BaseFileProviderShareOperationProxy

- (BaseFileProviderShareOperationProxy)initWithItemIdentifier:(id)a3 operationQueue:(id)a4 clientPrivilegesDescriptor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BaseFileProviderShareOperationProxy;
  v12 = [(BaseFileProviderShareOperationProxy *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_itemIdentifier, a3);
    objc_storeStrong(&v13->_operationQueue, a4);
    objc_storeStrong(&v13->_clientPrivilegesDescriptor, a5);
  }

  return v13;
}

- (id)remoteObject
{
  v2 = +[BRDaemonConnection defaultConnection];
  v3 = [v2 remoteObjectProxy];

  v4 = [[BRFileProviderXPCAutomaticErrorProxy alloc] initWithConnection:v3 protocol:&OBJC_PROTOCOL___BRProtocolShared orError:0 name:@"daemon connection" requestPid:0];

  return v4;
}

- (void)startOperation:(id)a3 toCopyShareURLForShare:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  memset(v24, 0, sizeof(v24));
  sub_10001A20C(1, "[BaseFileProviderShareOperationProxy startOperation:toCopyShareURLForShare:reply:]", 115, 0, v24);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v26 = v24[0];
    v27 = 2080;
    v28 = "[BaseFileProviderShareOperationProxy startOperation:toCopyShareURLForShare:reply:]";
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s %@", buf, 0x20u);
  }

  v13 = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  v14 = [v13 isSharingProxyEntitled];

  if (v14)
  {
    v15 = sub_100004F10(v8);
    v16 = [(BaseFileProviderShareOperationProxy *)self remoteObject];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000054C0;
    v19[3] = &unk_100044778;
    v17 = v15;
    v20 = v17;
    v21 = v10;
    [v16 startOperation:v17 toCopyShareURLForShare:v9 reply:v19];

    v18 = &v20;
  }

  else
  {
    v17 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingProxyEntitled"];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100005398;
    v22[3] = &unk_100044598;
    v23 = v10;
    sub_100005398(v22, v17);
    v18 = &v23;
  }

  sub_10001A3DC(v24);
}

- (void)startOperation:(id)a3 toSaveSharingInfo:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  memset(v24, 0, sizeof(v24));
  sub_10001A20C(1, "[BaseFileProviderShareOperationProxy startOperation:toSaveSharingInfo:reply:]", 126, 0, v24);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v26 = v24[0];
    v27 = 2080;
    v28 = "[BaseFileProviderShareOperationProxy startOperation:toSaveSharingInfo:reply:]";
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s %@", buf, 0x20u);
  }

  v13 = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  v14 = [v13 isSharingProxyEntitled];

  if (v14)
  {
    v15 = sub_100004F10(v8);
    v16 = [(BaseFileProviderShareOperationProxy *)self remoteObject];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100005A18;
    v19[3] = &unk_1000447A0;
    v17 = v15;
    v20 = v17;
    v21 = v10;
    [v16 startOperation:v17 toSaveSharingInfo:v9 reply:v19];

    v18 = &v20;
  }

  else
  {
    v17 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingProxyEntitled"];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000058FC;
    v22[3] = &unk_100044598;
    v23 = v10;
    sub_1000058FC(v22, v17);
    v18 = &v23;
  }

  sub_10001A3DC(v24);
}

- (void)copyCurrentUserNameAndDisplayHandleWithReply:(id)a3
{
  v4 = a3;
  memset(v15, 0, sizeof(v15));
  sub_10001A20C(1, "[BaseFileProviderShareOperationProxy copyCurrentUserNameAndDisplayHandleWithReply:]", 149, 0, v15);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v17 = v15[0];
    v18 = 2080;
    v19 = "[BaseFileProviderShareOperationProxy copyCurrentUserNameAndDisplayHandleWithReply:]";
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s %@", buf, 0x20u);
  }

  v7 = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  v8 = [v7 isSharingProxyEntitled];

  if (v8)
  {
    v9 = [(BaseFileProviderShareOperationProxy *)self remoteObject];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100006428;
    v11[3] = &unk_1000447F0;
    v12 = v4;
    [v9 copyCurrentUserNameAndDisplayHandleWithReply:v11];

    v10 = v12;
  }

  else
  {
    v10 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingProxyEntitled"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000062E8;
    v13[3] = &unk_100044598;
    v14 = v4;
    sub_1000062E8(v13, v10);
  }

  sub_10001A3DC(v15);
}

- (void)startOperation:(id)a3 toLookupShareParticipants:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  memset(v24, 0, sizeof(v24));
  sub_10001A20C(1, "[BaseFileProviderShareOperationProxy startOperation:toLookupShareParticipants:reply:]", 160, 0, v24);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v26 = v24[0];
    v27 = 2080;
    v28 = "[BaseFileProviderShareOperationProxy startOperation:toLookupShareParticipants:reply:]";
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s %@", buf, 0x20u);
  }

  v13 = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  v14 = [v13 isSharingProxyEntitled];

  if (v14)
  {
    v15 = sub_100004F10(v8);
    v16 = [(BaseFileProviderShareOperationProxy *)self remoteObject];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000069C0;
    v19[3] = &unk_100044818;
    v17 = v15;
    v20 = v17;
    v21 = v10;
    [v16 startOperation:v17 toLookupShareParticipants:v9 reply:v19];

    v18 = &v20;
  }

  else
  {
    v17 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingProxyEntitled"];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000068A4;
    v22[3] = &unk_100044598;
    v23 = v10;
    sub_1000068A4(v22, v17);
    v18 = &v23;
  }

  sub_10001A3DC(v24);
}

@end