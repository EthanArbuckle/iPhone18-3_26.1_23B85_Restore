@interface ICDFileProviderExtension
- (BOOL)_isLoggedInOrError:(id *)error;
- (ICDFileProviderExtension)initWithDomain:(id)domain;
- (id)_defaultApplicationContainerForBundleIdentifier:(id)identifier completionHandler:(id)handler;
- (id)_fetchContentsForItemWithIdentifier:(id)identifier existingContents:(id)contents version:(id)version request:(id)request completionHandler:(id)handler;
- (id)_fetchThumbnailsForItemIdentifiersWithVersionMap:(id)map requestedSize:(CGSize)size perThumbnailCompletionHandler:(id)handler completionHandler:(id)completionHandler;
- (id)_getAsyncProxyWithErrorHandler:(id)handler;
- (id)_getDatabaseIDFromDomain;
- (id)_refreshDatabaseIDForcingRefresh:(BOOL)refresh;
- (id)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields contents:(id)contents options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (id)deleteItemWithIdentifier:(id)identifier baseVersion:(id)version options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (id)enumeratorForContainerItemIdentifier:(id)identifier request:(id)request error:(id *)error;
- (id)enumeratorForVersionsOfItemWithIdentifier:(id)identifier request:(id)request error:(id *)error;
- (id)fetchContentsForItemWithIdentifier:(id)identifier version:(id)version usingExistingContentsAtURL:(id)l existingVersion:(id)existingVersion request:(id)request completionHandler:(id)handler;
- (id)fetchThumbnailsForDictionary:(id)dictionary requestedSize:(CGSize)size perThumbnailCompletionHandler:(id)handler completionHandler:(id)completionHandler;
- (id)fetchThumbnailsForDictionary:(id)dictionary requestedSize:(CGSize)size perThumbnailCompletionHandlerDataURLWithMetadata:(id)metadata completionHandler:(id)handler;
- (id)fetchThumbnailsForDictionary:(id)dictionary requestedSize:(CGSize)size perThumbnailCompletionHandlerWithMetadata:(id)metadata completionHandler:(id)handler;
- (id)fetchThumbnailsForItemIdentifiers:(id)identifiers requestedSize:(CGSize)size perThumbnailCompletionHandler:(id)handler completionHandler:(id)completionHandler;
- (id)fetchThumbnailsForItemIdentifiers:(id)identifiers requestedSize:(CGSize)size perThumbnailCompletionHandlerWithType:(id)type completionHandler:(id)handler;
- (id)itemForIdentifier:(id)identifier request:(id)request completionHandler:(id)handler;
- (id)modifyItem:(id)item baseVersion:(id)version changedFields:(unint64_t)fields contents:(id)contents options:(unint64_t)options request:(id)request completionHandler:(id)handler;
- (id)populateNonCodableAttributesOfTemplate:(id)template;
- (id)supportedServiceSourcesForItemIdentifier:(id)identifier completionHandler:(id)handler;
- (void)_accountDidChange;
- (void)_getQueryItemForFileObjectID:(id)d completionHandler:(id)handler;
- (void)_isSharableItem:(id)item withCompletionHandler:(id)handler;
- (void)_startWaitingForDomainToBeFullySetup;
- (void)_waitForDomainSetup;
- (void)collaborationCoordinator:(id)coordinator handleStartCollaborationAction:(id)action;
- (void)collaborationMetadataForItemWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)dealloc;
- (void)importDidFinishWithCompletionHandler:(id)handler;
- (void)invalidate;
- (void)waitForStabilizationWithCompletionHandler:(id)handler;
@end

@implementation ICDFileProviderExtension

- (void)_waitForDomainSetup
{
  if (!self->_finishedDomainSetup)
  {
    dispatch_sync(self->_domainSetupWaiterQueue, &stru_1000451B8);
    if (!self->_finishedDomainSetup)
    {
      sub_100028AD4();
    }
  }
}

- (id)fetchThumbnailsForItemIdentifiers:(id)identifiers requestedSize:(CGSize)size perThumbnailCompletionHandler:(id)handler completionHandler:(id)completionHandler
{
  height = size.height;
  width = size.width;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100014338;
  v14[3] = &unk_100044DB0;
  handlerCopy = handler;
  v11 = handlerCopy;
  height = [(ICDFileProviderExtension *)self fetchThumbnailsForItemIdentifiers:identifiers requestedSize:v14 perThumbnailCompletionHandlerWithType:completionHandler completionHandler:width, height];

  return height;
}

- (id)fetchThumbnailsForItemIdentifiers:(id)identifiers requestedSize:(CGSize)size perThumbnailCompletionHandlerWithType:(id)type completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  identifiersCopy = identifiers;
  typeCopy = type;
  handlerCopy = handler;
  v14 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = identifiersCopy;
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
  v23[2] = sub_100014550;
  v23[3] = &unk_100044DD8;
  v24 = typeCopy;
  v20 = typeCopy;
  height = [(ICDFileProviderExtension *)self fetchThumbnailsForDictionary:v14 requestedSize:v23 perThumbnailCompletionHandlerWithMetadata:handlerCopy completionHandler:width, height];

  return height;
}

- (id)fetchThumbnailsForDictionary:(id)dictionary requestedSize:(CGSize)size perThumbnailCompletionHandlerWithMetadata:(id)metadata completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001464C;
  v14[3] = &unk_100044A40;
  metadataCopy = metadata;
  v11 = metadataCopy;
  height = [(ICDFileProviderExtension *)self fetchThumbnailsForDictionary:dictionary requestedSize:v14 perThumbnailCompletionHandlerDataURLWithMetadata:handler completionHandler:width, height];

  return height;
}

