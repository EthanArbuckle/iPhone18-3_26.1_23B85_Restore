@interface ICDFileProviderItemServiceProxy
- (BOOL)_hasAccessToAppLibraryID:(id)d;
- (BOOL)_isAppLibraryProxyEntitled;
- (ICDFileProviderItemServiceProxy)initWithItemIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier operationQueue:(id)queue clientPrivilegesDescriptor:(id)descriptor;
- (id)remoteObject;
- (void)boostFilePresenter:(id)presenter;
- (void)capabilityWhenTryingToReparentToNewParent:(id)parent domain:(id)domain reply:(id)reply;
- (void)copyShareIDWithReply:(id)reply;
- (void)getAttributeValues:(id)values reply:(id)reply;
- (void)getClientSaltingVerificationKeys:(id)keys;
- (void)getCreatorNameComponents:(id)components;
- (void)getServerContentSignature:(id)signature;
- (void)getServerSaltingKeys:(id)keys;
- (void)getiWorkNeedsShareMigrate:(id)migrate;
- (void)getiWorkPublishingBadgingStatus:(id)status;
- (void)getiWorkPublishingInfo:(id)info;
- (void)launchItemCountMismatchChecks:(id)checks;
- (void)refreshSharingState:(id)state;
- (void)unboostFilePresenter:(id)presenter;
@end

@implementation ICDFileProviderItemServiceProxy

- (ICDFileProviderItemServiceProxy)initWithItemIdentifier:(id)identifier domainIdentifier:(id)domainIdentifier operationQueue:(id)queue clientPrivilegesDescriptor:(id)descriptor
{
  identifierCopy = identifier;
  domainIdentifierCopy = domainIdentifier;
  queueCopy = queue;
  descriptorCopy = descriptor;
  v18.receiver = self;
  v18.super_class = ICDFileProviderItemServiceProxy;
  v15 = [(ICDFileProviderItemServiceProxy *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_itemIdentifier, identifier);
    objc_storeStrong(&v16->_domainIdentifier, domainIdentifier);
    objc_storeStrong(&v16->_operationQueue, queue);
    objc_storeStrong(&v16->_clientPrivilegesDescriptor, descriptor);
  }

  return v16;
}

- (id)remoteObject
{
  v2 = [ICDFileProviderXPCAutomaticErrorProxy alloc];
  v3 = +[BRDaemonConnection defaultConnection];
  v4 = [(ICDFileProviderXPCAutomaticErrorProxy *)v2 initWithConnection:v3 protocol:&OBJC_PROTOCOL___BRProtocolFPFS orError:0 name:@"daemon connection" requestPid:0];

  return v4;
}

- (BOOL)_isAppLibraryProxyEntitled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isProxyEntitled = [(BRCClientPrivilegesDescriptor *)selfCopy->_clientPrivilegesDescriptor isProxyEntitled];
  objc_sync_exit(selfCopy);

  return isProxyEntitled;
}

- (BOOL)_hasAccessToAppLibraryID:(id)d
{
  dCopy = d;
  if ([(ICDFileProviderItemServiceProxy *)self _isAppLibraryProxyEntitled]|| ![(ICDFileProviderItemServiceProxy *)self _isSandboxed])
  {
    v8 = 1;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    appLibraryIDs = [(BRCClientPrivilegesDescriptor *)selfCopy->_clientPrivilegesDescriptor appLibraryIDs];
    objc_sync_exit(selfCopy);

    if (![appLibraryIDs count] || dCopy && !objc_msgSend(appLibraryIDs, "containsObject:", dCopy) || (clientPrivilegesDescriptor = selfCopy->_clientPrivilegesDescriptor, v8 = 1, -[BRCClientPrivilegesDescriptor cloudEnabledStatusWithHasSession:](clientPrivilegesDescriptor, "cloudEnabledStatusWithHasSession:", 1) != 1))
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)boostFilePresenter:(id)presenter
{
  presenterCopy = presenter;
  remoteObject = [(ICDFileProviderItemServiceProxy *)self remoteObject];
  itemIdentifier = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100022E70;
  v8[3] = &unk_100044598;
  v9 = presenterCopy;
  v7 = presenterCopy;
  [remoteObject boostFilePresenterForItemIdentifier:itemIdentifier reply:v8];
}

- (void)unboostFilePresenter:(id)presenter
{
  presenterCopy = presenter;
  remoteObject = [(ICDFileProviderItemServiceProxy *)self remoteObject];
  itemIdentifier = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
  v11 = itemIdentifier;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002309C;
  v9[3] = &unk_100044598;
  v10 = presenterCopy;
  v8 = presenterCopy;
  [remoteObject unboostFilePresenterForItemIdentifiers:v7 reply:v9];
}

- (void)capabilityWhenTryingToReparentToNewParent:(id)parent domain:(id)domain reply:(id)reply
{
  parentCopy = parent;
  replyCopy = reply;
  domainCopy = domain;
  domainIdentifier = [(ICDFileProviderItemServiceProxy *)self domainIdentifier];
  v12 = [domainIdentifier isEqual:domainCopy];

  if (v12)
  {
    remoteObject = [(ICDFileProviderItemServiceProxy *)self remoteObject];
    itemIdentifier = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000233D8;
    v19[3] = &unk_100045468;
    v20 = replyCopy;
    [remoteObject capabilityWhenTryingToReparentItemIdentifier:itemIdentifier toNewParent:parentCopy reply:v19];

    v15 = v20;
  }

  else
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = +[NSError brc_errorAccountMismatch];
      *buf = 136315906;
      v22 = "[ICDFileProviderItemServiceProxy capabilityWhenTryingToReparentToNewParent:domain:reply:]";
      v23 = 1024;
      v24 = 4;
      v25 = 2112;
      v26 = v18;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%d, %@)%@", buf, 0x26u);
    }

    v15 = +[NSError brc_errorAccountMismatch];
    (*(replyCopy + 2))(replyCopy, 4, v15);
  }
}

