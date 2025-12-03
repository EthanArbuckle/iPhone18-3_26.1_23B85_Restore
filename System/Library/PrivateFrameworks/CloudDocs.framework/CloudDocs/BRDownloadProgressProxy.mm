@interface BRDownloadProgressProxy
- (BRDownloadProgressProxy)initWithURL:(id)l;
- (void)_queryDidReceiveUpdate:(id)update;
- (void)start;
- (void)stop;
@end

@implementation BRDownloadProgressProxy

- (BRDownloadProgressProxy)initWithURL:(id)l
{
  lCopy = l;
  v21.receiver = self;
  v21.super_class = BRDownloadProgressProxy;
  v5 = [(BRDownloadProgressProxy *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AD38]);
    query = v5->_query;
    v5->_query = v6;

    [(NSMetadataQuery *)v5->_query br_setupForMonitoringItemAtURL:lCopy];
    [(NSMetadataQuery *)v5->_query setNotificationBatchingInterval:0.1];
    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    queue = v5->_queue;
    v5->_queue = v8;

    [(NSOperationQueue *)v5->_queue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v5->_queue setQualityOfService:17];
    [(NSMetadataQuery *)v5->_query setOperationQueue:v5->_queue];
    [(BRDownloadProgressProxy *)v5 setKind:*MEMORY[0x1E696A888]];
    [(BRDownloadProgressProxy *)v5 setUserInfoObject:*MEMORY[0x1E696A848] forKey:*MEMORY[0x1E696A858]];
    [(BRDownloadProgressProxy *)v5 setUserInfoObject:lCopy forKey:*MEMORY[0x1E696A880]];
    v20 = 0;
    v10 = [lCopy getPromisedItemResourceValue:&v20 forKey:*MEMORY[0x1E695DC10] error:0];
    v11 = v20;
    if ((v10 & 1) == 0)
    {
      lastPathComponent = [lCopy lastPathComponent];

      v11 = lastPathComponent;
    }

    objc_initWeak(&location, v5);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __39__BRDownloadProgressProxy_initWithURL___block_invoke;
    v17[3] = &unk_1E7A15630;
    objc_copyWeak(&v18, &location);
    [(BRDownloadProgressProxy *)v5 setCancellationHandler:v17];
    if (v11)
    {
      [(BRDownloadProgressProxy *)v5 setUserInfoObject:v11 forKey:*MEMORY[0x1E696A818]];
    }

    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    br_currentPersonaID = [mEMORY[0x1E69DF068] br_currentPersonaID];
    personaID = v5->_personaID;
    v5->_personaID = br_currentPersonaID;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __39__BRDownloadProgressProxy_initWithURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queryDidReceiveUpdate:0];
}

- (void)_queryDidReceiveUpdate:(id)update
{
  v52 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if ([(NSString *)self->_personaID isEqualToString:@"__defaultPersonaID__"]|| (v4 = self->_personaID) == 0)
  {
    if (_queryDidReceiveUpdate____personaOnceToken != -1)
    {
      [BRDownloadProgressProxy _queryDidReceiveUpdate:];
    }

    v5 = _queryDidReceiveUpdate____personalPersona;
    v6 = 1;
  }

  else
  {
    v5 = v4;
    v6 = 0;
  }

  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  currentPersona = [mEMORY[0x1E69DF068] currentPersona];

  v45 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  v9 = userPersonaUniqueString;
  if (userPersonaUniqueString == v5 || [(NSString *)userPersonaUniqueString isEqualToString:v5])
  {
    goto LABEL_9;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v44 = 0;
    v23 = [currentPersona copyCurrentPersonaContextWithError:&v44];
    v24 = v44;
    v25 = v45;
    v45 = v23;

    if (v24)
    {
      v26 = brc_bread_crumbs("[BRDownloadProgressProxy _queryDidReceiveUpdate:]", 54);
      v27 = brc_default_log(0, 0);
      if (os_log_type_enabled(v27, 0x90u))
      {
        BRPerformWithPersonaAndError_cold_4(v24, v26, v27);
      }
    }

    v42 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:v5];

    if (!v42)
    {
LABEL_9:
      v42 = 0;
      goto LABEL_10;
    }

    v28 = brc_bread_crumbs("[BRDownloadProgressProxy _queryDidReceiveUpdate:]", 54);
    v29 = brc_default_log(0, 0);
    if (os_log_type_enabled(v29, 0x90u))
    {
      personaID = self->_personaID;
      *buf = 138412802;
      v47 = personaID;
      v48 = 2112;
      v49 = v42;
      v50 = 2112;
      v51 = v28;
      _os_log_error_impl(&dword_1AE2A9000, v29, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
    }

    goto LABEL_41;
  }

  if (v6 && ([currentPersona isDataSeparatedPersona] & 1) == 0)
  {
    v28 = brc_bread_crumbs("[BRDownloadProgressProxy _queryDidReceiveUpdate:]", 54);
    v29 = brc_default_log(1, 0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      __br_notify_register_dispatch_block_invoke_cold_2_0(v28, v29);
    }

    v42 = 0;
LABEL_41:

    goto LABEL_10;
  }

  v36 = brc_bread_crumbs("[BRDownloadProgressProxy _queryDidReceiveUpdate:]", 54);
  v37 = brc_default_log(1, 0);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    __br_notify_register_dispatch_block_invoke_cold_3_0(v36, v37);
  }

  v42 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