- (id)fetchThumbnailsForDictionary:(id)dictionary requestedSize:(CGSize)size perThumbnailCompletionHandlerDataURLWithMetadata:(id)metadata completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  dictionaryCopy = dictionary;
  metadataCopy = metadata;
  handlerCopy = handler;
  queue = dispatch_get_global_queue(17, 0);
  group = dispatch_group_create();
  v33 = objc_opt_new();
  allKeys = [dictionaryCopy allKeys];
  v11 = 0;
  do
  {
    v12 = objc_opt_new();
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = allKeys;
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
        v18 = [dictionaryCopy objectForKeyedSubscript:v17];
        v19 = v11 < [v18 count];

        if (v19)
        {
          v20 = [BRThumbnailRequest alloc];
          v21 = [dictionaryCopy objectForKeyedSubscript:v17];
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
  v51[3] = sub_100014C50;
  v51[4] = sub_100014C60;
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
        v44[2] = sub_100014C68;
        v44[3] = &unk_100044E00;
        v44[4] = v27;
        v46 = v51;
        v45 = group;
        height = [(ICDFileProviderExtension *)self _fetchThumbnailsForItemIdentifiersWithVersionMap:v27 requestedSize:metadataCopy perThumbnailCompletionHandler:v44 completionHandler:width, height];
        if (height)
        {
          [v36 addChild:height withPendingUnitCount:{objc_msgSend(v27, "count")}];
        }
      }

      v24 = [v34 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v24);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100014D8C;
  block[3] = &unk_100044E28;
  v42 = handlerCopy;
  v43 = v51;
  v29 = handlerCopy;
  dispatch_group_notify(group, queue, block);

  _Block_object_dispose(v51, 8);

  return v36;
}

- (id)_fetchThumbnailsForItemIdentifiersWithVersionMap:(id)map requestedSize:(CGSize)size perThumbnailCompletionHandler:(id)handler completionHandler:(id)completionHandler
{
  mapCopy = map;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v12 = dispatch_group_create();
  v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v14 = dispatch_queue_attr_make_with_autorelease_frequency(v13, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v15 = dispatch_queue_create("com.apple.br.fetch-thumbnail", v14);

  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100015060;
  v31[3] = &unk_100044EA0;
  v31[4] = self;
  v16 = v12;
  v32 = v16;
  v17 = objc_retainBlock(v31);
  dispatch_group_enter(v16);
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_100014C50;
  v29[4] = sub_100014C60;
  v30 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000154BC;
  v26[3] = &unk_100044EC8;
  v28 = v29;
  v18 = v16;
  v27 = v18;
  v19 = objc_retainBlock(v26);
  v20 = sub_10000ADDC(mapCopy, v17, handlerCopy, v19);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10001551C;
  v23[3] = &unk_100044E28;
  v24 = completionHandlerCopy;
  v25 = v29;
  v21 = completionHandlerCopy;
  dispatch_group_notify(v18, v15, v23);

  _Block_object_dispose(v29, 8);

  return v20;
}

- (id)fetchThumbnailsForDictionary:(id)dictionary requestedSize:(CGSize)size perThumbnailCompletionHandler:(id)handler completionHandler:(id)completionHandler
{
  height = size.height;
  width = size.width;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100015618;
  v14[3] = &unk_100044DD8;
  handlerCopy = handler;
  v11 = handlerCopy;
  height = [(ICDFileProviderExtension *)self fetchThumbnailsForDictionary:dictionary requestedSize:v14 perThumbnailCompletionHandlerWithMetadata:completionHandler completionHandler:width, height];

  return height;
}

- (void)collaborationMetadataForItemWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_10001AF74;
  v15[4] = sub_10001AF84;
  v16 = 0;
  v7 = objc_alloc_init(NSOperationQueue);
  v8 = [[BRShareCopyOperation alloc] initWithItemID:identifierCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001AF8C;
  v11[3] = &unk_1000450D0;
  v14 = v15;
  v9 = identifierCopy;
  v12 = v9;
  v10 = handlerCopy;
  v13 = v10;
  [v8 setRootShareCopyCompletionBlock:v11];
  [v7 addOperation:v8];

  _Block_object_dispose(v15, 8);
}

- (void)collaborationCoordinator:(id)coordinator handleStartCollaborationAction:(id)action
{
  actionCopy = action;
  collaborationMetadata = [actionCopy collaborationMetadata];
  localIdentifier = [collaborationMetadata localIdentifier];

  v8 = actionCopy;
  v7 = actionCopy;
  BRFetchCollaborationIdentifierForItemWithIdentifier();
}

- (id)_getDatabaseIDFromDomain
{
  userInfo = [(NSFileProviderDomain *)self->_domain userInfo];
  v3 = [userInfo objectForKeyedSubscript:BRDomainDatabaseIDKey];

  return v3;
}

- (id)_refreshDatabaseIDForcingRefresh:(BOOL)refresh
{
  identifier = [(NSFileProviderDomain *)self->_domain identifier];
  if (identifier)
  {
    if (refresh)
    {
      _getDatabaseIDFromDomain = 0;
    }

    else
    {
      _getDatabaseIDFromDomain = [(ICDFileProviderExtension *)self _getDatabaseIDFromDomain];
    }

    identifier2 = [(NSFileProviderDomain *)self->_domain identifier];
    domain = self->_domain;
    v13 = domain != 0;
    if (domain && !_getDatabaseIDFromDomain)
    {
      v14 = 0;
      *&v11 = 134218242;
      v24 = v11;
      do
      {
        v15 = [(NSFileProviderManager *)self->_fileProviderManager br_getFPDomainWithIdentifier:identifier withError:0, v24];
        v16 = self->_domain;
        self->_domain = v15;

        _getDatabaseIDFromDomain = [(ICDFileProviderExtension *)self _getDatabaseIDFromDomain];
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

        if (_getDatabaseIDFromDomain)
        {
          break;
        }
      }

      while (v14++ < 9);
    }

    if (v13)
    {
      v9 = _getDatabaseIDFromDomain;
    }

    else
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, 0x90u))
      {
        sub_1000289F4();
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
      sub_100028A60();
    }

    [BRPosixOperationsWrapper exitProcess:1];
    v9 = 0;
  }

  return v9;
}

- (void)_startWaitingForDomainToBeFullySetup
{
  domainSetupWaiterQueue = self->_domainSetupWaiterQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E620;
  block[3] = &unk_1000446B0;
  block[4] = self;
  dispatch_async(domainSetupWaiterQueue, block);
}

