@interface BRDaemonConnection
+ (void)registerPersonaDomainIdentifer:(id)a3 databaseID:(id)a4 delegate:(id)a5;
+ (void)unregisterPersonaDomainIdentifierAndDatabaseIDForDelegate:(id)a3;
- (BOOL)validateConnectionExtensionInfoForPersonaID:(id)a3;
@end

@implementation BRDaemonConnection

+ (void)registerPersonaDomainIdentifer:(id)a3 databaseID:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[UMUserManager sharedManager];
  v12 = [v11 br_currentPersonaID];

  v13 = a1;
  objc_sync_enter(v13);
  if (!qword_100052398)
  {
    v14 = objc_opt_new();
    v15 = qword_100052398;
    qword_100052398 = v14;
  }

  v16 = [[BRICDExtensionInfo alloc] initWithDomainIdentifier:v8 databaseID:v9 delegate:v10];
  v17 = [qword_100052398 objectForKeyedSubscript:v12];
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
      v29 = [objc_claimAutoreleasedReturnValue() UTF8String];
      __assert_rtn("+[BRDaemonConnection(FPFSExtensionAdditions) registerPersonaDomainIdentifer:databaseID:delegate:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/os-plugins/fileprovider-extension-iclouddrive/BRDaemonConnection+FPFSExtensionAdditions.m", 112, v29);
    }

    v18 = [v17 delegates];
    [v18 addObject:v10];

    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v30 = 138412802;
      v31 = v10;
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
    [qword_100052398 setObject:v16 forKeyedSubscript:v12];
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v30 = 138413058;
      v31 = v16;
      v32 = 2112;
      v33 = v12;
      v34 = 2112;
      v35 = v10;
      v36 = 2112;
      v37 = v19;
      v21 = "[DEBUG] Registered extensionInfo %@ for persona %@ for delegate %@%@";
      v22 = v20;
      v23 = 42;
      goto LABEL_10;
    }
  }

  objc_sync_exit(v13);
  v24 = [v13 defaultConnectionIfExistsForPersonaID:v12];
  [v24 validateConnectionExtensionInfoForPersonaID:v12];

  v25 = [v13 secondaryConnectionIfExistsForPersonaID:v12];
  [v25 validateConnectionExtensionInfoForPersonaID:v12];
}

+ (void)unregisterPersonaDomainIdentifierAndDatabaseIDForDelegate:(id)a3
{
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  v6 = +[UMUserManager sharedManager];
  v7 = [v6 br_currentPersonaID];

  v8 = [qword_100052398 objectForKeyedSubscript:v7];
  if (!v8)
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      sub_100027BBC();
    }
  }

  v9 = [v8 delegates];
  v10 = [v9 count];

  v11 = [v8 delegates];
  [v11 removeObject:v4];

  v12 = [v8 delegates];
  v13 = [v12 count];

  if (v10 == v13)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      v23 = 138412802;
      v24 = v4;
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
      v24 = v4;
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

    [qword_100052398 setObject:0 forKeyedSubscript:v7];
    v20 = +[BRDaemonConnection defaultConnectionIfExists];
    [v20 invalidate];

    v16 = +[BRDaemonConnection secondaryConnectionIfExists];
    [v16 invalidate];
  }

  objc_sync_exit(v5);
}

- (BOOL)validateConnectionExtensionInfoForPersonaID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [qword_100052398 objectForKeyedSubscript:v4];
  if (v6)
  {
    objc_sync_exit(v5);

    v7 = [v6 databaseID];

    if (!v7)
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

    objc_sync_exit(v5);
  }

  v12 = [(BRDaemonConnection *)v5 newFPFSSyncProxy];
  v13 = [v6 domainIdentifier];
  v14 = [v6 databaseID];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100011AAC;
  v19[3] = &unk_100044CE8;
  v20 = v6;
  v21 = v5;
  v22 = v12;
  v15 = v12;
  v16 = v6;
  [v15 validateConnectionDomainWithDomainIdentifier:v13 databaseID:v14 reply:v19];

  v17 = [v15 result];
  LOBYTE(v13) = [v17 BOOLValue];

  return v13;
}

@end