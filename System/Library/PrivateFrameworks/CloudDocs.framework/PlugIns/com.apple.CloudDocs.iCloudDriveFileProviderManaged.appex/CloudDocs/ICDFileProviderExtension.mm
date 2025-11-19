@interface ICDFileProviderExtension
- (BOOL)_isLoggedInOrError:(id *)a3;
- (ICDFileProviderExtension)initWithDomain:(id)a3;
- (id)_defaultApplicationContainerForBundleIdentifier:(id)a3 completionHandler:(id)a4;
- (id)_fetchContentsForItemWithIdentifier:(id)a3 existingContents:(id)a4 version:(id)a5 request:(id)a6 completionHandler:(id)a7;
- (id)_fetchThumbnailsForItemIdentifiersWithVersionMap:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandler:(id)a5 completionHandler:(id)a6;
- (id)_getAsyncProxyWithErrorHandler:(id)a3;
- (id)_getDatabaseIDFromDomain;
- (id)_refreshDatabaseIDForcingRefresh:(BOOL)a3;
- (id)createItemBasedOnTemplate:(id)a3 fields:(unint64_t)a4 contents:(id)a5 options:(unint64_t)a6 request:(id)a7 completionHandler:(id)a8;
- (id)deleteItemWithIdentifier:(id)a3 baseVersion:(id)a4 options:(unint64_t)a5 request:(id)a6 completionHandler:(id)a7;
- (id)enumeratorForContainerItemIdentifier:(id)a3 request:(id)a4 error:(id *)a5;
- (id)enumeratorForVersionsOfItemWithIdentifier:(id)a3 request:(id)a4 error:(id *)a5;
- (id)fetchContentsForItemWithIdentifier:(id)a3 version:(id)a4 usingExistingContentsAtURL:(id)a5 existingVersion:(id)a6 request:(id)a7 completionHandler:(id)a8;
- (id)fetchThumbnailsForDictionary:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandler:(id)a5 completionHandler:(id)a6;
- (id)fetchThumbnailsForDictionary:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandlerDataURLWithMetadata:(id)a5 completionHandler:(id)a6;
- (id)fetchThumbnailsForDictionary:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandlerWithMetadata:(id)a5 completionHandler:(id)a6;
- (id)fetchThumbnailsForItemIdentifiers:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandler:(id)a5 completionHandler:(id)a6;
- (id)fetchThumbnailsForItemIdentifiers:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandlerWithType:(id)a5 completionHandler:(id)a6;
- (id)itemForIdentifier:(id)a3 request:(id)a4 completionHandler:(id)a5;
- (id)modifyItem:(id)a3 baseVersion:(id)a4 changedFields:(unint64_t)a5 contents:(id)a6 options:(unint64_t)a7 request:(id)a8 completionHandler:(id)a9;
- (id)populateNonCodableAttributesOfTemplate:(id)a3;
- (id)supportedServiceSourcesForItemIdentifier:(id)a3 completionHandler:(id)a4;
- (void)_accountDidChange;
- (void)_getQueryItemForFileObjectID:(id)a3 completionHandler:(id)a4;
- (void)_isSharableItem:(id)a3 withCompletionHandler:(id)a4;
- (void)_startWaitingForDomainToBeFullySetup;
- (void)_waitForDomainSetup;
- (void)collaborationCoordinator:(id)a3 handleStartCollaborationAction:(id)a4;
- (void)collaborationMetadataForItemWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)importDidFinishWithCompletionHandler:(id)a3;
- (void)invalidate;
- (void)waitForStabilizationWithCompletionHandler:(id)a3;
@end

@implementation ICDFileProviderExtension

- (id)_getDatabaseIDFromDomain
{
  v2 = [(NSFileProviderDomain *)self->_domain userInfo];
  v3 = [v2 objectForKeyedSubscript:BRDomainDatabaseIDKey];

  return v3;
}

- (id)_refreshDatabaseIDForcingRefresh:(BOOL)a3
{
  v5 = [(NSFileProviderDomain *)self->_domain identifier];
  if (v5)
  {
    if (a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = [(ICDFileProviderExtension *)self _getDatabaseIDFromDomain];
    }

    v10 = [(NSFileProviderDomain *)self->_domain identifier];
    domain = self->_domain;
    v13 = domain != 0;
    if (domain && !v6)
    {
      v14 = 0;
      *&v11 = 134218242;
      v24 = v11;
      do
      {
        v15 = [(NSFileProviderManager *)self->_fileProviderManager br_getFPDomainWithIdentifier:v5 withError:0, v24];
        v16 = self->_domain;
        self->_domain = v15;

        v6 = [(ICDFileProviderExtension *)self _getDatabaseIDFromDomain];
        v17 = brc_bread_crumbs();
        v18 = brc_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = v24;
          v26 = v14 + 1;
          v27 = 2112;
          v28 = v17;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] Database ID from domain is nil, retry number: %lu%@", buf, 0x16u);
        }

        usleep(0x186A0u);
        v19 = self->_domain;
        v13 = v19 != 0;
        if (!v19)
        {
          break;
        }

        if (v6)
        {
          break;
        }
      }

      while (v14++ < 9);
    }

    if (v13)
    {
      v9 = v6;
    }

    else
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, 0x90u))
      {
        sub_100027374();
      }

      [BRPosixOperationsWrapper exitProcess:1];
      v9 = 0;
    }
  }

  else
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1000273E0();
    }

    [BRPosixOperationsWrapper exitProcess:1];
    v9 = 0;
  }

  return v9;
}

- (void)_waitForDomainSetup
{
  if (!self->_finishedDomainSetup)
  {
    dispatch_sync(self->_domainSetupWaiterQueue, &stru_100044A88);
    if (!self->_finishedDomainSetup)
    {
      sub_100027454();
    }
  }
}

- (void)_startWaitingForDomainToBeFullySetup
{
  domainSetupWaiterQueue = self->_domainSetupWaiterQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E0F4;
  block[3] = &unk_1000446B0;
  block[4] = self;
  dispatch_async(domainSetupWaiterQueue, block);
}

- (id)_getAsyncProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  [(ICDFileProviderExtension *)self _waitForDomainSetup];
  v5 = +[BRDaemonConnection defaultConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)enumeratorForContainerItemIdentifier:(id)a3 request:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (!self->_isCiconiaDomain)
  {
    memset(v24, 0, sizeof(v24));
    sub_10001A20C(0, "[ICDFileProviderExtension enumeratorForContainerItemIdentifier:request:error:]", 213, 0, v24);
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v26 = v24[0];
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v18;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx requested enumerator for %@%@", buf, 0x20u);
    }

    [(ICDFileProviderExtension *)self _waitForDomainSetup];
    if ([v8 isEqualToString:NSFileProviderWorkingSetContainerItemIdentifier])
    {
      v20 = [[BRBaseWorkingSetEnumerator alloc] initWithFileProviderManager:self->_fileProviderManager];
    }

    else
    {
      if (![v8 isEqualToString:NSFileProviderTrashContainerItemIdentifier])
      {
        v21 = [BRFileObjectID fileObjectIDWithString:v8];
        v17 = [[ICDFileEnumerator alloc] initWithFileObjectID:v21 itemIdentifier:v8 recursive:0 request:v9 fileProviderManager:self->_fileProviderManager];

        goto LABEL_18;
      }

      v20 = objc_opt_new();
    }

    v17 = v20;
