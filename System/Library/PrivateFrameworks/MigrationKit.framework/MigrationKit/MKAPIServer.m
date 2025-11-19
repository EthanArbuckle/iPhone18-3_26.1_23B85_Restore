@interface MKAPIServer
+ (void)benchmark:(id)a3;
+ (void)clean;
+ (void)test;
- (MKAPIServer)init;
- (MKAPIServerDelegate)delegate;
- (void)cancel;
- (void)dealloc;
- (void)import;
- (void)migratorDidComplete:(id)a3;
- (void)migratorDidExecuteOperation:(id)a3;
- (void)migratorWillExecuteOperation:(id)a3;
- (void)processPerformanceMetrics;
- (void)router:(id)a3 didReceiveAccessibilitySettingEncodedInJSON:(id)a4;
- (void)router:(id)a3 didReceiveAccountEncodedInJSON:(id)a4;
- (void)router:(id)a3 didReceiveBookmarkEncodedInJSON:(id)a4;
- (void)router:(id)a3 didReceiveClient:(id)a4;
- (void)router:(id)a3 didReceiveDisplaySettingEncodedInJSON:(id)a4;
- (void)router:(id)a3 didReceiveFileChunk:(id)a4 filename:(id)a5 offset:(unint64_t)a6 length:(unint64_t)a7 total:(unint64_t)a8 complete:(BOOL)a9;
- (void)router:(id)a3 didReceiveICal:(id)a4;
- (void)router:(id)a3 didReceiveImageChunk:(id)a4 identifier:(id)a5 offset:(unint64_t)a6 length:(unint64_t)a7 total:(unint64_t)a8 filename:(id)a9 collection:(id)a10 originalFilename:(id)a11 complete:(BOOL)a12;
- (void)router:(id)a3 didReceiveMessageEncodedInJSON:(id)a4;
- (void)router:(id)a3 didReceiveVCard:(id)a4;
- (void)router:(id)a3 didReceiveVideoChunk:(id)a4 identifier:(id)a5 offset:(unint64_t)a6 length:(unint64_t)a7 total:(unint64_t)a8 filename:(id)a9 collection:(id)a10 originalFilename:(id)a11 complete:(BOOL)a12;
- (void)router:(id)a3 didUpdateProgress:(float)a4 remainingTime:(unint64_t)a5 state:(int)a6;
- (void)routerDidAuthenticateClient:(id)a3;
- (void)routerDidRejectClient:(id)a3;
- (void)runHTTP;
- (void)runHTTPS:(id)a3;
- (void)server:(id)a3 didOpen:(int64_t)a4;
- (void)serverDidCancel:(id)a3;
- (void)setImportContext:(id)a3;
- (void)setImportContexts;
- (void)setSwitcherFlags;
- (void)usbHTTPServerDidClose:(id)a3;
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
    v48 = [(MKContainerMigrator *)v2->_containerMigrator signatures];
    [(MKApplicationMigrator *)v47 setSignatures:v48];

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
    v3 = self;
    objc_sync_enter(v3);
    if (!v3->_success)
    {
      [(MKAPIServer *)v3 setImportContexts];
      WeakRetained = objc_loadWeakRetained(&v3->_delegate);
      [WeakRetained server:v3 didChangeState:2 withContext:v3->_context];

      [(MKAPIServer *)v3 setDelegate:0];
      [(MKSIMMigrator *)v3->_simMigrator remove];
      [(MKPlaceholderMigrator *)v3->_placeholderMigrator remove];
      v5 = +[MKAnalytics sharedInstance];
      objc_sync_enter(v5);
      v6 = [v5 payload];
      [v6 setState:@"com.apple.migrationkit.canceled"];

      v7 = [MEMORY[0x277CBEAA8] date];
      [v7 timeIntervalSinceDate:v3->_startDate];
      v9 = v8;
      v10 = [v5 payload];
      [v10 setElapsedTime:v9];

      [v5 send];
      [v5 reset];
      objc_sync_exit(v5);
    }

    objc_sync_exit(v3);
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
  v2 = [(NSHashTable *)self->_migrators allObjects];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) import];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v5 = [(MKSRPServer *)v3 password];
  v6 = [(MKSRPPrecheck *)v4 initWithPassword:v5];

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
  v21 = [(MKSRPServer *)v3 password];
  [WeakRetained server:self didCreateCode:v21];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)runHTTPS:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(MKHTTPServer *)self->_https cancel];
  v31 = objc_alloc_init(MKPOSTClientRouter);
  [(MKPOSTClientRouter *)v31 setDelegate:self];
  v5 = objc_alloc_init(MKPUTRouter);
  [(MKPUTRouter *)v5 setDelegate:self];
  v29 = objc_alloc_init(MKPOSTProgressRouter);
  [(MKPOSTProgressRouter *)v29 setDelegate:self];
  v6 = objc_alloc_init(MKGETSecuredStatusRouter);
  [(MKGETSecuredStatusRouter *)v6 setGetStatusRouter:self->_getStatusRouter];
  v7 = [(MKPUTRouter *)v5 supportedContentTypes];
  [(MKGETSecuredStatusRouter *)v6 setSupportedContentTypes:v7];

  v30 = v5;
  v8 = [(MKPUTRouter *)v5 supportedTransferEncodings];
  [(MKGETSecuredStatusRouter *)v6 setSupportedTransferEncodings:v8];

  v9 = [(MKContainerMigrator *)self->_containerMigrator signatures];
  [(MKGETSecuredStatusRouter *)v6 setSignatures:v9];

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
  v24 = v4;
  [(MKHTTPServer *)self->_https setClientCertificate:v4];
  [(MKHTTPServer *)self->_https setUseHTTPS:1];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  usb = self->_usb;
  v23 = self;
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

  [(MKHTTPServer *)v23->_https setService:@"com.apple.migrationkit.https"];
  [(MKHTTPServer *)v23->_https run];
  v19 = [MEMORY[0x277CBEAA8] date];
  startDate = v23->_startDate;
  v23->_startDate = v19;

  v21 = v23;
  objc_sync_enter(v21);
  v21->_isImporting = 0;
  objc_sync_exit(v21);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)server:(id)a3 didOpen:(int64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[MKLog log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2048;
    v14 = a4;
    _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "%@ open %ld port.", &v11, 0x16u);
  }

  v8 = self;
  objc_sync_enter(v8);
  if (v8->_http == v6)
  {
    v9 = 1;
    goto LABEL_7;
  }

  if (v8->_https == v6)
  {
    v9 = 2;
LABEL_7:
    [(MKGETStatusRouter *)v8->_getStatusRouter setState:v9];
  }

  objc_sync_exit(v8);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)serverDidCancel:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_https == v5)
  {
    [(MKGETStatusRouter *)v4->_getStatusRouter setState:3];
  }

  objc_sync_exit(v4);
}

