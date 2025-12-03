@interface BaseFileProviderShareOperationProxy
- (BaseFileProviderShareOperationProxy)initWithItemIdentifier:(id)identifier operationQueue:(id)queue clientPrivilegesDescriptor:(id)descriptor;
- (id)remoteObject;
- (void)copyCurrentUserNameAndDisplayHandleWithReply:(id)reply;
- (void)startOperation:(id)operation toCopyShareURLForShare:(id)share reply:(id)reply;
- (void)startOperation:(id)operation toLookupShareParticipants:(id)participants reply:(id)reply;
- (void)startOperation:(id)operation toSaveSharingInfo:(id)info reply:(id)reply;
@end

@implementation BaseFileProviderShareOperationProxy

- (BaseFileProviderShareOperationProxy)initWithItemIdentifier:(id)identifier operationQueue:(id)queue clientPrivilegesDescriptor:(id)descriptor
{
  identifierCopy = identifier;
  queueCopy = queue;
  descriptorCopy = descriptor;
  v15.receiver = self;
  v15.super_class = BaseFileProviderShareOperationProxy;
  v12 = [(BaseFileProviderShareOperationProxy *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_itemIdentifier, identifier);
    objc_storeStrong(&v13->_operationQueue, queue);
    objc_storeStrong(&v13->_clientPrivilegesDescriptor, descriptor);
  }

  return v13;
}

- (id)remoteObject
{
  v2 = +[BRDaemonConnection defaultConnection];
  remoteObjectProxy = [v2 remoteObjectProxy];

  v4 = [[BRFileProviderXPCAutomaticErrorProxy alloc] initWithConnection:remoteObjectProxy protocol:&OBJC_PROTOCOL___BRProtocolShared orError:0 name:@"daemon connection" requestPid:0];

  return v4;
}

- (void)startOperation:(id)operation toCopyShareURLForShare:(id)share reply:(id)reply
{
  operationCopy = operation;
  shareCopy = share;
  replyCopy = reply;
  memset(v24, 0, sizeof(v24));
  sub_100001C50(1, "[BaseFileProviderShareOperationProxy startOperation:toCopyShareURLForShare:reply:]", 115, 0, v24);
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

  clientPrivilegesDescriptor = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  isSharingProxyEntitled = [clientPrivilegesDescriptor isSharingProxyEntitled];

  if (isSharingProxyEntitled)
  {
    v15 = sub_100011E44(operationCopy);
    remoteObject = [(BaseFileProviderShareOperationProxy *)self remoteObject];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000123F4;
    v19[3] = &unk_100044D10;
    v17 = v15;
    v20 = v17;
    v21 = replyCopy;
    [remoteObject startOperation:v17 toCopyShareURLForShare:shareCopy reply:v19];

    v18 = &v20;
  }

  else
  {
    v17 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingProxyEntitled"];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000122CC;
    v22[3] = &unk_100044598;
    v23 = replyCopy;
    sub_1000122CC(v22, v17);
    v18 = &v23;
  }

  sub_100001DE4(v24);
}

- (void)startOperation:(id)operation toSaveSharingInfo:(id)info reply:(id)reply
{
  operationCopy = operation;
  infoCopy = info;
  replyCopy = reply;
  memset(v24, 0, sizeof(v24));
  sub_100001C50(1, "[BaseFileProviderShareOperationProxy startOperation:toSaveSharingInfo:reply:]", 126, 0, v24);
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

  clientPrivilegesDescriptor = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  isSharingProxyEntitled = [clientPrivilegesDescriptor isSharingProxyEntitled];

  if (isSharingProxyEntitled)
  {
    v15 = sub_100011E44(operationCopy);
    remoteObject = [(BaseFileProviderShareOperationProxy *)self remoteObject];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10001294C;
    v19[3] = &unk_1000447B8;
    v17 = v15;
    v20 = v17;
    v21 = replyCopy;
    [remoteObject startOperation:v17 toSaveSharingInfo:infoCopy reply:v19];

    v18 = &v20;
  }

  else
  {
    v17 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingProxyEntitled"];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100012830;
    v22[3] = &unk_100044598;
    v23 = replyCopy;
    sub_100012830(v22, v17);
    v18 = &v23;
  }

  sub_100001DE4(v24);
}

- (void)copyCurrentUserNameAndDisplayHandleWithReply:(id)reply
{
  replyCopy = reply;
  memset(v15, 0, sizeof(v15));
  sub_100001C50(1, "[BaseFileProviderShareOperationProxy copyCurrentUserNameAndDisplayHandleWithReply:]", 149, 0, v15);
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

  clientPrivilegesDescriptor = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  isSharingProxyEntitled = [clientPrivilegesDescriptor isSharingProxyEntitled];

  if (isSharingProxyEntitled)
  {
    remoteObject = [(BaseFileProviderShareOperationProxy *)self remoteObject];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001335C;
    v11[3] = &unk_100044D38;
    v12 = replyCopy;
    [remoteObject copyCurrentUserNameAndDisplayHandleWithReply:v11];

    v10 = v12;
  }

  else
  {
    v10 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingProxyEntitled"];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001321C;
    v13[3] = &unk_100044598;
    v14 = replyCopy;
    sub_10001321C(v13, v10);
  }

  sub_100001DE4(v15);
}

- (void)startOperation:(id)operation toLookupShareParticipants:(id)participants reply:(id)reply
{
  operationCopy = operation;
  participantsCopy = participants;
  replyCopy = reply;
  memset(v24, 0, sizeof(v24));
  sub_100001C50(1, "[BaseFileProviderShareOperationProxy startOperation:toLookupShareParticipants:reply:]", 160, 0, v24);
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

  clientPrivilegesDescriptor = [(BaseFileProviderShareOperationProxy *)self clientPrivilegesDescriptor];
  isSharingProxyEntitled = [clientPrivilegesDescriptor isSharingProxyEntitled];

  if (isSharingProxyEntitled)
  {
    v15 = sub_100011E44(operationCopy);
    remoteObject = [(BaseFileProviderShareOperationProxy *)self remoteObject];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000138F4;
    v19[3] = &unk_100044D60;
    v17 = v15;
    v20 = v17;
    v21 = replyCopy;
    [remoteObject startOperation:v17 toLookupShareParticipants:participantsCopy reply:v19];

    v18 = &v20;
  }

  else
  {
    v17 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isSharingProxyEntitled"];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000137D8;
    v22[3] = &unk_100044598;
    v23 = replyCopy;
    sub_1000137D8(v22, v17);
    v18 = &v23;
  }

  sub_100001DE4(v24);
}

@end