@interface MKAPIServer
+ (void)benchmark:(id)benchmark;
+ (void)clean;
+ (void)test;
- (MKAPIServer)init;
- (MKAPIServerDelegate)delegate;
- (void)cancel;
- (void)dealloc;
- (void)import;
- (void)migratorDidComplete:(id)complete;
- (void)migratorDidExecuteOperation:(id)operation;
- (void)migratorWillExecuteOperation:(id)operation;
- (void)processPerformanceMetrics;
- (void)router:(id)router didReceiveAccessibilitySettingEncodedInJSON:(id)n;
- (void)router:(id)router didReceiveAccountEncodedInJSON:(id)n;
- (void)router:(id)router didReceiveBookmarkEncodedInJSON:(id)n;
- (void)router:(id)router didReceiveClient:(id)client;
- (void)router:(id)router didReceiveDisplaySettingEncodedInJSON:(id)n;
- (void)router:(id)router didReceiveFileChunk:(id)chunk filename:(id)filename offset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total complete:(BOOL)complete;
- (void)router:(id)router didReceiveICal:(id)cal;
- (void)router:(id)router didReceiveImageChunk:(id)chunk identifier:(id)identifier offset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total filename:(id)filename collection:(id)self0 originalFilename:(id)self1 complete:(BOOL)self2;
- (void)router:(id)router didReceiveMessageEncodedInJSON:(id)n;
- (void)router:(id)router didReceiveVCard:(id)card;
- (void)router:(id)router didReceiveVideoChunk:(id)chunk identifier:(id)identifier offset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total filename:(id)filename collection:(id)self0 originalFilename:(id)self1 complete:(BOOL)self2;
- (void)router:(id)router didUpdateProgress:(float)progress remainingTime:(unint64_t)time state:(int)state;
- (void)routerDidAuthenticateClient:(id)client;
- (void)routerDidRejectClient:(id)client;
- (void)runHTTP;
- (void)runHTTPS:(id)s;
- (void)server:(id)server didOpen:(int64_t)open;
- (void)serverDidCancel:(id)cancel;
- (void)setImportContext:(id)context;
- (void)setImportContexts;
- (void)setSwitcherFlags;
- (void)usbHTTPServerDidClose:(id)close;
@end

@implementation MKAPIServer

- (MKAPIServer)init
{
  v62 = *MEMORY[0x277D85DE8];
  v60.receiver = self;
  v60.super_class = MKAPIServer;
  v2 = [(MKAPIServer *)&v60 init];
  if (v2)
  {
    v3 = objc_alloc_init(MKCertificate);
    certificate = v2->_certificate;
    v2->_certificate = v3;

    v5 = objc_alloc_init(MKProgress);
    progress = v2->_progress;
    v2->_progress = v5;

    v7 = objc_alloc_init(MKContext);
    context = v2->_context;
    v2->_context = v7;

    v9 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:0];
    migrators = v2->_migrators;
    v2->_migrators = v9;

    v11 = objc_alloc_init(MKAccountMigrator);
    accountMigrator = v2->_accountMigrator;
    v2->_accountMigrator = v11;

    v13 = objc_alloc_init(MKMessageMigrator);
    messageMigrator = v2->_messageMigrator;
    v2->_messageMigrator = v13;

    v15 = objc_alloc_init(MKBookmarkMigrator);
    bookmarkMigrator = v2->_bookmarkMigrator;
    v2->_bookmarkMigrator = v15;

    v17 = objc_alloc_init(MKApplicationMigrator);
    applicationMigrator = v2->_applicationMigrator;
    v2->_applicationMigrator = v17;

    v19 = objc_alloc_init(MKAccessibilitySettingMigrator);
    accessibilitySettingMigrator = v2->_accessibilitySettingMigrator;
    v2->_accessibilitySettingMigrator = v19;

    v21 = objc_alloc_init(MKDisplaySettingMigrator);
    displaySettingMigrator = v2->_displaySettingMigrator;
    v2->_displaySettingMigrator = v21;

    v23 = objc_alloc_init(MKContactMigrator);
    contactMigrator = v2->_contactMigrator;
    v2->_contactMigrator = v23;

    v25 = objc_alloc_init(MKCallHistoryMigrator);
    callHistoryMigrator = v2->_callHistoryMigrator;
    v2->_callHistoryMigrator = v25;

    v27 = objc_alloc_init(MKCalendarMigrator);
    calendarMigrator = v2->_calendarMigrator;
    v2->_calendarMigrator = v27;

    v29 = objc_alloc_init(MKPhotoLibraryAlbumMigrator);
    photoLibraryAlbumMigrator = v2->_photoLibraryAlbumMigrator;
    v2->_photoLibraryAlbumMigrator = v29;

    v31 = [[MKPhotoLibraryMigrator alloc] initWithType:0];
    photoLibraryImageMigrator = v2->_photoLibraryImageMigrator;
    v2->_photoLibraryImageMigrator = v31;

    v33 = [[MKPhotoLibraryMigrator alloc] initWithType:1];
    photoLibraryVideoMigrator = v2->_photoLibraryVideoMigrator;
    v2->_photoLibraryVideoMigrator = v33;

    [(MKPhotoLibraryMigrator *)v2->_photoLibraryImageMigrator setAlbumMigrator:v2->_photoLibraryAlbumMigrator];
    [(MKPhotoLibraryMigrator *)v2->_photoLibraryVideoMigrator setAlbumMigrator:v2->_photoLibraryAlbumMigrator];
    v35 = objc_alloc_init(MKVoiceMemoMigrator);
    voiceMemoMigrator = v2->_voiceMemoMigrator;
    v2->_voiceMemoMigrator = v35;

    v37 = objc_alloc_init(MKFileMigrator);
    fileMigrator = v2->_fileMigrator;
    v2->_fileMigrator = v37;

    v39 = objc_alloc_init(MKPlaceholderMigrator);
    placeholderMigrator = v2->_placeholderMigrator;
    v2->_placeholderMigrator = v39;

    v41 = objc_alloc_init(MKContainerMigrator);
    containerMigrator = v2->_containerMigrator;
    v2->_containerMigrator = v41;

    v43 = objc_alloc_init(MKDiagnosticsMigrator);
    diagnosticsMigrator = v2->_diagnosticsMigrator;
    v2->_diagnosticsMigrator = v43;

    v45 = objc_alloc_init(MKSIMMigrator);
    simMigrator = v2->_simMigrator;
    v2->_simMigrator = v45;

    [(MKCallHistoryMigrator *)v2->_callHistoryMigrator setLabel:v2->_simMigrator];
    v47 = v2->_applicationMigrator;
    signatures = [(MKContainerMigrator *)v2->_containerMigrator signatures];
    [(MKApplicationMigrator *)v47 setSignatures:signatures];

    [(NSHashTable *)v2->_migrators addObject:v2->_accountMigrator];
    [(NSHashTable *)v2->_migrators addObject:v2->_messageMigrator];
    [(NSHashTable *)v2->_migrators addObject:v2->_bookmarkMigrator];
    [(NSHashTable *)v2->_migrators addObject:v2->_applicationMigrator];
    [(NSHashTable *)v2->_migrators addObject:v2->_accessibilitySettingMigrator];
    [(NSHashTable *)v2->_migrators addObject:v2->_displaySettingMigrator];
    [(NSHashTable *)v2->_migrators addObject:v2->_contactMigrator];
    [(NSHashTable *)v2->_migrators addObject:v2->_callHistoryMigrator];
    [(NSHashTable *)v2->_migrators addObject:v2->_calendarMigrator];
    [(NSHashTable *)v2->_migrators addObject:v2->_photoLibraryImageMigrator];
    [(NSHashTable *)v2->_migrators addObject:v2->_photoLibraryVideoMigrator];
    [(NSHashTable *)v2->_migrators addObject:v2->_photoLibraryAlbumMigrator];
    [(NSHashTable *)v2->_migrators addObject:v2->_voiceMemoMigrator];
    [(NSHashTable *)v2->_migrators addObject:v2->_fileMigrator];
    [(NSHashTable *)v2->_migrators addObject:v2->_containerMigrator];
    [(NSHashTable *)v2->_migrators addObject:v2->_simMigrator];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v49 = v2->_migrators;
    v50 = [(NSHashTable *)v49 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v57;
      do
      {
        v53 = 0;
        do
        {
          if (*v57 != v52)
          {
            objc_enumerationMutation(v49);
          }

          [*(*(&v56 + 1) + 8 * v53++) setDelegate:{v2, v56}];
        }

        while (v51 != v53);
        v51 = [(NSHashTable *)v49 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v51);
    }
  }

  v54 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)dealloc
{
  [(MKAPIServer *)self cancel];
  v3.receiver = self;
  v3.super_class = MKAPIServer;
  [(MKAPIServer *)&v3 dealloc];
}