- (void)usbHTTPServerDidClose:(id)a3
{
  if (!self->_isImporting)
  {
    [(MKAPIServer *)self cancel];
  }
}

- (void)routerDidAuthenticateClient:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained serverDidAuthenticateClient:self];
}

- (void)routerDidRejectClient:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained serverDidRejectClient:self];

  v5 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v5);
  v6 = [v5 payload];
  [v6 setState:@"com.apple.migrationkit.rejected"];

  [v5 send];
  [v5 reset];
  objc_sync_exit(v5);
}

- (void)router:(id)a3 didReceiveClient:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v6 = a4;
  v7 = +[MKLog log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v31 = [v6 hostname];
    v8 = [v6 brand];
    v9 = [v6 model];
    v10 = [v6 name];
    v11 = [v6 os];
    v12 = [v6 version];
    v13 = [v6 locale];
    v14 = [v6 inputMethodLanguages];
    *buf = 138414594;
    v34 = self;
    v35 = 2112;
    v36 = v31;
    v37 = 2112;
    v38 = v8;
    v39 = 2112;
    v40 = v9;
    v41 = 2112;
    v42 = v10;
    v43 = 2112;
    v44 = v11;
    v45 = 2112;
    v46 = v12;
    v47 = 2112;
    v48 = v13;
    v49 = 2112;
    v50 = v14;
    v51 = 2048;
    v52 = [v6 activatedCellularPlans];
    _os_log_impl(&dword_2592D2000, v7, OS_LOG_TYPE_INFO, "%@ did receive a client. hostname=%@, brand=%@, model=%@, name=%@, os=%@, version=%@, locale=%@, inputMethodLanguages=%@ activatedCellularPlans=%lu", buf, 0x66u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained server:self didReceiveClient:v6];

  v16 = self;
  objc_sync_enter(v16);
  [(MKAPIServer *)v16 setClient:v6];
  -[MKSIMMigrator setActivatedCellularPlansCount:](v16->_simMigrator, "setActivatedCellularPlansCount:", [v6 activatedCellularPlans]);
  v17 = objc_alloc_init(MKDiscoverabilitySignals);
  [(MKAPIServer *)v16 setDiscoverabilitySignals:v17];

  v18 = [(MKAPIServer *)v16 discoverabilitySignals];
  [v18 addSignalsForClient:v6];

  objc_sync_exit(v16);
  v19 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v19);
  v20 = [v6 os];
  v21 = [v19 payload];
  [v21 setAndroidAPILevel:v20];

  v22 = [v6 brand];
  v23 = [v19 payload];
  [v23 setAndroidBrand:v22];

  v24 = [v6 locale];
  v25 = [v19 payload];
  [v25 setAndroidLocale:v24];

  v26 = [v6 model];
  v27 = [v19 payload];
  [v27 setAndroidModel:v26];

  v28 = [v6 version];
  v29 = [v19 payload];
  [v29 setAndroidVersion:v28];

  objc_sync_exit(v19);
  v30 = *MEMORY[0x277D85DE8];
}

