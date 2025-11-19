@interface NDOAppleCareAMSUIViewController
- (BOOL)webViewController:(id)a3 handleDelegateAction:(id)a4 completion:(id)a5;
- (NDOAppleCareAMSUIViewController)initWithRequest:(id)a3;
- (NDOAppleCareAMSUIViewController)initWithWarranty:(id)a3 serialNumber:(id)a4 source:(id)a5 deeplinkParams:(id)a6;
- (NDOAppleCareAMSUIViewController)initWithWarranty:(id)a3 serialNumber:(id)a4 source:(id)a5 url:(id)a6 purchaseBody:(id)a7 deeplinkParams:(id)a8;
- (NDOAppleCareAMSUIViewPresenterProtocol)presenter;
- (id)_prepareRequestWithWarranty:(id)a3 serialNumber:(id)a4 source:(id)a5 isMultiCall:(BOOL)a6 url:(id)a7 deeplinkParams:(id)a8 purchaseBody:(id)a9;
- (id)loadAMSUIView;
- (void)loadAMSUIView;
@end

@implementation NDOAppleCareAMSUIViewController

- (NDOAppleCareAMSUIViewController)initWithWarranty:(id)a3 serialNumber:(id)a4 source:(id)a5 deeplinkParams:(id)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = _NDOLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[NDOAppleCareAMSUIViewController initWithWarranty:serialNumber:source:deeplinkParams:]";
    _os_log_impl(&dword_25BD8D000, v14, OS_LOG_TYPE_DEFAULT, "%s 1", buf, 0xCu);
  }

  v15 = [(NDOAppleCareAMSUIViewController *)self _initWithWarranty:v13 serialNumber:v12 source:v11 isMultiCall:0 url:0 deeplinkParams:v10 purchaseBody:0];
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (NDOAppleCareAMSUIViewController)initWithWarranty:(id)a3 serialNumber:(id)a4 source:(id)a5 url:(id)a6 purchaseBody:(id)a7 deeplinkParams:(id)a8
{
  v26 = *MEMORY[0x277D85DE8];
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = _NDOLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[NDOAppleCareAMSUIViewController initWithWarranty:serialNumber:source:url:purchaseBody:deeplinkParams:]";
    _os_log_impl(&dword_25BD8D000, v20, OS_LOG_TYPE_DEFAULT, "%s 2", buf, 0xCu);
  }

  v21 = [(NDOAppleCareAMSUIViewController *)self _initWithWarranty:v19 serialNumber:v18 source:v17 isMultiCall:1 url:v16 deeplinkParams:v14 purchaseBody:v15];
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (NDOAppleCareAMSUIViewController)initWithRequest:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v6 = [v5 ams_activeiCloudAccount];

  v7 = MEMORY[0x277CEE408];
  v8 = [MEMORY[0x277CEE6D8] bagKeySet];
  v9 = [MEMORY[0x277CEE6D8] bagSubProfile];
  v10 = [MEMORY[0x277CEE6D8] bagSubProfileVersion];
  [v7 registerBagKeySet:v8 forProfile:v9 profileVersion:v10];

  v11 = [MEMORY[0x277CEE3F8] bagForProfile:@"AppleCare" profileVersion:@"1"];
  v15.receiver = self;
  v15.super_class = NDOAppleCareAMSUIViewController;
  v12 = [(AMSUIWebViewController *)&v15 initWithBag:v11 account:v6 clientInfo:0];
  v13 = v12;
  if (v12)
  {
    [(NDOAppleCareAMSUIViewController *)v12 setIsLoaded:0];
    [(NDOAppleCareAMSUIViewController *)v13 setAmsUIRequest:v4];
    [(NDOAppleCareAMSUIViewController *)v13 setModalPresentationStyle:3];
    [(AMSUIWebViewController *)v13 setDelegate:v13];
    if (objc_opt_respondsToSelector())
    {
      [(AMSUIWebViewController *)v13 setLoadUsingWebKit:1];
    }
  }

  return v13;
}