LABEL_18:
    sub_10001A3DC(v24);
    goto LABEL_19;
  }

  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    domain = self->_domain;
    *buf = 138412546;
    v26 = domain;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] Initialized with a Ciconia domain %@. This is not supported%@", buf, 0x16u);
  }

  v13 = +[NSError brc_errorLoggedOut];
  if (v13)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      v23 = "(passed to caller)";
      *buf = 136315906;
      v26 = "[ICDFileProviderExtension enumeratorForContainerItemIdentifier:request:error:]";
      v27 = 2080;
      if (!a5)
      {
        v23 = "(ignored by caller)";
      }

      v28 = v23;
      v29 = 2112;
      v30 = v13;
      v31 = 2112;
      v32 = v14;
      _os_log_error_impl(&_mh_execute_header, v15, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a5)
  {
    v16 = v13;
    *a5 = v13;
  }

  v17 = 0;
LABEL_19:

  return v17;
}

- (id)populateNonCodableAttributesOfTemplate:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 symlinkTargetPath];

  if (v5)
  {
    v6 = [v3 symlinkTargetPath];
    [v4 setObject:v6 forKey:@"symlink-target"];
  }

  return v4;
}

- (id)createItemBasedOnTemplate:(id)a3 fields:(unint64_t)a4 contents:(id)a5 options:(unint64_t)a6 request:(id)a7 completionHandler:(id)a8
{
  v51 = a3;
  v13 = a5;
  v14 = a7;
  v52 = a8;
  if (!self->_isCiconiaDomain)
  {
    v49 = a4;
    memset(v62, 0, sizeof(v62));
    sub_10001A20C(1, "[ICDFileProviderExtension createItemBasedOnTemplate:fields:contents:options:request:completionHandler:]", 263, 0, v62);
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = v62[0];
      v23 = [v13 path];
      v24 = BRCPrettyPrintBitmap();
      v25 = BRCPrettyPrintBitmap();
      *buf = 134219522;
      *&buf[4] = v22;
      *&buf[12] = 2080;
      *&buf[14] = "[ICDFileProviderExtension createItemBasedOnTemplate:fields:contents:options:request:completionHandler:]";
      *&buf[22] = 2112;
      *v64 = v51;
      *&v64[8] = 2112;
      *v65 = v23;
      *&v65[8] = 2112;
      *v66 = v24;
      *&v66[8] = 2112;
      v67 = v25;
      v68 = 2112;
      v69 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s createItemBasedOnTemplate %@ at '%@' fields:%@ options:%@%@", buf, 0x48u);
    }

    if (v13)
    {
      v61 = 0;
      v26 = [FPSandboxingURLWrapper wrapperWithURL:v13 readonly:0 error:&v61];
      v27 = v61;
      if (v27)
      {
        v28 = v27;
        v29 = brc_bread_crumbs();
        v30 = brc_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          *buf = 136316418;
          *&buf[4] = "[ICDFileProviderExtension createItemBasedOnTemplate:fields:contents:options:request:completionHandler:]";
          *&buf[12] = 2112;
          *&buf[14] = 0;
          *&buf[22] = 1024;
          *v64 = 0;
          *&v64[4] = 1024;
          *&v64[6] = 0;
          *v65 = 2112;
          *&v65[2] = v28;
          *v66 = 2112;
          *&v66[2] = v29;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %d, %d, %@)%@", buf, 0x36u);
        }

        (*(v52 + 2))(v52, 0, 0, 0, v28);
        v19 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v26 = 0;
    }

    v31 = [v51 filename];
    v32 = [v31 br_isExcludedWithMaximumDepth:1];

    if (v32)
    {
      v28 = +[NSError brc_errorExcludedFromSyncDueToFilename];
      v33 = brc_bread_crumbs();
      v34 = brc_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = [v28 br_fileProviderError];
        *buf = 136316418;
        *&buf[4] = "[ICDFileProviderExtension createItemBasedOnTemplate:fields:contents:options:request:completionHandler:]";
        *&buf[12] = 2112;
        *&buf[14] = 0;
        *&buf[22] = 1024;
        *v64 = 0;
        *&v64[4] = 1024;
        *&v64[6] = 0;
        *v65 = 2112;
        *&v65[2] = v35;
        *v66 = 2112;
        *&v66[2] = v33;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %d, %d, %@)%@", buf, 0x36u);
      }

      v36 = [v28 br_fileProviderError];
      (*(v52 + 2))(v52, 0, 0, 0, v36);

      v19 = 0;
    }

    else
    {
      v37 = [v51 filename];
      v38 = [v37 br_isSideFaultName];

      if (v38)
      {
        v39 = brc_bread_crumbs();
        v40 = brc_default_log();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v39;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[INFO] rejecting side fault%@", buf, 0xCu);
        }

        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 136316418;
          *&buf[4] = "[ICDFileProviderExtension createItemBasedOnTemplate:fields:contents:options:request:completionHandler:]";
          *&buf[12] = 2112;
          *&buf[14] = 0;
          *&buf[22] = 1024;
          *v64 = 0;
          *&v64[4] = 1024;
          *&v64[6] = 0;
          strcpy(v65, "@\b");
          v65[3] = 0;
          *&v65[4] = 0;
          *&v65[6] = 0;
          *v66 = 2112;
          *&v66[2] = v41;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %d, %d, %@)%@", buf, 0x36u);
        }

        (*(v52 + 2))(v52, 0, 0, 0, 0);
        v19 = [NSProgress progressWithTotalUnitCount:0];
        goto LABEL_27;
      }

      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_10000EF38;
      v59[3] = &unk_100044598;
      v43 = v52;
      v60 = v43;
      v44 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v59];
      v57 = 0uLL;
      v58 = 0;
      sub_10001A20C(0, "[ICDFileProviderExtension createItemBasedOnTemplate:fields:contents:options:request:completionHandler:]", 292, 0, &v57);
      v45 = brc_bread_crumbs();
      v46 = brc_default_log();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        sub_10002751C(&v57);
      }

      *buf = v57;
      *&buf[16] = v58;
      v47 = [(ICDFileProviderExtension *)self populateNonCodableAttributesOfTemplate:v51];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_10000F070;
      v53[3] = &unk_100044BE8;
      v53[4] = self;
      v55 = *buf;
      v56 = *&buf[16];
      v54 = v43;
      [v44 createItemBasedOnTemplate:v51 fields:v49 contents:v26 options:a6 additionalItemAttributes:v47 completionHandler:v53];

      v19 = [NSProgress progressWithTotalUnitCount:0];

      v28 = v60;
    }

LABEL_26:

LABEL_27:
    sub_10001A3DC(v62);
    goto LABEL_28;
  }

  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    domain = self->_domain;
    *buf = 138412546;
    *&buf[4] = domain;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Initialized with a Ciconia domain %@. This is not supported%@", buf, 0x16u);
  }

  v18 = +[NSError brc_errorLoggedOut];
  (*(v52 + 2))(v52, 0, 0, 0, v18);

  v19 = 0;
LABEL_28:

  return v19;
}