- (id)_getAsyncProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  [(ICDFileProviderExtension *)self _waitForDomainSetup];
  v5 = +[BRDaemonConnection defaultConnection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)enumeratorForContainerItemIdentifier:(id)identifier request:(id)request error:(id *)error
{
  identifierCopy = identifier;
  requestCopy = request;
  if (!self->_isCiconiaDomain)
  {
    memset(v24, 0, sizeof(v24));
    sub_100001C50(0, "[ICDFileProviderExtension enumeratorForContainerItemIdentifier:request:error:]", 213, 0, v24);
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v26 = v24[0];
      v27 = 2112;
      v28 = identifierCopy;
      v29 = 2112;
      v30 = v18;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx requested enumerator for %@%@", buf, 0x20u);
    }

    [(ICDFileProviderExtension *)self _waitForDomainSetup];
    if ([identifierCopy isEqualToString:NSFileProviderWorkingSetContainerItemIdentifier])
    {
      v20 = [[BRBaseWorkingSetEnumerator alloc] initWithFileProviderManager:self->_fileProviderManager];
    }

    else
    {
      if (![identifierCopy isEqualToString:NSFileProviderTrashContainerItemIdentifier])
      {
        v21 = [BRFileObjectID fileObjectIDWithString:identifierCopy];
        v17 = [[ICDFileEnumerator alloc] initWithFileObjectID:v21 itemIdentifier:identifierCopy recursive:0 request:requestCopy fileProviderManager:self->_fileProviderManager];

        goto LABEL_18;
      }

      v20 = objc_opt_new();
    }

    v17 = v20;
LABEL_18:
    sub_100001DE4(v24);
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
      if (!error)
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

  if (error)
  {
    v16 = v13;
    *error = v13;
  }

  v17 = 0;
LABEL_19:

  return v17;
}

- (id)populateNonCodableAttributesOfTemplate:(id)template
{
  templateCopy = template;
  v4 = objc_alloc_init(NSMutableDictionary);
  symlinkTargetPath = [templateCopy symlinkTargetPath];

  if (symlinkTargetPath)
  {
    symlinkTargetPath2 = [templateCopy symlinkTargetPath];
    [v4 setObject:symlinkTargetPath2 forKey:@"symlink-target"];
  }

  return v4;
}

- (id)createItemBasedOnTemplate:(id)template fields:(unint64_t)fields contents:(id)contents options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  templateCopy = template;
  contentsCopy = contents;
  requestCopy = request;
  handlerCopy = handler;
  if (!self->_isCiconiaDomain)
  {
    fieldsCopy = fields;
    memset(v62, 0, sizeof(v62));
    sub_100001C50(1, "[ICDFileProviderExtension createItemBasedOnTemplate:fields:contents:options:request:completionHandler:]", 263, 0, v62);
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = v62[0];
      path = [contentsCopy path];
      v24 = BRCPrettyPrintBitmap();
      v25 = BRCPrettyPrintBitmap();
      *buf = 134219522;
      *&buf[4] = v22;
      *&buf[12] = 2080;
      *&buf[14] = "[ICDFileProviderExtension createItemBasedOnTemplate:fields:contents:options:request:completionHandler:]";
      *&buf[22] = 2112;
      *v64 = templateCopy;
      *&v64[8] = 2112;
      *v65 = path;
      *&v65[8] = 2112;
      *v66 = v24;
      *&v66[8] = 2112;
      v67 = v25;
      v68 = 2112;
      v69 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s createItemBasedOnTemplate %@ at '%@' fields:%@ options:%@%@", buf, 0x48u);
    }

    if (contentsCopy)
    {
      v61 = 0;
      v26 = [FPSandboxingURLWrapper wrapperWithURL:contentsCopy readonly:0 error:&v61];
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

        (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v28);
        v19 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v26 = 0;
    }

    filename = [templateCopy filename];
    v32 = [filename br_isExcludedWithMaximumDepth:1];

    if (v32)
    {
      v28 = +[NSError brc_errorExcludedFromSyncDueToFilename];
      v33 = brc_bread_crumbs();
      v34 = brc_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        br_fileProviderError = [v28 br_fileProviderError];
        *buf = 136316418;
        *&buf[4] = "[ICDFileProviderExtension createItemBasedOnTemplate:fields:contents:options:request:completionHandler:]";
        *&buf[12] = 2112;
        *&buf[14] = 0;
        *&buf[22] = 1024;
        *v64 = 0;
        *&v64[4] = 1024;
        *&v64[6] = 0;
        *v65 = 2112;
        *&v65[2] = br_fileProviderError;
        *v66 = 2112;
        *&v66[2] = v33;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %d, %d, %@)%@", buf, 0x36u);
      }

      br_fileProviderError2 = [v28 br_fileProviderError];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, br_fileProviderError2);

      v19 = 0;
    }

    else
    {
      filename2 = [templateCopy filename];
      br_isSideFaultName = [filename2 br_isSideFaultName];

      if (br_isSideFaultName)
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

        (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, 0);
        v19 = [NSProgress progressWithTotalUnitCount:0];
        goto LABEL_27;
      }

      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_10001F464;
      v59[3] = &unk_100044598;
      v43 = handlerCopy;
      v60 = v43;
      v44 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v59];
      v57 = 0uLL;
      v58 = 0;
      sub_100001C50(0, "[ICDFileProviderExtension createItemBasedOnTemplate:fields:contents:options:request:completionHandler:]", 292, 0, &v57);
      v45 = brc_bread_crumbs();
      v46 = brc_default_log();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
      {
        sub_100028B9C(&v57);
      }

      *buf = v57;
      *&buf[16] = v58;
      v47 = [(ICDFileProviderExtension *)self populateNonCodableAttributesOfTemplate:templateCopy];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_10001F59C;
      v53[3] = &unk_100045318;
      v53[4] = self;
      v55 = *buf;
      v56 = *&buf[16];
      v54 = v43;
      [v44 createItemBasedOnTemplate:templateCopy fields:fieldsCopy contents:v26 options:options additionalItemAttributes:v47 completionHandler:v53];

      v19 = [NSProgress progressWithTotalUnitCount:0];

      v28 = v60;
    }

LABEL_26:

LABEL_27:
    sub_100001DE4(v62);
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
  (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v18);

  v19 = 0;
LABEL_28:

  return v19;
}