- (void)router:(id)a3 didUpdateProgress:(float)a4 remainingTime:(unint64_t)a5 state:(int)a6
{
  v10 = a3;
  v33 = a5;
  if (a4 <= 0.99)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0.99;
  }

  v12 = self;
  objc_sync_enter(v12);
  v13 = [(MKProgress *)v12->_progress completedOperationCount];
  v14 = [(MKProgress *)v12->_progress totalOperationCount];
  v15 = v14;
  v16 = a4 < 1.0 || v14 == 0;
  v17 = v16;
  if (v16)
  {
    if (a4 >= 1.0)
    {
LABEL_22:
      [(MKAPIServer *)v12 import];
      objc_sync_exit(v12);

      goto LABEL_29;
    }
  }

  else
  {
    v12->_isImporting = 1;
    [(MKProgress *)v12->_progress progress:&v33];
    v11 = (v32 * 0.01) + 0.99;
    v33 = 0;
    if (v11 >= 1.0)
    {
      goto LABEL_22;
    }
  }

  if (a4 < 0.0)
  {
    [(MKAPIServer *)v12 setImportContexts];
    v12->_success = 0;
    v18 = +[MKAnalytics sharedInstance];
    objc_sync_enter(v18);
    v19 = [v18 payload];
    v20 = v19;
    if (a6 == 2)
    {
      v21 = @"com.apple.migrationkit.android.canceled";
    }

    else
    {
      v21 = @"com.apple.migrationkit.failed";
    }

    [v19 setState:v21];

    v22 = [MEMORY[0x277CBEAA8] date];
    [v22 timeIntervalSinceDate:v12->_startDate];
    v24 = v23;
    v25 = [v18 payload];
    [v25 setElapsedTime:v24];

    [v18 send];
    [v18 reset];
    objc_sync_exit(v18);
  }

  objc_sync_exit(v12);

  WeakRetained = objc_loadWeakRetained(&v12->_delegate);
  v28 = WeakRetained;
  if (a6 == 3)
  {
    context = v12->_context;
    v30 = v12;
    v31 = 3;
    goto LABEL_24;
  }

  if (a6 == 2)
  {
    context = v12->_context;
    v30 = v12;
    v31 = 2;
LABEL_24:
    [WeakRetained server:v30 didChangeState:v31 withContext:context];

    [(MKAPIServer *)v12 setDelegate:0];
    goto LABEL_29;
  }

  if (v17)
  {
    *&v27 = v11;
    [WeakRetained server:v12 didUpdateProgress:v33 remainingTime:v13 completedOperationCount:v15 totalOperationCount:v27];
  }

  else
  {
    [WeakRetained serverWillImport:v12];
  }

