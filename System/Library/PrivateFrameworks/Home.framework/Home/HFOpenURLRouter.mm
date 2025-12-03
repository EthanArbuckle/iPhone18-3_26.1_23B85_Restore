@interface HFOpenURLRouter
+ (HFOpenURLRouter)sharedInstance;
- (HFApplicationURLHandling)applicationURLHandler;
- (id)openSensitiveURL:(id)l;
- (id)openURL:(id)l;
- (void)_sendAnalyticsEventForURL:(id)l;
@end

@implementation HFOpenURLRouter

+ (HFOpenURLRouter)sharedInstance
{
  if (_MergedGlobals_224 != -1)
  {
    dispatch_once(&_MergedGlobals_224, &__block_literal_global_3_3);
  }

  v3 = qword_280E02C98;

  return v3;
}

void __33__HFOpenURLRouter_sharedInstance__block_invoke_2()
{
  v0 = objc_alloc_init(HFOpenURLRouter);
  v1 = qword_280E02C98;
  qword_280E02C98 = v0;
}

- (id)openURL:(id)l
{
  v20 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = HFLogForCategory(0x4DuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = lCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "HFOpenURLRouter received request to open URL: %@.", buf, 0xCu);
  }

  v6 = MEMORY[0x277D2C900];
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1002 userInfo:MEMORY[0x277CBEC10]];
  v8 = [v6 futureWithError:v7];

  applicationURLHandler = [(HFOpenURLRouter *)self applicationURLHandler];

  if (applicationURLHandler)
  {
    applicationURLHandler2 = [(HFOpenURLRouter *)self applicationURLHandler];
    v11 = [applicationURLHandler2 openApplicationURL:lCopy];

    v8 = v11;
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __27__HFOpenURLRouter_openURL___block_invoke;
  v16[3] = &unk_277DF2D30;
  v16[4] = self;
  v17 = lCopy;
  v12 = lCopy;
  v13 = [v8 recover:v16];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)openSensitiveURL:(id)l
{
  v23 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = HFLogForCategory(0x4DuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = lCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "HFOpenURLRouter received request to open sensitive URL: %@.", buf, 0xCu);
  }

  if ([HFURLComponents isHomeAppURL:lCopy])
  {
    v6 = +[HFExecutionEnvironment sharedInstance];
    hostProcess = [v6 hostProcess];

    if (!hostProcess)
    {
      NSLog(&cfstr_TryingToOpenHo.isa, lCopy);
    }
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0AC58]];
  if (+[HFUtilities isAMac])
  {
    v9 = MEMORY[0x277D2C900];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __36__HFOpenURLRouter_openSensitiveURL___block_invoke;
    v17[3] = &unk_277DF2C90;
    v18 = lCopy;
    futureWithNoResult = [v9 futureWithCompletionHandlerAdapterBlock:v17];
  }

  else
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v16 = 0;
    [defaultWorkspace openSensitiveURL:lCopy withOptions:v8 error:&v16];
    v12 = v16;

    if (v12)
    {
      v13 = HFLogForCategory(0x4DuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = lCopy;
        v21 = 2112;
        v22 = v12;
        _os_log_error_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_ERROR, "Failed to open URL: %@, error: %@", buf, 0x16u);
      }

      futureWithNoResult = [MEMORY[0x277D2C900] futureWithError:v12];
    }

    else
    {
      [(HFOpenURLRouter *)self _sendAnalyticsEventForURL:lCopy];
      futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

void __36__HFOpenURLRouter_openSensitiveURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CC1E80];
  v4 = a2;
  v5 = [v3 defaultWorkspace];
  [v5 openURL:*(a1 + 32) configuration:0 completionHandler:v4];
}

- (void)_sendAnalyticsEventForURL:(id)l
{
  v3 = MEMORY[0x277CBEBC0];
  lCopy = l;
  hf_photosLibraryPeopleAlbumURL = [v3 hf_photosLibraryPeopleAlbumURL];
  v6 = [lCopy isEqual:hf_photosLibraryPeopleAlbumURL];

  if (v6)
  {

    [HFAnalytics sendEvent:6];
  }
}

- (HFApplicationURLHandling)applicationURLHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationURLHandler);

  return WeakRetained;
}

@end