- (id)deleteItemWithIdentifier:(id)identifier baseVersion:(id)version options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  identifierCopy = identifier;
  versionCopy = version;
  requestCopy = request;
  handlerCopy = handler;
  if (self->_isCiconiaDomain)
  {
    v15 = brc_bread_crumbs();
    v16 = identifierCopy;
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
    handlerCopy[2](handlerCopy, v19);

    v20 = 0;
  }

  else
  {
    memset(v39, 0, sizeof(v39));
    sub_100001C50(1, "[ICDFileProviderExtension deleteItemWithIdentifier:baseVersion:options:request:completionHandler:]", 327, 0, v39);
    v16 = identifierCopy;
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = v39[0];
      br_prettyDescription = [versionCopy br_prettyDescription];
      *buf = 134219266;
      *&buf[4] = v23;
      *&buf[12] = 2080;
      *&buf[14] = "[ICDFileProviderExtension deleteItemWithIdentifier:baseVersion:options:request:completionHandler:]";
      *&buf[22] = 2112;
      v16 = identifierCopy;
      v41 = identifierCopy;
      v42 = 2112;
      v43 = br_prettyDescription;
      v44 = 2048;
      optionsCopy = options;
      v46 = 2112;
      v47 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s deleteItemWithIdentifier %@ baseVersion %@ options:%llu%@", buf, 0x3Eu);
    }

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10001FCC0;
    v37[3] = &unk_100044598;
    v25 = handlerCopy;
    v38 = v25;
    v26 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v37];
    v35 = 0uLL;
    v36 = 0;
    sub_100001C50(0, "[ICDFileProviderExtension deleteItemWithIdentifier:baseVersion:options:request:completionHandler:]", 333, 0, &v35);
    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      sub_100028B9C(&v35);
    }

    *buf = v35;
    *&buf[16] = v36;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10001FDD0;
    v31[3] = &unk_100045368;
    v31[4] = self;
    v33 = v35;
    v34 = v36;
    v32 = v25;
    [v26 deleteItemWithIdentifier:v16 baseVersion:versionCopy options:options completionHandler:v31];
    v20 = [NSProgress progressWithTotalUnitCount:0];

    sub_100001DE4(v39);
  }

  return v20;
}

- (id)_fetchContentsForItemWithIdentifier:(id)identifier existingContents:(id)contents version:(id)version request:(id)request completionHandler:(id)handler
{
  identifierCopy = identifier;
  contentsCopy = contents;
  versionCopy = version;
  requestCopy = request;
  handlerCopy = handler;
  if (!self->_isCiconiaDomain)
  {
    memset(v63, 0, sizeof(v63));
    sub_100001C50(1, "[ICDFileProviderExtension _fetchContentsForItemWithIdentifier:existingContents:version:request:completionHandler:]", 370, 0, v63);
    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = v63[0];
      br_prettyDescription = [versionCopy br_prettyDescription];
      isSpeculativeDownload = [requestCopy isSpeculativeDownload];
      v25 = "NO";
      *buf = 134219266;
      *&buf[4] = v22;
      *&buf[12] = 2080;
      if (isSpeculativeDownload)
      {
        v25 = "YES";
      }

      *&buf[14] = "[ICDFileProviderExtension _fetchContentsForItemWithIdentifier:existingContents:version:request:completionHandler:]";
      *&buf[22] = 2112;
      v65 = identifierCopy;
      v66 = 2112;
      v67 = br_prettyDescription;
      v68 = 2080;
      v69 = v25;
      v70 = 2112;
      v71 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s fetchContentsForItemWithIdentifier %@ requestedVersion %@ speculative %s%@", buf, 0x3Eu);
    }

    if (versionCopy)
    {
      br_contentEtag = [versionCopy br_contentEtag];
      if (!br_contentEtag)
      {
        v27 = brc_bread_crumbs();
        v28 = brc_default_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
        {
          sub_100028C0C();
        }

        br_contentEtag = +[NSError brc_errorNoEtagInContentSignature];
        v29 = brc_bread_crumbs();
        v30 = brc_default_log();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          br_fileProviderErrorForDownloadFlow = [br_contentEtag br_fileProviderErrorForDownloadFlow];
          *buf = 136316162;
          *&buf[4] = "[ICDFileProviderExtension _fetchContentsForItemWithIdentifier:existingContents:version:request:completionHandler:]";
          *&buf[12] = 2112;
          *&buf[14] = 0;
          *&buf[22] = 2112;
          v65 = 0;
          v66 = 2112;
          v67 = br_fileProviderErrorForDownloadFlow;
          v68 = 2112;
          v69 = v29;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", buf, 0x34u);
        }

        br_fileProviderErrorForDownloadFlow2 = [br_contentEtag br_fileProviderErrorForDownloadFlow];
        (*(handlerCopy + 2))(handlerCopy, 0, 0, br_fileProviderErrorForDownloadFlow2);
        v19 = 0;
LABEL_36:

        sub_100001DE4(v63);
        goto LABEL_37;
      }
    }

    else
    {
      br_contentEtag = 0;
    }

    if ([requestCopy isSpeculativeDownload] && (+[BRReachabilityMonitor sharedReachabilityMonitor](BRReachabilityMonitor, "sharedReachabilityMonitor"), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "isCellularNetwork"), v33, v34))
    {
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        sub_100028C80();
      }

      br_fileProviderErrorForDownloadFlow2 = +[NSError brc_errorShouldNotDownloadOverCellular];
      v37 = brc_bread_crumbs();
      v38 = brc_default_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v32Br_fileProviderErrorForDownloadFlow = [br_fileProviderErrorForDownloadFlow2 br_fileProviderErrorForDownloadFlow];
        *buf = 136316162;
        *&buf[4] = "[ICDFileProviderExtension _fetchContentsForItemWithIdentifier:existingContents:version:request:completionHandler:]";
        *&buf[12] = 2112;
        *&buf[14] = 0;
        *&buf[22] = 2112;
        v65 = 0;
        v66 = 2112;
        v67 = v32Br_fileProviderErrorForDownloadFlow;
        v68 = 2112;
        v69 = v37;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", buf, 0x34u);
      }

      v32Br_fileProviderErrorForDownloadFlow2 = [br_fileProviderErrorForDownloadFlow2 br_fileProviderErrorForDownloadFlow];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v32Br_fileProviderErrorForDownloadFlow2);
      v19 = 0;
    }

    else
    {
      v61[0] = _NSConcreteStackBlock;
      v61[1] = 3221225472;
      v61[2] = sub_100020870;
      v61[3] = &unk_100044598;
      v41 = handlerCopy;
      v62 = v41;
      v42 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v61];
      v59 = 0uLL;
      v60 = 0;
      sub_100001C50(0, "[ICDFileProviderExtension _fetchContentsForItemWithIdentifier:existingContents:version:request:completionHandler:]", 398, 0, &v59);
      v43 = brc_bread_crumbs();
      v44 = brc_default_log();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        sub_100028B9C(&v59);
      }

      *buf = v59;
      *&buf[16] = v60;
      v45 = [BRFileObjectID fileObjectIDWithString:identifierCopy];
      if ([requestCopy isSpeculativeDownload])
      {
        v46 = 8;
      }

      else
      {
        v46 = 0;
      }

      if (contentsCopy)
      {
        v47 = [FPSandboxingURLWrapper wrapperWithURL:contentsCopy readonly:1 error:0];
      }

      else
      {
        v47 = 0;
      }

      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100020998;
      v54[3] = &unk_1000453B8;
      v54[4] = self;
      v48 = br_contentEtag;
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

      br_fileProviderErrorForDownloadFlow2 = v49;

      v32Br_fileProviderErrorForDownloadFlow2 = v62;
      v19 = br_fileProviderErrorForDownloadFlow2;
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
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v18);

  v19 = 0;