LABEL_29:
}

- (void)migratorWillExecuteOperation:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(MKProgress *)v4->_progress addTotalOperationCount:1];
  objc_sync_exit(v4);
}

- (void)migratorDidExecuteOperation:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = self;
  objc_sync_enter(v5);
  [(MKProgress *)v5->_progress addCompletedOerationCount:1];
  v6 = [(MKProgress *)v5->_progress completedOperationCount];
  v7 = [(MKProgress *)v5->_progress totalOperationCount];
  if (!v7 || !v5->_isImporting)
  {
    goto LABEL_6;
  }

  [(MKProgress *)v5->_progress progress:&v12];
  v9 = (v8 * 0.01) + 0.99;
  v12 = 0;
  if (v9 >= 1.0)
  {
    [(MKAPIServer *)v5 import];
LABEL_6:
    objc_sync_exit(v5);
    goto LABEL_7;
  }

  objc_sync_exit(v5);

  WeakRetained = objc_loadWeakRetained(&v5->_delegate);
  *&v11 = v9;
  [(MKAPIServer *)WeakRetained server:v5 didUpdateProgress:v12 remainingTime:v6 completedOperationCount:v7 totalOperationCount:v11];
  v5 = WeakRetained;
LABEL_7:
}

- (void)migratorDidComplete:(id)a3
{
  v15 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(MKAPIServer *)v4 setImportContext:v15];
  [(NSHashTable *)v4->_migrators removeObject:v15];
  v5 = [(NSHashTable *)v4->_migrators count];
  v6 = [(MKAPIServer *)v4 discoverabilitySignals];
  [v6 addSignalsForMigrator:v15];

  if (!v5)
  {
    v4->_success = 1;
    v7 = [(MKAPIServer *)v4 discoverabilitySignals];
    [v7 donateSignals];

    v8 = +[MKAnalytics sharedInstance];
    objc_sync_enter(v8);
    v9 = [v8 payload];
    [v9 setState:@"com.apple.migrationkit.completed"];

    v10 = [MEMORY[0x277CBEAA8] date];
    [v10 timeIntervalSinceDate:v4->_startDate];
    v12 = v11;
    v13 = [v8 payload];
    [v13 setElapsedTime:v12];

    [(MKAPIServer *)v4 processPerformanceMetrics];
    [v8 send];
    [v8 reset];
    objc_sync_exit(v8);

    WeakRetained = objc_loadWeakRetained(&v4->_delegate);
    [WeakRetained server:v4 didImportWithContext:v4->_context];

    [(MKAPIServer *)v4 setDelegate:0];
    [(MKAPIServer *)v4 setSwitcherFlags];
  }

  objc_sync_exit(v4);
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

- (void)setImportContext:(id)a3
{
  v4 = a3;
  switch([v4 type])
  {
    case 0:
      v5 = [(MKContext *)self->_context accessibilitySetting];
      goto LABEL_20;
    case 1:
      v5 = [(MKContext *)self->_context account];
      goto LABEL_20;
    case 2:
      v5 = [(MKContext *)self->_context application];
      goto LABEL_20;
    case 3:
      v5 = [(MKContext *)self->_context bookmark];
      goto LABEL_20;
    case 4:
      v5 = [(MKContext *)self->_context calendar];
      goto LABEL_20;
    case 5:
      v5 = [(MKContext *)self->_context contact];
      goto LABEL_20;
    case 6:
      v5 = [(MKContext *)self->_context callHistory];
      goto LABEL_20;
    case 7:
      v5 = [(MKContext *)self->_context container];
      goto LABEL_20;
    case 8:
      v5 = [(MKContext *)self->_context displaySetting];
      goto LABEL_20;
    case 9:
      v5 = [(MKContext *)self->_context file];
      goto LABEL_20;
    case 10:
      v5 = [(MKContext *)self->_context message];
      goto LABEL_20;
    case 11:
      v5 = [(MKContext *)self->_context image];
      goto LABEL_20;
    case 12:
      v5 = [(MKContext *)self->_context video];
      goto LABEL_20;
    case 13:
      v5 = [(MKContext *)self->_context album];
      goto LABEL_20;
    case 14:
      v5 = [(MKContext *)self->_context voiceMemo];
      goto LABEL_20;
    case 15:
      v5 = [(MKContext *)self->_context placeholder];
      goto LABEL_20;
    case 16:
      v5 = [(MKContext *)self->_context sim];
LABEL_20:
      v7 = v5;
      break;
    default:
      v7 = 0;
      break;
  }

  [v7 setImportCount:{objc_msgSend(v4, "importCount")}];
  [v7 setImportErrorCount:{objc_msgSend(v4, "importErrorCount")}];
  v6 = [v4 size];

  [v7 setSize:v6];
}