LABEL_10:
  results = [(NSMetadataQuery *)self->_query results];
  if ([results count])
  {
    v11 = [results objectAtIndexedSubscript:0];
    v40 = [v11 valueForKey:*MEMORY[0x1E696A6D0]];
    v12 = [v11 valueForKey:@"BRMetadataUbiquitousItemDownloadingSizeKey"];
    userInfo = [(BRDownloadProgressProxy *)self userInfo];
    v14 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A818]];

    isCancelled = [(BRDownloadProgressProxy *)self isCancelled];
    if ([(BRDownloadProgressProxy *)self isCancelled])
    {
      v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      if (v14)
      {
        _BRLocalizedStringWithFormat(@"CANCELLING_DOWNLOAD_ITEM_PROGRESS_WITH_FILENAME", @"Localizable", v21, v16, v17, v18, v19, v20, v14);
      }

      else
      {
        _BRLocalizedStringWithFormat(@"CANCELLING_DOWNLOAD_ITEM_PROGRESS", @"Localizable", v21, v16, v17, v18, v19, v20, v39);
      }
    }

    else
    {
      v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      if (v14)
      {
        _BRLocalizedStringWithFormat(@"DOWNLOAD_ITEM_PROGRESS_WITH_FILENAME", @"Localizable", v21, v31, v32, v33, v34, v35, v14);
      }

      else
      {
        _BRLocalizedStringWithFormat(@"DOWNLOAD_ITEM_PROGRESS", @"Localizable", v21, v31, v32, v33, v34, v35, v39);
      }
    }
    v22 = ;
    [(BRDownloadProgressProxy *)self setLocalizedDescription:v22];

    if (isCancelled)
    {
      [(BRDownloadProgressProxy *)self setTotalUnitCount:-1];
    }

    else if (v12)
    {
      -[BRDownloadProgressProxy setTotalUnitCount:](self, "setTotalUnitCount:", [v12 longLongValue]);
      -[BRDownloadProgressProxy setCompletedUnitCount:](self, "setCompletedUnitCount:", [v40 longLongValue] * objc_msgSend(v12, "longLongValue") / 100);
    }
  }

  _BRRestorePersona(&v45);
  v38 = *MEMORY[0x1E69E9840];
}

void __50__BRDownloadProgressProxy__queryDidReceiveUpdate___block_invoke()
{
  v2 = [MEMORY[0x1E69DF088] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _queryDidReceiveUpdate____personalPersona;
  _queryDidReceiveUpdate____personalPersona = v0;
}

- (void)start
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__queryDidReceiveUpdate_ name:*MEMORY[0x1E696A620] object:self->_query];
  [defaultCenter addObserver:self selector:sel__queryDidReceiveUpdate_ name:*MEMORY[0x1E696A618] object:self->_query];
  [(NSMetadataQuery *)self->_query startQuery];
}

- (void)stop
{
  queue = self->_queue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__BRDownloadProgressProxy_stop__block_invoke;
  v3[3] = &unk_1E7A14798;
  v3[4] = self;
  [(NSOperationQueue *)queue addOperationWithBlock:v3];
}

void __31__BRDownloadProgressProxy_stop__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 120) stopQuery];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 removeObserver:*(a1 + 32)];
}

@end