- (void)cancel
{
  v21 = *MEMORY[0x277D85DE8];
  [(MKHTTPServer *)self->_http cancel];
  [(MKHTTPServer *)self->_https cancel];
  [(MKUSBHTTPServer *)self->_usb cancel];
  if (self->_https)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_success)
    {
      [(MKAPIServer *)selfCopy setImportContexts];
      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      [WeakRetained server:selfCopy didChangeState:2 withContext:selfCopy->_context];

      [(MKAPIServer *)selfCopy setDelegate:0];
      [(MKSIMMigrator *)selfCopy->_simMigrator remove];
      [(MKPlaceholderMigrator *)selfCopy->_placeholderMigrator remove];
      v5 = +[MKAnalytics sharedInstance];
      objc_sync_enter(v5);
      payload = [v5 payload];
      [payload setState:@"com.apple.migrationkit.canceled"];

      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceDate:selfCopy->_startDate];
      v9 = v8;
      payload2 = [v5 payload];
      [payload2 setElapsedTime:v9];

      [v5 send];
      [v5 reset];
      objc_sync_exit(v5);
    }

    objc_sync_exit(selfCopy);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_migrators;
  v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v14++) cancel];
      }

      while (v12 != v14);
      v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)import
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allObjects = [(NSHashTable *)self->_migrators allObjects];
  v3 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v8 + 1) + 8 * v6++) import];
      }

      while (v4 != v6);
      v4 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)runHTTP
{
  v36 = *MEMORY[0x277D85DE8];
  [(MKHTTPServer *)self->_http cancel];
  [(MKUSBHTTPServer *)self->_usb cancel];
  v3 = objc_alloc_init(MKSRPServer);
  v29 = [[MKGETSRPRouter alloc] initWithSRP:v3];
  [(MKGETSRPRouter *)v29 setDelegate:self];
  v28 = [[MKPOSTSRPRouter alloc] initWithSRP:v3];
  [(MKPOSTSRPRouter *)v28 setDelegate:self];
  v4 = [MKSRPPrecheck alloc];
  password = [(MKSRPServer *)v3 password];
  v6 = [(MKSRPPrecheck *)v4 initWithPassword:password];

  v27 = [[MKGETSRPPrecheckRouter alloc] initWithPrecheck:v6];
  v23 = v6;
  v26 = [[MKPOSTSRPPrecheckRouter alloc] initWithPrecheck:v6];
  v25 = [[MKGETCertificateRouter alloc] initWithSRP:v3 certificate:self->_certificate];
  [(MKGETCertificateRouter *)v25 setDelegate:self];
  v24 = [[MKPOSTCertificateRouter alloc] initWithSRP:v3];
  [(MKPOSTCertificateRouter *)v24 setDelegate:self];
  v7 = objc_alloc_init(MKGETStatusRouter);
  getStatusRouter = self->_getStatusRouter;
  self->_getStatusRouter = v7;

  v9 = objc_alloc_init(MKHTTPServer);
  http = self->_http;
  self->_http = v9;

  [(MKHTTPServer *)self->_http setDelegate:self];
  v11 = objc_alloc_init(MKUSBHTTPServer);
  usb = self->_usb;
  self->_usb = v11;

  [(MKUSBHTTPServer *)self->_usb setDelegate:self];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = self->_usb;
  v34[0] = self->_http;
  v34[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        [v19 addRouter:v29 method:1 path:@"/srp"];
        [v19 addRouter:v28 method:3 path:@"/srp"];
        [v19 addRouter:v27 method:1 path:@"/srp/precheck"];
        [v19 addRouter:v26 method:3 path:@"/srp/precheck"];
        [v19 addRouter:v25 method:1 path:@"/certificate"];
        [v19 addRouter:v24 method:3 path:@"/certificate"];
        [v19 addRouter:self->_getStatusRouter method:1 path:@"/status"];
      }

      v16 = [v14 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v16);
  }

  [(MKHTTPServer *)self->_http setService:@"com.apple.migrationkit.http"];
  [(MKHTTPServer *)self->_http run];
  [(MKUSBHTTPServer *)self->_usb run];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  password2 = [(MKSRPServer *)v3 password];
  [WeakRetained server:self didCreateCode:password2];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)runHTTPS:(id)s
{
  v38 = *MEMORY[0x277D85DE8];
  sCopy = s;
  [(MKHTTPServer *)self->_https cancel];
  v31 = objc_alloc_init(MKPOSTClientRouter);
  [(MKPOSTClientRouter *)v31 setDelegate:self];
  v5 = objc_alloc_init(MKPUTRouter);
  [(MKPUTRouter *)v5 setDelegate:self];
  v29 = objc_alloc_init(MKPOSTProgressRouter);
  [(MKPOSTProgressRouter *)v29 setDelegate:self];
  v6 = objc_alloc_init(MKGETSecuredStatusRouter);
  [(MKGETSecuredStatusRouter *)v6 setGetStatusRouter:self->_getStatusRouter];
  supportedContentTypes = [(MKPUTRouter *)v5 supportedContentTypes];
  [(MKGETSecuredStatusRouter *)v6 setSupportedContentTypes:supportedContentTypes];

  v30 = v5;
  supportedTransferEncodings = [(MKPUTRouter *)v5 supportedTransferEncodings];
  [(MKGETSecuredStatusRouter *)v6 setSupportedTransferEncodings:supportedTransferEncodings];

  signatures = [(MKContainerMigrator *)self->_containerMigrator signatures];
  [(MKGETSecuredStatusRouter *)v6 setSignatures:signatures];

  v28 = objc_alloc_init(MKGETPlaceholderRouter);
  v27 = objc_alloc_init(MKDELETEPlaceholderRouter);
  v26 = objc_alloc_init(MKGETMigratorRouter);
  [(MKGETMigratorRouter *)v26 setMigrators:self->_migrators];
  v10 = objc_alloc_init(MKDELETESIMRouter);
  [(MKDELETESIMRouter *)v10 setDelegate:self];
  v11 = objc_alloc_init(MKHTTPServer);
  https = self->_https;
  self->_https = v11;

  [(MKHTTPServer *)self->_https setDelegate:self];
  [(MKHTTPServer *)self->_https setCertificate:self->_certificate];
  v24 = sCopy;
  [(MKHTTPServer *)self->_https setClientCertificate:sCopy];
  [(MKHTTPServer *)self->_https setUseHTTPS:1];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  usb = self->_usb;
  selfCopy = self;
  v36[0] = self->_https;
  v36[1] = usb;
  obj = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  v14 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v32 + 1) + 8 * i);
        [v18 addRouter:v31 method:3 path:@"/client"];
        [v18 addRouter:v30 method:4 path:@"/"];
        [v18 addRouter:v29 method:3 path:@"/progress"];
        [v18 addRouter:v6 method:1 path:@"/status"];
        [v18 addRouter:v28 method:1 path:@"/placeholder"];
        [v18 addRouter:v27 method:5 path:@"/placeholder"];
        [v18 addRouter:v26 method:1 path:@"/migrator"];
        [v18 addRouter:v10 method:5 path:@"/sim"];
      }

      v15 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v15);
  }

  [(MKHTTPServer *)selfCopy->_https setService:@"com.apple.migrationkit.https"];
  [(MKHTTPServer *)selfCopy->_https run];
  date = [MEMORY[0x277CBEAA8] date];
  startDate = selfCopy->_startDate;
  selfCopy->_startDate = date;

  v21 = selfCopy;
  objc_sync_enter(v21);
  v21->_isImporting = 0;
  objc_sync_exit(v21);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)server:(id)server didOpen:(int64_t)open
{
  v15 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v7 = +[MKLog log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = serverCopy;
    v13 = 2048;
    openCopy = open;
    _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "%@ open %ld port.", &v11, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_http == serverCopy)
  {
    v9 = 1;
    goto LABEL_7;
  }

  if (selfCopy->_https == serverCopy)
  {
    v9 = 2;
LABEL_7:
    [(MKGETStatusRouter *)selfCopy->_getStatusRouter setState:v9];
  }

  objc_sync_exit(selfCopy);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)serverDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_https == cancelCopy)
  {
    [(MKGETStatusRouter *)selfCopy->_getStatusRouter setState:3];
  }

  objc_sync_exit(selfCopy);
}