- (id)deleteItemWithIdentifier:(id)a3 baseVersion:(id)a4 options:(unint64_t)a5 request:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v30 = a6;
  v14 = a7;
  if (self->_isCiconiaDomain)
  {
    v15 = brc_bread_crumbs();
    v16 = v12;
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      domain = self->_domain;
      *buf = 138412546;
      *&buf[4] = domain;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARNING] Initialized with a Ciconia domain %@. This is not supported%@", buf, 0x16u);
    }

    v19 = +[NSError brc_errorLoggedOut];
    v14[2](v14, v19);

    v20 = 0;
  }

  else
  {
    memset(v39, 0, sizeof(v39));
    sub_10001A20C(1, "[ICDFileProviderExtension deleteItemWithIdentifier:baseVersion:options:request:completionHandler:]", 327, 0, v39);
    v16 = v12;
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = v39[0];
      v24 = [v13 br_prettyDescription];
      *buf = 134219266;
      *&buf[4] = v23;
      *&buf[12] = 2080;
      *&buf[14] = "[ICDFileProviderExtension deleteItemWithIdentifier:baseVersion:options:request:completionHandler:]";
      *&buf[22] = 2112;
      v16 = v12;
      v41 = v12;
      v42 = 2112;
      v43 = v24;
      v44 = 2048;
      v45 = a5;
      v46 = 2112;
      v47 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s deleteItemWithIdentifier %@ baseVersion %@ options:%llu%@", buf, 0x3Eu);
    }

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10000F794;
    v37[3] = &unk_100044598;
    v25 = v14;
    v38 = v25;
    v26 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v37];
    v35 = 0uLL;
    v36 = 0;
    sub_10001A20C(0, "[ICDFileProviderExtension deleteItemWithIdentifier:baseVersion:options:request:completionHandler:]", 333, 0, &v35);
    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_10002751C(&v35);
    }

    *buf = v35;
    *&buf[16] = v36;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10000F8A4;
    v31[3] = &unk_100044C38;
    v31[4] = self;
    v33 = v35;
    v34 = v36;
    v32 = v25;
    [v26 deleteItemWithIdentifier:v16 baseVersion:v13 options:a5 completionHandler:v31];
    v20 = [NSProgress progressWithTotalUnitCount:0];

    sub_10001A3DC(v39);
  }

  return v20;
}

- (id)_fetchContentsForItemWithIdentifier:(id)a3 existingContents:(id)a4 version:(id)a5 request:(id)a6 completionHandler:(id)a7
{
  v53 = a3;
  v52 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (!self->_isCiconiaDomain)
  {
    memset(v63, 0, sizeof(v63));
    sub_10001A20C(1, "[ICDFileProviderExtension _fetchContentsForItemWithIdentifier:existingContents:version:request:completionHandler:]", 370, 0, v63);
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = v63[0];
      v23 = [v12 br_prettyDescription];
      v24 = [v13 isSpeculativeDownload];
      v25 = "NO";
      *buf = 134219266;
      *&buf[4] = v22;
      *&buf[12] = 2080;
      if (v24)
      {
        v25 = "YES";
      }

      *&buf[14] = "[ICDFileProviderExtension _fetchContentsForItemWithIdentifier:existingContents:version:request:completionHandler:]";
      *&buf[22] = 2112;
      v65 = v53;
      v66 = 2112;
      v67 = v23;
      v68 = 2080;
      v69 = v25;
      v70 = 2112;
      v71 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s fetchContentsForItemWithIdentifier %@ requestedVersion %@ speculative %s%@", buf, 0x3Eu);
    }

    if (v12)
    {
      v26 = [v12 br_contentEtag];
      if (!v26)
      {
        v27 = brc_bread_crumbs();
        v28 = brc_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          sub_10002758C();
        }

        v26 = +[NSError brc_errorNoEtagInContentSignature];
        v29 = brc_bread_crumbs();
        v30 = brc_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = [v26 br_fileProviderErrorForDownloadFlow];
          *buf = 136316162;
          *&buf[4] = "[ICDFileProviderExtension _fetchContentsForItemWithIdentifier:existingContents:version:request:completionHandler:]";
          *&buf[12] = 2112;
          *&buf[14] = 0;
          *&buf[22] = 2112;
          v65 = 0;
          v66 = 2112;
          v67 = v31;
          v68 = 2112;
          v69 = v29;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", buf, 0x34u);
        }

        v32 = [v26 br_fileProviderErrorForDownloadFlow];
        (*(v14 + 2))(v14, 0, 0, v32);
        v19 = 0;
LABEL_36:

        sub_10001A3DC(v63);
        goto LABEL_37;
      }
    }

    else
    {
      v26 = 0;
    }

    if ([v13 isSpeculativeDownload] && (+[BRReachabilityMonitor sharedReachabilityMonitor](BRReachabilityMonitor, "sharedReachabilityMonitor"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "isCellularNetwork"), v33, v34))
    {
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        sub_100027600();
      }

      v32 = +[NSError brc_errorShouldNotDownloadOverCellular];
      v37 = brc_bread_crumbs();
      v38 = brc_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = [v32 br_fileProviderErrorForDownloadFlow];
        *buf = 136316162;
        *&buf[4] = "[ICDFileProviderExtension _fetchContentsForItemWithIdentifier:existingContents:version:request:completionHandler:]";
        *&buf[12] = 2112;
        *&buf[14] = 0;
        *&buf[22] = 2112;
        v65 = 0;
        v66 = 2112;
        v67 = v39;
        v68 = 2112;
        v69 = v37;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", buf, 0x34u);
      }

      v40 = [v32 br_fileProviderErrorForDownloadFlow];
      (*(v14 + 2))(v14, 0, 0, v40);
      v19 = 0;
    }

    else
    {
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_100010344;
      v61[3] = &unk_100044598;
      v41 = v14;
      v62 = v41;
      v42 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v61];
      v59 = 0uLL;
      v60 = 0;
      sub_10001A20C(0, "[ICDFileProviderExtension _fetchContentsForItemWithIdentifier:existingContents:version:request:completionHandler:]", 398, 0, &v59);
      v43 = brc_bread_crumbs();
      v44 = brc_default_log();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        sub_10002751C(&v59);
      }

      *buf = v59;
      *&buf[16] = v60;
      v45 = [BRFileObjectID fileObjectIDWithString:v53];
      if ([v13 isSpeculativeDownload])
      {
        v46 = 8;
      }

      else
      {
        v46 = 0;
      }

      if (v52)
      {
        v47 = [FPSandboxingURLWrapper wrapperWithURL:v52 readonly:1 error:0];
      }

      else
      {
        v47 = 0;
      }

      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_10001046C;
      v54[3] = &unk_100044C88;
      v54[4] = self;
      v48 = v26;
      v55 = v48;
      v57 = *buf;
      v58 = *&buf[16];
      v56 = v41;
      v49 = [v42 startDownloadFileObject:v45 existingContents:v47 options:v46 etagIfLoser:v48 reply:v54];
      if (v48)
      {
        v50 = [NSProgress progressWithTotalUnitCount:1];

        v49 = v50;
      }

      v32 = v49;

      v40 = v62;
      v19 = v32;
    }

    goto LABEL_36;
  }

  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    domain = self->_domain;
    *buf = 138412546;
    *&buf[4] = domain;
    *&buf[12] = 2112;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Initialized with a Ciconia domain %@. This is not supported%@", buf, 0x16u);
  }

  v18 = +[NSError brc_errorLoggedOut];
  (*(v14 + 2))(v14, 0, 0, v18);

  v19 = 0;
LABEL_37:

  return v19;
}