LABEL_37:

  return v19;
}

- (void)_getQueryItemForFileObjectID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = handlerCopy;
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
    v17[2] = sub_100020F34;
    v17[3] = &unk_100044598;
    v13 = handlerCopy;
    v18 = v13;
    v14 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v17];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100020F4C;
    v15[3] = &unk_1000453E0;
    v16 = v13;
    [v14 getQueryItemForBRFileObjectID:dCopy reply:v15];

    v12 = v18;
  }
}

- (id)fetchContentsForItemWithIdentifier:(id)identifier version:(id)version usingExistingContentsAtURL:(id)l existingVersion:(id)existingVersion request:(id)request completionHandler:(id)handler
{
  identifierCopy = identifier;
  versionCopy = version;
  lCopy = l;
  existingVersionCopy = existingVersion;
  requestCopy = request;
  handlerCopy = handler;
  if (!self->_isCiconiaDomain)
  {
    br_contentSignature = [versionCopy br_contentSignature];
    v18 = identifierCopy;
    br_contentSignature2 = [existingVersionCopy br_contentSignature];
    memset(v81, 0, sizeof(v81));
    sub_100001C50(1, "[ICDFileProviderExtension fetchContentsForItemWithIdentifier:version:usingExistingContentsAtURL:existingVersion:request:completionHandler:]", 464, 0, v81);
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = v81[0];
      br_prettyDescription = [versionCopy br_prettyDescription];
      *buf = 134219522;
      v83 = v25;
      v84 = 2080;
      v85 = "[ICDFileProviderExtension fetchContentsForItemWithIdentifier:version:usingExistingContentsAtURL:existingVersion:request:completionHandler:]";
      v86 = 2112;
      v18 = identifierCopy;
      v87 = identifierCopy;
      v88 = 2112;
      v89 = br_prettyDescription;
      v90 = 2112;
      v91 = lCopy;
      v92 = 2112;
      v93 = existingVersionCopy;
      v94 = 2112;
      v95 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s fetchContentsForItemWithIdentifier %@ requestedVersion %@ usingExistingContentsAtURL %@ existingVersion %@%@", buf, 0x48u);
    }

    v27 = [BRFileObjectID fileObjectIDWithString:v18];
    v75 = 0;
    v76 = &v75;
    v77 = 0x3032000000;
    v78 = sub_1000219B4;
    v79 = sub_1000219C4;
    v80 = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = sub_1000219B4;
    v73 = sub_1000219C4;
    v74 = 0;
    if (!versionCopy)
    {
      v28 = dispatch_group_create();
      dispatch_group_enter(v28);
      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_1000219CC;
      v65[3] = &unk_100045408;
      v67 = &v75;
      v68 = &v69;
      v29 = v28;
      v66 = v29;
      [(ICDFileProviderExtension *)self _getQueryItemForFileObjectID:v27 completionHandler:v65];
      dispatch_group_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
      v30 = [BRFieldContentSignature alloc];
      contentVersion = [v76[5] contentVersion];
      v32 = [v30 initWithData:contentVersion];

      br_contentSignature = v32;
    }

    v33 = brc_bread_crumbs();
    v34 = brc_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v83 = br_contentSignature;
      v84 = 2112;
      v85 = br_contentSignature2;
      v86 = 2112;
      v87 = v33;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "[INFO] req:%@, exist:%@%@", buf, 0x20u);
    }

    if (br_contentSignature && ([br_contentSignature2 isPendingSignature] && (objc_msgSend(br_contentSignature, "hasPopulatedVersionAndSignature") & 1) != 0 || !objc_msgSend(br_contentSignature, "contentDiffersWithSignature:", br_contentSignature2) || (objc_msgSend(br_contentSignature, "hasOnlyLocalEditsOnTopOfSignature:", br_contentSignature2) & 1) != 0 || !versionCopy && objc_msgSend(br_contentSignature, "containsLocalEdits")))
    {
      v35 = brc_bread_crumbs();
      v36 = brc_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        sub_100028CE8();
      }

      if (v76[5])
      {
        v37 = brc_bread_crumbs();
        v38 = brc_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          asFileProviderItem = [v76[5] asFileProviderItem];
          *buf = 136316162;
          v83 = "[ICDFileProviderExtension fetchContentsForItemWithIdentifier:version:usingExistingContentsAtURL:existingVersion:request:completionHandler:]";
          v84 = 2112;
          v85 = lCopy;
          v86 = 2112;
          v87 = asFileProviderItem;
          v88 = 2112;
          v89 = 0;
          v90 = 2112;
          v91 = v37;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", buf, 0x34u);
        }

        asFileProviderItem2 = [v76[5] asFileProviderItem];
        handlerCopy[2](handlerCopy, lCopy, asFileProviderItem2, 0);
      }

      else
      {
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_100021A68;
        v62[3] = &unk_100045430;
        v63 = lCopy;
        v64 = handlerCopy;
        [(ICDFileProviderExtension *)self _getQueryItemForFileObjectID:v27 completionHandler:v62];

        asFileProviderItem2 = v63;
      }
    }

    else
    {
      if (![br_contentSignature containsLocalEdits])
      {
        v51 = brc_bread_crumbs();
        v52 = brc_default_log();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          sub_100028D50();
        }

        v53 = [(ICDFileProviderExtension *)self _fetchContentsForItemWithIdentifier:v18 existingContents:lCopy version:versionCopy request:requestCopy completionHandler:handlerCopy];
        goto LABEL_40;
      }

      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        sub_100028DB8();
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
          asFileProviderItem3 = [v76[5] asFileProviderItem];
          br_fileProviderErrorForDownloadFlow = [v70[5] br_fileProviderErrorForDownloadFlow];
          *buf = 136316162;
          v83 = "[ICDFileProviderExtension fetchContentsForItemWithIdentifier:version:usingExistingContentsAtURL:existingVersion:request:completionHandler:]";
          v84 = 2112;
          v85 = 0;
          v86 = 2112;
          v87 = asFileProviderItem3;
          v88 = 2112;
          v89 = br_fileProviderErrorForDownloadFlow;
          v90 = 2112;
          v91 = v45;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@, %@)%@", buf, 0x34u);
        }

        asFileProviderItem4 = [v76[5] asFileProviderItem];
        br_fileProviderErrorForDownloadFlow2 = [v70[5] br_fileProviderErrorForDownloadFlow];
        (handlerCopy)[2](handlerCopy, 0, asFileProviderItem4, br_fileProviderErrorForDownloadFlow2);
      }

      else
      {
        v59[0] = _NSConcreteStackBlock;
        v59[1] = 3221225472;
        v59[2] = sub_100021C08;
        v59[3] = &unk_100045480;
        v59[4] = self;
        v60 = lCopy;
        v61 = handlerCopy;
        [(ICDFileProviderExtension *)self _getQueryItemForFileObjectID:v27 completionHandler:v59];
      }
    }

    v53 = [NSProgress progressWithTotalUnitCount:0];