- (void)usbHTTPServerDidClose:(id)close
{
  if (!self->_isImporting)
  {
    [(MKAPIServer *)self cancel];
  }
}

- (void)routerDidAuthenticateClient:(id)client
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained serverDidAuthenticateClient:self];
}

- (void)routerDidRejectClient:(id)client
{
  clientCopy = client;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained serverDidRejectClient:self];

  v5 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v5);
  payload = [v5 payload];
  [payload setState:@"com.apple.migrationkit.rejected"];

  [v5 send];
  [v5 reset];
  objc_sync_exit(v5);
}

- (void)router:(id)router didReceiveClient:(id)client
{
  v53 = *MEMORY[0x277D85DE8];
  routerCopy = router;
  clientCopy = client;
  v7 = +[MKLog log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    hostname = [clientCopy hostname];
    brand = [clientCopy brand];
    model = [clientCopy model];
    name = [clientCopy name];
    v11 = [clientCopy os];
    version = [clientCopy version];
    locale = [clientCopy locale];
    inputMethodLanguages = [clientCopy inputMethodLanguages];
    *buf = 138414594;
    selfCopy = self;
    v35 = 2112;
    v36 = hostname;
    v37 = 2112;
    v38 = brand;
    v39 = 2112;
    v40 = model;
    v41 = 2112;
    v42 = name;
    v43 = 2112;
    v44 = v11;
    v45 = 2112;
    v46 = version;
    v47 = 2112;
    v48 = locale;
    v49 = 2112;
    v50 = inputMethodLanguages;
    v51 = 2048;
    activatedCellularPlans = [clientCopy activatedCellularPlans];
    _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "%@ did receive a client. hostname=%@, brand=%@, model=%@, name=%@, os=%@, version=%@, locale=%@, inputMethodLanguages=%@ activatedCellularPlans=%lu", buf, 0x66u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained server:self didReceiveClient:clientCopy];

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  [(MKAPIServer *)selfCopy2 setClient:clientCopy];
  -[MKSIMMigrator setActivatedCellularPlansCount:](selfCopy2->_simMigrator, "setActivatedCellularPlansCount:", [clientCopy activatedCellularPlans]);
  v17 = objc_alloc_init(MKDiscoverabilitySignals);
  [(MKAPIServer *)selfCopy2 setDiscoverabilitySignals:v17];

  discoverabilitySignals = [(MKAPIServer *)selfCopy2 discoverabilitySignals];
  [discoverabilitySignals addSignalsForClient:clientCopy];

  objc_sync_exit(selfCopy2);
  v19 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v19);
  v20 = [clientCopy os];
  payload = [v19 payload];
  [payload setAndroidAPILevel:v20];

  brand2 = [clientCopy brand];
  payload2 = [v19 payload];
  [payload2 setAndroidBrand:brand2];

  locale2 = [clientCopy locale];
  payload3 = [v19 payload];
  [payload3 setAndroidLocale:locale2];

  model2 = [clientCopy model];
  payload4 = [v19 payload];
  [payload4 setAndroidModel:model2];

  version2 = [clientCopy version];
  payload5 = [v19 payload];
  [payload5 setAndroidVersion:version2];

  objc_sync_exit(v19);
  v30 = *MEMORY[0x277D85DE8];
}

