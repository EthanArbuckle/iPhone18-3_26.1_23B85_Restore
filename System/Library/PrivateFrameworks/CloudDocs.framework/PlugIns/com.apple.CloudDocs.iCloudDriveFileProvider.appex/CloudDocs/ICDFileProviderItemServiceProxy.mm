@interface ICDFileProviderItemServiceProxy
- (BOOL)_hasAccessToAppLibraryID:(id)a3;
- (BOOL)_isAppLibraryProxyEntitled;
- (ICDFileProviderItemServiceProxy)initWithItemIdentifier:(id)a3 domainIdentifier:(id)a4 operationQueue:(id)a5 clientPrivilegesDescriptor:(id)a6;
- (id)remoteObject;
- (void)boostFilePresenter:(id)a3;
- (void)capabilityWhenTryingToReparentToNewParent:(id)a3 domain:(id)a4 reply:(id)a5;
- (void)copyShareIDWithReply:(id)a3;
- (void)getAttributeValues:(id)a3 reply:(id)a4;
- (void)getClientSaltingVerificationKeys:(id)a3;
- (void)getCreatorNameComponents:(id)a3;
- (void)getServerContentSignature:(id)a3;
- (void)getServerSaltingKeys:(id)a3;
- (void)getiWorkNeedsShareMigrate:(id)a3;
- (void)getiWorkPublishingBadgingStatus:(id)a3;
- (void)getiWorkPublishingInfo:(id)a3;
- (void)launchItemCountMismatchChecks:(id)a3;
- (void)refreshSharingState:(id)a3;
- (void)unboostFilePresenter:(id)a3;
@end

@implementation ICDFileProviderItemServiceProxy

- (ICDFileProviderItemServiceProxy)initWithItemIdentifier:(id)a3 domainIdentifier:(id)a4 operationQueue:(id)a5 clientPrivilegesDescriptor:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ICDFileProviderItemServiceProxy;
  v15 = [(ICDFileProviderItemServiceProxy *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_itemIdentifier, a3);
    objc_storeStrong(&v16->_domainIdentifier, a4);
    objc_storeStrong(&v16->_operationQueue, a5);
    objc_storeStrong(&v16->_clientPrivilegesDescriptor, a6);
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(BRCClientPrivilegesDescriptor *)v2->_clientPrivilegesDescriptor isProxyEntitled];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)_hasAccessToAppLibraryID:(id)a3
{
  v4 = a3;
  if ([(ICDFileProviderItemServiceProxy *)self _isAppLibraryProxyEntitled]|| ![(ICDFileProviderItemServiceProxy *)self _isSandboxed])
  {
    v8 = 1;
  }

  else
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(BRCClientPrivilegesDescriptor *)v5->_clientPrivilegesDescriptor appLibraryIDs];
    objc_sync_exit(v5);

    if (![v6 count] || v4 && !objc_msgSend(v6, "containsObject:", v4) || (clientPrivilegesDescriptor = v5->_clientPrivilegesDescriptor, v8 = 1, -[BRCClientPrivilegesDescriptor cloudEnabledStatusWithHasSession:](clientPrivilegesDescriptor, "cloudEnabledStatusWithHasSession:", 1) != 1))
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)boostFilePresenter:(id)a3
{
  v4 = a3;
  v5 = [(ICDFileProviderItemServiceProxy *)self remoteObject];
  v6 = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000D8EC;
  v8[3] = &unk_100044598;
  v9 = v4;
  v7 = v4;
  [v5 boostFilePresenterForItemIdentifier:v6 reply:v8];
}