LABEL_40:
    v22 = v53;
    _Block_object_dispose(&v69, 8);

    _Block_object_dispose(&v75, 8);
    sub_100001DE4(v81);

    goto LABEL_41;
  }

  v17 = brc_bread_crumbs();
  v18 = identifierCopy;
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

  br_contentSignature = +[NSError brc_errorLoggedOut];
  (handlerCopy)[2](handlerCopy, 0, 0, br_contentSignature);
  v22 = 0;
LABEL_41:

  return v22;
}

- (ICDFileProviderExtension)initWithDomain:(id)domain
{
  domainCopy = domain;
  v28.receiver = self;
  v28.super_class = ICDFileProviderExtension;
  v6 = [(ICDFileProviderExtension *)&v28 init];
  if (v6)
  {
    v27 = 0;
    identifier = [domainCopy identifier];
    v8 = [NSString br_currentPersonaIDWithIsDataSeparated:&v27];
    personaID = v6->_personaID;
    v6->_personaID = v8;

    objc_storeStrong(&v6->_domain, domain);
    v10 = [NSFileProviderManager managerForDomain:domainCopy];
    fileProviderManager = v6->_fileProviderManager;
    v6->_fileProviderManager = v10;

    v12 = [NSString stringWithFormat:@"com.apple.CloudDocs.%@.responseQueue", identifier];
    uTF8String = [v12 UTF8String];
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(v14, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create(uTF8String, v15);

    responseQueue = v6->_responseQueue;
    v6->_responseQueue = v16;

    v18 = [NSString stringWithFormat:@"com.apple.CloudDocs.%@.xpcConnectionQueue", identifier];
    uTF8String2 = [v18 UTF8String];
    v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(v20, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create(uTF8String2, v21);

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
    if (qword_1000523F8 != -1)
    {
      sub_100028E20();
    }

    v4 = qword_100052400;
    v5 = 1;
  }

  else
  {
    v4 = v3;
    v5 = 0;
  }

  v6 = +[UMUserManager sharedManager];
  currentPersona = [v6 currentPersona];

  v24 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  v9 = userPersonaUniqueString;
  if (userPersonaUniqueString == v4 || [(NSString *)userPersonaUniqueString isEqualToString:v4])
  {
    v10 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v23 = 0;
    v13 = [currentPersona copyCurrentPersonaContextWithError:&v23];
    v14 = v23;
    v15 = v24;
    v24 = v13;

    if (v14)
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, 0x90u))
      {
        sub_100028E34();
      }
    }

    v10 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:v4];

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
    if (v5 && ([currentPersona isDataSeparatedPersona] & 1) == 0)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100027360();
      }

      v10 = 0;
      goto LABEL_29;
    }

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_1000273C8();
    }

    v10 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
  }

LABEL_10:
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100028EA0();
  }

  [(NSFileProviderManager *)self->_fileProviderManager br_signalWorkingSetEnumeratorWithCompletionHandler:&stru_1000454C0];
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
  v4[2] = sub_100022738;
  v4[3] = &unk_1000446D8;
  objc_copyWeak(&v5, &location);
  dispatch_async(domainSetupWaiterQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (BOOL)_isLoggedInOrError:(id *)error
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
        if (!error)
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

    if (error)
    {
      v13 = v10;
      *error = v10;
    }

    goto LABEL_11;
  }

  v7 = 1;
LABEL_12:

  return v7;
}

- (void)waitForStabilizationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
    handlerCopy[2](handlerCopy, v11);
  }

  else if ((+[UMUserManager br_isInSyncBubble]& 1) != 0)
  {
    memset(v24, 0, sizeof(v24));
    sub_100001C50(1, "[ICDFileProviderExtension waitForStabilizationWithCompletionHandler:]", 639, 0, v24);
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
    v22[2] = sub_100022E3C;
    v22[3] = &unk_100044598;
    v14 = handlerCopy;
    v23 = v14;
    v15 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v22];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100022F4C;
    v20[3] = &unk_100044598;
    v21 = v14;
    [v15 waitForStabilizationWithReply:v20];

    sub_100001DE4(v24);
  }

  else
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100028F74();
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

    handlerCopy[2](handlerCopy, 0);
  }
}