- (void)router:(id)router didUpdateProgress:(float)progress remainingTime:(unint64_t)time state:(int)state
{
  routerCopy = router;
  timeCopy = time;
  if (progress <= 0.99)
  {
    progressCopy = progress;
  }

  else
  {
    progressCopy = 0.99;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  completedOperationCount = [(MKProgress *)selfCopy->_progress completedOperationCount];
  totalOperationCount = [(MKProgress *)selfCopy->_progress totalOperationCount];
  v15 = totalOperationCount;
  v16 = progress < 1.0 || totalOperationCount == 0;
  v17 = v16;
  if (v16)
  {
    if (progress >= 1.0)
    {
LABEL_22:
      [(MKAPIServer *)selfCopy import];
      objc_sync_exit(selfCopy);

      goto LABEL_29;
    }
  }

  else
  {
    selfCopy->_isImporting = 1;
    [(MKProgress *)selfCopy->_progress progress:&timeCopy];
    progressCopy = (v32 * 0.01) + 0.99;
    timeCopy = 0;
    if (progressCopy >= 1.0)
    {
      goto LABEL_22;
    }
  }

  if (progress < 0.0)
  {
    [(MKAPIServer *)selfCopy setImportContexts];
    selfCopy->_success = 0;
    v18 = +[MKAnalytics sharedInstance];
    objc_sync_enter(v18);
    payload = [v18 payload];
    v20 = payload;
    if (state == 2)
    {
      v21 = @"com.apple.migrationkit.android.canceled";
    }

    else
    {
      v21 = @"com.apple.migrationkit.failed";
    }

    [payload setState:v21];

    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:selfCopy->_startDate];
    v24 = v23;
    payload2 = [v18 payload];
    [payload2 setElapsedTime:v24];

    [v18 send];
    [v18 reset];
    objc_sync_exit(v18);
  }

  objc_sync_exit(selfCopy);

  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  v28 = WeakRetained;
  if (state == 3)
  {
    context = selfCopy->_context;
    v30 = selfCopy;
    v31 = 3;
    goto LABEL_24;
  }

  if (state == 2)
  {
    context = selfCopy->_context;
    v30 = selfCopy;
    v31 = 2;
LABEL_24:
    [WeakRetained server:v30 didChangeState:v31 withContext:context];

    [(MKAPIServer *)selfCopy setDelegate:0];
    goto LABEL_29;
  }

  if (v17)
  {
    *&v27 = progressCopy;
    [WeakRetained server:selfCopy didUpdateProgress:timeCopy remainingTime:completedOperationCount completedOperationCount:v15 totalOperationCount:v27];
  }

  else
  {
    [WeakRetained serverWillImport:selfCopy];
  }

LABEL_29:
}

- (void)migratorWillExecuteOperation:(id)operation
{
  operationCopy = operation;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MKProgress *)selfCopy->_progress addTotalOperationCount:1];
  objc_sync_exit(selfCopy);
}