- (void)unboostFilePresenter:(id)a3
{
  v4 = a3;
  v5 = [(ICDFileProviderItemServiceProxy *)self remoteObject];
  v6 = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
  v11 = v6;
  v7 = [NSArray arrayWithObjects:&v11 count:1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000DB18;
  v9[3] = &unk_100044598;
  v10 = v4;
  v8 = v4;
  [v5 unboostFilePresenterForItemIdentifiers:v7 reply:v9];
}

- (void)capabilityWhenTryingToReparentToNewParent:(id)a3 domain:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(ICDFileProviderItemServiceProxy *)self domainIdentifier];
  v12 = [v11 isEqual:v10];

  if (v12)
  {
    v13 = [(ICDFileProviderItemServiceProxy *)self remoteObject];
    v14 = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10000DE54;
    v19[3] = &unk_100044B80;
    v20 = v9;
    [v13 capabilityWhenTryingToReparentItemIdentifier:v14 toNewParent:v8 reply:v19];

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
    (*(v9 + 2))(v9, 4, v15);
  }
}

- (void)getAttributeValues:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICDFileProviderItemServiceProxy *)self remoteObject];
  v9 = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000E4F0;
  v11[3] = &unk_100044BF8;
  v12 = v6;
  v10 = v6;
  [v8 getAttributeValues:v7 forItemIdentifier:v9 reply:v11];
}

- (void)getiWorkPublishingInfo:(id)a3
{
  v4 = a3;
  v5 = [(ICDFileProviderItemServiceProxy *)self remoteObject];
  v6 = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000E6E8;
  v8[3] = &unk_100044C20;
  v9 = v4;
  v7 = v4;
  [v5 getiWorkPublishingInfoForItemIdentifier:v6 reply:v8];
}

- (void)getiWorkPublishingBadgingStatus:(id)a3
{
  v4 = a3;
  v5 = [(ICDFileProviderItemServiceProxy *)self remoteObject];
  v6 = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000EB00;
  v8[3] = &unk_100044C48;
  v9 = v4;
  v7 = v4;
  [v5 getiWorkPublishingBadgingStatusForItemIdentifier:v6 reply:v8];
}

- (void)getiWorkNeedsShareMigrate:(id)a3
{
  v4 = a3;
  v5 = [(ICDFileProviderItemServiceProxy *)self remoteObject];
  v6 = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000ECF0;
  v8[3] = &unk_100044C70;
  v9 = v4;
  v7 = v4;
  [v5 getiWorkNeedsShareMigrateForItemIdentifier:v6 reply:v8];
}

- (void)refreshSharingState:(id)a3
{
  v4 = a3;
  memset(v16, 0, sizeof(v16));
  sub_100001C50(1, "[ICDFileProviderItemServiceProxy refreshSharingState:]", 173, 0, v16);
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

  v7 = [(ICDFileProviderItemServiceProxy *)self clientPrivilegesDescriptor];
  v8 = [v7 isAutomationEntitled];

  if (v8)
  {
    v9 = [(ICDFileProviderItemServiceProxy *)self remoteObject];
    v10 = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000F1CC;
    v12[3] = &unk_100044598;
    v13 = v4;
    [v9 refreshSharingStateForItemIdentifier:v10 reply:v12];

    v11 = v13;
  }

  else
  {
    v11 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isAutomationEntitled"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000F0BC;
    v14[3] = &unk_100044598;
    v15 = v4;
    sub_10000F0BC(v14, v11);
  }

  sub_100001DE4(v16);
}

- (void)launchItemCountMismatchChecks:(id)a3
{
  v4 = a3;
  memset(v16, 0, sizeof(v16));
  sub_100001C50(1, "[ICDFileProviderItemServiceProxy launchItemCountMismatchChecks:]", 184, 0, v16);
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

  v7 = [(ICDFileProviderItemServiceProxy *)self clientPrivilegesDescriptor];
  v8 = [v7 isAutomationEntitled];

  if (v8)
  {
    v9 = [(ICDFileProviderItemServiceProxy *)self remoteObject];
    v10 = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000F6A4;
    v12[3] = &unk_100044C70;
    v13 = v4;
    [v9 launchItemCountMismatchChecksForItemIdentifier:v10 reply:v12];

    v11 = v13;
  }

  else
  {
    v11 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isAutomationEntitled"];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000F584;
    v14[3] = &unk_100044598;
    v15 = v4;
    sub_10000F584(v14, v11);
  }

  sub_100001DE4(v16);
}