- (void)_getQueryItemForFileObjectID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_isCiconiaDomain)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      domain = self->_domain;
      *buf = 138412546;
      v20 = domain;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] Initialized with a Ciconia domain %@. This is not supported%@", buf, 0x16u);
    }

    v12 = +[NSError brc_errorLoggedOut];
    (v8)[2](v8, 0, v12);
  }

  else
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100010A08;
    v17[3] = &unk_100044598;
    v13 = v7;
    v18 = v13;
    v14 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v17];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100010A20;
    v15[3] = &unk_100044CB0;
    v16 = v13;
    [v14 getQueryItemForBRFileObjectID:v6 reply:v15];

    v12 = v18;
  }
}

- (id)fetchContentsForItemWithIdentifier:(id)a3 version:(id)a4 usingExistingContentsAtURL:(id)a5 existingVersion:(id)a6 request:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v58 = a5;
  v57 = a6;
  v56 = a7;
  v16 = a8;
  if (!self->_isCiconiaDomain)
  {
    v21 = [v15 br_contentSignature];
    v18 = v14;
    v55 = [v57 br_contentSignature];
    memset(v81, 0, sizeof(v81));
    sub_10001A20C(1, "[ICDFileProviderExtension fetchContentsForItemWithIdentifier:version:usingExistingContentsAtURL:existingVersion:request:completionHandler:]", 464, 0, v81);
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = v81[0];
      v26 = [v15 br_prettyDescription];
      *buf = 134219522;
      v83 = v25;
      v84 = 2080;
      v85 = "[ICDFileProviderExtension fetchContentsForItemWithIdentifier:version:usingExistingContentsAtURL:existingVersion:request:completionHandler:]";
      v86 = 2112;
      v18 = v14;
      v87 = v14;
      v88 = 2112;
      v89 = v26;
      v90 = 2112;
      v91 = v58;
      v92 = 2112;
      v93 = v57;
      v94 = 2112;
      v95 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s fetchContentsForItemWithIdentifier %@ requestedVersion %@ usingExistingContentsAtURL %@ existingVersion %@%@", buf, 0x48u);
    }

    v27 = [BRFileObjectID fileObjectIDWithString:v18];
    v75 = 0;
    v76 = &v75;
    v77 = 0x3032000000;
    v78 = sub_100011488;
    v79 = sub_100011498;
    v80 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = sub_100011488;
    v73 = sub_100011498;
    v74 = 0;
    if (!v15)
    {
      v28 = dispatch_group_create();
      dispatch_group_enter(v28);
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_1000114A0;
      v65[3] = &unk_100044CD8;
      v67 = &v75;
      v68 = &v69;
      v29 = v28;
      v66 = v29;
      [(ICDFileProviderExtension *)self _getQueryItemForFileObjectID:v27 completionHandler:v65];
      dispatch_group_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
      v30 = [BRFieldContentSignature alloc];
      v31 = [v76[5] contentVersion];
      v32 = [v30 initWithData:v31];

      v21 = v32;
    }

    v33 = brc_bread_crumbs();
    v34 = brc_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v83 = v21;
      v84 = 2112;
      v85 = v55;
      v86 = 2112;
      v87 = v33;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "[INFO] req:%@, exist:%@%@", buf, 0x20u);
    }

    if (v21 && ([v55 isPendingSignature] && (objc_msgSend(v21, "hasPopulatedVersionAndSignature") & 1) != 0 || !objc_msgSend(v21, "contentDiffersWithSignature:", v55) || (objc_msgSend(v21, "hasOnlyLocalEditsOnTopOfSignature:", v55) & 1) != 0 || !v15 && objc_msgSend(v21, "containsLocalEdits")))
    {
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        sub_100027668();
      }

      if (v76[5])
      {
        v37 = brc_bread_crumbs();
        v38 = brc_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = [v76[5] asFileProviderItem];
          *buf = 136316162;
          v83 = "[ICDFileProviderExtension fetchContentsForItemWithIdentifier:version:usingExistingContentsAtURL:existingVersion:request:completionHandler:]";
          v84 = 2112;
          v85 = v58;
          v86 = 2112;
          v87 = v39;
          v88 = 2112;
          v89 = 0;
          v90 = 2112;
          v91 = v37;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", buf, 0x34u);
        }

        v40 = [v76[5] asFileProviderItem];
        v16[2](v16, v58, v40, 0);
      }

      else
      {
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_10001153C;
        v62[3] = &unk_100044D00;
        v63 = v58;
        v64 = v16;
        [(ICDFileProviderExtension *)self _getQueryItemForFileObjectID:v27 completionHandler:v62];

        v40 = v63;
      }
    }

    else
    {
      if (![v21 containsLocalEdits])
      {
        v51 = brc_bread_crumbs();
        v52 = brc_default_log();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          sub_1000276D0();
        }

        v53 = [(ICDFileProviderExtension *)self _fetchContentsForItemWithIdentifier:v18 existingContents:v58 version:v15 request:v56 completionHandler:v16];
        goto LABEL_40;
      }

      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        sub_100027738();
      }

      if (v76[5])
      {
        if (!v70[5])
        {
          v43 = +[NSError brc_errorRequestedVersionHasLocalEdits];
          v44 = v70[5];
          v70[5] = v43;
        }

        v45 = brc_bread_crumbs();
        v46 = brc_default_log();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = [v76[5] asFileProviderItem];
          v48 = [v70[5] br_fileProviderErrorForDownloadFlow];
          *buf = 136316162;
          v83 = "[ICDFileProviderExtension fetchContentsForItemWithIdentifier:version:usingExistingContentsAtURL:existingVersion:request:completionHandler:]";
          v84 = 2112;
          v85 = 0;
          v86 = 2112;
          v87 = v47;
          v88 = 2112;
          v89 = v48;
          v90 = 2112;
          v91 = v45;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", buf, 0x34u);
        }

        v49 = [v76[5] asFileProviderItem];
        v50 = [v70[5] br_fileProviderErrorForDownloadFlow];
        (v16)[2](v16, 0, v49, v50);
      }

      else
      {
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_1000116DC;
        v59[3] = &unk_100044D50;
        v59[4] = self;
        v60 = v58;
        v61 = v16;
        [(ICDFileProviderExtension *)self _getQueryItemForFileObjectID:v27 completionHandler:v59];
      }
    }

    v53 = [NSProgress progressWithTotalUnitCount:0];
LABEL_40:
    v22 = v53;
    _Block_object_dispose(&v69, 8);

    _Block_object_dispose(&v75, 8);
    sub_10001A3DC(v81);

    goto LABEL_41;
  }

  v17 = brc_bread_crumbs();
  v18 = v14;
  v19 = brc_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    domain = self->_domain;
    *buf = 138412546;
    v83 = domain;
    v84 = 2112;
    v85 = v17;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Initialized with a Ciconia domain %@. This is not supported%@", buf, 0x16u);
  }

  v21 = +[NSError brc_errorLoggedOut];
  (v16)[2](v16, 0, 0, v21);
  v22 = 0;
LABEL_41:

  return v22;
}