- (void)migratorDidExecuteOperation:(id)operation
{
  operationCopy = operation;
  v12 = 0;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MKProgress *)selfCopy->_progress addCompletedOerationCount:1];
  completedOperationCount = [(MKProgress *)selfCopy->_progress completedOperationCount];
  totalOperationCount = [(MKProgress *)selfCopy->_progress totalOperationCount];
  if (!totalOperationCount || !selfCopy->_isImporting)
  {
    goto LABEL_6;
  }

  [(MKProgress *)selfCopy->_progress progress:&v12];
  v9 = (v8 * 0.01) + 0.99;
  v12 = 0;
  if (v9 >= 1.0)
  {
    [(MKAPIServer *)selfCopy import];
LABEL_6:
    objc_sync_exit(selfCopy);
    goto LABEL_7;
  }

  objc_sync_exit(selfCopy);

  WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
  *&v11 = v9;
  [(MKAPIServer *)WeakRetained server:selfCopy didUpdateProgress:v12 remainingTime:completedOperationCount completedOperationCount:totalOperationCount totalOperationCount:v11];
  selfCopy = WeakRetained;
LABEL_7:
}

- (void)migratorDidComplete:(id)complete
{
  completeCopy = complete;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MKAPIServer *)selfCopy setImportContext:completeCopy];
  [(NSHashTable *)selfCopy->_migrators removeObject:completeCopy];
  v5 = [(NSHashTable *)selfCopy->_migrators count];
  discoverabilitySignals = [(MKAPIServer *)selfCopy discoverabilitySignals];
  [discoverabilitySignals addSignalsForMigrator:completeCopy];

  if (!v5)
  {
    selfCopy->_success = 1;
    discoverabilitySignals2 = [(MKAPIServer *)selfCopy discoverabilitySignals];
    [discoverabilitySignals2 donateSignals];

    v8 = +[MKAnalytics sharedInstance];
    objc_sync_enter(v8);
    payload = [v8 payload];
    [payload setState:@"com.apple.migrationkit.completed"];

    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:selfCopy->_startDate];
    v12 = v11;
    payload2 = [v8 payload];
    [payload2 setElapsedTime:v12];

    [(MKAPIServer *)selfCopy processPerformanceMetrics];
    [v8 send];
    [v8 reset];
    objc_sync_exit(v8);

    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    [WeakRetained server:selfCopy didImportWithContext:selfCopy->_context];

    [(MKAPIServer *)selfCopy setDelegate:0];
    [(MKAPIServer *)selfCopy setSwitcherFlags];
  }

  objc_sync_exit(selfCopy);
}

- (void)setImportContexts
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_migrators;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(MKAPIServer *)self setImportContext:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setImportContext:(id)context
{
  contextCopy = context;
  switch([contextCopy type])
  {
    case 0:
      accessibilitySetting = [(MKContext *)self->_context accessibilitySetting];
      goto LABEL_20;
    case 1:
      accessibilitySetting = [(MKContext *)self->_context account];
      goto LABEL_20;
    case 2:
      accessibilitySetting = [(MKContext *)self->_context application];
      goto LABEL_20;
    case 3:
      accessibilitySetting = [(MKContext *)self->_context bookmark];
      goto LABEL_20;
    case 4:
      accessibilitySetting = [(MKContext *)self->_context calendar];
      goto LABEL_20;
    case 5:
      accessibilitySetting = [(MKContext *)self->_context contact];
      goto LABEL_20;
    case 6:
      accessibilitySetting = [(MKContext *)self->_context callHistory];
      goto LABEL_20;
    case 7:
      accessibilitySetting = [(MKContext *)self->_context container];
      goto LABEL_20;
    case 8:
      accessibilitySetting = [(MKContext *)self->_context displaySetting];
      goto LABEL_20;
    case 9:
      accessibilitySetting = [(MKContext *)self->_context file];
      goto LABEL_20;
    case 10:
      accessibilitySetting = [(MKContext *)self->_context message];
      goto LABEL_20;
    case 11:
      accessibilitySetting = [(MKContext *)self->_context image];
      goto LABEL_20;
    case 12:
      accessibilitySetting = [(MKContext *)self->_context video];
      goto LABEL_20;
    case 13:
      accessibilitySetting = [(MKContext *)self->_context album];
      goto LABEL_20;
    case 14:
      accessibilitySetting = [(MKContext *)self->_context voiceMemo];
      goto LABEL_20;
    case 15:
      accessibilitySetting = [(MKContext *)self->_context placeholder];
      goto LABEL_20;
    case 16:
      accessibilitySetting = [(MKContext *)self->_context sim];
LABEL_20:
      v7 = accessibilitySetting;
      break;
    default:
      v7 = 0;
      break;
  }

  [v7 setImportCount:{objc_msgSend(contextCopy, "importCount")}];
  [v7 setImportErrorCount:{objc_msgSend(contextCopy, "importErrorCount")}];
  v6 = [contextCopy size];

  [v7 setSize:v6];
}

- (void)router:(id)router didReceiveAccountEncodedInJSON:(id)n
{
  routerCopy = router;
  nCopy = n;
  [(MKAccountMigrator *)self->_accountMigrator importDataEncodedInJSON:nCopy];
  v7 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v7);
  payload = [v7 payload];
  accounts = [payload accounts];
  [accounts setEnabled:1];

  payload2 = [v7 payload];
  accounts2 = [payload2 accounts];
  [accounts2 setCount:{objc_msgSend(accounts2, "count") + 1}];

  payload3 = [v7 payload];
  accounts3 = [payload3 accounts];
  [accounts3 setSize:{objc_msgSend(accounts3, "size") + objc_msgSend(nCopy, "length")}];

  objc_sync_exit(v7);
}

