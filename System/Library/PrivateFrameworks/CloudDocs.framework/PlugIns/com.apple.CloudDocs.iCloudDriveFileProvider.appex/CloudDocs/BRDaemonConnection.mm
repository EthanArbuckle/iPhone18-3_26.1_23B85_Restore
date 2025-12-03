@interface BRDaemonConnection
+ (void)registerPersonaDomainIdentifer:(id)identifer databaseID:(id)d delegate:(id)delegate;
+ (void)unregisterPersonaDomainIdentifierAndDatabaseIDForDelegate:(id)delegate;
- (BOOL)validateConnectionExtensionInfoForPersonaID:(id)d;
@end

@implementation BRDaemonConnection

+ (void)registerPersonaDomainIdentifer:(id)identifer databaseID:(id)d delegate:(id)delegate
{
  identiferCopy = identifer;
  dCopy = d;
  delegateCopy = delegate;
  v11 = +[UMUserManager sharedManager];
  br_currentPersonaID = [v11 br_currentPersonaID];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!qword_100052398)
  {
    v14 = objc_opt_new();
    v15 = qword_100052398;
    qword_100052398 = v14;
  }

  v16 = [[BRICDExtensionInfo alloc] initWithDomainIdentifier:identiferCopy databaseID:dCopy delegate:delegateCopy];
  v17 = [qword_100052398 objectForKeyedSubscript:br_currentPersonaID];
  if (v17)
  {
    if (![(BRICDExtensionInfo *)v16 isEqualToExtensionInfo:v17])
    {
      abc_report_panic_with_signature();
      [NSString stringWithFormat:@"Can't add domain info for persona when one already exists!"];
      objc_claimAutoreleasedReturnValue();
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        v28 = brc_append_system_info_to_message();
        sub_100027B54(v28, v26, &v30, v27);
      }

      brc_append_system_info_to_message();
      uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
      __assert_rtn("+[BRDaemonConnection(FPFSExtensionAdditions) registerPersonaDomainIdentifer:databaseID:delegate:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/os-plugins/fileprovider-extension-iclouddrive/BRDaemonConnection+FPFSExtensionAdditions.m", 112, uTF8String);
    }

    delegates = [v17 delegates];
    [delegates addObject:delegateCopy];

    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v30 = 138412802;
      v31 = delegateCopy;
      v32 = 2112;
      v33 = v17;
      v34 = 2112;
      v35 = v19;
      v21 = "[DEBUG] Added delegate %@ to existing extension infos %@%@";
      v22 = v20;
      v23 = 32;
LABEL_10:
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, v21, &v30, v23);
    }
  }

  else
  {
    [qword_100052398 setObject:v16 forKeyedSubscript:br_currentPersonaID];
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v30 = 138413058;
      v31 = v16;
      v32 = 2112;
      v33 = br_currentPersonaID;
      v34 = 2112;
      v35 = delegateCopy;
      v36 = 2112;
      v37 = v19;
      v21 = "[DEBUG] Registered extensionInfo %@ for persona %@ for delegate %@%@";
      v22 = v20;
      v23 = 42;
      goto LABEL_10;
    }
  }

  objc_sync_exit(selfCopy);
  v24 = [selfCopy defaultConnectionIfExistsForPersonaID:br_currentPersonaID];
  [v24 validateConnectionExtensionInfoForPersonaID:br_currentPersonaID];

  v25 = [selfCopy secondaryConnectionIfExistsForPersonaID:br_currentPersonaID];
  [v25 validateConnectionExtensionInfoForPersonaID:br_currentPersonaID];
}

+ (void)unregisterPersonaDomainIdentifierAndDatabaseIDForDelegate:(id)delegate
{
  delegateCopy = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = +[UMUserManager sharedManager];
  br_currentPersonaID = [v6 br_currentPersonaID];

  v8 = [qword_100052398 objectForKeyedSubscript:br_currentPersonaID];
  if (!v8)
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_100027BBC();
    }
  }

  delegates = [v8 delegates];
  v10 = [delegates count];

  delegates2 = [v8 delegates];
  [delegates2 removeObject:delegateCopy];

  delegates3 = [v8 delegates];
  v13 = [delegates3 count];

  if (v10 == v13)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v23 = 138412802;
      v24 = delegateCopy;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v14;
      _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: No delegate %@ found in extensionInfo %@%@", &v23, 0x20u);
    }
  }

  else
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v23 = 138412802;
      v24 = delegateCopy;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v14;
      _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] Removed delegate %@ from extensionInfo %@%@", &v23, 0x20u);
    }
  }

  if (v13)
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100027C30();
    }
  }

  else
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_100027CAC();
    }

    [qword_100052398 setObject:0 forKeyedSubscript:br_currentPersonaID];
    v20 = +[BRDaemonConnection defaultConnectionIfExists];
    [v20 invalidate];

    v16 = +[BRDaemonConnection secondaryConnectionIfExists];
    [v16 invalidate];
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)validateConnectionExtensionInfoForPersonaID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [qword_100052398 objectForKeyedSubscript:dCopy];
  if (v6)
  {
    objc_sync_exit(selfCopy);

    databaseID = [v6 databaseID];

    if (!databaseID)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_100027D28();
      }

      [v6 refreshDatabaseID];
    }
  }

  else
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      sub_100027D9C();
    }

    objc_sync_exit(selfCopy);
  }

  newFPFSSyncProxy = [(BRDaemonConnection *)selfCopy newFPFSSyncProxy];
  domainIdentifier = [v6 domainIdentifier];
  databaseID2 = [v6 databaseID];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100011AAC;
  v19[3] = &unk_100044CE8;
  v20 = v6;
  v21 = selfCopy;
  v22 = newFPFSSyncProxy;
  v15 = newFPFSSyncProxy;
  v16 = v6;
  [v15 validateConnectionDomainWithDomainIdentifier:domainIdentifier databaseID:databaseID2 reply:v19];

  result = [v15 result];
  LOBYTE(domainIdentifier) = [result BOOLValue];

  return domainIdentifier;
}

@end