- (id)itemForIdentifier:(id)identifier request:(id)request completionHandler:(id)handler
{
  identifierCopy = identifier;
  requestCopy = request;
  handlerCopy = handler;
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
    handlerCopy[2](handlerCopy, 0, v17);

    v18 = 0;
  }

  else
  {
    memset(v46, 0, sizeof(v46));
    sub_100001C50(1, "[ICDFileProviderExtension itemForIdentifier:request:completionHandler:]", 660, 0, v46);
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 134218754;
      *&buf[4] = v46[0];
      *&buf[12] = 2080;
      *&buf[14] = "[ICDFileProviderExtension itemForIdentifier:request:completionHandler:]";
      *&buf[22] = 2112;
      v48 = identifierCopy;
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
      if ([identifierCopy isEqualToString:NSFileProviderTrashContainerItemIdentifier])
      {
        v23 = objc_opt_new();
        v24 = brc_bread_crumbs();
        v25 = brc_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          sub_100028FDC();
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

        (handlerCopy)[2](handlerCopy, v23, 0);
        v28 = v18;
      }

      else
      {
        v32 = [BRFileObjectID fileObjectIDWithString:identifierCopy];
        v43 = 0uLL;
        v44 = 0;
        sub_100001C50(0, "[ICDFileProviderExtension itemForIdentifier:request:completionHandler:]", 679, 0, &v43);
        v33 = brc_bread_crumbs();
        v34 = brc_default_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_100028B9C(&v43);
        }

        *buf = v43;
        *&buf[16] = v44;
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_100023704;
        v38[3] = &unk_100045510;
        v38[4] = self;
        v35 = v32;
        v39 = v35;
        v41 = *buf;
        v42 = *&buf[16];
        v40 = handlerCopy;
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

      handlerCopy[2](handlerCopy, 0, v22);
      v31 = v18;
    }

    sub_100001DE4(v46);
  }

  return v18;
}

- (id)enumeratorForVersionsOfItemWithIdentifier:(id)identifier request:(id)request error:(id *)error
{
  identifierCopy = identifier;
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
    v11 = [BRFileObjectID fileObjectIDWithString:identifierCopy];
    v10 = [(BRBaseFileEnumerator *)[BRFileVersionsEnumerator alloc] initWithFileObjectID:v11 itemIdentifier:identifierCopy recursive:0 fileProviderManager:self->_fileProviderManager];
  }

  return v10;
}

- (id)modifyItem:(id)item baseVersion:(id)version changedFields:(unint64_t)fields contents:(id)contents options:(unint64_t)options request:(id)request completionHandler:(id)handler
{
  itemCopy = item;
  versionCopy = version;
  contentsCopy = contents;
  requestCopy = request;
  handlerCopy = handler;
  if (!self->_isCiconiaDomain)
  {
    memset(v77, 0, sizeof(v77));
    sub_100001C50(1, "[ICDFileProviderExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]", 731, 0, v77);
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      fieldsCopy = fields;
      v24 = v77[0];
      v25 = fieldsCopy;
      v26 = BRCPrettyPrintBitmap();
      v27 = BRCPrettyPrintBitmap();
      *buf = 134219266;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = "[ICDFileProviderExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]";
      *&buf[22] = 2112;
      *v79 = itemCopy;
      *&v79[8] = 2112;
      *v80 = v26;
      *&v80[8] = 2112;
      *v81 = v27;
      *&v81[8] = 2112;
      v82 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "[INFO] ┏%llx %s modifyItem %@ fields:%@ options:%@%@", buf, 0x3Eu);

      fields = v25;
    }

    itemIdentifier = [itemCopy itemIdentifier];
    v29 = [itemIdentifier isEqualToString:NSFileProviderTrashContainerItemIdentifier];

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
      (*(handlerCopy + 2))(handlerCopy, v33, 0, 0, 0);

      v20 = objc_opt_new();
      goto LABEL_33;
    }

    filename = [itemCopy filename];
    v35 = [filename br_isExcludedWithMaximumDepth:1];

    if (v35)
    {
      v36 = brc_bread_crumbs();
      v37 = brc_default_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = +[NSError brc_errorExcludedFromSyncDueToFilename];
        br_fileProviderError = [v38 br_fileProviderError];
        *buf = 136316418;
        *&buf[4] = "[ICDFileProviderExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]";
        *&buf[12] = 2112;
        *&buf[14] = 0;
        *&buf[22] = 1024;
        *v79 = 0;
        *&v79[4] = 1024;
        *&v79[6] = 0;
        *v80 = 2112;
        *&v80[2] = br_fileProviderError;
        *v81 = 2112;
        *&v81[2] = v36;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %d, %d, %@)%@", buf, 0x36u);
      }

      v40 = +[NSError brc_errorExcludedFromSyncDueToFilename];
      br_fileProviderError2 = [v40 br_fileProviderError];
      (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, br_fileProviderError2);

      v20 = 0;
      goto LABEL_32;
    }

    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_1000245EC;
    v75[3] = &unk_100044598;
    v42 = handlerCopy;
    v76 = v42;
    v56 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v75];
    if (contentsCopy && (fields & 1) != 0)
    {
      if ((options & 6) != 0)
      {
        v73 = 0uLL;
        v74 = 0;
        sub_100001C50(0, "[ICDFileProviderExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]", 751, 0, &v73);
        v43 = brc_bread_crumbs();
        v44 = brc_default_log();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          sub_100029134(&v73);
        }

        *buf = v73;
        *&buf[16] = v74;
        v45 = [[NSSecurityScopedURLWrapper alloc] initWithURL:contentsCopy readonly:1];
        itemIdentifier2 = [itemCopy itemIdentifier];
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_100024724;
        v66[3] = &unk_1000455A0;
        v70 = *buf;
        v71 = *&buf[16];
        v69 = v42;
        fieldsCopy2 = fields;
        v67 = itemCopy;
        selfCopy = self;
        v20 = [v56 uploadItemIdentifier:itemIdentifier2 withContents:v45 baseVersion:versionCopy basedOnOriginalVersion:1 options:~(options >> 1) & 1 reply:v66];

        goto LABEL_31;
      }
    }

    else if (!contentsCopy)
    {
      v47 = 0;
      goto LABEL_27;
    }

    v65 = 0;
    v47 = [FPSandboxingURLWrapper wrapperWithURL:contentsCopy readonly:0 error:&v65];
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
      sub_100001DE4(v77);
      goto LABEL_34;
    }