- (ICDFileProviderExtension)initWithDomain:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = ICDFileProviderExtension;
  v6 = [(ICDFileProviderExtension *)&v28 init];
  if (v6)
  {
    v27 = 0;
    v7 = [v5 identifier];
    v8 = [NSString br_currentPersonaIDWithIsDataSeparated:&v27];
    personaID = v6->_personaID;
    v6->_personaID = v8;

    objc_storeStrong(&v6->_domain, a3);
    v10 = [NSFileProviderManager managerForDomain:v5];
    fileProviderManager = v6->_fileProviderManager;
    v6->_fileProviderManager = v10;

    v12 = [NSString stringWithFormat:@"com.apple.CloudDocs.%@.responseQueue", v7];
    v13 = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(v14, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(v13, v15);

    responseQueue = v6->_responseQueue;
    v6->_responseQueue = v16;

    v18 = [NSString stringWithFormat:@"com.apple.CloudDocs.%@.xpcConnectionQueue", v7];
    v19 = [v18 UTF8String];
    v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(v20, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create(v19, v21);

    domainSetupWaiterQueue = v6->_domainSetupWaiterQueue;
    v6->_domainSetupWaiterQueue = v22;

    v6->_isCiconiaDomain = [(NSFileProviderDomain *)v6->_domain br_isCiconiaDomain];
    +[BRAccount startAccountTokenChangeObserverIfNeeded];
    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:v6 selector:"_accountDidChange" name:BRAccountTokenDidChangeNotification object:0];
    [(ICDFileProviderExtension *)v6 _startWaitingForDomainToBeFullySetup];
    v25 = +[BRReachabilityMonitor sharedReachabilityMonitor];
  }

  return v6;
}

- (void)_accountDidChange
{
  if ([(NSString *)self->_personaID isEqualToString:@"__defaultPersonaID__"]|| (v3 = self->_personaID) == 0)
  {
    if (qword_100052380 != -1)
    {
      sub_1000277A0();
    }

    v4 = qword_100052388;
    v5 = 1;
  }

  else
  {
    v4 = v3;
    v5 = 0;
  }

  v6 = +[UMUserManager sharedManager];
  v7 = [v6 currentPersona];

  v24 = 0;
  v8 = [v7 userPersonaUniqueString];
  v9 = v8;
  if (v8 == v4 || [(NSString *)v8 isEqualToString:v4])
  {
    v10 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v23 = 0;
    v13 = [v7 copyCurrentPersonaContextWithError:&v23];
    v14 = v23;
    v15 = v24;
    v24 = v13;

    if (v14)
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, 0x90u))
      {
        sub_100027884();
      }
    }

    v10 = [v7 br_generateAndRestorePersonaContextWithPersonaUniqueString:v4];

    if (v10)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, 0x90u))
      {
        personaID = self->_personaID;
        *buf = 138412802;
        v26 = personaID;
        v27 = 2112;
        v28 = v10;
        v29 = 2112;
        v30 = v18;
        _os_log_error_impl(&_mh_execute_header, v19, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_29:
    }
  }

  else
  {
    if (v5 && ([v7 isDataSeparatedPersona] & 1) == 0)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_1000277B4();
      }

      v10 = 0;
      goto LABEL_29;
    }

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_10002781C();
    }

    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  }

LABEL_10:
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000278F0();
  }

  [(NSFileProviderManager *)self->_fileProviderManager br_signalWorkingSetEnumeratorWithCompletionHandler:&stru_100044DB0];
  _BRRestorePersona();
}

- (void)dealloc
{
  responseQueue = self->_responseQueue;
  self->_responseQueue = 0;

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:BRAccountTokenDidChangeNotification object:0];

  v5.receiver = self;
  v5.super_class = ICDFileProviderExtension;
  [(ICDFileProviderExtension *)&v5 dealloc];
}

- (void)invalidate
{
  objc_initWeak(&location, self);
  domainSetupWaiterQueue = self->_domainSetupWaiterQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001220C;
  v4[3] = &unk_1000446D8;
  objc_copyWeak(&v5, &location);
  dispatch_async(domainSetupWaiterQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)_isLoggedInOrError:(id *)a3
{
  v16 = 0;
  v4 = [BRAccount currentCachedLoggedInAccountWithError:&v16];
  v5 = v16;
  if (v5)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  if (!v4 || ([v4 perAppAccountIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v25 = NSUnderlyingErrorKey;
    v8 = +[NSError brc_errorLoggedOut];
    v26 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];

    v10 = [NSError errorWithDomain:NSFileProviderErrorDomain code:-1000 userInfo:v9];
    if (v10)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, 0x90u))
      {
        v15 = "(passed to caller)";
        *buf = 136315906;
        v18 = "[ICDFileProviderExtension _isLoggedInOrError:]";
        v19 = 2080;
        if (!a3)
        {
          v15 = "(ignored by caller)";
        }

        v20 = v15;
        v21 = 2112;
        v22 = v10;
        v23 = 2112;
        v24 = v11;
        _os_log_error_impl(&_mh_execute_header, v12, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a3)
    {
      v13 = v10;
      *a3 = v10;
    }

    goto LABEL_11;
  }

  v7 = 1;
LABEL_12:

  return v7;
}

- (void)waitForStabilizationWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (self->_isCiconiaDomain)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      domain = self->_domain;
      *buf = 138412546;
      v26 = domain;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] Initialized with a Ciconia domain %@. This is not supported%@", buf, 0x16u);
    }

    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = +[NSError brc_errorLoggedOut];
      *buf = 136315650;
      v26 = "[ICDFileProviderExtension waitForStabilizationWithCompletionHandler:]";
      v27 = 2112;
      v28 = v10;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@)%@", buf, 0x20u);
    }

    v11 = +[NSError brc_errorLoggedOut];
    v4[2](v4, v11);
  }

  else if ((+[UMUserManager br_isInSyncBubble]& 1) != 0)
  {
    memset(v24, 0, sizeof(v24));
    sub_10001A20C(1, "[ICDFileProviderExtension waitForStabilizationWithCompletionHandler:]", 639, 0, v24);
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      v26 = v24[0];
      v27 = 2080;
      v28 = "[ICDFileProviderExtension waitForStabilizationWithCompletionHandler:]";
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s %@", buf, 0x20u);
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100012910;
    v22[3] = &unk_100044598;
    v14 = v4;
    v23 = v14;
    v15 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v22];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100012A20;
    v20[3] = &unk_100044598;
    v21 = v14;
    [v15 waitForStabilizationWithReply:v20];

    sub_10001A3DC(v24);
  }

  else
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_1000279C4();
    }

    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v26 = "[ICDFileProviderExtension waitForStabilizationWithCompletionHandler:]";
      v27 = 2112;
      v28 = 0;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@)%@", buf, 0x20u);
    }

    v4[2](v4, 0);
  }
}