- (void)router:(id)a3 didReceiveAccountEncodedInJSON:(id)a4
{
  v14 = a3;
  v6 = a4;
  [(MKAccountMigrator *)self->_accountMigrator importDataEncodedInJSON:v6];
  v7 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v7);
  v8 = [v7 payload];
  v9 = [v8 accounts];
  [v9 setEnabled:1];

  v10 = [v7 payload];
  v11 = [v10 accounts];
  [v11 setCount:{objc_msgSend(v11, "count") + 1}];

  v12 = [v7 payload];
  v13 = [v12 accounts];
  [v13 setSize:{objc_msgSend(v13, "size") + objc_msgSend(v6, "length")}];

  objc_sync_exit(v7);
}

- (void)router:(id)a3 didReceiveMessageEncodedInJSON:(id)a4
{
  v14 = a3;
  v6 = a4;
  [(MKMessageMigrator *)self->_messageMigrator importDataEncodedInJSON:v6];
  v7 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v7);
  v8 = [v7 payload];
  v9 = [v8 messages];
  [v9 setEnabled:1];

  v10 = [v7 payload];
  v11 = [v10 messages];
  [v11 setCount:{objc_msgSend(v11, "count") + 1}];

  v12 = [v7 payload];
  v13 = [v12 messages];
  [v13 setSize:{objc_msgSend(v13, "size") + objc_msgSend(v6, "length")}];

  objc_sync_exit(v7);
}

- (void)router:(id)a3 didReceiveBookmarkEncodedInJSON:(id)a4
{
  v14 = a3;
  v6 = a4;
  [(MKBookmarkMigrator *)self->_bookmarkMigrator importDataEncodedInJSON:v6];
  v7 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v7);
  v8 = [v7 payload];
  v9 = [v8 bookmarks];
  [v9 setEnabled:1];

  v10 = [v7 payload];
  v11 = [v10 bookmarks];
  [v11 setCount:{objc_msgSend(v11, "count") + 1}];

  v12 = [v7 payload];
  v13 = [v12 bookmarks];
  [v13 setSize:{objc_msgSend(v13, "size") + objc_msgSend(v6, "length")}];

  objc_sync_exit(v7);
}

- (void)router:(id)a3 didReceiveAccessibilitySettingEncodedInJSON:(id)a4
{
  v14 = a3;
  v6 = a4;
  [(MKAccessibilitySettingMigrator *)self->_accessibilitySettingMigrator importDataEncodedInJSON:v6];
  v7 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v7);
  v8 = [v7 payload];
  v9 = [v8 accessibilitySettings];
  [v9 setEnabled:1];

  v10 = [v7 payload];
  v11 = [v10 accessibilitySettings];
  [v11 setCount:{objc_msgSend(v11, "count") + 1}];

  v12 = [v7 payload];
  v13 = [v12 accessibilitySettings];
  [v13 setSize:{objc_msgSend(v13, "size") + objc_msgSend(v6, "length")}];

  objc_sync_exit(v7);
}