LABEL_27:
    v73 = 0uLL;
    v74 = 0;
    sub_100001C50(0, "[ICDFileProviderExtension modifyItem:baseVersion:changedFields:contents:options:request:completionHandler:]", 797, 0, &v73);
    v52 = brc_bread_crumbs();
    v53 = brc_default_log();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
    {
      sub_100028B9C(&v73);
    }

    *buf = v73;
    *&buf[16] = v74;
    v54 = [(ICDFileProviderExtension *)self populateNonCodableAttributesOfTemplate:itemCopy];
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_100024CE0;
    v61[3] = &unk_100045318;
    v61[4] = self;
    v63 = *buf;
    v64 = *&buf[16];
    v62 = v42;
    [v56 modifyItem:itemCopy baseVersion:versionCopy changedFields:fields contents:v47 options:options additionalAttrs:v54 completionHandler:v61];

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
  (*(handlerCopy + 2))(handlerCopy, 0, 0, 0, v19);

  v20 = 0;
LABEL_34:

  return v20;
}

- (void)_isSharableItem:(id)item withCompletionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  v8 = [BRFileObjectID fileObjectIDWithString:itemCopy];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if ([v8 type] == 3 || objc_msgSend(v8, "type") == 2)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000251A8;
    v15[3] = &unk_100044598;
    v9 = handlerCopy;
    v16 = v9;
    v10 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v15];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000251C0;
    v11[3] = &unk_1000455C8;
    v14 = &v17;
    v12 = itemCopy;
    v13 = v9;
    [v10 checkIfItemIsShareableWithItemIdentifier:v12 reply:v11];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, *(v18 + 24), 0);
  }

  _Block_object_dispose(&v17, 8);
}

- (id)supportedServiceSourcesForItemIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
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
    handlerCopy[2](handlerCopy, 0, v11);

    v12 = 0;
  }

  else
  {
    [(ICDFileProviderExtension *)self _waitForDomainSetup];
    v12 = [NSProgress progressWithTotalUnitCount:0];
    if ([identifierCopy isEqualToString:NSFileProviderRootContainerItemIdentifier])
    {
      v13 = objc_opt_new();
      (handlerCopy)[2](handlerCopy, v13, 0);
    }

    else
    {
      identifier = [(NSFileProviderDomain *)self->_domain identifier];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100025538;
      v17[3] = &unk_1000455F0;
      v20 = handlerCopy;
      v17[4] = self;
      v18 = identifierCopy;
      v19 = identifier;
      v15 = identifier;
      [(ICDFileProviderExtension *)self _isSharableItem:v18 withCompletionHandler:v17];
    }
  }

  return v12;
}

- (void)importDidFinishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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

    handlerCopy[2](handlerCopy);
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000292F4();
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100025994;
    v14[3] = &unk_100044598;
    v10 = handlerCopy;
    v15 = v10;
    v11 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v14];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000259A4;
    v12[3] = &unk_1000448A8;
    v12[4] = self;
    v13 = v10;
    [v11 notifyReimportCompleted:v12];
  }
}

- (id)_defaultApplicationContainerForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
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
    handlerCopy[2](handlerCopy, 0, v11);
  }

  else
  {
    memset(v42, 0, sizeof(v42));
    sub_100001C50(0, "[ICDFileProviderExtension _defaultApplicationContainerForBundleIdentifier:completionHandler:]", 951, 0, v42);
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v44 = v42[0];
      v45 = 2112;
      v46 = identifierCopy;
      v47 = 2112;
      v48 = v12;
      _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx lookup for default location of %@%@", buf, 0x20u);
    }

    if (identifierCopy && ![identifierCopy isEqualToString:@"com.apple.DocumentsApp"])
    {
      v39 = 0;
      v15 = [LSApplicationRecord bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v39];
      v14 = v39;
      if (v15)
      {
        entitlements = [v15 entitlements];
        v34 = BREntitledContainerIdentifiersForPropertyList();
        v17 = brc_bread_crumbs();
        v18 = brc_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v44 = identifierCopy;
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
          v37[2] = sub_100026550;
          v37[3] = &unk_100044598;
          v20 = handlerCopy;
          v38 = v20;
          v21 = [(ICDFileProviderExtension *)self _getAsyncProxyWithErrorHandler:v37];
          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_10002666C;
          v35[3] = &unk_100045430;
          v35[4] = self;
          v36 = v20;
          [v21 getDefaultAppContainerItemForContainerID:v19 recreateDocumentsIfNeeded:1 reply:v35];

          br_fileProviderError2 = v38;
        }

        else
        {
          v28 = brc_bread_crumbs();
          v29 = brc_default_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            sub_10002935C();
          }

          v19 = [NSError errorWithDomain:BRCloudDocsErrorDomain code:1 userInfo:0];
          v30 = brc_bread_crumbs();
          v31 = brc_default_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            br_fileProviderError = [v19 br_fileProviderError];
            *buf = 136315906;
            v44 = "[ICDFileProviderExtension _defaultApplicationContainerForBundleIdentifier:completionHandler:]";
            v45 = 2112;
            v46 = 0;
            v47 = 2112;
            v48 = br_fileProviderError;
            v49 = 2112;
            v50 = v30;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", buf, 0x2Au);
          }

          br_fileProviderError2 = [v19 br_fileProviderError];
          handlerCopy[2](handlerCopy, 0, br_fileProviderError2);
        }
      }

      else
      {
        v23 = brc_bread_crumbs();
        v24 = brc_default_log();
        if (os_log_type_enabled(v24, 0x90u))
        {
          sub_1000293CC();
        }

        v25 = brc_bread_crumbs();
        v26 = brc_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          br_fileProviderError3 = [v14 br_fileProviderError];
          *buf = 136315906;
          v44 = "[ICDFileProviderExtension _defaultApplicationContainerForBundleIdentifier:completionHandler:]";
          v45 = 2112;
          v46 = 0;
          v47 = 2112;
          v48 = br_fileProviderError3;
          v49 = 2112;
          v50 = v25;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[INFO] %s: reply(%@, %@)%@", buf, 0x2Au);
        }

        entitlements = [v14 br_fileProviderError];
        handlerCopy[2](handlerCopy, 0, entitlements);
      }
    }

    else
    {
      v14 = [BRFileObjectID fileObjectIDWithString:NSFileProviderCloudDocsContainerIdentifier];
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 3221225472;
      v40[2] = sub_1000262E4;
      v40[3] = &unk_100045430;
      v40[4] = self;
      v41 = handlerCopy;
      [(ICDFileProviderExtension *)self _getQueryItemForFileObjectID:v14 completionHandler:v40];
    }

    sub_100001DE4(v42);
  }

  return 0;
}

@end