- (id)itemForIdentifier:(id)a3 request:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (self->_isCiconiaDomain)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      domain = self->_domain;
      *buf = 138412546;
      *&buf[4] = domain;
      *&buf[12] = 2112;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARNING] Initialized with a Ciconia domain %@. This is not supported%@", buf, 0x16u);
    }

    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = +[NSError brc_errorLoggedOut];
      *buf = 136315906;
      *&buf[4] = "[ICDFileProviderExtension itemForIdentifier:request:completionHandler:]";
      *&buf[12] = 2112;
      *&buf[14] = 0;
      *&buf[22] = 2112;
      v48 = v16;
      v49 = 2112;
      v50 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", buf, 0x2Au);
    }

    v17 = +[NSError brc_errorLoggedOut];
    v10[2](v10, 0, v17);

    v18 = 0;
  }

  else
  {
    memset(v46, 0, sizeof(v46));
    sub_10001A20C(1, "[ICDFileProviderExtension itemForIdentifier:request:completionHandler:]", 660, 0, v46);
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 134218754;
      *&buf[4] = v46[0];
      *&buf[12] = 2080;
      *&buf[14] = "[ICDFileProviderExtension itemForIdentifier:request:completionHandler:]";
      *&buf[22] = 2112;
      v48 = v8;
      v49 = 2112;
      v50 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s itemForIdentifier %@%@", buf, 0x2Au);
    }

    v18 = [NSProgress progressWithTotalUnitCount:1];
    v45 = 0;
    v21 = [(ICDFileProviderExtension *)self _isLoggedInOrError:&v45];
    v22 = v45;
    if (v21)
    {
      if ([v8 isEqualToString:NSFileProviderTrashContainerItemIdentifier])
      {
        v23 = objc_opt_new();
        v24 = brc_bread_crumbs();
        v25 = brc_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          sub_100027A2C();
        }

        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 136315906;
          *&buf[4] = "[ICDFileProviderExtension itemForIdentifier:request:completionHandler:]";
          *&buf[12] = 2112;
          *&buf[14] = v23;
          *&buf[22] = 2112;
          v48 = 0;
          v49 = 2112;
          v50 = v26;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", buf, 0x2Au);
        }

        (v10)[2](v10, v23, 0);
        v28 = v18;
      }

      else
      {
        v32 = [BRFileObjectID fileObjectIDWithString:v8];
        v43 = 0uLL;
        v44 = 0;
        sub_10001A20C(0, "[ICDFileProviderExtension itemForIdentifier:request:completionHandler:]", 679, 0, &v43);
        v33 = brc_bread_crumbs();
        v34 = brc_default_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_10002751C(&v43);
        }

        *buf = v43;
        *&buf[16] = v44;
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1000131D8;
        v38[3] = &unk_100044E00;
        v38[4] = self;
        v35 = v32;
        v39 = v35;
        v41 = *buf;
        v42 = *&buf[16];
        v40 = v10;
        [(ICDFileProviderExtension *)self _getQueryItemForFileObjectID:v35 completionHandler:v38];
        v36 = v18;
      }
    }

    else
    {
      v29 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        *&buf[4] = "[ICDFileProviderExtension itemForIdentifier:request:completionHandler:]";
        *&buf[12] = 2112;
        *&buf[14] = 0;
        *&buf[22] = 2112;
        v48 = v22;
        v49 = 2112;
        v50 = v29;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", buf, 0x2Au);
      }

      v10[2](v10, 0, v22);
      v31 = v18;
    }

    sub_10001A3DC(v46);
  }

  return v18;
}

- (id)enumeratorForVersionsOfItemWithIdentifier:(id)a3 request:(id)a4 error:(id *)a5
{
  v6 = a3;
  if (self->_isCiconiaDomain)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      domain = self->_domain;
      v13 = 138412546;
      v14 = domain;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARNING] Initialized with a Ciconia domain %@. This is not supported%@", &v13, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v11 = [BRFileObjectID fileObjectIDWithString:v6];
    v10 = [(BRBaseFileEnumerator *)[BRFileVersionsEnumerator alloc] initWithFileObjectID:v11 itemIdentifier:v6 recursive:0 fileProviderManager:self->_fileProviderManager];
  }

  return v10;
}

- (id)modifyItem:(id)a3 baseVersion:(id)a4 changedFields:(unint64_t)a5 contents:(id)a6 options:(unint64_t)a7 request:(id)a8 completionHandler:(id)a9
{
  v60 = a3;
  v58 = a4;
  v59 = a6;
  v57 = a8;
  v15 = a9;
  if (!self->_isCiconiaDomain)
  {
    memset(v77, 0, sizeof(v77));
    sub_10001A20C(1, "[ICDFileProviderExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]", 731, 0, v77);
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = a5;
      v24 = v77[0];
      v25 = v23;
      v26 = BRCPrettyPrintBitmap();
      v27 = BRCPrettyPrintBitmap();
      *buf = 134219266;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = "[ICDFileProviderExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]";
      *&buf[22] = 2112;
      *v79 = v60;
      *&v79[8] = 2112;
      *v80 = v26;
      *&v80[8] = 2112;
      *v81 = v27;
      *&v81[8] = 2112;
      v82 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s modifyItem %@ fields:%@ options:%@%@", buf, 0x3Eu);

      a5 = v25;
    }

    v28 = [v60 itemIdentifier];
    v29 = [v28 isEqualToString:NSFileProviderTrashContainerItemIdentifier];

    if (v29)
    {
      v30 = brc_bread_crumbs();
      v31 = brc_default_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = objc_opt_new();
        *buf = 136316418;
        *&buf[4] = "[ICDFileProviderExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]";
        *&buf[12] = 2112;
        *&buf[14] = v32;
        *&buf[22] = 1024;
        *v79 = 0;
        *&v79[4] = 1024;
        *&v79[6] = 0;
        strcpy(v80, "@\b");
        v80[3] = 0;
        *&v80[4] = 0;
        *&v80[6] = 0;
        *v81 = 2112;
        *&v81[2] = v30;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %d, %d, %@)%@", buf, 0x36u);
      }

      v33 = objc_opt_new();
      (*(v15 + 2))(v15, v33, 0, 0, 0);

      v20 = objc_opt_new();
      goto LABEL_33;
    }

    v34 = [v60 filename];
    v35 = [v34 br_isExcludedWithMaximumDepth:1];

    if (v35)
    {
      v36 = brc_bread_crumbs();
      v37 = brc_default_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = +[NSError brc_errorExcludedFromSyncDueToFilename];
        v39 = [v38 br_fileProviderError];
        *buf = 136316418;
        *&buf[4] = "[ICDFileProviderExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]";
        *&buf[12] = 2112;
        *&buf[14] = 0;
        *&buf[22] = 1024;
        *v79 = 0;
        *&v79[4] = 1024;
        *&v79[6] = 0;
        *v80 = 2112;
        *&v80[2] = v39;
        *v81 = 2112;
        *&v81[2] = v36;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %d, %d, %@)%@", buf, 0x36u);
      }

      v40 = +[NSError brc_errorExcludedFromSyncDueToFilename];
      v41 = [v40 br_fileProviderError];
      (*(v15 + 2))(v15, 0, 0, 0, v41);

      v20 = 0;
      goto LABEL_32;
    }

    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_1000140C0;
    v75[3] = &unk_100044598;
    v42 = v15;
    v76 = v42;
    v56 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v75];
    if (v59 && (a5 & 1) != 0)
    {
      if ((a7 & 6) != 0)
      {
        v73 = 0uLL;
        v74 = 0;
        sub_10001A20C(0, "[ICDFileProviderExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]", 751, 0, &v73);
        v43 = brc_bread_crumbs();
        v44 = brc_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_100027B84(&v73);
        }

        *buf = v73;
        *&buf[16] = v74;
        v45 = [[NSSecurityScopedURLWrapper alloc] initWithURL:v59 readonly:1];
        v46 = [v60 itemIdentifier];
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_1000141F8;
        v66[3] = &unk_100044E90;
        v70 = *buf;
        v71 = *&buf[16];
        v69 = v42;
        v72 = a5;
        v67 = v60;
        v68 = self;
        v20 = [v56 uploadItemIdentifier:v46 withContents:v45 baseVersion:v58 basedOnOriginalVersion:1 options:~(a7 >> 1) & 1 reply:v66];

        goto LABEL_31;
      }
    }

    else if (!v59)
    {
      v47 = 0;
      goto LABEL_27;
    }

    v65 = 0;
    v47 = [FPSandboxingURLWrapper wrapperWithURL:v59 readonly:0 error:&v65];
    v48 = v65;
    if (v48)
    {
      v49 = v48;
      v50 = brc_bread_crumbs();
      v51 = brc_default_log();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 136316418;
        *&buf[4] = "[ICDFileProviderExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]";
        *&buf[12] = 2112;
        *&buf[14] = 0;
        *&buf[22] = 1024;
        *v79 = 0;
        *&v79[4] = 1024;
        *&v79[6] = 0;
        *v80 = 2112;
        *&v80[2] = v49;
        *v81 = 2112;
        *&v81[2] = v50;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %d, %d, %@)%@", buf, 0x36u);
      }

      (*(v42 + 2))(v42, 0, 0, 0, v49);
      v20 = objc_opt_new();