- (void)router:(id)a3 didReceiveDisplaySettingEncodedInJSON:(id)a4
{
  v14 = a3;
  v6 = a4;
  [(MKDisplaySettingMigrator *)self->_displaySettingMigrator importDataEncodedInJSON:v6];
  v7 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v7);
  v8 = [v7 payload];
  v9 = [v8 displaySettings];
  [v9 setEnabled:1];

  v10 = [v7 payload];
  v11 = [v10 displaySettings];
  [v11 setCount:{objc_msgSend(v11, "count") + 1}];

  v12 = [v7 payload];
  v13 = [v12 displaySettings];
  [v13 setSize:{objc_msgSend(v13, "size") + objc_msgSend(v6, "length")}];

  objc_sync_exit(v7);
}

- (void)router:(id)a3 didReceiveVCard:(id)a4
{
  v14 = a3;
  v6 = a4;
  [(MKContactMigrator *)self->_contactMigrator importVCard:v6];
  v7 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v7);
  v8 = [v7 payload];
  v9 = [v8 contacts];
  [v9 setEnabled:1];

  v10 = [v7 payload];
  v11 = [v10 contacts];
  [v11 setCount:{objc_msgSend(v11, "count") + 1}];

  v12 = [v7 payload];
  v13 = [v12 contacts];
  [v13 setSize:{objc_msgSend(v13, "size") + objc_msgSend(v6, "length")}];

  objc_sync_exit(v7);
}

- (void)router:(id)a3 didReceiveICal:(id)a4
{
  v14 = a3;
  v6 = a4;
  [(MKCalendarMigrator *)self->_calendarMigrator importiCal:v6];
  v7 = +[MKAnalytics sharedInstance];
  objc_sync_enter(v7);
  v8 = [v7 payload];
  v9 = [v8 calendars];
  [v9 setEnabled:1];

  v10 = [v7 payload];
  v11 = [v10 calendars];
  [v11 setCount:{objc_msgSend(v11, "count") + 1}];

  v12 = [v7 payload];
  v13 = [v12 calendars];
  [v13 setSize:{objc_msgSend(v13, "size") + objc_msgSend(v6, "length")}];

  objc_sync_exit(v7);
}

- (void)router:(id)a3 didReceiveImageChunk:(id)a4 identifier:(id)a5 offset:(unint64_t)a6 length:(unint64_t)a7 total:(unint64_t)a8 filename:(id)a9 collection:(id)a10 originalFilename:(id)a11 complete:(BOOL)a12
{
  v31 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  LOBYTE(v30) = a12;
  [(MKPhotoLibraryMigrator *)self->_photoLibraryImageMigrator importChunk:v18 identifier:v19 offset:a6 length:a7 total:a8 filename:v20 collection:v21 originalFilename:v22 complete:v30];
  if (!a6)
  {
    v23 = +[MKAnalytics sharedInstance];
    objc_sync_enter(v23);
    v24 = [v23 payload];
    v25 = [v24 photos];
    [v25 setEnabled:1];

    v26 = [v23 payload];
    v27 = [v26 photos];
    [v27 setCount:{objc_msgSend(v27, "count") + 1}];

    v28 = [v23 payload];
    v29 = [v28 photos];
    [v29 setSize:{objc_msgSend(v29, "size") + a8}];

    objc_sync_exit(v23);
  }
}

- (void)router:(id)a3 didReceiveVideoChunk:(id)a4 identifier:(id)a5 offset:(unint64_t)a6 length:(unint64_t)a7 total:(unint64_t)a8 filename:(id)a9 collection:(id)a10 originalFilename:(id)a11 complete:(BOOL)a12
{
  v31 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  LOBYTE(v30) = a12;
  [(MKPhotoLibraryMigrator *)self->_photoLibraryVideoMigrator importChunk:v18 identifier:v19 offset:a6 length:a7 total:a8 filename:v20 collection:v21 originalFilename:v22 complete:v30];
  if (!a6)
  {
    v23 = +[MKAnalytics sharedInstance];
    objc_sync_enter(v23);
    v24 = [v23 payload];
    v25 = [v24 videos];
    [v25 setEnabled:1];

    v26 = [v23 payload];
    v27 = [v26 videos];
    [v27 setCount:{objc_msgSend(v27, "count") + 1}];

    v28 = [v23 payload];
    v29 = [v28 videos];
    [v29 setSize:{objc_msgSend(v29, "size") + a8}];

    objc_sync_exit(v23);
  }
}