- (void)router:(id)router didReceiveMessageEncodedInJSON:(id)n
{
  routerCopy = router;
  nCopy = n;
  [(MKMessageMigrator *)self->_messageMigrator importDataEncodedInJSON:nCopy];
  v7 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v7);
  payload = [v7 payload];
  messages = [payload messages];
  [messages setEnabled:1];

  payload2 = [v7 payload];
  messages2 = [payload2 messages];
  [messages2 setCount:{objc_msgSend(messages2, "count") + 1}];

  payload3 = [v7 payload];
  messages3 = [payload3 messages];
  [messages3 setSize:{objc_msgSend(messages3, "size") + objc_msgSend(nCopy, "length")}];

  objc_sync_exit(v7);
}

- (void)router:(id)router didReceiveBookmarkEncodedInJSON:(id)n
{
  routerCopy = router;
  nCopy = n;
  [(MKBookmarkMigrator *)self->_bookmarkMigrator importDataEncodedInJSON:nCopy];
  v7 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v7);
  payload = [v7 payload];
  bookmarks = [payload bookmarks];
  [bookmarks setEnabled:1];

  payload2 = [v7 payload];
  bookmarks2 = [payload2 bookmarks];
  [bookmarks2 setCount:{objc_msgSend(bookmarks2, "count") + 1}];

  payload3 = [v7 payload];
  bookmarks3 = [payload3 bookmarks];
  [bookmarks3 setSize:{objc_msgSend(bookmarks3, "size") + objc_msgSend(nCopy, "length")}];

  objc_sync_exit(v7);
}

- (void)router:(id)router didReceiveAccessibilitySettingEncodedInJSON:(id)n
{
  routerCopy = router;
  nCopy = n;
  [(MKAccessibilitySettingMigrator *)self->_accessibilitySettingMigrator importDataEncodedInJSON:nCopy];
  v7 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v7);
  payload = [v7 payload];
  accessibilitySettings = [payload accessibilitySettings];
  [accessibilitySettings setEnabled:1];

  payload2 = [v7 payload];
  accessibilitySettings2 = [payload2 accessibilitySettings];
  [accessibilitySettings2 setCount:{objc_msgSend(accessibilitySettings2, "count") + 1}];

  payload3 = [v7 payload];
  accessibilitySettings3 = [payload3 accessibilitySettings];
  [accessibilitySettings3 setSize:{objc_msgSend(accessibilitySettings3, "size") + objc_msgSend(nCopy, "length")}];

  objc_sync_exit(v7);
}

- (void)router:(id)router didReceiveDisplaySettingEncodedInJSON:(id)n
{
  routerCopy = router;
  nCopy = n;
  [(MKDisplaySettingMigrator *)self->_displaySettingMigrator importDataEncodedInJSON:nCopy];
  v7 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v7);
  payload = [v7 payload];
  displaySettings = [payload displaySettings];
  [displaySettings setEnabled:1];

  payload2 = [v7 payload];
  displaySettings2 = [payload2 displaySettings];
  [displaySettings2 setCount:{objc_msgSend(displaySettings2, "count") + 1}];

  payload3 = [v7 payload];
  displaySettings3 = [payload3 displaySettings];
  [displaySettings3 setSize:{objc_msgSend(displaySettings3, "size") + objc_msgSend(nCopy, "length")}];

  objc_sync_exit(v7);
}

- (void)router:(id)router didReceiveVCard:(id)card
{
  routerCopy = router;
  cardCopy = card;
  [(MKContactMigrator *)self->_contactMigrator importVCard:cardCopy];
  v7 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v7);
  payload = [v7 payload];
  contacts = [payload contacts];
  [contacts setEnabled:1];

  payload2 = [v7 payload];
  contacts2 = [payload2 contacts];
  [contacts2 setCount:{objc_msgSend(contacts2, "count") + 1}];

  payload3 = [v7 payload];
  contacts3 = [payload3 contacts];
  [contacts3 setSize:{objc_msgSend(contacts3, "size") + objc_msgSend(cardCopy, "length")}];

  objc_sync_exit(v7);
}

- (void)router:(id)router didReceiveICal:(id)cal
{
  routerCopy = router;
  calCopy = cal;
  [(MKCalendarMigrator *)self->_calendarMigrator importiCal:calCopy];
  v7 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v7);
  payload = [v7 payload];
  calendars = [payload calendars];
  [calendars setEnabled:1];

  payload2 = [v7 payload];
  calendars2 = [payload2 calendars];
  [calendars2 setCount:{objc_msgSend(calendars2, "count") + 1}];

  payload3 = [v7 payload];
  calendars3 = [payload3 calendars];
  [calendars3 setSize:{objc_msgSend(calendars3, "size") + objc_msgSend(calCopy, "length")}];

  objc_sync_exit(v7);
}

- (void)router:(id)router didReceiveImageChunk:(id)chunk identifier:(id)identifier offset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total filename:(id)filename collection:(id)self0 originalFilename:(id)self1 complete:(BOOL)self2
{
  routerCopy = router;
  chunkCopy = chunk;
  identifierCopy = identifier;
  filenameCopy = filename;
  collectionCopy = collection;
  originalFilenameCopy = originalFilename;
  LOBYTE(v30) = complete;
  [(MKPhotoLibraryMigrator *)self->_photoLibraryImageMigrator importChunk:chunkCopy identifier:identifierCopy offset:offset length:length total:total filename:filenameCopy collection:collectionCopy originalFilename:originalFilenameCopy complete:v30];
  if (!offset)
  {
    v23 = +[MKAnalytics sharedInstance];
    objc_sync_enter(v23);
    payload = [v23 payload];
    photos = [payload photos];
    [photos setEnabled:1];

    payload2 = [v23 payload];
    photos2 = [payload2 photos];
    [photos2 setCount:{objc_msgSend(photos2, "count") + 1}];

    payload3 = [v23 payload];
    photos3 = [payload3 photos];
    [photos3 setSize:{objc_msgSend(photos3, "size") + total}];

    objc_sync_exit(v23);
  }
}