- (id)_prepareRequestWithWarranty:(id)a3 serialNumber:(id)a4 source:(id)a5 isMultiCall:(BOOL)a6 url:(id)a7 deeplinkParams:(id)a8 purchaseBody:(id)a9
{
  v56 = a6;
  v74 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v55 = a4;
  v54 = a5;
  v14 = a7;
  v57 = a8;
  v53 = a9;
  v15 = _NDOLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:v56];
    *buf = 136316930;
    *&buf[4] = "[NDOAppleCareAMSUIViewController _prepareRequestWithWarranty:serialNumber:source:isMultiCall:url:deeplinkParams:purchaseBody:]";
    *&buf[12] = 2112;
    *&buf[14] = v13;
    *&buf[22] = 2112;
    v66 = v55;
    *v67 = 2112;
    *&v67[2] = v54;
    *&v67[10] = 2112;
    *&v67[12] = v16;
    v68 = 2112;
    v69 = v14;
    v70 = 2112;
    v71 = v57;
    v72 = 2112;
    v73 = v53;
    _os_log_impl(&dword_25BD8D000, v15, OS_LOG_TYPE_DEFAULT, "%s: Warranty:%@, sn:%@, source:%@, isMulti:%@ url:%@, deeplinkParams:%@ purchaseBody:%@", buf, 0x52u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v66 = __Block_byref_object_copy_;
  *v67 = __Block_byref_object_dispose_;
  v17 = [v13 agsURL];
  v18 = v17;
  v19 = @"https://agreements.apple.com/acsales";
  if (v17)
  {
    v19 = v17;
  }

  *&v67[8] = v19;

  if (v56)
  {
    v20 = v14;
    if (!v14)
    {
      v20 = [v13 agsULURL];
    }

    objc_storeStrong((*&buf[8] + 40), v20);
    if (!v14)
    {
    }

    v21 = objc_opt_new();
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __127__NDOAppleCareAMSUIViewController__prepareRequestWithWarranty_serialNumber_source_isMultiCall_url_deeplinkParams_purchaseBody___block_invoke;
    v59[3] = &unk_279978338;
    v59[4] = buf;
    [v21 ulWebURLOverride:v59];
  }

  else
  {
    v21 = CFPreferencesCopyAppValue(@"WebFlowURL", @"com.apple.NewDeviceOutreach");
    if (v21)
    {
      v22 = _NDOLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v61 = 136315394;
        v62 = "[NDOAppleCareAMSUIViewController _prepareRequestWithWarranty:serialNumber:source:isMultiCall:url:deeplinkParams:purchaseBody:]";
        v63 = 2112;
        v64 = v21;
        _os_log_impl(&dword_25BD8D000, v22, OS_LOG_TYPE_DEFAULT, "%s: Using override AMSUI flow URL: %@", v61, 0x16u);
      }

      v23 = *&buf[8];
      v24 = v21;
      v25 = *(v23 + 40);
      *(v23 + 40) = v24;
    }

    else
    {
      v25 = objc_opt_new();
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __127__NDOAppleCareAMSUIViewController__prepareRequestWithWarranty_serialNumber_source_isMultiCall_url_deeplinkParams_purchaseBody___block_invoke_31;
      v58[3] = &unk_279978338;
      v58[4] = buf;
      [v25 webURLOverride:v58];
    }
  }

  if ([MEMORY[0x277D2D0D0] isNotEmptyString:*(*&buf[8] + 40)])
  {
    v26 = [MEMORY[0x277CCACE0] componentsWithString:*(*&buf[8] + 40)];
    v27 = MEMORY[0x277CCAD18];
    v28 = [v13 acOfferIdentifier];
    v52 = [v27 queryItemWithName:@"cid" value:v28];

    v29 = [MEMORY[0x277CCAD18] queryItemWithName:@"callerId" value:@"NewDeviceOutreach"];
    v60[0] = v52;
    v60[1] = v29;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];
    [v26 setQueryItems:v30];
    v51 = v29;

    v31 = [v26 URL];
    if (v31)
    {
      v32 = _NDOLogSystem();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *v61 = 136315394;
        v62 = "[NDOAppleCareAMSUIViewController _prepareRequestWithWarranty:serialNumber:source:isMultiCall:url:deeplinkParams:purchaseBody:]";
        v63 = 2112;
        v64 = v31;
        _os_log_impl(&dword_25BD8D000, v32, OS_LOG_TYPE_DEFAULT, "%s: Beginning amsUI flow with URL: %@", v61, 0x16u);
      }

      v33 = [MEMORY[0x277CCAB70] requestWithURL:v31];
      [v33 setTimeoutInterval:30.0];
      v34 = objc_opt_new();
      v35 = [v34 defaultDevice];
      v36 = [v35 serialNumber];

      v37 = +[NDOAppleCareAMSUIViewController requestProvider];
      v38 = [v37 basicHeadersWithBundleID:0];
      [v33 addAllHeadersFrom:v38];

      v39 = [v37 accountHeadersFor:v33 forceReprovisioning:0 avoidUI:0];
      [v33 addAllHeadersFrom:v39];

      v40 = [v13 acOfferIdentifier];
      v41 = [v33 storeLocaleHeader];
      v42 = [v37 OASHeadersWithOfferID:v40 serialNumber:v55 primarySerialNumber:v36 currentStoreLocaleHeader:v41];
      [v33 addAllHeadersFrom:v42];

      v43 = [&unk_286D758D0 stringValue];
      [v33 setValue:v43 forHTTPHeaderField:@"oceanVersion"];

      [v33 setValue:v54 forHTTPHeaderField:@"X-source-type"];
      if (v57)
      {
        [v33 setValue:v57 forHTTPHeaderField:@"x-apple-universal"];
      }

      if (v56)
      {
        [v33 setHTTPMethod:@"POST"];
        [v33 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
        if (v53)
        {
          v44 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v53 options:0 error:0];
          [v33 setHTTPBody:v44];
        }
      }

      v45 = _NDOLogSystem();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = [v33 headerDescription];
        *v61 = 136315394;
        v62 = "[NDOAppleCareAMSUIViewController _prepareRequestWithWarranty:serialNumber:source:isMultiCall:url:deeplinkParams:purchaseBody:]";
        v63 = 2112;
        v64 = v46;
        _os_log_impl(&dword_25BD8D000, v45, OS_LOG_TYPE_DEFAULT, "%s: AMS Headers: %@", v61, 0x16u);
      }

      v47 = _NDOLogSystem();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [v33 bodyDescription];
        *v61 = 136315394;
        v62 = "[NDOAppleCareAMSUIViewController _prepareRequestWithWarranty:serialNumber:source:isMultiCall:url:deeplinkParams:purchaseBody:]";
        v63 = 2112;
        v64 = v48;
        _os_log_impl(&dword_25BD8D000, v47, OS_LOG_TYPE_DEFAULT, "%s: AMS Body: %@", v61, 0x16u);
      }
    }

    else
    {
      v36 = _NDOLogSystem();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [NDOAppleCareAMSUIViewController _prepareRequestWithWarranty:v26 serialNumber:v36 source:? isMultiCall:? url:? deeplinkParams:? purchaseBody:?];
      }

      v33 = 0;
    }
  }

  else
  {
    v26 = _NDOLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [NDOAppleCareAMSUIViewController _prepareRequestWithWarranty:v26 serialNumber:? source:? isMultiCall:? url:? deeplinkParams:? purchaseBody:?];
    }

    v33 = 0;
  }

  _Block_object_dispose(buf, 8);
  v49 = *MEMORY[0x277D85DE8];

  return v33;
}