- (void)getAttributeValues:(id)values reply:(id)reply
{
  replyCopy = reply;
  valuesCopy = values;
  remoteObject = [(ICDFileProviderItemServiceProxy *)self remoteObject];
  itemIdentifier = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100023A74;
  v11[3] = &unk_1000454E0;
  v12 = replyCopy;
  v10 = replyCopy;
  [remoteObject getAttributeValues:valuesCopy forItemIdentifier:itemIdentifier reply:v11];
}

- (void)getiWorkPublishingInfo:(id)info
{
  infoCopy = info;
  remoteObject = [(ICDFileProviderItemServiceProxy *)self remoteObject];
  itemIdentifier = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100023C6C;
  v8[3] = &unk_100045508;
  v9 = infoCopy;
  v7 = infoCopy;
  [remoteObject getiWorkPublishingInfoForItemIdentifier:itemIdentifier reply:v8];
}

- (void)getiWorkPublishingBadgingStatus:(id)status
{
  statusCopy = status;
  remoteObject = [(ICDFileProviderItemServiceProxy *)self remoteObject];
  itemIdentifier = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100024084;
  v8[3] = &unk_100045530;
  v9 = statusCopy;
  v7 = statusCopy;
  [remoteObject getiWorkPublishingBadgingStatusForItemIdentifier:itemIdentifier reply:v8];
}

- (void)getiWorkNeedsShareMigrate:(id)migrate
{
  migrateCopy = migrate;
  remoteObject = [(ICDFileProviderItemServiceProxy *)self remoteObject];
  itemIdentifier = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100024274;
  v8[3] = &unk_100045558;
  v9 = migrateCopy;
  v7 = migrateCopy;
  [remoteObject getiWorkNeedsShareMigrateForItemIdentifier:itemIdentifier reply:v8];
}

- (void)refreshSharingState:(id)state
{
  stateCopy = state;
  memset(v16, 0, sizeof(v16));
  sub_10001A20C(1, "[ICDFileProviderItemServiceProxy refreshSharingState:]", 173, 0, v16);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v18 = v16[0];
    v19 = 2080;
    v20 = "[ICDFileProviderItemServiceProxy refreshSharingState:]";
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s %@", buf, 0x20u);
  }

  clientPrivilegesDescriptor = [(ICDFileProviderItemServiceProxy *)self clientPrivilegesDescriptor];
  isAutomationEntitled = [clientPrivilegesDescriptor isAutomationEntitled];

  if (isAutomationEntitled)
  {
    remoteObject = [(ICDFileProviderItemServiceProxy *)self remoteObject];
    itemIdentifier = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100024750;
    v12[3] = &unk_100044598;
    v13 = stateCopy;
    [remoteObject refreshSharingStateForItemIdentifier:itemIdentifier reply:v12];

    v11 = v13;
  }

  else
  {
    v11 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isAutomationEntitled"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100024640;
    v14[3] = &unk_100044598;
    v15 = stateCopy;
    sub_100024640(v14, v11);
  }

  sub_10001A3DC(v16);
}

- (void)launchItemCountMismatchChecks:(id)checks
{
  checksCopy = checks;
  memset(v16, 0, sizeof(v16));
  sub_10001A20C(1, "[ICDFileProviderItemServiceProxy launchItemCountMismatchChecks:]", 184, 0, v16);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v18 = v16[0];
    v19 = 2080;
    v20 = "[ICDFileProviderItemServiceProxy launchItemCountMismatchChecks:]";
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s %@", buf, 0x20u);
  }

  clientPrivilegesDescriptor = [(ICDFileProviderItemServiceProxy *)self clientPrivilegesDescriptor];
  isAutomationEntitled = [clientPrivilegesDescriptor isAutomationEntitled];

  if (isAutomationEntitled)
  {
    remoteObject = [(ICDFileProviderItemServiceProxy *)self remoteObject];
    itemIdentifier = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100024C28;
    v12[3] = &unk_100045558;
    v13 = checksCopy;
    [remoteObject launchItemCountMismatchChecksForItemIdentifier:itemIdentifier reply:v12];

    v11 = v13;
  }

  else
  {
    v11 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isAutomationEntitled"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100024B08;
    v14[3] = &unk_100044598;
    v15 = checksCopy;
    sub_100024B08(v14, v11);
  }

  sub_10001A3DC(v16);
}