- (void)router:(id)router didReceiveVideoChunk:(id)chunk identifier:(id)identifier offset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total filename:(id)filename collection:(id)self0 originalFilename:(id)self1 complete:(BOOL)self2
{
  routerCopy = router;
  chunkCopy = chunk;
  identifierCopy = identifier;
  filenameCopy = filename;
  collectionCopy = collection;
  originalFilenameCopy = originalFilename;
  LOBYTE(v30) = complete;
  [(MKPhotoLibraryMigrator *)self->_photoLibraryVideoMigrator importChunk:chunkCopy identifier:identifierCopy offset:offset length:length total:total filename:filenameCopy collection:collectionCopy originalFilename:originalFilenameCopy complete:v30];
  if (!offset)
  {
    v23 = +[MKAnalytics sharedInstance];
    objc_sync_enter(v23);
    payload = [v23 payload];
    videos = [payload videos];
    [videos setEnabled:1];

    payload2 = [v23 payload];
    videos2 = [payload2 videos];
    [videos2 setCount:{objc_msgSend(videos2, "count") + 1}];

    payload3 = [v23 payload];
    videos3 = [payload3 videos];
    [videos3 setSize:{objc_msgSend(videos3, "size") + total}];

    objc_sync_exit(v23);
  }
}

- (void)router:(id)router didReceiveFileChunk:(id)chunk filename:(id)filename offset:(unint64_t)offset length:(unint64_t)length total:(unint64_t)total complete:(BOOL)complete
{
  routerCopy = router;
  chunkCopy = chunk;
  filenameCopy = filename;
  [(MKFileMigrator *)self->_fileMigrator importChunk:chunkCopy filename:filenameCopy offset:offset length:length total:total complete:complete];
  if (!offset)
  {
    v17 = +[MKAnalytics sharedInstance];
    objc_sync_enter(v17);
    payload = [v17 payload];
    files = [payload files];
    [files setEnabled:1];

    payload2 = [v17 payload];
    files2 = [payload2 files];
    [files2 setCount:{objc_msgSend(files2, "count") + 1}];

    payload3 = [v17 payload];
    files3 = [payload3 files];
    [files3 setSize:{objc_msgSend(files3, "size") + total}];

    objc_sync_exit(v17);
  }
}

- (void)processPerformanceMetrics
{
  pathForPerformanceMetrics = [(MKDiagnosticsMigrator *)self->_diagnosticsMigrator pathForPerformanceMetrics];
  if (pathForPerformanceMetrics)
  {
    v4 = +[MKAnalytics sharedInstance];
    objc_sync_enter(v4);
    v5 = [[MKPerformanceTable alloc] initWithJSONFile:pathForPerformanceMetrics analytics:v4];
    [(MKTable *)v5 writeToLog];
    [(MKPerformanceTable *)v5 writeToDisk];

    objc_sync_exit(v4);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v9 = 0;
    [defaultManager removeItemAtPath:pathForPerformanceMetrics error:&v9];
    v7 = v9;

    if (v7)
    {
      v8 = +[MKLog log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [MKAPIServer processPerformanceMetrics];
      }
    }
  }

  else
  {
    v4 = +[MKLog log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(MKAPIServer *)self processPerformanceMetrics];
    }
  }
}

- (void)setSwitcherFlags
{
  v46[4] = *MEMORY[0x277D85DE8];
  v3 = +[MKLog log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2592D2000, v3, OS_LOG_TYPE_INFO, "will set switcher flags.", buf, 2u);
  }

  v4 = MEMORY[0x277CCACA8];
  client = [(MKAPIServer *)self client];
  brand = [client brand];
  client2 = [(MKAPIServer *)self client];
  model = [client2 model];
  client3 = [(MKAPIServer *)self client];
  brand2 = [client3 brand];
  v11 = [v4 stringWithFormat:@"%@/%@/Android/%@/Android", brand, model, brand2];

  v46[0] = MEMORY[0x277CBEC38];
  v45[0] = @"MigratedFromAndroid";
  v45[1] = @"MigratedFromAndroidToiOSVersion";
  v12 = +[MKSystem version];
  v46[1] = v12;
  v46[2] = v11;
  v33 = v11;
  v45[2] = @"MigratedFromAndroidDeviceType";
  v45[3] = @"MigratedFromAndroidOSVersion";
  client4 = [(MKAPIServer *)self client];
  v14 = [client4 os];
  v46[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:4];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    v20 = *MEMORY[0x277CBF008];
    v21 = *MEMORY[0x277CBF040];
    v22 = *MEMORY[0x277CBF010];
    v35 = *MEMORY[0x277CBED28];
    v34 = *MEMORY[0x277CBED10];
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v24 = *(*(&v36 + 1) + 8 * i);
        v25 = [v16 objectForKeyedSubscript:v24];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v25 BOOLValue])
          {
            v26 = v35;
          }

          else
          {
            v26 = v34;
          }

          CFPreferencesSetValue(v24, v26, v20, v21, v22);
          v27 = +[MKLog log];
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            goto LABEL_18;
          }

          bOOLValue = [v25 BOOLValue];
          *buf = 138412546;
          v41 = v24;
          v42 = 1024;
          LODWORD(v43) = bOOLValue;
          v29 = v27;
          v30 = "%@ is set to %d.";
          v31 = 18;
          goto LABEL_17;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_19;
        }

        CFPreferencesSetValue(v24, v25, v20, v21, v22);
        v27 = +[MKLog log];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v41 = v24;
          v42 = 2112;
          v43 = v25;
          v29 = v27;
          v30 = "%@ is set to %@.";
          v31 = 22;
LABEL_17:
          _os_log_impl(&dword_2592D2000, v29, OS_LOG_TYPE_INFO, v30, buf, v31);
        }

LABEL_18:

LABEL_19:
      }

      v18 = [v16 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v18);
  }

  v32 = *MEMORY[0x277D85DE8];
}