LABEL_30:
LABEL_31:

      v40 = v76;
LABEL_32:

LABEL_33:
      sub_10001A3DC(v77);
      goto LABEL_34;
    }

LABEL_27:
    v73 = 0uLL;
    v74 = 0;
    sub_10001A20C(0, "[ICDFileProviderExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]", 797, 0, &v73);
    v52 = brc_bread_crumbs();
    v53 = brc_default_log();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      sub_10002751C(&v73);
    }

    *buf = v73;
    *&buf[16] = v74;
    v54 = [(ICDFileProviderExtension *)self populateNonCodableAttributesOfTemplate:v60];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_1000147B4;
    v61[3] = &unk_100044BE8;
    v61[4] = self;
    v63 = *buf;
    v64 = *&buf[16];
    v62 = v42;
    [v56 modifyItem:v60 baseVersion:v58 changedFields:a5 contents:v47 options:a7 additionalAttrs:v54 completionHandler:v61];

    v20 = [NSProgress progressWithTotalUnitCount:0];

    goto LABEL_30;
  }

  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    domain = self->_domain;
    *buf = 138412546;
    *&buf[4] = domain;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARNING] Initialized with a Ciconia domain %@. This is not supported%@", buf, 0x16u);
  }

  v19 = +[NSError brc_errorLoggedOut];
  (*(v15 + 2))(v15, 0, 0, 0, v19);

  v20 = 0;
LABEL_34:

  return v20;
}

- (void)_isSharableItem:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [BRFileObjectID fileObjectIDWithString:v6];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if ([v8 type] == 3 || objc_msgSend(v8, "type") == 2)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100014C7C;
    v15[3] = &unk_100044598;
    v9 = v7;
    v16 = v9;
    v10 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v15];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100014C94;
    v11[3] = &unk_100044EB8;
    v14 = &v17;
    v12 = v6;
    v13 = v9;
    [v10 checkIfItemIsShareableWithItemIdentifier:v12 reply:v11];
  }

  else
  {
    (*(v7 + 2))(v7, *(v18 + 24), 0);
  }

  _Block_object_dispose(&v17, 8);
}

- (id)supportedServiceSourcesForItemIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_isCiconiaDomain)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      domain = self->_domain;
      *buf = 138412546;
      v22 = domain;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Initialized with a Ciconia domain %@. This is not supported%@", buf, 0x16u);
    }

    v11 = +[NSError brc_errorLoggedOut];
    v7[2](v7, 0, v11);

    v12 = 0;
  }

  else
  {
    [(ICDFileProviderExtension *)self _waitForDomainSetup];
    v12 = [NSProgress progressWithTotalUnitCount:0];
    if ([v6 isEqualToString:NSFileProviderRootContainerItemIdentifier])
    {
      v13 = objc_opt_new();
      (v7)[2](v7, v13, 0);
    }

    else
    {
      v14 = [(NSFileProviderDomain *)self->_domain identifier];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10001500C;
      v17[3] = &unk_100044EE0;
      v20 = v7;
      v17[4] = self;
      v18 = v6;
      v19 = v14;
      v15 = v14;
      [(ICDFileProviderExtension *)self _isSharableItem:v18 withCompletionHandler:v17];
    }
  }

  return v12;
}

- (void)importDidFinishWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (self->_isCiconiaDomain)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      domain = self->_domain;
      *buf = 138412546;
      v17 = domain;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] Initialized with a Ciconia domain %@. This is not supported%@", buf, 0x16u);
    }

    v4[2](v4);
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_100027D44();
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100015468;
    v14[3] = &unk_100044598;
    v10 = v4;
    v15 = v10;
    v11 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100015478;
    v12[3] = &unk_1000447C8;
    v12[4] = self;
    v13 = v10;
    [v11 notifyReimportCompleted:v12];
  }
}

- (id)_defaultApplicationContainerForBundleIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_isCiconiaDomain)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      domain = self->_domain;
      *buf = 138412546;
      v44 = domain;
      v45 = 2112;
      v46 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Initialized with a Ciconia domain %@. This is not supported%@", buf, 0x16u);
    }

    v11 = +[NSError brc_errorLoggedOut];
    v7[2](v7, 0, v11);
  }

  else
  {
    memset(v42, 0, sizeof(v42));
    sub_10001A20C(0, "[ICDFileProviderExtension _defaultApplicationContainerForBundleIdentifier:completionHandler:]", 951, 0, v42);
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v44 = v42[0];
      v45 = 2112;
      v46 = v6;
      v47 = 2112;
      v48 = v12;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx lookup for default location of %@%@", buf, 0x20u);
    }

    if (v6 && ![v6 isEqualToString:@"com.apple.DocumentsApp"])
    {
      v39 = 0;
      v15 = [LSApplicationRecord bundleRecordWithBundleIdentifier:v6 allowPlaceholder:0 error:&v39];
      v14 = v39;
      if (v15)
      {
        v16 = [v15 entitlements];
        v34 = BREntitledContainerIdentifiersForPropertyList();
        v17 = brc_bread_crumbs();
        v18 = brc_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v44 = v6;
          v45 = 2112;
          v46 = v34;
          v47 = 2112;
          v48 = v17;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] containerEntitlements of bundle %@ are %@%@", buf, 0x20u);
        }

        if ([v34 count])
        {
          v19 = [v34 objectAtIndexedSubscript:0];
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_100016024;
          v37[3] = &unk_100044598;
          v20 = v7;
          v38 = v20;
          v21 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v37];
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_100016140;
          v35[3] = &unk_100044D00;
          v35[4] = self;
          v36 = v20;
          [v21 getDefaultAppContainerItemForContainerID:v19 recreateDocumentsIfNeeded:1 reply:v35];

          v22 = v38;
        }

        else
        {
          v28 = brc_bread_crumbs();
          v29 = brc_default_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            sub_100027DAC();
          }

          v19 = [NSError errorWithDomain:BRCloudDocsErrorDomain code:1 userInfo:0];
          v30 = brc_bread_crumbs();
          v31 = brc_default_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = [v19 br_fileProviderError];
            *buf = 136315906;
            v44 = "[ICDFileProviderExtension _defaultApplicationContainerForBundleIdentifier:completionHandler:]";
            v45 = 2112;
            v46 = 0;
            v47 = 2112;
            v48 = v32;
            v49 = 2112;
            v50 = v30;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", buf, 0x2Au);
          }

          v22 = [v19 br_fileProviderError];
          v7[2](v7, 0, v22);
        }
      }

      else
      {
        v23 = brc_bread_crumbs();
        v24 = brc_default_log();
        if (os_log_type_enabled(v24, 0x90u))
        {
          sub_100027E1C();
        }

        v25 = brc_bread_crumbs();
        v26 = brc_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [v14 br_fileProviderError];
          *buf = 136315906;
          v44 = "[ICDFileProviderExtension _defaultApplicationContainerForBundleIdentifier:completionHandler:]";
          v45 = 2112;
          v46 = 0;
          v47 = 2112;
          v48 = v27;
          v49 = 2112;
          v50 = v25;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", buf, 0x2Au);
        }

        v16 = [v14 br_fileProviderError];
        v7[2](v7, 0, v16);
      }
    }

    else
    {
      v14 = [BRFileObjectID fileObjectIDWithString:NSFileProviderCloudDocsContainerIdentifier];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_100015DB8;
      v40[3] = &unk_100044D00;
      v40[4] = self;
      v41 = v7;
      [(ICDFileProviderExtension *)self _getQueryItemForFileObjectID:v14 completionHandler:v40];
    }

    sub_10001A3DC(v42);
  }

  return 0;
}