- (void)copyShareIDWithReply:(id)a3
{
  v4 = a3;
  v5 = [(ICDFileProviderItemServiceProxy *)self remoteObject];
  v6 = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000F894;
  v8[3] = &unk_100044C98;
  v9 = v4;
  v7 = v4;
  [v5 copyShareIDForItemIdentifier:v6 reply:v8];
}

- (void)getCreatorNameComponents:(id)a3
{
  v4 = a3;
  v5 = [(ICDFileProviderItemServiceProxy *)self remoteObject];
  v6 = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000FA8C;
  v8[3] = &unk_100044CC0;
  v9 = v4;
  v7 = v4;
  [v5 getCreatorNameComponentsForItemIdentifier:v6 reply:v8];
}

- (void)getClientSaltingVerificationKeys:(id)a3
{
  v4 = a3;
  memset(v13, 0, sizeof(v13));
  sub_100001C50(1, "[ICDFileProviderItemServiceProxy getClientSaltingVerificationKeys:]", 209, 0, v13);
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

  v7 = [(ICDFileProviderItemServiceProxy *)self clientPrivilegesDescriptor];
  v8 = [v7 isAutomationEntitled];

  if (v8)
  {
    v9 = [(ICDFileProviderItemServiceProxy *)self remoteObject];
    v10 = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
    [v9 getClientSaltingVerificationKeysAtItemIdentifier:v10 reply:v4];
  }

  else
  {
    v9 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isAutomationEntitled"];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000FE08;
    v11[3] = &unk_100044598;
    v12 = v4;
    sub_10000FE08(v11, v9);
    v10 = v12;
  }

  sub_100001DE4(v13);
}

- (void)getServerSaltingKeys:(id)a3
{
  v4 = a3;
  memset(v13, 0, sizeof(v13));
  sub_100001C50(1, "[ICDFileProviderItemServiceProxy getServerSaltingKeys:]", 218, 0, v13);
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

  v7 = [(ICDFileProviderItemServiceProxy *)self clientPrivilegesDescriptor];
  v8 = [v7 isAutomationEntitled];

  if (v8)
  {
    v9 = [(ICDFileProviderItemServiceProxy *)self remoteObject];
    v10 = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
    [v9 getServerSaltingKeysAtItemIdentifier:v10 reply:v4];
  }

  else
  {
    v9 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isAutomationEntitled"];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001019C;
    v11[3] = &unk_100044598;
    v12 = v4;
    sub_10001019C(v11, v9);
    v10 = v12;
  }

  sub_100001DE4(v13);
}

- (void)getServerContentSignature:(id)a3
{
  v4 = a3;
  memset(v13, 0, sizeof(v13));
  sub_100001C50(1, "[ICDFileProviderItemServiceProxy getServerContentSignature:]", 227, 0, v13);
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

  v7 = [(ICDFileProviderItemServiceProxy *)self clientPrivilegesDescriptor];
  v8 = [v7 isAutomationEntitled];

  if (v8)
  {
    v9 = [(ICDFileProviderItemServiceProxy *)self remoteObject];
    v10 = [(ICDFileProviderItemServiceProxy *)self itemIdentifier];
    [v9 getServerContentSignatureAtItemIdentifier:v10 reply:v4];
  }

  else
  {
    v9 = [NSError br_errorWithDomain:BRCloudDocsErrorDomain code:26 description:@"%s privilege required", "isAutomationEntitled"];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100010530;
    v11[3] = &unk_100044598;
    v12 = v4;
    sub_100010530(v11, v9);
    v10 = v12;
  }

  sub_100001DE4(v13);
}

@end