void __127__NDOAppleCareAMSUIViewController__prepareRequestWithWarranty_serialNumber_source_isMultiCall_url_deeplinkParams_purchaseBody___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __127__NDOAppleCareAMSUIViewController__prepareRequestWithWarranty_serialNumber_source_isMultiCall_url_deeplinkParams_purchaseBody___block_invoke_31(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (id)loadAMSUIView
{
  v13 = *MEMORY[0x277D85DE8];
  [(NDOAppleCareAMSUIViewController *)self setIsLoaded:1];
  v3 = [(NDOAppleCareAMSUIViewController *)self amsUIRequest];
  v4 = _NDOLogSystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[NDOAppleCareAMSUIViewController loadAMSUIView]";
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_25BD8D000, v5, OS_LOG_TYPE_DEFAULT, "%s: Loading: %@", &v9, 0x16u);
    }

    v6 = [(AMSUIWebViewController *)self loadRequest:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(NDOAppleCareAMSUIViewController *)v5 loadAMSUIView];
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)webViewController:(id)a3 handleDelegateAction:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _NDOLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315650;
    v17 = "[NDOAppleCareAMSUIViewController webViewController:handleDelegateAction:completion:]";
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_25BD8D000, v9, OS_LOG_TYPE_DEFAULT, "%s: %@ action: %@", &v16, 0x20u);
  }

  if (v8)
  {
    v10 = [v8 objectForKey:@"status"];
    v11 = [v10 intValue];

    v12 = v8;
  }

  else
  {
    v11 = 2;
  }

  v13 = [(NDOAppleCareAMSUIViewController *)self presenter];
  [v13 amsUIViewFinishedWithCompletion:v11 params:v8];

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (NDOAppleCareAMSUIViewPresenterProtocol)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (void)_prepareRequestWithWarranty:(os_log_t)log serialNumber:source:isMultiCall:url:deeplinkParams:purchaseBody:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[NDOAppleCareAMSUIViewController _prepareRequestWithWarranty:serialNumber:source:isMultiCall:url:deeplinkParams:purchaseBody:]";
  _os_log_error_impl(&dword_25BD8D000, log, OS_LOG_TYPE_ERROR, "%s: Cannot create request. No URL for amsui", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_prepareRequestWithWarranty:(uint64_t)a1 serialNumber:(NSObject *)a2 source:isMultiCall:url:deeplinkParams:purchaseBody:.cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[NDOAppleCareAMSUIViewController _prepareRequestWithWarranty:serialNumber:source:isMultiCall:url:deeplinkParams:purchaseBody:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_25BD8D000, a2, OS_LOG_TYPE_ERROR, "%s: Failed to instantiate amsUI flow from: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)loadAMSUIView
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[NDOAppleCareAMSUIViewController loadAMSUIView]";
  _os_log_error_impl(&dword_25BD8D000, log, OS_LOG_TYPE_ERROR, "%s: No request to load", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end