+ (void)clean
{
  v57[3] = *MEMORY[0x277D85DE8];
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingString:@"/Library/MigrationKit/matd/"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:v3];

  if (v5)
  {
    v46 = objc_alloc_init(MKPowerAssertion);
    v6 = [[MKPhotoLibraryAlbumMigrator alloc] initWithReuseDatabase:1];
    v7 = [[MKPhotoLibraryMigrator alloc] initWithType:0 reuseDatabase:1];
    v8 = [[MKPhotoLibraryMigrator alloc] initWithType:1 reuseDatabase:1];
    [(MKPhotoLibraryMigrator *)v7 setAlbumMigrator:v6];
    [(MKPhotoLibraryMigrator *)v8 setAlbumMigrator:v6];
    v57[0] = v7;
    v57[1] = v8;
    v57[2] = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:3];
    v10 = objc_alloc_init(MKApplicationMigrator);
    v11 = dispatch_semaphore_create(0);
    v12 = dispatch_queue_create("com.apple.migrationkit.app.install", 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__MKAPIServer_clean__block_invoke;
    block[3] = &unk_2798DCCA0;
    v13 = v10;
    v53 = v13;
    v14 = v11;
    v54 = v14;
    v45 = v12;
    dispatch_async(v12, block);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v16)
    {
      v17 = v16;
      v43 = v8;
      v44 = v7;
      v18 = v13;
      v19 = *v49;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v49 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v48 + 1) + 8 * i);
          importAndWait = [v21 importAndWait];
          [v21 import];
          if (!importAndWait)
          {

            dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
            v26 = v46;
            v13 = v18;
            v8 = v43;
            v7 = v44;
            goto LABEL_20;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v48 objects:v56 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

      dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v47 = 0;
      [defaultManager2 removeItemAtPath:v3 error:&v47];
      v24 = v47;

      v25 = v24;
      v26 = v46;
      v13 = v18;
      v8 = v43;
      if (v25)
      {
        v27 = +[MKLog log];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          +[(MKAPIServer *)v25];
        }
      }

      v7 = v44;
      if (+[MKInternal isInternal](MKInternal, "isInternal") && +[MKAPIServer isPhotosBenchmarkEnabled])
      {
        v42 = v25;
        v28 = [MKBenchmark alloc];
        importCount = [(MKMigrator *)v44 importCount];
        importErrorCount = [(MKMigrator *)v44 importErrorCount];
        [(MKMigrator *)v44 importTime];
        v41 = [(MKBenchmark *)v28 initWithLabel:@"Image" count:importErrorCount + importCount time:?];
        v55[0] = v41;
        v31 = [MKBenchmark alloc];
        importCount2 = [(MKMigrator *)v43 importCount];
        importErrorCount2 = [(MKMigrator *)v43 importErrorCount];
        [(MKMigrator *)v43 importTime];
        v40 = [(MKBenchmark *)v31 initWithLabel:@"Video" count:importErrorCount2 + importCount2 time:?];
        v55[1] = v40;
        v34 = [MKBenchmark alloc];
        importCount3 = [(MKMigrator *)v6 importCount];
        importErrorCount3 = [(MKMigrator *)v6 importErrorCount];
        [(MKMigrator *)v6 importTime];
        v37 = [(MKBenchmark *)v34 initWithLabel:@"Album" count:importErrorCount3 + importCount3 time:?];
        v55[2] = v37;
        v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];

        v25 = v42;
        [MKAPIServer benchmark:v38];

        v7 = v44;
      }
    }

    else
    {

      dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
      v26 = v46;
    }

LABEL_20:
  }

  v39 = *MEMORY[0x277D85DE8];
}

intptr_t __20__MKAPIServer_clean__block_invoke(uint64_t a1)
{
  [*(a1 + 32) importAndWait];
  [*(a1 + 32) import];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

+ (void)test
{
  v2 = objc_alloc_init(MKApplicationMigrator);
  [(MKApplicationMigrator *)v2 purchase2];
}

+ (void)benchmark:(id)benchmark
{
  v33 = *MEMORY[0x277D85DE8];
  benchmarkCopy = benchmark;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v4 appendString:@"(Internal Only)"];
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v26 = 0u;
  v5 = benchmarkCopy;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
  v7 = v5;
  if (!v6)
  {
    goto LABEL_10;
  }

  v8 = v6;
  v9 = 0;
  v10 = *v27;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v27 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v26 + 1) + 8 * i);
      [v4 appendString:@"\n"];
      benchmark = [v12 benchmark];
      [v4 appendString:benchmark];

      v9 += [v12 count];
    }

    v8 = [v5 countByEnumeratingWithState:&v26 objects:v32 count:16];
  }

  while (v8);

  if (v9)
  {
    v14 = dispatch_semaphore_create(0);
    v15 = *MEMORY[0x277CBF198];
    v30[0] = *MEMORY[0x277CBF188];
    v30[1] = v15;
    v31[0] = @"Import Complete";
    v31[1] = v4;
    v30[2] = *MEMORY[0x277CBF1E8];
    v31[2] = @"OK";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v25[3] = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, v7);
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v24 = 0;
    v16 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__MKAPIServer_benchmark___block_invoke;
    block[3] = &unk_2798DCCC8;
    v21 = v25;
    v22 = v23;
    v20 = v14;
    v17 = v14;
    dispatch_async(v16, block);

    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    _Block_object_dispose(v23, 8);
    _Block_object_dispose(v25, 8);
LABEL_10:
  }

  v18 = *MEMORY[0x277D85DE8];
}

intptr_t __25__MKAPIServer_benchmark___block_invoke(uint64_t a1)
{
  responseFlags = 0;
  CFUserNotificationReceiveResponse(*(*(*(a1 + 40) + 8) + 24), 0.0, &responseFlags);
  CFRelease(*(*(*(a1 + 40) + 8) + 24));
  *(*(*(a1 + 48) + 8) + 24) = responseFlags == 0;
  return dispatch_semaphore_signal(*(a1 + 32));
}

- (MKAPIServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end