- (id)fetchThumbnailsForItemIdentifiers:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandler:(id)a5 completionHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100016530;
  v14[3] = &unk_100044F58;
  v15 = a5;
  v11 = v15;
  v12 = [(ICDFileProviderExtension *)self fetchThumbnailsForItemIdentifiers:a3 requestedSize:v14 perThumbnailCompletionHandlerWithType:a6 completionHandler:width, height];

  return v12;
}

- (id)fetchThumbnailsForItemIdentifiers:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandlerWithType:(id)a5 completionHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v14 setObject:&__NSArray0__struct forKeyedSubscript:*(*(&v25 + 1) + 8 * i)];
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100016748;
  v23[3] = &unk_100044F80;
  v24 = v12;
  v20 = v12;
  v21 = [(ICDFileProviderExtension *)self fetchThumbnailsForDictionary:v14 requestedSize:v23 perThumbnailCompletionHandlerWithMetadata:v13 completionHandler:width, height];

  return v21;
}

- (id)fetchThumbnailsForDictionary:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandlerWithMetadata:(id)a5 completionHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100016844;
  v14[3] = &unk_100044868;
  v15 = a5;
  v11 = v15;
  v12 = [(ICDFileProviderExtension *)self fetchThumbnailsForDictionary:a3 requestedSize:v14 perThumbnailCompletionHandlerDataURLWithMetadata:a6 completionHandler:width, height];

  return v12;
}

- (id)fetchThumbnailsForDictionary:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandlerDataURLWithMetadata:(id)a5 completionHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v38 = a5;
  v31 = a6;
  queue = dispatch_get_global_queue(17, 0);
  group = dispatch_group_create();
  v33 = objc_opt_new();
  v35 = [v10 allKeys];
  v11 = 0;
  do
  {
    v12 = objc_opt_new();
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = v35;
    v13 = 0;
    v14 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (!v14)
    {
      goto LABEL_14;
    }

    v15 = *v54;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v54 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v53 + 1) + 8 * i);
        v18 = [v10 objectForKeyedSubscript:v17];
        v19 = v11 < [v18 count];

        if (v19)
        {
          v20 = [BRThumbnailRequest alloc];
          v21 = [v10 objectForKeyedSubscript:v17];
          v22 = [(BRThumbnailRequest *)v21 objectAtIndexedSubscript:v11];
          v23 = [(BRThumbnailRequest *)v20 initWithIdentifier:v17 version:v22];
          [v12 addObject:v23];

          v13 = 1;
        }

        else
        {
          if (v11)
          {
            continue;
          }

          v21 = [[BRThumbnailRequest alloc] initWithIdentifier:v17 version:0];
          [v12 addObject:v21];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v14);
LABEL_14:

    [v33 addObject:v12];
    ++v11;
  }

  while ((v13 & 1) != 0);
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = sub_100016E48;
  v51[4] = sub_100016E58;
  v52 = 0;
  v36 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v34 = v33;
  v24 = [v34 countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v24)
  {
    v25 = *v48;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v48 != v25)
        {
          objc_enumerationMutation(v34);
        }

        v27 = *(*(&v47 + 1) + 8 * j);
        dispatch_group_enter(group);
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_100016E60;
        v44[3] = &unk_100044FA8;
        v44[4] = v27;
        v46 = v51;
        v45 = group;
        v28 = [(ICDFileProviderExtension *)self _fetchThumbnailsForItemIdentifiersWithVersionMap:v27 requestedSize:v38 perThumbnailCompletionHandler:v44 completionHandler:width, height];
        if (v28)
        {
          [v36 addChild:v28 withPendingUnitCount:{objc_msgSend(v27, "count")}];
        }
      }

      v24 = [v34 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v24);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016F84;
  block[3] = &unk_100044FD0;
  v42 = v31;
  v43 = v51;
  v29 = v31;
  dispatch_group_notify(group, queue, block);

  _Block_object_dispose(v51, 8);

  return v36;
}

- (id)_fetchThumbnailsForItemIdentifiersWithVersionMap:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandler:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = dispatch_group_create();
  v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v14 = dispatch_queue_attr_make_with_autorelease_frequency(v13, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create("com.apple.br.fetch-thumbnail", v14);

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100017258;
  v31[3] = &unk_100045048;
  v31[4] = self;
  v16 = v12;
  v32 = v16;
  v17 = objc_retainBlock(v31);
  dispatch_group_enter(v16);
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_100016E48;
  v29[4] = sub_100016E58;
  v30 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000176B4;
  v26[3] = &unk_100045070;
  v28 = v29;
  v18 = v16;
  v27 = v18;
  v19 = objc_retainBlock(v26);
  v20 = sub_100007664(v9, v17, v10, v19);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100017714;
  v23[3] = &unk_100044FD0;
  v24 = v11;
  v25 = v29;
  v21 = v11;
  dispatch_group_notify(v18, v15, v23);

  _Block_object_dispose(v29, 8);

  return v20;
}

- (id)fetchThumbnailsForDictionary:(id)a3 requestedSize:(CGSize)a4 perThumbnailCompletionHandler:(id)a5 completionHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100017810;
  v14[3] = &unk_100044F80;
  v15 = a5;
  v11 = v15;
  v12 = [(ICDFileProviderExtension *)self fetchThumbnailsForDictionary:a3 requestedSize:v14 perThumbnailCompletionHandlerWithMetadata:a6 completionHandler:width, height];

  return v12;
}

- (void)collaborationMetadataForItemWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_10001DF54;
  v15[4] = sub_10001DF64;
  v16 = 0;
  v7 = objc_alloc_init(NSOperationQueue);
  v8 = [[BRShareCopyOperation alloc] initWithItemID:v5];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001DF6C;
  v11[3] = &unk_100045288;
  v14 = v15;
  v9 = v5;
  v12 = v9;
  v10 = v6;
  v13 = v10;
  [v8 setRootShareCopyCompletionBlock:v11];
  [v7 addOperation:v8];

  _Block_object_dispose(v15, 8);
}

- (void)collaborationCoordinator:(id)a3 handleStartCollaborationAction:(id)a4
{
  v4 = a4;
  v5 = [v4 collaborationMetadata];
  v6 = [v5 localIdentifier];

  v8 = v4;
  v7 = v4;
  BRFetchCollaborationIdentifierForItemWithIdentifier();
}

@end