- (void)router:(id)a3 didReceiveFileChunk:(id)a4 filename:(id)a5 offset:(unint64_t)a6 length:(unint64_t)a7 total:(unint64_t)a8 complete:(BOOL)a9
{
  v24 = a3;
  v15 = a4;
  v16 = a5;
  [(MKFileMigrator *)self->_fileMigrator importChunk:v15 filename:v16 offset:a6 length:a7 total:a8 complete:a9];
  if (!a6)
  {
    v17 = +[MKAnalytics sharedInstance];
    objc_sync_enter(v17);
    v18 = [v17 payload];
    v19 = [v18 files];
    [v19 setEnabled:1];

    v20 = [v17 payload];
    v21 = [v20 files];
    [v21 setCount:{objc_msgSend(v21, "count") + 1}];

    v22 = [v17 payload];
    v23 = [v22 files];
    [v23 setSize:{objc_msgSend(v23, "size") + a8}];

    objc_sync_exit(v17);
  }
}

- (void)processPerformanceMetrics
{
  v3 = [(MKDiagnosticsMigrator *)self->_diagnosticsMigrator pathForPerformanceMetrics];
  if (v3)
  {
    v4 = +[MKAnalytics sharedInstance];
    objc_sync_enter(v4);
    v5 = [[MKPerformanceTable alloc] initWithJSONFile:v3 analytics:v4];
    [(MKTable *)v5 writeToLog];
    [(MKPerformanceTable *)v5 writeToDisk];

    objc_sync_exit(v4);
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = 0;
    [v6 removeItemAtPath:v3 error:&v9];
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
  v5 = [(MKAPIServer *)self client];
  v6 = [v5 brand];
  v7 = [(MKAPIServer *)self client];
  v8 = [v7 model];
  v9 = [(MKAPIServer *)self client];
  v10 = [v9 brand];
  v11 = [v4 stringWithFormat:@"%@/%@/Android/%@/Android", v6, v8, v10];

  v46[0] = MEMORY[0x277CBEC38];
  v45[0] = @"MigratedFromAndroid";
  v45[1] = @"MigratedFromAndroidToiOSVersion";
  v12 = +[MKSystem version];
  v46[1] = v12;
  v46[2] = v11;
  v33 = v11;
  v45[2] = @"MigratedFromAndroidDeviceType";
  v45[3] = @"MigratedFromAndroidOSVersion";
  v13 = [(MKAPIServer *)self client];
  v14 = [v13 os];
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

          v28 = [v25 BOOLValue];
          *buf = 138412546;
          v41 = v24;
          v42 = 1024;
          LODWORD(v43) = v28;
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

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

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
          v22 = [v21 importAndWait];
          [v21 import];
          if (!v22)
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
      v23 = [MEMORY[0x277CCAA00] defaultManager];
      v47 = 0;
      [v23 removeItemAtPath:v3 error:&v47];
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
        v29 = [(MKMigrator *)v44 importCount];
        v30 = [(MKMigrator *)v44 importErrorCount];
        [(MKMigrator *)v44 importTime];
        v41 = [(MKBenchmark *)v28 initWithLabel:@"Image" count:v30 + v29 time:?];
        v55[0] = v41;
        v31 = [MKBenchmark alloc];
        v32 = [(MKMigrator *)v43 importCount];
        v33 = [(MKMigrator *)v43 importErrorCount];
        [(MKMigrator *)v43 importTime];
        v40 = [(MKBenchmark *)v31 initWithLabel:@"Video" count:v33 + v32 time:?];
        v55[1] = v40;
        v34 = [MKBenchmark alloc];
        v35 = [(MKMigrator *)v6 importCount];
        v36 = [(MKMigrator *)v6 importErrorCount];
        [(MKMigrator *)v6 importTime];
        v37 = [(MKBenchmark *)v34 initWithLabel:@"Album" count:v36 + v35 time:?];
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

+ (void)benchmark:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v4 appendString:@"(Internal Only)"];
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v26 = 0u;
  v5 = v3;
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
      v13 = [v12 benchmark];
      [v4 appendString:v13];

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