- (void)copyShareIDWithReply:(id)reply
{
  replyCopy = reply;
  remoteObject = [(ICDFileProviderItemServiceProxy *)self remoteObject];
  itemIdentifier = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100024E18;
  v8[3] = &unk_100045580;
  v9 = replyCopy;
  v7 = replyCopy;
  [remoteObject copyShareIDForItemIdentifier:itemIdentifier reply:v8];
}

- (void)getCreatorNameComponents:(id)components
{
  componentsCopy = components;
  remoteObject = [(ICDFileProviderItemServiceProxy *)self remoteObject];
  itemIdentifier = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100025010;
  v8[3] = &unk_1000455A8;
  v9 = componentsCopy;
  v7 = componentsCopy;
  [remoteObject getCreatorNameComponentsForItemIdentifier:itemIdentifier reply:v8];
}

- (void)getClientSaltingVerificationKeys:(id)keys
{
  keysCopy = keys;
  memset(v13, 0, sizeof(v13));
  sub_10001A20C(1, "[ICDFileProviderItemServiceProxy getClientSaltingVerificationKeys:]", 209, 0, v13);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v15 = v13[0];
    v16 = 2080;
    v17 = "[ICDFileProviderItemServiceProxy getClientSaltingVerificationKeys:]";
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s %@", buf, 0x20u);
  }

  clientPrivilegesDescriptor = [(ICDFileProviderItemServiceProxy *)self clientPrivilegesDescriptor];
  isAutomationEntitled = [clientPrivilegesDescriptor isAutomationEntitled];

  if (isAutomationEntitled)
  {
    remoteObject = [(ICDFileProviderItemServiceProxy *)self remoteObject];
    itemIdentifier = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
    [remoteObject getClientSaltingVerificationKeysAtItemIdentifier:itemIdentifier reply:keysCopy];
  }

  else
  {
    remoteObject = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isAutomationEntitled"];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002538C;
    v11[3] = &unk_100044598;
    v12 = keysCopy;
    sub_10002538C(v11, remoteObject);
    itemIdentifier = v12;
  }

  sub_10001A3DC(v13);
}

- (void)getServerSaltingKeys:(id)keys
{
  keysCopy = keys;
  memset(v13, 0, sizeof(v13));
  sub_10001A20C(1, "[ICDFileProviderItemServiceProxy getServerSaltingKeys:]", 218, 0, v13);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v15 = v13[0];
    v16 = 2080;
    v17 = "[ICDFileProviderItemServiceProxy getServerSaltingKeys:]";
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s %@", buf, 0x20u);
  }

  clientPrivilegesDescriptor = [(ICDFileProviderItemServiceProxy *)self clientPrivilegesDescriptor];
  isAutomationEntitled = [clientPrivilegesDescriptor isAutomationEntitled];

  if (isAutomationEntitled)
  {
    remoteObject = [(ICDFileProviderItemServiceProxy *)self remoteObject];
    itemIdentifier = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
    [remoteObject getServerSaltingKeysAtItemIdentifier:itemIdentifier reply:keysCopy];
  }

  else
  {
    remoteObject = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isAutomationEntitled"];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100025720;
    v11[3] = &unk_100044598;
    v12 = keysCopy;
    sub_100025720(v11, remoteObject);
    itemIdentifier = v12;
  }

  sub_10001A3DC(v13);
}

- (void)getServerContentSignature:(id)signature
{
  signatureCopy = signature;
  memset(v13, 0, sizeof(v13));
  sub_10001A20C(1, "[ICDFileProviderItemServiceProxy getServerContentSignature:]", 227, 0, v13);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    v15 = v13[0];
    v16 = 2080;
    v17 = "[ICDFileProviderItemServiceProxy getServerContentSignature:]";
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s %@", buf, 0x20u);
  }

  clientPrivilegesDescriptor = [(ICDFileProviderItemServiceProxy *)self clientPrivilegesDescriptor];
  isAutomationEntitled = [clientPrivilegesDescriptor isAutomationEntitled];

  if (isAutomationEntitled)
  {
    remoteObject = [(ICDFileProviderItemServiceProxy *)self remoteObject];
    itemIdentifier = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
    [remoteObject getServerContentSignatureAtItemIdentifier:itemIdentifier reply:signatureCopy];
  }

  else
  {
    remoteObject = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isAutomationEntitled"];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100025AB4;
    v11[3] = &unk_100044598;
    v12 = signatureCopy;
    sub_100025AB4(v11, remoteObject);
    itemIdentifier = v12;
  }

  sub_10001A3DC(v13);
}

@end