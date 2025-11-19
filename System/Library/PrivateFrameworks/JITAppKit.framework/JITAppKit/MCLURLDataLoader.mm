@interface MCLURLDataLoader
+ (BOOL)isValidResumeData:(id)a3;
+ (BOOL)task:(id)a3 equalsToTask:(id)a4;
+ (id)dateFromRFC1123:(id)a3;
+ (id)downloadData;
+ (id)duplicateResponse:(id)a3 withContentLength:(int64_t)a4;
+ (id)fileExtensionForMimeType:(id)a3;
+ (id)mimeTypeForFileExtension:(id)a3;
+ (id)shared;
+ (id)uniqueImageKeyForURL:(id)a3;
+ (id)uniqueKeyForURL:(id)a3;
+ (void)addSessionConfigurator:(id)a3;
+ (void)applyDefaultRequestHeaders:(id)a3;
+ (void)removeFilesOlderThan:(id)a3 inDirectory:(id)a4;
+ (void)restart:(id)a3;
- (BOOL)deleteCookie:(id)a3 inDomain:(id)a4 secure:(BOOL)a5;
- (MCLURLDataLoader)init;
- (NSOperationQueue)operationQueue;
- (NSSet)cacheLocations;
- (NSURLCache)cache;
- (id)_cachedResponseForRequest:(id)a3;
- (id)allCookies;
- (id)cachableFileAttributes:(id)a3;
- (id)configuredURLRequestForTask:(id)a3 download:(BOOL *)a4 resumeData:(id *)a5;
- (id)cookiesForURL:(id)a3;
- (id)defaultSessionConfiguration;
- (id)downloadCachedResponse:(id)a3;
- (id)downloadImageFromURL:(id)a3 category:(id)a4 completionHandler:(id)a5;
- (id)downloadImageWithRequest:(id)a3 category:(id)a4 completionHandler:(id)a5;
- (id)downloadRequest:(id)a3 category:(id)a4 completionHandler:(id)a5;
- (id)downloadRequest:(id)a3 toPath:(id)a4 category:(id)a5 completionHandler:(id)a6;
- (id)downloadURL:(id)a3 category:(id)a4 completionHandler:(id)a5;
- (id)downloadURL:(id)a3 toPath:(id)a4 category:(id)a5 completionHandler:(id)a6;
- (id)duplicateTasksForTask:(id)a3;
- (id)findCookie:(id)a3 inDomain:(id)a4 secure:(BOOL)a5;
- (id)findCookie:(id)a3 inDomain:(id)a4 secure:(BOOL)a5 cookies:(id)a6;
- (id)findMatchingCookies:(id)a3 inDomain:(id)a4 secure:(BOOL)a5;
- (id)imagesDownloadDirectory;
- (id)loadRequest:(id)a3 category:(id)a4 completionHandler:(id)a5;
- (id)loadRequest:(id)a3 category:(id)a4 completionHandler:(id)a5 receiveData:(id)a6;
- (id)loadURL:(id)a3 category:(id)a4 completionHandler:(id)a5;
- (id)loaderTaskForSessionTask:(id)a3;
- (int64_t)priorityForCategory:(id)a3;
- (unint64_t)connectionsLimitForPriorityOfTask:(id)a3;
- (void)URLSession:(id)a3 dataTask:(id)a4 didBecomeDownloadTask:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 dataTask:(id)a4 willCacheResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didResumeAtOffset:(int64_t)a5 expectedTotalBytes:(int64_t)a6;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3;
- (void)_removeCachedResponseForRequest:(id)a3;
- (void)_removeCachedResponseForRequest:(id)a3 force:(BOOL)a4;
- (void)addCacheLocation:(id)a3;
- (void)addRewriteRule:(id)a3;
- (void)applicationDidBecomeActiveNotification:(id)a3;
- (void)applicationDidEnterBackgroundNotification:(id)a3;
- (void)applicationWillEnterForegroundNotification:(id)a3;
- (void)applyRewriteRules:(id)a3;
- (void)backgroundClearOldCaches:(id)a3;
- (void)backgroundRemoveCachedResponseForRequest:(id)a3;
- (void)cancelTask:(id)a3;
- (void)cancelTasks:(id)a3;
- (void)clearCache;
- (void)clearOldCaches:(id)a3;
- (void)configureSession;
- (void)configureSession:(id)a3;
- (void)deleteCookiesMatchingPredicate:(id)a3;
- (void)dispose;
- (void)enqueueTask:(id)a3 reschedule:(BOOL)a4;
- (void)enumerateCookies:(id)a3 inDomain:(id)a4 secure:(BOOL)a5 withBlock:(id)a6;
- (void)enumerateCookies:(id)a3 secure:(BOOL)a4 cookies:(id)a5 withBlock:(id)a6;
- (void)internalRestart:(id)a3;
- (void)notifyBackgroundStopped;
- (void)notifyEmptyQueue;
- (void)notifyEnqueue;
- (void)operationCancelTask:(id)a3;
- (void)operationReschedule;
- (void)operationRestartSession;
- (void)operationSuspendSession;
- (void)processURLRequestRewrite:(id)a3;
- (void)removeCachedResponseForRequest:(id)a3;
- (void)removeRewriteRule:(id)a3;
- (void)removeRewriteRules:(id)a3;
- (void)removeRewriteRulesWithName:(id)a3;
- (void)resume;
- (void)setCategory:(id)a3 forTask:(id)a4;
- (void)setCategory:(id)a3 forTasks:(id)a4;
- (void)setCookie:(id)a3;
- (void)setPriority:(int64_t)a3 forCategory:(id)a4;
- (void)setupCache:(BOOL)a3;
- (void)storeResumeData:(id)a3 forTask:(id)a4;
- (void)suspend;
- (void)task:(id)a3 completedWithError:(id)a4;
- (void)updateDownloadCacheEntry:(id)a3;
@end

@implementation MCLURLDataLoader

+ (id)dateFromRFC1123:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    v10 = location[0];
    v3 = location[0];
    v19 = [v10 UTF8String];
    v17 = 0;
    v16 = 0;
    v18 = "%a, %d %b %Y %H:%M:%S %Z";
    memset(&__b, 0, sizeof(__b));
    v16 = strptime_l(v19, "%a, %d %b %Y %H:%M:%S %Z", &__b, 0);
    if (v16 && (v14 = mktime(&__b), v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v14], v5 = v17, v17 = v4, MEMORY[0x277D82BD8](v5), v17))
    {
      v22 = MEMORY[0x277D82BE0](v17);
      v20 = 1;
    }

    else
    {
      v18 = "%A, %d-%b-%y %H:%M:%S %Z";
      memset(&v13, 0, sizeof(v13));
      v16 = strptime_l(v19, "%A, %d-%b-%y %H:%M:%S %Z", &v13, 0);
      if (v16 && (v12 = mktime(&v13), v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v12], v7 = v17, v17 = v6, MEMORY[0x277D82BD8](v7), v17))
      {
        v22 = MEMORY[0x277D82BE0](v17);
        v20 = 1;
      }

      else
      {
        v18 = "%a %b %e %H:%M:%S %Y";
        memset(&v11, 0, sizeof(v11));
        v16 = strptime_l(v19, "%a %b %e %H:%M:%S %Y", &v11, 0);
        if (v16)
        {
          v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:mktime(&v11)];
        }

        else
        {
          v22 = 0;
        }

        v20 = 1;
      }
    }

    objc_storeStrong(&v17, 0);
  }

  else
  {
    v22 = 0;
    v20 = 1;
  }

  objc_storeStrong(location, 0);
  v8 = v22;

  return v8;
}

+ (id)fileExtensionForMimeType:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F60], location[0], 0);
  v7 = 0;
  if (PreferredIdentifierForTag)
  {
    obj = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, *MEMORY[0x277CC1F58]);
    CFRelease(PreferredIdentifierForTag);
    if (obj)
    {
      objc_storeStrong(&v7, obj);
      CFRelease(obj);
    }
  }

  if (v7)
  {
    v3 = MEMORY[0x277D82BE0](v7);
  }

  else
  {
    v3 = MEMORY[0x277D82BE0](&stru_28677B088);
  }

  v5 = v3;
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v5;
}

+ (id)mimeTypeForFileExtension:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], location[0], 0);
  v6 = 0;
  if (PreferredIdentifierForTag)
  {
    obj = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, *MEMORY[0x277CC1F60]);
    CFRelease(PreferredIdentifierForTag);
    if (obj)
    {
      objc_storeStrong(&v6, obj);
      CFRelease(obj);
    }
  }

  v4 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (void)setCookie:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(MCLURLDataLoader *)v5 cookieStorage];
  [(NSHTTPCookieStorage *)v3 setCookie:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (id)findCookie:(id)a3 inDomain:(id)a4 secure:(BOOL)a5
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = 0;
  objc_storeStrong(&v21, a4);
  v20 = a5;
  v19 = 0;
  if ([v21 length])
  {
    v13 = MEMORY[0x277CBEBC0];
    if (v20)
    {
      v5 = @"https";
    }

    else
    {
      v5 = @"http";
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@", v5, v21];
    v18 = [v13 URLWithString:?];
    MEMORY[0x277D82BD8](v14);
    v15 = [(MCLURLDataLoader *)v23 cookieStorage];
    v6 = [(NSHTTPCookieStorage *)v15 cookiesForURL:v18];
    v7 = v19;
    v19 = v6;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v15);
    objc_storeStrong(&v18, 0);
  }

  else
  {
    v12 = [(MCLURLDataLoader *)v23 cookieStorage];
    v8 = [(NSHTTPCookieStorage *)v12 cookies];
    v9 = v19;
    v19 = v8;
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v12);
  }

  v11 = [MCLURLDataLoader findCookie:v23 inDomain:"findCookie:inDomain:secure:cookies:" secure:location[0] cookies:?];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (id)findCookie:(id)a3 inDomain:(id)a4 secure:(BOOL)a5 cookies:(id)a6
{
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = 0;
  objc_storeStrong(&v32, a4);
  v31 = a5;
  v30 = 0;
  objc_storeStrong(&v30, a6);
  v23 = 0;
  v24 = &v23;
  v25 = 838860800;
  v26 = 48;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  v22 = [MEMORY[0x277CBEAA8] date];
  v11 = v34;
  v8 = location[0];
  v9 = v31;
  v10 = v30;
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __63__MCLURLDataLoader_Cookie__findCookie_inDomain_secure_cookies___block_invoke;
  v19 = &unk_2797EE758;
  v20 = MEMORY[0x277D82BE0](v32);
  v21[0] = MEMORY[0x277D82BE0](v22);
  v21[1] = &v23;
  [(MCLURLDataLoader *)v11 enumerateCookies:v8 secure:v9 cookies:v10 withBlock:&v15];
  v7 = MEMORY[0x277D82BE0](v24[5]);
  objc_storeStrong(v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  _Block_object_dispose(&v23, 8);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);

  return v7;
}

void __63__MCLURLDataLoader_Cookie__findCookie_inDomain_secure_cookies___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  LOBYTE(v7) = 0;
  if (a1[4])
  {
    v11 = [location[0] domain];
    v10 = 1;
    v7 = [v11 isEqualToString:a1[4]] ^ 1;
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  if ((v7 & 1) == 0)
  {
    v3 = [location[0] expiresDate];
    v8 = 0;
    v4 = 1;
    if (v3)
    {
      v9 = [location[0] expiresDate];
      v8 = 1;
      v4 = [v9 compare:a1[5]] != -1;
    }

    if (v8)
    {
      MEMORY[0x277D82BD8](v9);
    }

    MEMORY[0x277D82BD8](v3);
    if (v4)
    {
      objc_storeStrong((*(a1[6] + 8) + 40), location[0]);
      *a3 = 1;
    }
  }

  objc_storeStrong(location, 0);
}

- (id)findMatchingCookies:(id)a3 inDomain:(id)a4 secure:(BOOL)a5
{
  v39 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36 = a5;
  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0;
  v30 = 0;
  if ([location[0] length])
  {
    v32 = v34;
    v12 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:location[0] options:0 error:&v32];
    objc_storeStrong(&v34, v32);
    v31 = v12;
    v30 = 1;
    v5 = MEMORY[0x277D82BE0](v12);
  }

  else
  {
    v5 = MEMORY[0x277D82BE0](0);
  }

  v33 = v5;
  if (v30)
  {
    MEMORY[0x277D82BD8](v31);
  }

  if (v34)
  {
    NSLog(&cfstr_UnableToProces.isa, location[0], v34);
    v40 = MEMORY[0x277D82BE0](v35);
    v29 = 1;
  }

  else
  {
    v25 = 0;
    if ([v37 length])
    {
      v27 = v34;
      v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v37 options:0 error:&v27];
      objc_storeStrong(&v34, v27);
      v26 = v11;
      v25 = 1;
      v6 = MEMORY[0x277D82BE0](v11);
    }

    else
    {
      v6 = MEMORY[0x277D82BE0](0);
    }

    v28 = v6;
    if (v25)
    {
      MEMORY[0x277D82BD8](v26);
    }

    if (v34)
    {
      NSLog(&cfstr_UnableToProces.isa, v37, v34);
      v40 = MEMORY[0x277D82BE0](v35);
      v29 = 1;
    }

    else
    {
      v24 = [MEMORY[0x277CBEAA8] date];
      v10 = [(MCLURLDataLoader *)v39 cookieStorage];
      v9 = [(NSHTTPCookieStorage *)v10 cookies];
      v15 = MEMORY[0x277D85DD0];
      v16 = -1073741824;
      v17 = 0;
      v18 = __64__MCLURLDataLoader_Cookie__findMatchingCookies_inDomain_secure___block_invoke;
      v19 = &unk_2797EE780;
      v20 = MEMORY[0x277D82BE0](v33);
      v21 = MEMORY[0x277D82BE0](v28);
      v22 = MEMORY[0x277D82BE0](v24);
      v23 = MEMORY[0x277D82BE0](v35);
      [(NSArray *)v9 enumerateObjectsUsingBlock:&v15];
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      v40 = MEMORY[0x277D82BE0](v35);
      v29 = 1;
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v24, 0);
    }

    objc_storeStrong(&v28, 0);
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  v7 = v40;

  return v7;
}

void __64__MCLURLDataLoader_Cookie__findMatchingCookies_inDomain_secure___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v21[3] = a3;
  v21[2] = a4;
  v21[1] = a1;
  v15 = *(a1 + 32);
  v17 = [location[0] name];
  v16 = [location[0] name];
  v4 = [v16 length];
  location[7] = 0;
  location[6] = v4;
  location[8] = 0;
  location[9] = v4;
  v21[0] = [v15 firstMatchInString:v17 options:0 range:{0, v4}];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  if (!*(a1 + 32) || v21[0] && [v21[0] range] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *(a1 + 40);
    v12 = [location[0] domain];
    v11 = [location[0] domain];
    v5 = [v11 length];
    location[3] = 0;
    location[2] = v5;
    location[4] = 0;
    location[5] = v5;
    v6 = [v10 firstMatchInString:v12 options:0 range:{0, v5}];
    v7 = v21[0];
    v21[0] = v6;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    if (!*(a1 + 40) || v21[0] && [v21[0] range] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = [location[0] expiresDate];
      v19 = 0;
      v9 = 1;
      if (v8)
      {
        v20 = [location[0] expiresDate];
        v19 = 1;
        v9 = [v20 compare:*(a1 + 48)] != -1;
      }

      if (v19)
      {
        MEMORY[0x277D82BD8](v20);
      }

      MEMORY[0x277D82BD8](v8);
      if (v9)
      {
        [*(a1 + 56) addObject:location[0]];
      }
    }
  }

  objc_storeStrong(v21, 0);
  objc_storeStrong(location, 0);
}

- (id)allCookies
{
  v3 = [(MCLURLDataLoader *)self cookieStorage];
  v4 = [(NSHTTPCookieStorage *)v3 cookies];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (BOOL)deleteCookie:(id)a3 inDomain:(id)a4 secure:(BOOL)a5
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x20000000;
  v23 = 32;
  v24 = 0;
  v19 = [(MCLURLDataLoader *)v28 cookieStorage];
  v10 = v28;
  v7 = location[0];
  v8 = v26;
  v9 = v25;
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __57__MCLURLDataLoader_Cookie__deleteCookie_inDomain_secure___block_invoke;
  v17 = &unk_2797EE7A8;
  v18[0] = MEMORY[0x277D82BE0](v19);
  v18[1] = &v20;
  [(MCLURLDataLoader *)v10 enumerateCookies:v7 inDomain:v8 secure:v9 withBlock:&v13];
  v6 = *(v21 + 24);
  objc_storeStrong(v18, 0);
  objc_storeStrong(&v19, 0);
  _Block_object_dispose(&v20, 8);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

void __57__MCLURLDataLoader_Cookie__deleteCookie_inDomain_secure___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) deleteCookie:location[0]];
  *(*(*(a1 + 40) + 8) + 24) = 1;
  objc_storeStrong(location, 0);
}

- (void)deleteCookiesMatchingPredicate:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [(MCLURLDataLoader *)v13 cookieStorage];
  v3 = [(NSHTTPCookieStorage *)v11 cookies];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __59__MCLURLDataLoader_Cookie__deleteCookiesMatchingPredicate___block_invoke;
  v8 = &unk_2797EE7D0;
  v9 = MEMORY[0x277D82BE0](location[0]);
  v10 = MEMORY[0x277D82BE0](v11);
  [(NSArray *)v3 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __59__MCLURLDataLoader_Cookie__deleteCookiesMatchingPredicate___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([a1[4] evaluateWithObject:location[0]])
  {
    [a1[5] deleteCookie:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)enumerateCookies:(id)a3 inDomain:(id)a4 secure:(BOOL)a5 withBlock:(id)a6
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = a5;
  v20 = 0;
  objc_storeStrong(&v20, a6);
  v19 = 0;
  if ([v22 length])
  {
    v12 = MEMORY[0x277CBEBC0];
    if (v21)
    {
      v6 = @"https";
    }

    else
    {
      v6 = @"http";
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@", v6, v22];
    v18 = [v12 URLWithString:?];
    MEMORY[0x277D82BD8](v13);
    v14 = [(MCLURLDataLoader *)v24 cookieStorage];
    v7 = [(NSHTTPCookieStorage *)v14 cookiesForURL:v18];
    v8 = v19;
    v19 = v7;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v14);
    objc_storeStrong(&v18, 0);
  }

  else
  {
    v11 = [(MCLURLDataLoader *)v24 cookieStorage];
    v9 = [(NSHTTPCookieStorage *)v11 cookies];
    v10 = v19;
    v19 = v9;
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
  }

  [(MCLURLDataLoader *)v24 enumerateCookies:location[0] secure:v21 cookies:v19 withBlock:v20];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)enumerateCookies:(id)a3 secure:(BOOL)a4 cookies:(id)a5 withBlock:(id)a6
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  objc_storeStrong(&v13, a6);
  v9 = v14;
  v10 = MEMORY[0x277D82BE0](location[0]);
  v12 = v15;
  v11 = MEMORY[0x277D82BE0](v13);
  [v9 enumerateObjectsUsingBlock:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __70__MCLURLDataLoader_Cookie__enumerateCookies_secure_cookies_withBlock___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  if (!*(a1 + 32) || (v6 = [location[0] name], v5 = 1, v3 = 0, (objc_msgSend(v6, "isEqualToString:", *(a1 + 32)) & 1) != 0))
  {
    v2 = 1;
    if (*(a1 + 48))
    {
      v2 = [location[0] isSecure] == (*(a1 + 48) & 1);
    }

    v3 = v2;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(location, 0);
}

- (id)cookiesForURL:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(MCLURLDataLoader *)v7 cookieStorage];
  v5 = [(NSHTTPCookieStorage *)v4 cookiesForURL:location[0]];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)downloadImageFromURL:(id)a3 category:(id)a4 completionHandler:(id)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v8 = v14;
  v9 = [MEMORY[0x277CCAD20] requestWithURL:location[0]];
  v10 = [MCLURLDataLoader downloadImageWithRequest:v8 category:"downloadImageWithRequest:category:completionHandler:" completionHandler:?];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (id)downloadImageWithRequest:(id)a3 category:(id)a4 completionHandler:(id)a5
{
  v42 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v40 = 0;
  objc_storeStrong(&v40, a4);
  v39 = 0;
  objc_storeStrong(&v39, a5);
  v38 = [location[0] URL];
  v11 = [(MCLURLDataLoader *)v42 imagesDownloadDirectory];
  v10 = [MCLURLDataLoader uniqueImageKeyForURL:v38];
  v37 = [v11 stringByAppendingPathComponent:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v33[0] = 0;
  v33[1] = v33;
  v34 = 0x20000000;
  v35 = 32;
  v36 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v30 = 0x20000000;
  v31 = 32;
  v32 = 0;
  v14 = v42;
  v12 = location[0];
  v13 = v37;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __79__MCLURLDataLoader_Image__downloadImageWithRequest_category_completionHandler___block_invoke;
  v25[3] = &unk_2797EE870;
  v27[1] = v33;
  v26 = MEMORY[0x277D82BE0](v37);
  v27[2] = v29;
  v27[0] = MEMORY[0x277D82BE0](v39);
  v28 = [(MCLURLDataLoader *)v14 downloadRequest:v12 toPath:v13 category:@"low" completionHandler:v25];
  queue = dispatch_get_global_queue(2, 0);
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __79__MCLURLDataLoader_Image__downloadImageWithRequest_category_completionHandler___block_invoke_4;
  v19 = &unk_2797EE8C0;
  v20 = MEMORY[0x277D82BE0](v37);
  v24[1] = v33;
  v24[2] = v29;
  v24[0] = MEMORY[0x277D82BE0](v39);
  v21 = MEMORY[0x277D82BE0](v42);
  v22 = MEMORY[0x277D82BE0](v40);
  v23 = MEMORY[0x277D82BE0](v28);
  dispatch_async(queue, &v15);
  MEMORY[0x277D82BD8](queue);
  v7 = MEMORY[0x277D82BE0](v28);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v24, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(v27, 0);
  objc_storeStrong(&v26, 0);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v33, 8);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);

  return v7;
}

void __79__MCLURLDataLoader_Image__downloadImageWithRequest_category_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v28 = 0;
  objc_storeStrong(&v28, a3);
  v27[1] = a1;
  if (v28 || ([location[0] responseOk] & 1) == 0)
  {
    v5 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    v6 = v5;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __79__MCLURLDataLoader_Image__downloadImageWithRequest_category_completionHandler___block_invoke_3;
    v15 = &unk_2797EE848;
    v18[1] = *(a1 + 56);
    v18[0] = MEMORY[0x277D82BE0](*(a1 + 40));
    v16 = MEMORY[0x277D82BE0](v28);
    v17 = MEMORY[0x277D82BE0](location[0]);
    dispatch_async(v6, &v11);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(v18, 0);
  }

  else if (([location[0] cachedResponse] & 1) == 0 || (*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v27[0] = UIImageWithContentsOfFile(*(a1 + 32), 1);
    v7 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v7;
    v19 = MEMORY[0x277D85DD0];
    v20 = -1073741824;
    v21 = 0;
    v22 = __79__MCLURLDataLoader_Image__downloadImageWithRequest_category_completionHandler___block_invoke_2;
    v23 = &unk_2797EE848;
    v26[1] = *(a1 + 56);
    v26[0] = MEMORY[0x277D82BE0](*(a1 + 40));
    v24 = MEMORY[0x277D82BE0](v27[0]);
    v25 = MEMORY[0x277D82BE0](location[0]);
    dispatch_async(queue, &v19);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(v26, 0);
    objc_storeStrong(v27, 0);
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

uint64_t __79__MCLURLDataLoader_Image__downloadImageWithRequest_category_completionHandler___block_invoke_2(void *a1)
{
  *(*(a1[7] + 8) + 24) = 1;
  v1 = a1[5];
  return (*(a1[6] + 16))(a1[6], a1[4]);
}

uint64_t __79__MCLURLDataLoader_Image__downloadImageWithRequest_category_completionHandler___block_invoke_3(void *a1)
{
  *(*(a1[7] + 8) + 24) = 1;
  v1 = a1[4];
  v2 = a1[5];
  return (*(a1[6] + 16))(a1[6], 0);
}

void __79__MCLURLDataLoader_Image__downloadImageWithRequest_category_completionHandler___block_invoke_4(uint64_t a1)
{
  v18 = a1;
  v17 = a1;
  v16 = 0;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = 0;
  if ([v6 fileExistsAtPath:*(a1 + 32) isDirectory:&v16])
  {
    v7 = v16 ^ 1;
  }

  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    v15 = UIImageWithContentsOfFile(*(a1 + 32), 0);
    if (v15)
    {
      v3 = MEMORY[0x277D85CD0];
      v1 = MEMORY[0x277D85CD0];
      queue = v3;
      v8 = MEMORY[0x277D85DD0];
      v9 = -1073741824;
      v10 = 0;
      v11 = __79__MCLURLDataLoader_Image__downloadImageWithRequest_category_completionHandler___block_invoke_5;
      v12 = &unk_2797EE898;
      v14[1] = *(a1 + 80);
      v14[0] = MEMORY[0x277D82BE0](*(a1 + 64));
      v13 = MEMORY[0x277D82BE0](v15);
      dispatch_async(queue, &v8);
      MEMORY[0x277D82BD8](queue);
      objc_storeStrong(&v13, 0);
      objc_storeStrong(v14, 0);
    }

    else
    {
      v2 = [MEMORY[0x277CCAA00] defaultManager];
      [v2 removeItemAtPath:*(a1 + 32) error:0];
      MEMORY[0x277D82BD8](v2);
    }

    objc_storeStrong(&v15, 0);
  }

  else
  {
    [*(a1 + 40) setCategory:*(a1 + 48) forTask:*(a1 + 56)];
  }
}

void *__79__MCLURLDataLoader_Image__downloadImageWithRequest_category_completionHandler___block_invoke_5(void *result)
{
  if ((*(*(result[6] + 8) + 24) & 1) == 0)
  {
    v1 = result[4];
    return (*(result[5] + 16))();
  }

  return result;
}

- (id)imagesDownloadDirectory
{
  v5 = &imagesDownloadDirectory_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_11);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = imagesDownloadDirectory_imagesDownloadDirectory;

  return v2;
}

uint64_t __50__MCLURLDataLoader_Image__imagesDownloadDirectory__block_invoke()
{
  v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [(NSArray *)v4 objectAtIndex:0];
  v0 = [v3 stringByAppendingPathComponent:@"MCLURLDataLoaderImages"];
  v1 = imagesDownloadDirectory_imagesDownloadDirectory;
  imagesDownloadDirectory_imagesDownloadDirectory = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v5 = +[MCLURLDataLoader shared];
  [v5 addCacheLocation:imagesDownloadDirectory_imagesDownloadDirectory];
  return MEMORY[0x277D82BD8](v5);
}

+ (id)uniqueImageKeyForURL:(id)a3
{
  v22 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = &uniqueImageKeyForURL__onceToken;
  v23 = 0;
  objc_storeStrong(&v23, &__block_literal_global_6);
  if (*v24 != -1)
  {
    dispatch_once(v24, v23);
  }

  objc_storeStrong(&v23, 0);
  v20 = [v22 uniqueKeyForURL:location[0]];
  v13 = 0;
  v14 = &v13;
  v15 = 838860800;
  v16 = 48;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = [v20 pathExtension];
  v11 = [v20 stringByDeletingPathExtension];
  v3 = [v11 stringByAppendingString:uniqueImageKeyForURL__screenScale];
  v4 = v20;
  v20 = v3;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v11);
  if (![v14[5] length])
  {
    objc_storeStrong(v14 + 5, @"image");
    v10 = objc_alloc(MEMORY[0x277CCACE0]);
    v12 = [v10 initWithURL:location[0] resolvingAgainstBaseURL:0];
    v9 = [v12 queryItems];
    [v9 enumerateObjectsUsingBlock:?];
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  if ([v14[5] length])
  {
    v5 = [v20 stringByAppendingPathExtension:v14[5]];
    v6 = v20;
    v20 = v5;
    MEMORY[0x277D82BD8](v6);
  }

  v8 = MEMORY[0x277D82BE0](v20);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v8;
}

void __48__MCLURLDataLoader_Image__uniqueImageKeyForURL___block_invoke()
{
  v1 = [MEMORY[0x277D759A0] mainScreen];
  [v1 scale];
  v2 = v0;
  MEMORY[0x277D82BD8](v1);
  v3 = 0;
  if (v2 > 1)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"@%lux", v2];
    v3 = 1;
    objc_storeStrong(&uniqueImageKeyForURL__screenScale, v4);
  }

  else
  {
    objc_storeStrong(&uniqueImageKeyForURL__screenScale, &stru_28677B088);
  }

  if (v3)
  {
    MEMORY[0x277D82BD8](v4);
  }
}

void __48__MCLURLDataLoader_Image__uniqueImageKeyForURL___block_invoke_19(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = [location[0] value];
  v9 = [v8 hasPrefix:@"png"];
  MEMORY[0x277D82BD8](v8);
  if (v9)
  {
    objc_storeStrong((*(a1[4] + 8) + 40), @"png");
    *a4 = 1;
  }

  else
  {
    v4 = [location[0] value];
    v10 = 0;
    v5 = 1;
    if (([v4 hasPrefix:@"jpeg"] & 1) == 0)
    {
      v11 = [location[0] value];
      v10 = 1;
      v5 = [v11 hasPrefix:@"jpg"];
    }

    if (v10)
    {
      MEMORY[0x277D82BD8](v11);
    }

    MEMORY[0x277D82BD8](v4);
    if (v5)
    {
      objc_storeStrong((*(a1[4] + 8) + 40), @"jpeg");
      *a4 = 1;
    }
  }

  objc_storeStrong(location, 0);
}

+ (void)addSessionConfigurator:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = &addSessionConfigurator__onceToken;
  v6 = 0;
  objc_storeStrong(&v6, &__block_literal_global_12);
  if (*v7 != -1)
  {
    dispatch_once(v7, v6);
  }

  objc_storeStrong(&v6, 0);
  v3 = _sessionConfigurators;
  v4 = _Block_copy(location[0]);
  [v3 addObject:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

uint64_t __43__MCLURLDataLoader_addSessionConfigurator___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1 = _sessionConfigurators;
  _sessionConfigurators = v0;
  return MEMORY[0x277D82BD8](v1);
}

+ (id)shared
{
  v11 = a1;
  v10 = a2;
  obj = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __26__MCLURLDataLoader_shared__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  v9 = a1;
  v13 = &shared_onceToken_1;
  location = 0;
  objc_storeStrong(&location, &obj);
  if (*v13 != -1)
  {
    dispatch_once(v13, location);
  }

  objc_storeStrong(&location, 0);
  v2 = shared;

  return v2;
}

uint64_t __26__MCLURLDataLoader_shared__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = shared;
  shared = v1;
  MEMORY[0x277D82BD8](v2);
  return [shared configureSession];
}

- (MCLURLDataLoader)init
{
  v34[6] = *MEMORY[0x277D85DE8];
  v31 = a2;
  v32 = 0;
  v30.receiver = self;
  v30.super_class = MCLURLDataLoader;
  v32 = [(MCLURLDataLoader *)&v30 init];
  objc_storeStrong(&v32, v32);
  if (v32)
  {
    v32->_backgroundTaskIdentifier = *MEMORY[0x277D767B0];
    v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
    priorities = v32->_priorities;
    v32->_priorities = v2;
    MEMORY[0x277D82BD8](priorities);
    v22 = v32->_priorities;
    v33[0] = @"suspended";
    v34[0] = &unk_286780FB8;
    v33[1] = @"lowest";
    v34[1] = &unk_286780FD0;
    v33[2] = @"low";
    v34[2] = &unk_286780FE8;
    v33[3] = @"normal";
    v34[3] = &unk_286781000;
    v33[4] = @"high";
    v34[4] = &unk_286781018;
    v33[5] = @"highest";
    v34[5] = &unk_286781030;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:6];
    [(NSMutableDictionary *)v22 addEntriesFromDictionary:?];
    MEMORY[0x277D82BD8](v23);
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:128];
    taskQueue = v32->_taskQueue;
    v32->_taskQueue = v4;
    MEMORY[0x277D82BD8](taskQueue);
    v6 = objc_alloc_init(MEMORY[0x277CCAC60]);
    taskQueueLock = v32->_taskQueueLock;
    v32->_taskQueueLock = v6;
    MEMORY[0x277D82BD8](taskQueueLock);
    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:?];
    activeTasks = v32->_activeTasks;
    v32->_activeTasks = v8;
    MEMORY[0x277D82BD8](activeTasks);
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:20];
    sessionTasks = v32->_sessionTasks;
    v32->_sessionTasks = v10;
    MEMORY[0x277D82BD8](sessionTasks);
    v12 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:20];
    duplicateTasks = v32->_duplicateTasks;
    v32->_duplicateTasks = v12;
    MEMORY[0x277D82BD8](duplicateTasks);
    v14 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:4];
    rewriteRules = v32->_rewriteRules;
    v32->_rewriteRules = v14;
    MEMORY[0x277D82BD8](rewriteRules);
    v26 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v25 = [(NSArray *)v26 objectAtIndex:0];
    v24 = [objc_opt_class() description];
    v16 = [v25 stringByAppendingPathComponent:?];
    downloadCacheDirectory = v32->_downloadCacheDirectory;
    v32->_downloadCacheDirectory = v16;
    MEMORY[0x277D82BD8](downloadCacheDirectory);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    v18 = [MEMORY[0x277CCAA38] sharedHTTPCookieStorage];
    cookieStorage = v32->_cookieStorage;
    v32->_cookieStorage = v18;
    MEMORY[0x277D82BD8](cookieStorage);
    [(MCLURLDataLoader *)v32 setupCache:0];
    v27 = [MEMORY[0x277CCAB98] defaultCenter];
    [v27 addObserver:v32 selector:sel_applicationDidEnterBackgroundNotification_ name:*MEMORY[0x277D76660] object:?];
    MEMORY[0x277D82BD8](v27);
    v28 = [MEMORY[0x277CCAB98] defaultCenter];
    [v28 addObserver:v32 selector:sel_applicationWillEnterForegroundNotification_ name:*MEMORY[0x277D76758] object:0];
    MEMORY[0x277D82BD8](v28);
    v29 = [MEMORY[0x277CCAB98] defaultCenter];
    [v29 addObserver:v32 selector:sel_applicationDidBecomeActiveNotification_ name:*MEMORY[0x277D76648] object:0];
    MEMORY[0x277D82BD8](v29);
  }

  v21 = MEMORY[0x277D82BE0](v32);
  objc_storeStrong(&v32, 0);
  *MEMORY[0x277D85DE8];
  return v21;
}

- (void)dispose
{
  v4 = self;
  v3[1] = a2;
  v3[0] = MEMORY[0x277D82BE0](self->_session);
  objc_storeStrong(&v4->_session, 0);
  [v3[0] invalidateAndCancel];
  v2 = MEMORY[0x277D82BE0](v4->_operationQueue);
  objc_storeStrong(&v4->_operationQueue, 0);
  [v2 cancelAllOperations];
  [MEMORY[0x277CCACC8] sleepForTimeInterval:0.01];
  [(NSRecursiveLock *)v4->_taskQueueLock lock];
  [(NSMutableArray *)v4->_taskQueue removeAllObjects];
  [(NSMutableDictionary *)v4->_activeTasks removeAllObjects];
  [(NSMutableArray *)v4->_sessionTasks removeAllObjects];
  [(NSMutableOrderedSet *)v4->_duplicateTasks removeAllObjects];
  [(NSRecursiveLock *)v4->_taskQueueLock unlock];
  [v2 waitUntilAllOperationsAreFinished];
  objc_storeStrong(&v4->_cache, 0);
  objc_storeStrong(&v2, 0);
  objc_storeStrong(v3, 0);
}

- (NSURLCache)cache
{
  v22 = self;
  v21 = a2;
  if (!self->_cache)
  {
    v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v12 = [v11 integerForKey:@"MCLURLDataLoader.cacheVersion"];
    MEMORY[0x277D82BD8](v11);
    v20 = v12;
    if (!v12)
    {
      v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v9 setInteger:0 forKey:@"MCLURLDataLoader.cacheVersion"];
      MEMORY[0x277D82BD8](v9);
      v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v10 synchronize];
      MEMORY[0x277D82BD8](v10);
    }

    v19 = [objc_opt_class() description];
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%ld", v19, v20];
    cachePath = v22->_cachePath;
    v22->_cachePath = v2;
    MEMORY[0x277D82BD8](cachePath);
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __25__MCLURLDataLoader_cache__block_invoke;
    v17 = &unk_2797EE220;
    v18 = MEMORY[0x277D82BE0](v22);
    v24 = &cache_onceToken;
    location = 0;
    objc_storeStrong(&location, &v13);
    if (*v24 != -1)
    {
      dispatch_once(v24, location);
    }

    objc_storeStrong(&location, 0);
    v4 = objc_alloc(MEMORY[0x277CCACD8]);
    v5 = [v4 initWithMemoryCapacity:0 diskCapacity:1000000000 diskPath:v22->_cachePath];
    cache = v22->_cache;
    v22->_cache = v5;
    MEMORY[0x277D82BD8](cache);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  v7 = v22->_cache;

  return v7;
}

- (void)setupCache:(BOOL)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  downloadCacheDirectory = v17->_downloadCacheDirectory;
  v12 = 0;
  v5 = [v14 createDirectoryAtPath:downloadCacheDirectory withIntermediateDirectories:1 attributes:0 error:&v12];
  objc_storeStrong(&v13, v12);
  if ((v5 & 1) == 0)
  {
    NSLog(&cfstr_ErrorCreatingD.isa, v13);
  }

  if (v15)
  {
    v4 = [(MCLURLDataLoader *)v17 cacheLocations];
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __31__MCLURLDataLoader_setupCache___block_invoke;
    v10 = &unk_2797EDFB8;
    v11 = MEMORY[0x277D82BE0](v14);
    [(NSSet *)v4 enumerateObjectsUsingBlock:&v6];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
}

void __31__MCLURLDataLoader_setupCache___block_invoke(void *a1, void *a2, uint64_t a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = a3;
  v13 = a1;
  v7 = a1[4];
  v8 = [location[0] stringByDeletingLastPathComponent];
  v9 = [v7 isWritableFileAtPath:?];
  MEMORY[0x277D82BD8](v8);
  if (v9)
  {
    v11 = 0;
    v3 = a1[4];
    v10 = 0;
    v4 = [v3 createDirectoryAtPath:location[0] withIntermediateDirectories:1 attributes:0 error:&v10];
    objc_storeStrong(&v11, v10);
    if ((v4 & 1) == 0)
    {
      NSLog(&cfstr_ErrorCreatingC.isa, v11);
    }

    objc_storeStrong(&v11, 0);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)clearOldCaches:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 beginBackgroundTaskWithName:@"Clear Cache" expirationHandler:0];
  MEMORY[0x277D82BD8](v3);
  v13 = v4;
  queue = dispatch_get_global_queue(2, 0);
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __35__MCLURLDataLoader_clearOldCaches___block_invoke;
  v10 = &unk_2797EE968;
  v11 = MEMORY[0x277D82BE0](v15);
  v12[0] = MEMORY[0x277D82BE0](location[0]);
  v12[1] = v13;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

uint64_t __35__MCLURLDataLoader_clearOldCaches___block_invoke(uint64_t a1)
{
  [*(a1 + 32) backgroundClearOldCaches:*(a1 + 40)];
  result = a1;
  if (*(a1 + 48) != *MEMORY[0x277D767B0])
  {
    v2 = [MEMORY[0x277D75128] sharedApplication];
    [v2 endBackgroundTask:*(a1 + 48)];
    return MEMORY[0x277D82BD8](v2);
  }

  return result;
}

- (void)backgroundClearOldCaches:(id)a3
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v5 = [(NSArray *)v6 objectAtIndex:0];
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v4 bundleIdentifier];
  v29 = [v5 stringByAppendingPathComponent:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v28 = [objc_opt_class() description];
  v27 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v27 contentsOfDirectoryAtPath:v29 error:0];
  v18[1] = MEMORY[0x277D85DD0];
  v19 = -1073741824;
  v20 = 0;
  v21 = __45__MCLURLDataLoader_backgroundClearOldCaches___block_invoke;
  v22 = &unk_2797EE990;
  v23 = MEMORY[0x277D82BE0](location[0]);
  v24 = MEMORY[0x277D82BE0](v28);
  v25 = MEMORY[0x277D82BE0](v29);
  v26 = MEMORY[0x277D82BE0](v27);
  [v7 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v7);
  v18[0] = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
  v17 = [v29 stringByAppendingPathComponent:location[0]];
  [objc_opt_class() removeFilesOlderThan:v18[0] inDirectory:v17];
  v8 = [(MCLURLDataLoader *)v31 cacheLocations];
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __45__MCLURLDataLoader_backgroundClearOldCaches___block_invoke_2;
  v13 = &unk_2797EE9B8;
  v14 = MEMORY[0x277D82BE0](v27);
  v15 = MEMORY[0x277D82BE0](v31);
  v16 = MEMORY[0x277D82BE0](v18[0]);
  [(NSSet *)v8 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void __45__MCLURLDataLoader_backgroundClearOldCaches___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11[3] = a3;
  v11[2] = a4;
  v11[1] = a1;
  if ([*(a1 + 32) isEqualToString:location[0]] & 1) == 0 && (objc_msgSend(location[0], "hasPrefix:", *(a1 + 40)))
  {
    v11[0] = 0;
    v10 = [*(a1 + 48) stringByAppendingPathComponent:location[0]];
    v4 = *(a1 + 56);
    obj = v11[0];
    v5 = [v4 removeItemAtPath:v10 error:&obj];
    objc_storeStrong(v11, obj);
    if ((v5 & 1) == 0)
    {
      NSLog(&cfstr_ErrorDeletingC.isa, v11[0]);
    }

    objc_storeStrong(&v10, 0);
    objc_storeStrong(v11, 0);
  }

  objc_storeStrong(location, 0);
}

void __45__MCLURLDataLoader_backgroundClearOldCaches___block_invoke_2(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([*(a1 + 32) isDeletableFileAtPath:location[0]])
  {
    v2 = *(a1 + 40);
    [objc_opt_class() removeFilesOlderThan:*(a1 + 48) inDirectory:location[0]];
  }

  objc_storeStrong(location, 0);
}

+ (void)removeFilesOlderThan:(id)a3 inDirectory:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v14 contentsOfDirectoryAtPath:v15 error:0];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __53__MCLURLDataLoader_removeFilesOlderThan_inDirectory___block_invoke;
  v10 = &unk_2797EE9E0;
  v11 = MEMORY[0x277D82BE0](v15);
  v12 = MEMORY[0x277D82BE0](v14);
  v13 = MEMORY[0x277D82BE0](location[0]);
  [v5 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __53__MCLURLDataLoader_removeFilesOlderThan_inDirectory___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14[3] = a3;
  v14[2] = a4;
  v14[1] = a1;
  v14[0] = [*(a1 + 32) stringByAppendingPathComponent:location[0]];
  v13 = [*(a1 + 40) attributesOfItemAtPath:v14[0] error:0];
  v9 = [v13 fileModificationDate];
  LOBYTE(v10) = 0;
  if ([v9 compare:*(a1 + 48)] == -1)
  {
    v10 = [location[0] hasPrefix:@"Cache.db"] ^ 1;
  }

  MEMORY[0x277D82BD8](v9);
  if (v10)
  {
    v12 = 0;
    v4 = *(a1 + 40);
    v11 = 0;
    v5 = [v4 removeItemAtPath:v14[0] error:&v11];
    objc_storeStrong(&v12, v11);
    if ((v5 & 1) == 0)
    {
      NSLog(&cfstr_ErrorDeletingC_0.isa, v12);
    }

    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
  objc_storeStrong(location, 0);
}

- (void)clearCache
{
  v24 = self;
  v23[1] = a2;
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"MCLURLDataLoaderWillClearCache" object:v24];
  MEMORY[0x277D82BD8](v6);
  v23[0] = MEMORY[0x277D82BE0](v24->_cache);
  [(MCLURLDataLoader *)v24 dispose];
  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [v7 integerForKey:?];
  MEMORY[0x277D82BD8](v7);
  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v22[1] = (v8 + 1);
  [v9 setInteger:? forKey:?];
  MEMORY[0x277D82BD8](v9);
  v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v10 synchronize];
  MEMORY[0x277D82BD8](v10);
  [v23[0] removeAllCachedResponses];
  v22[0] = [MEMORY[0x277CCAA00] defaultManager];
  v21 = 0;
  v20 = [(NSString *)v24->_downloadCacheDirectory stringByAppendingPathExtension:@"0"];
  downloadCacheDirectory = v24->_downloadCacheDirectory;
  v19 = v21;
  v11 = [v22[0] moveItemAtPath:downloadCacheDirectory toPath:v20 error:&v19];
  objc_storeStrong(&v21, v19);
  if ((v11 & 1) == 0 || (v18 = v21, v5 = [v22[0] removeItemAtPath:v20 error:&v18], objc_storeStrong(&v21, v18), (v5 & 1) == 0))
  {
    NSLog(&cfstr_ErrorDeletingD.isa, v21);
  }

  v3 = [(MCLURLDataLoader *)v24 cacheLocations];
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __30__MCLURLDataLoader_clearCache__block_invoke;
  v16 = &unk_2797EDFB8;
  v17 = MEMORY[0x277D82BE0](v22[0]);
  [(NSSet *)v3 enumerateObjectsUsingBlock:&v12];
  MEMORY[0x277D82BD8](v3);
  [(MCLURLDataLoader *)v24 setupCache:1];
  [(MCLURLDataLoader *)v24 configureSession];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"MCLURLDataLoaderDidClearCache" object:v24];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v22, 0);
  objc_storeStrong(v23, 0);
}

void __30__MCLURLDataLoader_clearCache__block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v18[2] = a3;
  v18[1] = a1;
  v18[0] = 0;
  v17 = [location[0] stringByAppendingPathExtension:@"0"];
  if ([a1[4] fileExistsAtPath:location[0]])
  {
    v3 = a1[4];
    v15 = v18[0];
    v5 = [v3 moveItemAtPath:location[0] toPath:v17 error:&v15];
    objc_storeStrong(v18, v15);
    if (v5)
    {
      queue = dispatch_get_global_queue(-32768, 0);
      v8 = MEMORY[0x277D85DD0];
      v9 = -1073741824;
      v10 = 0;
      v11 = __30__MCLURLDataLoader_clearCache__block_invoke_2;
      v12 = &unk_2797EE270;
      v13 = MEMORY[0x277D82BE0](a1[4]);
      v14 = MEMORY[0x277D82BE0](v17);
      dispatch_async(queue, &v8);
      MEMORY[0x277D82BD8](queue);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v13, 0);
    }

    else
    {
      NSLog(&cfstr_ErrorMovingCac.isa, v18[0]);
    }

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
  if (!v16)
  {
    v16 = 0;
  }

  objc_storeStrong(location, 0);
}

void __30__MCLURLDataLoader_clearCache__block_invoke_2(void *a1)
{
  v6[2] = a1;
  v6[1] = a1;
  v6[0] = 0;
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  v4 = [v2 removeItemAtPath:v3 error:&obj];
  objc_storeStrong(v6, obj);
  if ((v4 & 1) == 0)
  {
    NSLog(&cfstr_ErrorDeletingC_1.isa, v6[0]);
  }

  objc_storeStrong(v6, 0);
}

- (void)removeCachedResponseForRequest:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = [location[0] mutableCopy];
  [objc_opt_class() applyDefaultRequestHeaders:v12];
  [(MCLURLDataLoader *)v14 processURLRequestRewrite:v12];
  objc_initWeak(&v11, v14);
  operationQueue = v14->_operationQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __51__MCLURLDataLoader_removeCachedResponseForRequest___block_invoke;
  v8 = &unk_2797EEA08;
  objc_copyWeak(&v10, &v11);
  v9 = MEMORY[0x277D82BE0](v12);
  [(NSOperationQueue *)operationQueue addOperationWithBlock:&v4];
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v11);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

uint64_t __51__MCLURLDataLoader_removeCachedResponseForRequest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained backgroundRemoveCachedResponseForRequest:*(a1 + 32)];
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)backgroundRemoveCachedResponseForRequest:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(MCLURLDataLoader *)v28 _removeCachedResponseForRequest:location[0] force:1];
  downloadCacheDirectory = v28->_downloadCacheDirectory;
  v19 = [location[0] URL];
  v18 = [MCLURLDataLoader uniqueKeyForURL:?];
  v26 = [(NSString *)downloadCacheDirectory stringByAppendingPathComponent:?];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  v25 = [MEMORY[0x277CCAA00] defaultManager];
  v20 = [v26 pathExtension];
  v21 = [v20 length];
  MEMORY[0x277D82BD8](v20);
  if (v21)
  {
    [v25 removeItemAtPath:v26 error:0];
  }

  else
  {
    v24 = [v26 lastPathComponent];
    memset(__b, 0, sizeof(__b));
    v13 = v25;
    v14 = [v26 stringByDeletingLastPathComponent];
    obj = [v13 enumeratorAtPath:?];
    MEMORY[0x277D82BD8](v14);
    v16 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
    if (v16)
    {
      v10 = *__b[2];
      v11 = 0;
      v12 = v16;
      while (1)
      {
        v9 = v11;
        if (*__b[2] != v10)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(__b[1] + 8 * v11);
        v7 = [v23 stringByDeletingPathExtension];
        v8 = [v7 isEqualToString:v24];
        MEMORY[0x277D82BD8](v7);
        if (v8)
        {
          v4 = v25;
          v3 = v26;
          v6 = [v23 pathExtension];
          v5 = [v3 stringByAppendingPathExtension:?];
          [v4 removeItemAtPath:? error:?];
          MEMORY[0x277D82BD8](v5);
          MEMORY[0x277D82BD8](v6);
        }

        ++v11;
        if (v9 + 1 >= v12)
        {
          v11 = 0;
          v12 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
          if (!v12)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)addCacheLocation:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = v20;
  v10 = [v9 createDirectoryAtPath:location[0] withIntermediateDirectories:1 attributes:0 error:&v19];
  objc_storeStrong(&v20, v19);
  MEMORY[0x277D82BD8](v9);
  if ((v10 & 1) == 0)
  {
    NSLog(&cfstr_ErrorCreatingC.isa, v20);
  }

  v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [(NSArray *)v4 firstObject];
  v18 = [v3 stringByDeletingLastPathComponent];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v6 = [(MCLURLDataLoader *)v22 cacheLocations];
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __37__MCLURLDataLoader_addCacheLocation___block_invoke;
  v15 = &unk_2797EEA30;
  v16 = MEMORY[0x277D82BE0](v18);
  v5 = [(NSSet *)v6 objectsPassingTest:&v11];
  v17 = [(NSSet *)v5 mutableCopy];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  [v17 addObject:location[0]];
  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [v17 allObjects];
  [v8 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

uint64_t __37__MCLURLDataLoader_addCacheLocation___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [location[0] hasPrefix:a1[4]];
  objc_storeStrong(location, 0);
  return v4;
}

- (void)addRewriteRule:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSMutableOrderedSet *)v4->_rewriteRules addObject:location[0]];
  [(NSMutableOrderedSet *)v4->_rewriteRules sortWithOptions:16 usingComparator:&__block_literal_global_104];
  objc_storeStrong(location, 0);
}

uint64_t __35__MCLURLDataLoader_addRewriteRule___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  [location[0] priority];
  v7 = v3;
  [v8 priority];
  if ((v7 - v4) == 0.0)
  {
    v10 = 0;
  }

  else if ((v7 - v4) <= 0.0)
  {
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (void)removeRewriteRule:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSMutableOrderedSet *)v4->_rewriteRules removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeRewriteRulesWithName:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  rewriteRules = v12->_rewriteRules;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __47__MCLURLDataLoader_removeRewriteRulesWithName___block_invoke;
  v8 = &unk_2797EEA78;
  v9 = MEMORY[0x277D82BE0](location[0]);
  v10 = [(NSMutableOrderedSet *)rewriteRules indexesOfObjectsPassingTest:?];
  [(NSMutableOrderedSet *)v12->_rewriteRules removeObjectsAtIndexes:v10];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

uint64_t __47__MCLURLDataLoader_removeRewriteRulesWithName___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [location[0] name];
  v5 = [v4 isEqualToString:a1[4]];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)removeRewriteRules:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSMutableOrderedSet *)v4->_rewriteRules removeObjectsInArray:location[0]];
  objc_storeStrong(location, 0);
}

- (void)applyRewriteRules:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(MCLURLDataLoader *)v4 processURLRequestRewrite:location[0]];
  objc_storeStrong(location, 0);
}

- (void)applicationDidEnterBackgroundNotification:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v15->_backgroundTaskIdentifier == *MEMORY[0x277D767B0])
  {
    v13 = 0;
    [(NSRecursiveLock *)v15->_taskQueueLock lock];
    v6 = [(NSMutableDictionary *)v15->_activeTasks count];
    v13 = v6 + [(NSMutableArray *)v15->_taskQueue count]!= 0;
    [(NSRecursiveLock *)v15->_taskQueueLock unlock];
    if (v13)
    {
      v5 = [MEMORY[0x277D75128] sharedApplication];
      v4 = [objc_opt_class() description];
      v7 = MEMORY[0x277D85DD0];
      v8 = -1073741824;
      v9 = 0;
      v10 = __62__MCLURLDataLoader_applicationDidEnterBackgroundNotification___block_invoke;
      v11 = &unk_2797EE220;
      v12 = MEMORY[0x277D82BE0](v15);
      v3 = [v5 beginBackgroundTaskWithName:v4 expirationHandler:&v7];
      v15->_backgroundTaskIdentifier = v3;
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v12, 0);
    }

    if (v15->_backgroundTaskIdentifier == *MEMORY[0x277D767B0])
    {
      [(MCLURLDataLoader *)v15 suspend];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)applicationWillEnterForegroundNotification:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(MCLURLDataLoader *)v4 notifyBackgroundStopped];
  v4->_resuming = 1;
  [(MCLURLDataLoader *)v4 resume];
  objc_storeStrong(location, 0);
}

- (void)applicationDidBecomeActiveNotification:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4->_resuming = 0;
  [(MCLURLDataLoader *)v4 resume];
  objc_storeStrong(location, 0);
}

- (void)suspend
{
  v10 = self;
  location[1] = a2;
  if (!self->_suspended)
  {
    v10->_suspended = 1;
    objc_initWeak(location, v10);
    operationQueue = v10->_operationQueue;
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __27__MCLURLDataLoader_suspend__block_invoke;
    v7 = &unk_2797EE450;
    objc_copyWeak(&v8, location);
    [(NSOperationQueue *)operationQueue addOperationWithBlock:&v3];
    objc_destroyWeak(&v8);
    objc_destroyWeak(location);
  }
}

uint64_t __27__MCLURLDataLoader_suspend__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained operationSuspendSession];
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)resume
{
  v10 = self;
  location[1] = a2;
  if (self->_suspended)
  {
    objc_initWeak(location, v10);
    operationQueue = v10->_operationQueue;
    v3 = MEMORY[0x277D85DD0];
    v4 = -1073741824;
    v5 = 0;
    v6 = __26__MCLURLDataLoader_resume__block_invoke;
    v7 = &unk_2797EE450;
    objc_copyWeak(&v8, location);
    [(NSOperationQueue *)operationQueue addOperationWithBlock:&v3];
    objc_destroyWeak(&v8);
    objc_destroyWeak(location);
  }
}

uint64_t __26__MCLURLDataLoader_resume__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained operationResumeSession];
  return MEMORY[0x277D82BD8](WeakRetained);
}

+ (void)restart:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [shared internalRestart:location[0]];
  objc_storeStrong(location, 0);
}

- (void)internalRestart:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = [MEMORY[0x277CCABD8] currentQueue];
  v15->_suspended = 1;
  objc_initWeak(&v12, v15);
  operationQueue = v15->_operationQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __36__MCLURLDataLoader_internalRestart___block_invoke;
  v8 = &unk_2797EEAA0;
  objc_copyWeak(&v11, &v12);
  v9 = MEMORY[0x277D82BE0](v13);
  v10 = MEMORY[0x277D82BE0](location[0]);
  [(NSOperationQueue *)operationQueue addOperationWithBlock:&v4];
  [(NSOperationQueue *)v15->_operationQueue waitUntilAllOperationsAreFinished];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v12);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

uint64_t __36__MCLURLDataLoader_internalRestart___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained operationRestartSession];
  MEMORY[0x277D82BD8](WeakRetained);
  return [*(a1 + 32) addOperationWithBlock:*(a1 + 40)];
}

- (void)notifyBackgroundStopped
{
  if (self->_backgroundTaskIdentifier != *MEMORY[0x277D767B0])
  {
    v2 = [MEMORY[0x277D75128] sharedApplication];
    [v2 endBackgroundTask:self->_backgroundTaskIdentifier];
    MEMORY[0x277D82BD8](v2);
    self->_backgroundTaskIdentifier = *MEMORY[0x277D767B0];
  }
}

- (void)notifyEmptyQueue
{
  if (!self->_resuming)
  {
    v2 = [MEMORY[0x277D75128] sharedApplication];
    v3 = [v2 applicationState];
    MEMORY[0x277D82BD8](v2);
    if (v3 == 2)
    {
      [(MCLURLDataLoader *)self suspend];
    }
  }
}

- (void)notifyEnqueue
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v5 = 0;
  v4 = 0;
  if ([v3 applicationState] == 2)
  {
    v6 = [MEMORY[0x277D75128] sharedApplication];
    v5 = 1;
    [v6 backgroundTimeRemaining];
    v4 = v2 > 5.0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  MEMORY[0x277D82BD8](v3);
  if (v4)
  {
    [(MCLURLDataLoader *)self resume];
  }
}

- (int64_t)priorityForCategory:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(NSMutableDictionary *)v7->_priorities objectForKeyedSubscript:location[0]];
  v5 = [v4 integerValue];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)setPriority:(int64_t)a3 forCategory:(id)a4
{
  v27 = self;
  v26 = a2;
  v25 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v8 = [(NSMutableDictionary *)v27->_priorities objectForKeyedSubscript:location];
  v9 = [v8 integerValue];
  MEMORY[0x277D82BD8](v8);
  v23[1] = v9;
  if (v9 != v25)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:v25];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v4);
    [(NSRecursiveLock *)v27->_taskQueueLock lock];
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    v23[0] = [v5 initWithCapacity:{-[NSMutableArray count](v27->_taskQueue, "count")}];
    taskQueue = v27->_taskQueue;
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __44__MCLURLDataLoader_setPriority_forCategory___block_invoke;
    v20 = &unk_2797EEAC8;
    v21 = MEMORY[0x277D82BE0](location);
    v22 = MEMORY[0x277D82BE0](v23[0]);
    [(NSMutableArray *)taskQueue enumerateObjectsUsingBlock:&v16];
    [(NSRecursiveLock *)v27->_taskQueueLock unlock];
    v7 = v23[0];
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __44__MCLURLDataLoader_setPriority_forCategory___block_invoke_2;
    v14 = &unk_2797EEAF0;
    v15 = MEMORY[0x277D82BE0](v27);
    [v7 enumerateObjectsUsingBlock:&v10];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(v23, 0);
  }

  objc_storeStrong(&location, 0);
}

void __44__MCLURLDataLoader_setPriority_forCategory___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] category];
  v4 = [v3 isEqualToString:*(a1 + 32)];
  MEMORY[0x277D82BD8](v3);
  if (v4)
  {
    [*(a1 + 40) addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

void __44__MCLURLDataLoader_setPriority_forCategory___block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] enqueueTask:location[0] reschedule:1];
  objc_storeStrong(location, 0);
}

- (id)loadRequest:(id)a3 category:(id)a4 completionHandler:(id)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v8 = [(MCLURLDataLoader *)v12 loadRequest:location[0] category:v10 completionHandler:v9 receiveData:0];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)loadRequest:(id)a3 category:(id)a4 completionHandler:(id)a5 receiveData:(id)a6
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = 0;
  objc_storeStrong(&v14, a6);
  if (v16)
  {
    v9 = v16;
  }

  else
  {
    v9 = &stru_28677B088;
  }

  objc_storeStrong(&v16, v9);
  v6 = [MCLURLDataLoaderTask alloc];
  v13 = [MCLURLDataLoaderTask initWithURLRequest:v6 targetPath:"initWithURLRequest:targetPath:category:completionHandler:receiveData:" category:location[0] completionHandler:? receiveData:?];
  [(MCLURLDataLoader *)v18 enqueueTask:v13 reschedule:0];
  v8 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)loadURL:(id)a3 category:(id)a4 completionHandler:(id)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v8 = v14;
  v9 = [MEMORY[0x277CCAD20] requestWithURL:location[0]];
  v10 = [MCLURLDataLoader loadRequest:v8 category:"loadRequest:category:completionHandler:" completionHandler:?];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (id)downloadRequest:(id)a3 toPath:(id)a4 category:(id)a5 completionHandler:(id)a6
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = 0;
  objc_storeStrong(&v14, a6);
  if (v15)
  {
    v9 = v15;
  }

  else
  {
    v9 = &stru_28677B088;
  }

  objc_storeStrong(&v15, v9);
  v6 = [MCLURLDataLoaderTask alloc];
  v13 = [(MCLURLDataLoaderTask *)v6 initWithURLRequest:location[0] targetPath:v16 category:v15 completionHandler:v14 receiveData:?];
  [(MCLURLDataLoader *)v18 enqueueTask:v13 reschedule:0];
  v8 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)downloadURL:(id)a3 toPath:(id)a4 category:(id)a5 completionHandler:(id)a6
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  objc_storeStrong(&v13, a6);
  v10 = v17;
  v11 = [MEMORY[0x277CCAD20] requestWithURL:location[0]];
  v12 = [MCLURLDataLoader downloadRequest:v10 toPath:"downloadRequest:toPath:category:completionHandler:" category:? completionHandler:?];
  MEMORY[0x277D82BD8](v11);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v12;
}

- (id)downloadRequest:(id)a3 category:(id)a4 completionHandler:(id)a5
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = 0;
  objc_storeStrong(&v17, a5);
  downloadCacheDirectory = v20->_downloadCacheDirectory;
  v13 = [location[0] URL];
  v12 = [MCLURLDataLoader uniqueKeyForURL:?];
  v16 = [(NSString *)downloadCacheDirectory stringByAppendingPathComponent:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v14 = [(NSString *)v16 pathExtension];
  v15 = [(NSString *)v14 length];
  MEMORY[0x277D82BD8](v14);
  if (!v15)
  {
    v5 = [(NSString *)v16 stringByAppendingPathExtension:@"[content_type]"];
    v6 = v16;
    v16 = v5;
    MEMORY[0x277D82BD8](v6);
  }

  v8 = [(MCLURLDataLoader *)v20 downloadRequest:location[0] toPath:v16 category:v18 completionHandler:v17];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)downloadURL:(id)a3 category:(id)a4 completionHandler:(id)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v8 = v14;
  v9 = [MEMORY[0x277CCAD20] requestWithURL:location[0]];
  v10 = [MCLURLDataLoader downloadRequest:v8 category:"downloadRequest:category:completionHandler:" completionHandler:?];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (void)cancelTask:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] setCancelled:1];
  objc_initWeak(&v11, v13);
  operationQueue = v13->_operationQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __31__MCLURLDataLoader_cancelTask___block_invoke;
  v8 = &unk_2797EEA08;
  objc_copyWeak(&v10, &v11);
  v9 = MEMORY[0x277D82BE0](location[0]);
  [(NSOperationQueue *)operationQueue addOperationWithBlock:&v4];
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v11);
  objc_storeStrong(location, 0);
}

uint64_t __31__MCLURLDataLoader_cancelTask___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained operationCancelTask:*(a1 + 32)];
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)cancelTasks:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] enumerateObjectsUsingBlock:&__block_literal_global_112];
  objc_initWeak(&from, v15);
  v5 = [location[0] copy];
  v3 = location[0];
  location[0] = v5;
  MEMORY[0x277D82BD8](v3);
  operationQueue = v15->_operationQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __32__MCLURLDataLoader_cancelTasks___block_invoke_2;
  v10 = &unk_2797EEB60;
  v11 = MEMORY[0x277D82BE0](location[0]);
  objc_copyWeak(v12, &from);
  [(NSOperationQueue *)operationQueue addOperationWithBlock:&v6];
  objc_destroyWeak(v12);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

void __32__MCLURLDataLoader_cancelTasks___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [location[0] setCancelled:1];
  objc_storeStrong(location, 0);
}

void __32__MCLURLDataLoader_cancelTasks___block_invoke_2(uint64_t a1)
{
  v7[2] = a1;
  v7[1] = a1;
  v1 = *(a1 + 32);
  v2 = MEMORY[0x277D85DD0];
  v3 = -1073741824;
  v4 = 0;
  v5 = __32__MCLURLDataLoader_cancelTasks___block_invoke_3;
  v6 = &unk_2797EEB38;
  objc_copyWeak(v7, (a1 + 40));
  [v1 enumerateObjectsUsingBlock:&v2];
  objc_destroyWeak(v7);
}

void __32__MCLURLDataLoader_cancelTasks___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained operationCancelTask:location[0]];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(location, 0);
}

- (void)setCategory:(id)a3 forTask:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v5 = [v7 category];
  v6 = [v5 isEqualToString:location[0]];
  MEMORY[0x277D82BD8](v5);
  if ((v6 & 1) == 0)
  {
    [v7 setCategory:location[0]];
    [(MCLURLDataLoader *)v9 enqueueTask:v7 reschedule:1];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)setCategory:(id)a3 forTasks:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v5 = v13;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __41__MCLURLDataLoader_setCategory_forTasks___block_invoke;
  v10 = &unk_2797EEAC8;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](v15);
  [v5 enumerateObjectsUsingBlock:?];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __41__MCLURLDataLoader_setCategory_forTasks___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] category];
  v4 = [v3 isEqualToString:*(a1 + 32)];
  MEMORY[0x277D82BD8](v3);
  if ((v4 & 1) == 0)
  {
    [location[0] setCategory:*(a1 + 32)];
    [*(a1 + 40) enqueueTask:location[0] reschedule:1];
  }

  objc_storeStrong(location, 0);
}

+ (id)uniqueKeyForURL:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = [location[0] absoluteString];
  MEMORY[0x277D82BD8](0);
  v3 = v22;
  v21 = [v22 UTF8String];
  if (v21)
  {
    v4 = strlen(v21);
    v19 = XXH64(v21, v4, 0);
    v13 = [location[0] path];
    v16 = 0;
    if (v13)
    {
      v5 = MEMORY[0x277D82BE0](v13);
    }

    else
    {
      v17 = [location[0] resourceSpecifier];
      v16 = 1;
      v5 = MEMORY[0x277D82BE0](v17);
    }

    v18 = v5;
    if (v16)
    {
      MEMORY[0x277D82BD8](v17);
    }

    MEMORY[0x277D82BD8](v13);
    v15 = [v18 lastPathComponent];
    v14 = [v15 pathExtension];
    v12 = [v15 stringByDeletingPathExtension];
    v6 = [v12 stringByAppendingFormat:@"-%llX", v19];
    v7 = v15;
    v15 = v6;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v12);
    if ([v14 length])
    {
      v8 = [v15 stringByAppendingPathExtension:v14];
      v9 = v15;
      v15 = v8;
      MEMORY[0x277D82BD8](v9);
    }

    v24 = MEMORY[0x277D82BE0](v15);
    v20 = 1;
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v18, 0);
  }

  else
  {
    v24 = 0;
    v20 = 1;
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  v10 = v24;

  return v10;
}

- (NSSet)cacheLocations
{
  v3 = MEMORY[0x277CBEB98];
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v5 arrayForKey:@"MCLURLDataLoader.cacheLocations"];
  v6 = [v3 setWithArray:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (void)configureSession
{
  if (!self->_session)
  {
    v4 = MEMORY[0x277CCAD30];
    v6 = [(MCLURLDataLoader *)self defaultSessionConfiguration];
    v5 = [(MCLURLDataLoader *)self operationQueue];
    v2 = [v4 sessionWithConfiguration:v6 delegate:self delegateQueue:?];
    session = self->_session;
    self->_session = v2;
    MEMORY[0x277D82BD8](session);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    v7 = [objc_opt_class() description];
    [(NSURLSession *)self->_session setSessionDescription:?];
    MEMORY[0x277D82BD8](v7);
  }
}

- (id)defaultSessionConfiguration
{
  v7 = self;
  v6[1] = a2;
  v6[0] = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [(MCLURLDataLoader *)v7 configureSession:v6[0]];
  v3 = _sessionConfigurators;
  v5 = MEMORY[0x277D82BE0](v6[0]);
  [v3 enumerateObjectsUsingBlock:?];
  v4 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v6, 0);

  return v4;
}

void __47__MCLURLDataLoader_defaultSessionConfiguration__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  (*(location[0] + 2))(location[0], a1[4]);
  objc_storeStrong(location, 0);
}

- (void)configureSession:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] setTimeoutIntervalForRequest:15.0];
  [location[0] setTimeoutIntervalForResource:36000.0];
  [location[0] setNetworkServiceType:?];
  [location[0] setAllowsCellularAccess:1];
  [location[0] setHTTPShouldUsePipelining:1];
  [location[0] setHTTPShouldSetCookies:1];
  [location[0] setHTTPCookieStorage:v5->_cookieStorage];
  [location[0] setHTTPCookieAcceptPolicy:1];
  [location[0] setHTTPAdditionalHeaders:0];
  [location[0] setHTTPMaximumConnectionsPerHost:10];
  v3 = [(MCLURLDataLoader *)v5 cache];
  [location[0] setURLCache:?];
  MEMORY[0x277D82BD8](v3);
  [location[0] setRequestCachePolicy:0];
  objc_storeStrong(location, 0);
}

- (NSOperationQueue)operationQueue
{
  if (!self->_operationQueue)
  {
    v2 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = self->_operationQueue;
    self->_operationQueue = v2;
    MEMORY[0x277D82BD8](operationQueue);
    v6 = self->_operationQueue;
    v7 = [objc_opt_class() description];
    [(NSOperationQueue *)v6 setName:?];
    MEMORY[0x277D82BD8](v7);
    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:1];
    v8 = dispatch_get_global_queue(2, 0);
    [(NSOperationQueue *)self->_operationQueue setUnderlyingQueue:?];
    MEMORY[0x277D82BD8](v8);
    [(NSOperationQueue *)self->_operationQueue setQualityOfService:25];
  }

  v4 = self->_operationQueue;

  return v4;
}

- (void)operationCancelTask:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSRecursiveLock *)v12->_taskQueueLock lock];
  [(NSMutableArray *)v12->_taskQueue removeObject:location[0]];
  [(NSMutableOrderedSet *)v12->_duplicateTasks removeObject:location[0]];
  [(NSRecursiveLock *)v12->_taskQueueLock unlock];
  sessionTasks = v12->_sessionTasks;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __40__MCLURLDataLoader_operationCancelTask___block_invoke;
  v8 = &unk_2797EEBD8;
  v9 = MEMORY[0x277D82BE0](v12);
  v10 = MEMORY[0x277D82BE0](location[0]);
  [(NSMutableArray *)sessionTasks enumerateObjectsUsingBlock:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __40__MCLURLDataLoader_operationCancelTask___block_invoke(id *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = a3;
  v16 = a4;
  v15[1] = a1;
  v15[0] = [a1[4] loaderTaskForSessionTask:location[0]];
  if (v15[0] == a1[5])
  {
    if ([a1[5] download] & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_respondsToSelector())
    {
      v4 = location[0];
      v8 = MEMORY[0x277D85DD0];
      v9 = -1073741824;
      v10 = 0;
      v11 = __40__MCLURLDataLoader_operationCancelTask___block_invoke_2;
      v12 = &unk_2797EEBB0;
      v13 = MEMORY[0x277D82BE0](a1[4]);
      v14 = MEMORY[0x277D82BE0](a1[5]);
      [v4 cancelByProducingResumeData:&v8];
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v13, 0);
    }

    else
    {
      [location[0] cancel];
    }

    *v16 = 1;
  }

  objc_storeStrong(v15, 0);
  objc_storeStrong(location, 0);
}

void __40__MCLURLDataLoader_operationCancelTask___block_invoke_2(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) storeResumeData:location[0] forTask:*(a1 + 40)];
  objc_storeStrong(location, 0);
}

- (void)enqueueTask:(id)a3 reschedule:(BOOL)a4
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = a4;
  [(NSRecursiveLock *)v29->_taskQueueLock lock];
  if (a4)
  {
    if (([(NSMutableArray *)v29->_taskQueue containsObject:location[0]]& 1) == 0)
    {
      [(NSRecursiveLock *)v29->_taskQueueLock unlock];
      v26 = 1;
      goto LABEL_8;
    }

    [(NSMutableArray *)v29->_taskQueue removeObject:location[0]];
  }

  taskQueue = v29->_taskQueue;
  v6 = location[0];
  v4 = [(NSMutableArray *)taskQueue count];
  v31 = 0;
  v30 = v4;
  v32 = 0;
  v33 = v4;
  v23 = 0;
  v24 = v4;
  v17 = MEMORY[0x277D85DD0];
  v18 = -1073741824;
  v19 = 0;
  v20 = __43__MCLURLDataLoader_enqueueTask_reschedule___block_invoke;
  v21 = &unk_2797EEC00;
  v22 = MEMORY[0x277D82BE0](v29);
  v25 = [(NSMutableArray *)taskQueue indexOfObject:v6 inSortedRange:v23 options:v24 usingComparator:1536, &v17];
  [(NSMutableArray *)v29->_taskQueue insertObject:location[0] atIndex:v25];
  v8 = v25;
  v27 = v8 == [(NSMutableArray *)v29->_taskQueue count]- 1;
  [(NSRecursiveLock *)v29->_taskQueueLock unlock];
  [(MCLURLDataLoader *)v29 notifyEnqueue];
  if (v27)
  {
    objc_initWeak(&v16, v29);
    operationQueue = v29->_operationQueue;
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __43__MCLURLDataLoader_enqueueTask_reschedule___block_invoke_2;
    v14 = &unk_2797EE450;
    objc_copyWeak(&v15, &v16);
    [(NSOperationQueue *)operationQueue addOperationWithBlock:&v10];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v16);
  }

  objc_storeStrong(&v22, 0);
  v26 = 0;
LABEL_8:
  objc_storeStrong(location, 0);
}

uint64_t __43__MCLURLDataLoader_enqueueTask_reschedule___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v6 = a1[4];
  v11 = [location[0] category];
  v9 = [v6 priorityForCategory:?];
  v8 = a1[4];
  v10 = [v13 category];
  v12 = v9 - [v8 priorityForCategory:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  if (v12)
  {
    v3 = -1;
    if (v12 > 0)
    {
      v3 = 1;
    }

    v15 = v3;
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v15;
}

uint64_t __43__MCLURLDataLoader_enqueueTask_reschedule___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained operationReschedule];
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)operationReschedule
{
  v37 = self;
  v36[1] = a2;
  if (!self->_suspended && [(NSMutableDictionary *)v37->_activeTasks count]< 0x14)
  {
    [(NSRecursiveLock *)v37->_taskQueueLock lock];
    v36[0] = [(NSMutableArray *)v37->_taskQueue lastObject];
    if (v37->_session && v36[0] && (v16 = [(NSMutableDictionary *)v37->_activeTasks count], v16 < [(MCLURLDataLoader *)v37 connectionsLimitForPriorityOfTask:v36[0]]))
    {
      [(NSMutableArray *)v37->_taskQueue removeLastObject];
      [(NSRecursiveLock *)v37->_taskQueueLock unlock];
      v30 = 0;
      v31 = &v30;
      v32 = 0x20000000;
      v33 = 32;
      v34 = 0;
      activeTasks = v37->_activeTasks;
      v24 = MEMORY[0x277D85DD0];
      v25 = -1073741824;
      v26 = 0;
      v27 = __39__MCLURLDataLoader_operationReschedule__block_invoke;
      v28 = &unk_2797EEC28;
      v29[0] = MEMORY[0x277D82BE0](v36[0]);
      v29[1] = &v30;
      [(NSMutableDictionary *)activeTasks enumerateKeysAndObjectsUsingBlock:&v24];
      if (v31[3])
      {
        [(NSMutableOrderedSet *)v37->_duplicateTasks addObject:v36[0]];
        v35 = 1;
      }

      else if (v37->_session)
      {
        v23 = 0;
        location = 0;
        v20 = 0;
        v13 = [(MCLURLDataLoader *)v37 configuredURLRequestForTask:v36[0] download:&v23 resumeData:&v20];
        objc_storeStrong(&location, v20);
        v21 = v13;
        v18 = 0;
        v14 = 0;
        if (v23)
        {
          v19 = [v36[0] receiveDataHandler];
          v18 = 1;
          v14 = v19 == 0;
        }

        v23 = v14;
        if (v18)
        {
          MEMORY[0x277D82BD8](v19);
        }

        [v36[0] setRequest:v21];
        v17 = 0;
        if (location)
        {
          v2 = [(NSURLSession *)v37->_session downloadTaskWithResumeData:location];
          v3 = v17;
          v17 = v2;
          MEMORY[0x277D82BD8](v3);
        }

        else
        {
          if (v23)
          {
            v4 = [(NSURLSession *)v37->_session downloadTaskWithRequest:v21];
          }

          else
          {
            v4 = [(NSURLSession *)v37->_session dataTaskWithRequest:v21];
          }

          v5 = v17;
          v17 = v4;
          MEMORY[0x277D82BD8](v5);
        }

        if (v17)
        {
          v11 = v36[0];
          v12 = v37->_activeTasks;
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "taskIdentifier")}];
          [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:?];
          MEMORY[0x277D82BD8](v10);
          v9 = v37;
          v8 = [v36[0] category];
          if ([(MCLURLDataLoader *)v9 priorityForCategory:?]<= 0)
          {
            v7 = *MEMORY[0x277CCA790];
          }

          else
          {
            v7 = *MEMORY[0x277CCA798];
          }

          LODWORD(v6) = v7;
          [v17 setPriority:v6];
          MEMORY[0x277D82BD8](v8);
          [(NSMutableArray *)v37->_sessionTasks addObject:v17];
          [v17 resume];
        }

        [(MCLURLDataLoader *)v37 operationReschedule];
        objc_storeStrong(&v17, 0);
        objc_storeStrong(&v21, 0);
        objc_storeStrong(&location, 0);
        v35 = 0;
      }

      else
      {
        v35 = 1;
      }

      objc_storeStrong(v29, 0);
      _Block_object_dispose(&v30, 8);
    }

    else
    {
      [(NSRecursiveLock *)v37->_taskQueueLock unlock];
      if (!v36[0] && ![(NSMutableDictionary *)v37->_activeTasks count])
      {
        [(MCLURLDataLoader *)v37 notifyEmptyQueue];
      }

      v35 = 1;
    }

    objc_storeStrong(v36, 0);
  }
}

void __39__MCLURLDataLoader_operationReschedule__block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  if ([MCLURLDataLoader task:v7 equalsToTask:a1[4]])
  {
    *(*(a1[5] + 8) + 24) = 1;
    *a4 = 1;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)operationSuspendSession
{
  v17 = self;
  v16[1] = a2;
  [(NSRecursiveLock *)self->_taskQueueLock lock];
  v2 = [(NSMutableDictionary *)v17->_activeTasks allValues];
  v11[1] = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __43__MCLURLDataLoader_operationSuspendSession__block_invoke;
  v15 = &unk_2797EEAF0;
  v16[0] = MEMORY[0x277D82BE0](v17);
  [v2 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v2);
  duplicateTasks = v17->_duplicateTasks;
  v10[1] = MEMORY[0x277D85DD0];
  v10[2] = 3221225472;
  v10[3] = __43__MCLURLDataLoader_operationSuspendSession__block_invoke_2;
  v10[4] = &unk_2797EEAF0;
  v11[0] = MEMORY[0x277D82BE0](v17);
  [(NSMutableOrderedSet *)duplicateTasks enumerateObjectsUsingBlock:?];
  [(NSRecursiveLock *)v17->_taskQueueLock unlock];
  [(NSMutableOrderedSet *)v17->_duplicateTasks removeAllObjects];
  sessionTasks = v17->_sessionTasks;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __43__MCLURLDataLoader_operationSuspendSession__block_invoke_3;
  v9 = &unk_2797EEC50;
  v10[0] = MEMORY[0x277D82BE0](v17);
  [(NSMutableArray *)sessionTasks enumerateObjectsUsingBlock:?];
  [(NSMutableDictionary *)v17->_activeTasks removeAllObjects];
  [(MCLURLDataLoader *)v17 notifyBackgroundStopped];
  objc_storeStrong(v10, 0);
  objc_storeStrong(v11, 0);
  objc_storeStrong(v16, 0);
}

void __43__MCLURLDataLoader_operationSuspendSession__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] enqueueTask:location[0] reschedule:0];
  objc_storeStrong(location, 0);
}

void __43__MCLURLDataLoader_operationSuspendSession__block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] enqueueTask:location[0] reschedule:0];
  objc_storeStrong(location, 0);
}

void __43__MCLURLDataLoader_operationSuspendSession__block_invoke_3(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15[3] = a3;
  v15[2] = a4;
  v15[1] = a1;
  v15[0] = [a1[4] loaderTaskForSessionTask:location[0]];
  if ([v15[0] download] & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_respondsToSelector())
  {
    v4 = location[0];
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __43__MCLURLDataLoader_operationSuspendSession__block_invoke_4;
    v12 = &unk_2797EEBB0;
    v13 = MEMORY[0x277D82BE0](a1[4]);
    v14 = MEMORY[0x277D82BE0](v15[0]);
    [v4 cancelByProducingResumeData:&v8];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
  }

  else
  {
    [location[0] cancel];
  }

  objc_storeStrong(v15, 0);
  objc_storeStrong(location, 0);
}

void __43__MCLURLDataLoader_operationSuspendSession__block_invoke_4(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) storeResumeData:location[0] forTask:*(a1 + 40)];
  objc_storeStrong(location, 0);
}

- (void)operationRestartSession
{
  v3 = self;
  v2[1] = a2;
  [(MCLURLDataLoader *)self operationSuspendSession];
  v2[0] = MEMORY[0x277D82BE0](v3->_session);
  objc_storeStrong(&v3->_session, 0);
  [v2[0] invalidateAndCancel];
  [(MCLURLDataLoader *)v3 configureSession];
  [(MCLURLDataLoader *)v3 operationResumeSession];
  objc_storeStrong(v2, 0);
}

+ (BOOL)task:(id)a3 equalsToTask:(id)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v7 = [location[0] URL];
  v8 = [v22 URL];
  v20 = 0;
  v18 = 0;
  v16 = 0;
  v14 = 0;
  v12 = 0;
  v10 = 0;
  v9 = 0;
  if ([v7 isEqual:?])
  {
    v21 = [location[0] targetPath];
    v20 = 1;
    v19 = [v22 targetPath];
    v18 = 1;
    v5 = 1;
    if (v21 != v19)
    {
      v17 = [location[0] targetPath];
      v16 = 1;
      v15 = [v17 stringByDeletingPathExtension];
      v14 = 1;
      v13 = [v22 targetPath];
      v12 = 1;
      v11 = [v13 stringByDeletingPathExtension];
      v10 = 1;
      v5 = [v15 isEqualToString:?];
    }

    v9 = v5;
  }

  v24 = v9 & 1;
  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](v17);
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](v19);
  }

  if (v20)
  {
    MEMORY[0x277D82BD8](v21);
  }

  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  return v24 & 1;
}

- (id)duplicateTasksForTask:(id)a3
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  duplicateTasks = v30->_duplicateTasks;
  v21 = MEMORY[0x277D85DD0];
  v22 = -1073741824;
  v23 = 0;
  v24 = __42__MCLURLDataLoader_duplicateTasksForTask___block_invoke;
  v25 = &unk_2797EEAC8;
  v26 = MEMORY[0x277D82BE0](location[0]);
  v27 = MEMORY[0x277D82BE0](v28);
  [(NSMutableOrderedSet *)duplicateTasks enumerateObjectsUsingBlock:&v21];
  [(NSRecursiveLock *)v30->_taskQueueLock lock];
  v14 = 0;
  v15 = &v14;
  v16 = 838860800;
  v17 = 48;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  taskQueue = v30->_taskQueue;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __42__MCLURLDataLoader_duplicateTasksForTask___block_invoke_127;
  v11 = &unk_2797EEC78;
  v12 = MEMORY[0x277D82BE0](location[0]);
  v13[1] = &v14;
  v13[0] = MEMORY[0x277D82BE0](v28);
  [(NSMutableArray *)taskQueue enumerateObjectsUsingBlock:&v7];
  if (v15[5])
  {
    [(NSMutableArray *)v30->_taskQueue removeObjectsAtIndexes:v15[5]];
  }

  [(NSRecursiveLock *)v30->_taskQueueLock unlock];
  v4 = MEMORY[0x277D82BE0](v28);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  _Block_object_dispose(&v14, 8);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);

  return v4;
}

void __42__MCLURLDataLoader_duplicateTasksForTask___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([MCLURLDataLoader task:*(a1 + 32) equalsToTask:location[0]])
  {
    [*(a1 + 40) addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

void __42__MCLURLDataLoader_duplicateTasksForTask___block_invoke_127(uint64_t a1, void *a2, uint64_t a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([MCLURLDataLoader task:*(a1 + 32) equalsToTask:location[0]])
  {
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
      v4 = *(*(a1 + 48) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;
      MEMORY[0x277D82BD8](v5);
    }

    [*(*(*(a1 + 48) + 8) + 40) addIndex:a3];
    [*(a1 + 40) addObject:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (id)loaderTaskForSessionTask:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  activeTasks = v8->_activeTasks;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(location[0], "taskIdentifier")}];
  v6 = [(NSMutableDictionary *)activeTasks objectForKeyedSubscript:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);

  return v6;
}

+ (void)applyDefaultRequestHeaders:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [v6 stringForKey:@"UserAgentApp"];
  v10 = 0;
  v8 = 0;
  if (v7)
  {
    v3 = MEMORY[0x277D82BE0](v7);
  }

  else
  {
    v11 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = 1;
    v9 = [v11 stringForKey:@"UserAgent"];
    v8 = 1;
    v3 = MEMORY[0x277D82BE0](v9);
  }

  v12 = v3;
  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v6);
  [location[0] setValue:v12 forHTTPHeaderField:@"User-Agent"];
  v4 = [location[0] HTTPMethod];
  v5 = [v4 isEqualToString:@"GET"];
  MEMORY[0x277D82BD8](v4);
  if (v5)
  {
    [location[0] setHTTPMethod:@"GET"];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (id)configuredURLRequestForTask:(id)a3 download:(BOOL *)a4 resumeData:(id *)a5
{
  v95 = *MEMORY[0x277D85DE8];
  v92 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v90 = a4;
  v89 = a5;
  v49 = [location[0] request];
  v88 = [v49 mutableCopy];
  MEMORY[0x277D82BD8](v49);
  v50 = [location[0] request];
  [v50 timeoutInterval];
  [v88 setTimeoutInterval:?];
  MEMORY[0x277D82BD8](v50);
  [objc_opt_class() applyDefaultRequestHeaders:v88];
  [(MCLURLDataLoader *)v92 processURLRequestRewrite:v88];
  v51 = v92;
  v52 = [location[0] category];
  v53 = [(MCLURLDataLoader *)v51 priorityForCategory:?];
  MEMORY[0x277D82BD8](v52);
  v87 = v53;
  if (v53 >= 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 3;
  }

  [v88 setNetworkServiceType:v5];
  [v88 setAllowsCellularAccess:v87 != -2];
  v54 = [v88 HTTPMethod];
  v55 = [v54 isEqualToString:@"GET"];
  MEMORY[0x277D82BD8](v54);
  if (v55)
  {
    v46 = [location[0] receiveDataHandler];
    MEMORY[0x277D82BD8](v46);
    if (v46)
    {
      v93 = MEMORY[0x277D82BE0](v88);
      v86 = 1;
    }

    else
    {
      v85 = [MEMORY[0x277CCAA00] defaultManager];
      if ([location[0] download])
      {
        v84 = [location[0] targetPath];
        if ([v84 hasSuffix:@"[content_type]"])
        {
          v6 = [v84 stringByDeletingPathExtension];
          v7 = v84;
          v84 = v6;
          MEMORY[0x277D82BD8](v7);
          v83 = [v84 lastPathComponent];
          memset(__b, 0, sizeof(__b));
          v42 = v85;
          v43 = [v84 stringByDeletingLastPathComponent];
          obj = [v42 enumeratorAtPath:?];
          MEMORY[0x277D82BD8](v43);
          v45 = [obj countByEnumeratingWithState:__b objects:v94 count:16];
          if (v45)
          {
            v39 = *__b[2];
            v40 = 0;
            v41 = v45;
            while (1)
            {
              v38 = v40;
              if (*__b[2] != v39)
              {
                objc_enumerationMutation(obj);
              }

              v82 = *(__b[1] + 8 * v40);
              v36 = [v82 stringByDeletingPathExtension];
              v37 = [v36 isEqualToString:v83];
              MEMORY[0x277D82BD8](v36);
              if (v37)
              {
                break;
              }

              ++v40;
              if (v38 + 1 >= v41)
              {
                v40 = 0;
                v41 = [obj countByEnumeratingWithState:__b objects:v94 count:16];
                if (!v41)
                {
                  goto LABEL_18;
                }
              }
            }

            v34 = location[0];
            v35 = [v82 pathExtension];
            [v34 applyFileExtension:?];
            MEMORY[0x277D82BD8](v35);
            v86 = 2;
          }

          else
          {
LABEL_18:
            v86 = 0;
          }

          MEMORY[0x277D82BD8](obj);
          objc_storeStrong(&v83, 0);
        }

        objc_storeStrong(&v84, 0);
      }

      v80 = [(MCLURLDataLoader *)v92 _cachedResponseForRequest:v88];
      if (v80)
      {
        v79 = 1;
        if ([v88 cachePolicy])
        {
          [(MCLURLDataLoader *)v92 _removeCachedResponseForRequest:v88];
          v79 = 0;
        }

        else if ([location[0] download])
        {
          v78 = 0;
          v30 = v85;
          v32 = [location[0] targetPath];
          v76 = v78;
          v31 = [v30 attributesOfItemAtPath:? error:?];
          objc_storeStrong(&v78, v76);
          v77 = v31;
          MEMORY[0x277D82BD8](v32);
          v74 = 0;
          v33 = 0;
          if (!v31)
          {
            v29 = v85;
            v75 = [location[0] targetPath];
            v74 = 1;
            v33 = [v29 fileExistsAtPath:?];
          }

          if (v74)
          {
            MEMORY[0x277D82BD8](v75);
          }

          if (v33)
          {
            NSLog(&cfstr_ErrorGettingFi.isa, v78);
          }

          v8 = [(MCLURLDataLoader *)v92 cachableFileAttributes:v77];
          v9 = v77;
          v77 = v8;
          MEMORY[0x277D82BD8](v9);
          v72 = 0;
          v28 = 0;
          if (v77)
          {
            v73 = [v80 userInfo];
            v72 = 1;
            v28 = [v77 isEqualToDictionary:?];
          }

          v79 = v28 & 1;
          if (v72)
          {
            MEMORY[0x277D82BD8](v73);
          }

          if ((v79 & 1) == 0)
          {
            [(MCLURLDataLoader *)v92 _removeCachedResponseForRequest:v88];
            *v90 = 1;
            [v88 setCachePolicy:1];
          }

          objc_storeStrong(&v77, 0);
          objc_storeStrong(&v78, 0);
        }

        else
        {
          v27 = [v80 userInfo];
          MEMORY[0x277D82BD8](v27);
          if (v27)
          {
            [(MCLURLDataLoader *)v92 _removeCachedResponseForRequest:v88];
            [v88 setCachePolicy:1];
            v79 = 0;
          }
        }

        if (v79)
        {
          v24 = [v80 response];
          v71 = [v24 allHeaderFields];
          MEMORY[0x277D82BD8](v24);
          v25 = [v71 objectForKeyedSubscript:@"Cache-Control"];
          v26 = [v25 containsString:@"private"];
          MEMORY[0x277D82BD8](v25);
          v70 = v26;
          if ((v26 & 1) == 0)
          {
            v23 = [v71 objectForKeyedSubscript:@"Etag"];
            v67 = 0;
            if (v23)
            {
              v10 = MEMORY[0x277D82BE0](v23);
            }

            else
            {
              v68 = [v71 objectForKeyedSubscript:@"ETag"];
              v67 = 1;
              v10 = MEMORY[0x277D82BE0](v68);
            }

            v69 = v10;
            if (v67)
            {
              MEMORY[0x277D82BD8](v68);
            }

            MEMORY[0x277D82BD8](v23);
            v22 = [v71 objectForKeyedSubscript:@"Last-Modified"];
            v64 = 0;
            if (v22)
            {
              v11 = MEMORY[0x277D82BE0](v22);
            }

            else
            {
              v65 = [v71 objectForKeyedSubscript:@"Date"];
              v64 = 1;
              v11 = MEMORY[0x277D82BE0](v65);
            }

            v66 = v11;
            if (v64)
            {
              MEMORY[0x277D82BD8](v65);
            }

            MEMORY[0x277D82BD8](v22);
            if ([v69 length])
            {
              [v88 setValue:v69 forHTTPHeaderField:@"If-None-Match"];
            }

            v20 = [v71 objectForKeyedSubscript:@"Expires"];
            v61 = 0;
            v21 = 1;
            if (![v20 length])
            {
              v62 = [v71 objectForKeyedSubscript:@"Cache-Control"];
              v61 = 1;
              v21 = [v62 length] != 0;
            }

            if (v61)
            {
              MEMORY[0x277D82BD8](v62);
            }

            MEMORY[0x277D82BD8](v20);
            v63 = v21;
            if ([v66 length] && (!v63 || !objc_msgSend(v69, "length")))
            {
              [v88 setValue:v66 forHTTPHeaderField:@"If-Modified-Since"];
            }

            objc_storeStrong(&v66, 0);
            objc_storeStrong(&v69, 0);
          }

          objc_storeStrong(&v71, 0);
        }
      }

      else if ([location[0] download])
      {
        [v88 setCachePolicy:1];
        *v90 = 1;
        if (v89)
        {
          v19 = [location[0] targetPath];
          v60 = [v19 stringByAppendingPathExtension:@"partial"];
          MEMORY[0x277D82BD8](v19);
          if ([v85 fileExistsAtPath:v60])
          {
            v59 = 0;
            v12 = objc_alloc(MEMORY[0x277CBEA90]);
            v57 = v59;
            v18 = [v12 initWithContentsOfFile:v60 options:2 error:&v57];
            objc_storeStrong(&v59, v57);
            v58 = v18;
            if (v59)
            {
              NSLog(&cfstr_ErrorReadingRe.isa, v59);
            }

            else if ([objc_opt_class() isValidResumeData:v58])
            {
              v17 = v58;
              v13 = v58;
              *v89 = v17;
            }

            else
            {
              NSLog(&cfstr_CorruptedResum.isa);
            }

            objc_storeStrong(&v58, 0);
            objc_storeStrong(&v59, 0);
          }

          objc_storeStrong(&v60, 0);
        }
      }

      if ([location[0] download])
      {
        v16 = [location[0] targetPath];
        v56 = [v16 stringByAppendingPathExtension:@"partial"];
        MEMORY[0x277D82BD8](v16);
        [v85 removeItemAtPath:v56 error:?];
        objc_storeStrong(&v56, 0);
      }

      v93 = MEMORY[0x277D82BE0](v88);
      v86 = 1;
      objc_storeStrong(&v80, 0);
      objc_storeStrong(&v85, 0);
    }
  }

  else
  {
    [v88 setCachePolicy:1];
    v93 = MEMORY[0x277D82BE0](v88);
    v86 = 1;
  }

  objc_storeStrong(&v88, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v14 = v93;

  return v14;
}

- (void)processURLRequestRewrite:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  rewriteRules = v11->_rewriteRules;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __45__MCLURLDataLoader_processURLRequestRewrite___block_invoke;
  v8 = &unk_2797EECA0;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [(NSMutableOrderedSet *)rewriteRules enumerateObjectsUsingBlock:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __45__MCLURLDataLoader_processURLRequestRewrite___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[3] = a3;
  v12[2] = a4;
  v12[1] = a1;
  v8 = [a1[4] URL];
  v12[0] = [v8 absoluteString];
  MEMORY[0x277D82BD8](v8);
  v4 = [v12[0] length];
  location[3] = 0;
  location[2] = v4;
  location[4] = 0;
  location[5] = v4;
  v10[1] = 0;
  v11 = v4;
  v9 = [location[0] matchPattern];
  v10[0] = [v9 firstMatchInString:v12[0] options:0 range:{0, v11}];
  MEMORY[0x277D82BD8](v9);
  if (v10[0] && [v10[0] range] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [location[0] rewriteURLRequest:a1[4]];
  }

  objc_storeStrong(v10, 0);
  objc_storeStrong(v12, 0);
  objc_storeStrong(location, 0);
}

- (unint64_t)connectionsLimitForPriorityOfTask:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = v8;
  v5 = [location[0] category];
  v6 = [(MCLURLDataLoader *)v4 priorityForCategory:?];
  MEMORY[0x277D82BD8](v5);
  switch(v6)
  {
    case -9223372036854775808:
      v9 = 0;
      break;
    case -2:
      v9 = 1;
      break;
    case -1:
      v9 = 5;
      break;
    default:
      if (v6 && (v6 - 1) <= 1)
      {
        v9 = 20;
      }

      else
      {
        v9 = 10;
      }

      break;
  }

  objc_storeStrong(location, 0);
  return v9;
}

- (id)cachableFileAttributes:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if (location[0])
  {
    v14[0] = *MEMORY[0x277CCA1C0];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(location[0], "fileSize")}];
    v10 = 1;
    v15[0] = v11;
    v14[1] = *MEMORY[0x277CCA150];
    v9 = [location[0] fileModificationDate];
    v8 = 1;
    v15[1] = v9;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v6 = 1;
    v3 = MEMORY[0x277D82BE0](v7);
  }

  else
  {
    v3 = MEMORY[0x277D82BE0](0);
  }

  v13 = v3;
  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v13;

  return v4;
}

- (void)task:(id)a3 completedWithError:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v8 = [v18 domain];
  v9 = 0;
  if ([v8 isEqualToString:*MEMORY[0x277CCA738]])
  {
    v9 = [v18 code] == -999;
  }

  MEMORY[0x277D82BD8](v8);
  if (v9)
  {
    objc_storeStrong(&v18, 0);
    [location[0] setCancelled:1];
  }

  [location[0] applyMimeType];
  [location[0] dispatchCompletion:v18];
  activeTasks = v20->_activeTasks;
  v5 = [(NSMutableDictionary *)activeTasks allKeysForObject:location[0]];
  [(NSMutableDictionary *)activeTasks removeObjectsForKeys:?];
  MEMORY[0x277D82BD8](v5);
  v6 = [(MCLURLDataLoader *)v20 duplicateTasksForTask:location[0]];
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __44__MCLURLDataLoader_task_completedWithError___block_invoke;
  v14 = &unk_2797EECC8;
  v15 = MEMORY[0x277D82BE0](v20);
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17 = MEMORY[0x277D82BE0](v18);
  [v6 enumerateObjectsUsingBlock:&v10];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void __44__MCLURLDataLoader_task_completedWithError___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(*(a1 + 32) + 96) removeObject:location[0]];
  if ([*(a1 + 40) cancelled])
  {
    [*(a1 + 32) enqueueTask:location[0] reschedule:0];
  }

  else
  {
    v3 = [*(a1 + 40) request];
    [location[0] setRequest:?];
    MEMORY[0x277D82BD8](v3);
    v4 = [*(a1 + 40) response];
    [location[0] setResponse:?];
    MEMORY[0x277D82BD8](v4);
    v5 = [*(a1 + 40) responseData];
    [location[0] setResponseData:?];
    MEMORY[0x277D82BD8](v5);
    v2 = [*(a1 + 40) cachedResponse];
    [location[0] setCachedResponse:v2];
    [location[0] applyMimeType];
    [location[0] dispatchCompletion:*(a1 + 48)];
  }

  objc_storeStrong(location, 0);
}

- (id)downloadCachedResponse:(id)a3
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = [location[0] targetPath];
  v20 = 0;
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = v20;
  v13 = [v14 attributesOfItemAtPath:v21 error:&v18];
  objc_storeStrong(&v20, v18);
  v19 = v13;
  MEMORY[0x277D82BD8](v14);
  if (v19)
  {
    v12 = [v19 fileSize];
    v10 = [location[0] response];
    v11 = [v10 expectedContentLength];
    MEMORY[0x277D82BD8](v10);
    if (v12 == v11)
    {
      v3 = [(MCLURLDataLoader *)v23 cachableFileAttributes:v19];
      v4 = v19;
      v19 = v3;
      MEMORY[0x277D82BD8](v4);
      v16 = [objc_opt_class() downloadData];
      v8 = objc_opt_class();
      v9 = [location[0] response];
      v15 = [v8 duplicateResponse:v9 withContentLength:{objc_msgSend(v16, "length")}];
      MEMORY[0x277D82BD8](v9);
      v5 = objc_alloc(MEMORY[0x277CCA8F0]);
      v24 = [v5 initWithResponse:v15 data:v16 userInfo:v19 storagePolicy:0];
      v17 = 1;
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
    }

    else
    {
      v24 = 0;
      v17 = 1;
    }
  }

  else
  {
    if (v20)
    {
      NSLog(&cfstr_ErrorGettingFi.isa, v20);
    }

    v24 = 0;
    v17 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  v6 = v24;

  return v6;
}

+ (id)downloadData
{
  v5 = &downloadData_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_184);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = downloadData_staticData;

  return v2;
}

uint64_t __32__MCLURLDataLoader_downloadData__block_invoke(uint64_t a1)
{
  v1 = [@"DOWNLOAD" dataUsingEncoding:{4, a1, a1}];
  v2 = downloadData_staticData;
  downloadData_staticData = v1;
  return MEMORY[0x277D82BD8](v2);
}

+ (id)duplicateResponse:(id)a3 withContentLength:(int64_t)a4
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = a4;
  v7 = [location[0] allHeaderFields];
  v12 = [v7 mutableCopy];
  MEMORY[0x277D82BD8](v7);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", v13];
  [v12 setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v8);
  v9 = objc_alloc(MEMORY[0x277CCAA40]);
  v10 = [location[0] URL];
  v4 = [location[0] statusCode];
  v11 = [v9 initWithURL:v10 statusCode:v4 HTTPVersion:@"HTTP/1.1" headerFields:v12];
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (void)updateDownloadCacheEntry:(id)a3
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = [location[0] request];
  v22 = 0;
  v13 = 0;
  if ([location[0] responseOk])
  {
    v23 = [v24 HTTPMethod];
    v22 = 1;
    v13 = [v23 isEqualToString:@"GET"];
  }

  if (v22)
  {
    MEMORY[0x277D82BD8](v23);
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_20;
  }

  v9 = [location[0] response];
  v10 = [v9 allHeaderFields];
  v11 = [v10 objectForKeyedSubscript:@"Cache-Control"];
  v20 = 0;
  v18 = 0;
  v16 = 0;
  v12 = 1;
  if (([v11 containsString:@"no-cache"] & 1) == 0)
  {
    v21 = [location[0] response];
    v20 = 1;
    v19 = [v21 allHeaderFields];
    v18 = 1;
    v17 = [v19 objectForKeyedSubscript:@"Pragma"];
    v16 = 1;
    v12 = [v17 containsString:@"no-cache"];
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](v17);
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](v19);
  }

  if (v20)
  {
    MEMORY[0x277D82BD8](v21);
  }

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v9);
  if ((v12 & 1) == 0)
  {
    v14 = [(MCLURLDataLoader *)v26 downloadCachedResponse:location[0]];
    if (v14)
    {
      cache = v26->_cache;
      v6 = [location[0] request];
      [(NSURLCache *)cache storeCachedResponse:v14 forRequest:?];
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      v3 = v26;
      v4 = [location[0] request];
      [(MCLURLDataLoader *)v3 _removeCachedResponseForRequest:?];
      MEMORY[0x277D82BD8](v4);
    }

    objc_storeStrong(&v14, 0);
LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  v7 = v26;
  v8 = [location[0] request];
  [(MCLURLDataLoader *)v7 _removeCachedResponseForRequest:?];
  MEMORY[0x277D82BD8](v8);
  v15 = 1;
LABEL_21:
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)storeResumeData:(id)a3 forTask:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  if (location[0])
  {
    v4 = [v10 targetPath];
    v9 = [v4 stringByAppendingPathExtension:@"partial"];
    MEMORY[0x277D82BD8](v4);
    v8 = 0;
    v7 = 0;
    v5 = [location[0] writeToFile:v9 options:1 error:&v7];
    objc_storeStrong(&v8, v7);
    if ((v5 & 1) == 0)
    {
      NSLog(&cfstr_ErrorWritingRe.isa, v8);
    }

    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

+ (BOOL)isValidResumeData:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (![location[0] length])
  {
    goto LABEL_9;
  }

  v10 = 0;
  v8 = 0;
  v5 = [MEMORY[0x277CCAC58] propertyListWithData:location[0] options:0 format:0 error:&v8];
  objc_storeStrong(&v10, v8);
  v9 = v5;
  if (!v5 || ((v7 = [v9 objectForKey:@"NSURLSessionResumeInfoLocalPath"], !objc_msgSend(v7, "length")) ? (v6 = 0) : (v4 = objc_msgSend(MEMORY[0x277CCAA00], "defaultManager"), v12 = objc_msgSend(v4, "fileExistsAtPath:", v7) & 1, MEMORY[0x277D82BD8](v4), v6 = 1), objc_storeStrong(&v7, 0), !v6))
  {
    v6 = 0;
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  if (!v6)
  {
LABEL_9:
    v12 = 0;
  }

  objc_storeStrong(location, 0);
  return v12 & 1;
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  [(NSRecursiveLock *)v14->_taskQueueLock lock];
  activeTasks = v14->_activeTasks;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __57__MCLURLDataLoader_URLSession_didBecomeInvalidWithError___block_invoke;
  v10 = &unk_2797EECF0;
  v11 = MEMORY[0x277D82BE0](v12);
  [(NSMutableDictionary *)activeTasks enumerateKeysAndObjectsUsingBlock:?];
  [(NSMutableDictionary *)v14->_activeTasks removeAllObjects];
  [(NSMutableArray *)v14->_sessionTasks removeAllObjects];
  [(NSRecursiveLock *)v14->_taskQueueLock unlock];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void __57__MCLURLDataLoader_URLSession_didBecomeInvalidWithError___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [v5 dispatchCompletion:a1[4]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [MEMORY[0x277CCABD8] mainQueue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __69__MCLURLDataLoader_URLSessionDidFinishEventsForBackgroundURLSession___block_invoke;
  v8 = &unk_2797EE220;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [v3 addOperationWithBlock:?];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __69__MCLURLDataLoader_URLSessionDidFinishEventsForBackgroundURLSession___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_getAssociatedObject(a1[4], &BACKGROUND_SESSION_COMPLETION_HANDLER_KEY);
  objc_setAssociatedObject(a1[4], &BACKGROUND_SESSION_COMPLETION_HANDLER_KEY, 0, 0);
  if (location[0])
  {
    (*(location[0] + 2))();
  }

  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  v19 = 0;
  objc_storeStrong(&v19, a5);
  v18 = [(MCLURLDataLoader *)v22 loaderTaskForSessionTask:v20];
  v11 = [v18 response];
  MEMORY[0x277D82BD8](v11);
  if (!v11)
  {
    v8 = [v20 response];
    [v18 setResponse:?];
    MEMORY[0x277D82BD8](v8);
  }

  [(NSMutableArray *)v22->_sessionTasks removeObject:v20];
  v15 = 0;
  v7 = 0;
  if (v19)
  {
    v16 = [v19 domain];
    v15 = 1;
    v7 = 0;
    if ([v16 isEqualToString:*MEMORY[0x277CCA738]])
    {
      v7 = [v19 code] == -999;
    }
  }

  if (v15)
  {
    MEMORY[0x277D82BD8](v16);
  }

  v17 = v7;
  v13 = 0;
  v6 = 0;
  if (!v7)
  {
    objc_opt_class();
    v6 = 0;
    if (objc_opt_isKindOfClass())
    {
      v14 = [v20 response];
      v13 = 1;
      v6 = [v14 expectedContentLength] >= 500000;
    }
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  if (v6)
  {
    v5 = [v19 userInfo];
    v12 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCA788]];
    MEMORY[0x277D82BD8](v5);
    [(MCLURLDataLoader *)v22 storeResumeData:v12 forTask:v18];
    objc_storeStrong(&v12, 0);
  }

  if (!v17 || !v22->_suspended)
  {
    [(MCLURLDataLoader *)v22 task:v18 completedWithError:v19];
    [(MCLURLDataLoader *)v22 operationReschedule];
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v49 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v47 = 0;
  objc_storeStrong(&v47, a4);
  v46 = 0;
  objc_storeStrong(&v46, a5);
  v45 = 0;
  objc_storeStrong(&v45, a6);
  v44 = [(MCLURLDataLoader *)v49 loaderTaskForSessionTask:v47];
  [v44 setResponse:v46];
  if ([v44 cancelled])
  {
    (*(v45 + 2))(v45, 0);
  }

  else if ([v44 download])
  {
    v24 = v49;
    v25 = [v44 request];
    v43 = [(MCLURLDataLoader *)v24 _cachedResponseForRequest:?];
    MEMORY[0x277D82BD8](v25);
    v26 = [v44 originalRequest];
    v41 = 0;
    v27 = 0;
    if (![v26 cachePolicy])
    {
      v42 = [v43 userInfo];
      v41 = 1;
      v27 = v42 != 0;
    }

    if (v41)
    {
      MEMORY[0x277D82BD8](v42);
    }

    MEMORY[0x277D82BD8](v26);
    if (v27)
    {
      v19 = [v44 response];
      v18 = [v19 allHeaderFields];
      v40 = [v18 mutableCopy];
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      v21 = [v43 response];
      v20 = [v21 allHeaderFields];
      v39 = [v20 mutableCopy];
      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v21);
      [v40 removeObjectForKey:?];
      [v39 removeObjectForKey:@"Date"];
      v22 = [MEMORY[0x277CBEB68] null];
      v38 = [v40 objectsForKeys:&unk_286780F40 notFoundMarker:?];
      MEMORY[0x277D82BD8](v22);
      v23 = [MEMORY[0x277CBEB68] null];
      v37 = [v39 objectsForKeys:&unk_286780F58 notFoundMarker:?];
      MEMORY[0x277D82BD8](v23);
      if ([v44 responseOk] & 1) == 0 || (objc_msgSend(v38, "isEqualToArray:", v37))
      {
        if (([v44 responseOk] & 1) != 0 && (objc_msgSend(v40, "isEqualToDictionary:", v39) & 1) == 0)
        {
          [(MCLURLDataLoader *)v49 updateDownloadCacheEntry:v44];
        }

        [v44 setCachedResponse:1];
        (*(v45 + 2))(v45, 0);
      }

      else
      {
        (*(v45 + 2))(v45, 2);
      }

      objc_storeStrong(&v37, 0);
      objc_storeStrong(&v38, 0);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v40, 0);
    }

    else
    {
      (*(v45 + 2))(v45, 2);
    }

    objc_storeStrong(&v43, 0);
  }

  else
  {
    v16 = v49;
    v17 = [v44 request];
    v36 = [(MCLURLDataLoader *)v16 _cachedResponseForRequest:?];
    MEMORY[0x277D82BD8](v17);
    if (v36)
    {
      v11 = [v44 response];
      v10 = [v11 allHeaderFields];
      v35 = [v10 mutableCopy];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      v13 = [v36 response];
      v12 = [v13 allHeaderFields];
      v34 = [v12 mutableCopy];
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      [v35 removeObjectForKey:?];
      [v34 removeObjectForKey:@"Date"];
      v14 = [MEMORY[0x277CBEB68] null];
      v33 = [v35 objectsForKeys:&unk_286780F70 notFoundMarker:?];
      MEMORY[0x277D82BD8](v14);
      v15 = [MEMORY[0x277CBEB68] null];
      v32 = [v34 objectsForKeys:&unk_286780F88 notFoundMarker:?];
      MEMORY[0x277D82BD8](v15);
      if ([v44 responseOk] & 1) != 0 && (objc_msgSend(v33, "isEqualToArray:", v32))
      {
        [v44 setCachedResponse:1];
      }

      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
    }

    v31 = [v44 receiveDataHandler];
    if (v31)
    {
      (*(v31 + 2))(v31, v44, 0);
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x277CBEB28]);
      if ([v46 expectedContentLength])
      {
        if ([v46 expectedContentLength] >= 0xF4240)
        {
          v8 = 1000000;
        }

        else
        {
          v8 = [v46 expectedContentLength];
        }

        v7 = v8;
      }

      else
      {
        v7 = 100000;
      }

      v6 = [v9 initWithCapacity:v7];
      [v44 setResponseData:?];
      MEMORY[0x277D82BD8](v6);
    }

    (*(v45 + 2))(v45, 1);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v36, 0);
  }

  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didBecomeDownloadTask:(id)a5
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = 0;
  objc_storeStrong(&v12, a5);
  v11 = [(MCLURLDataLoader *)v15 loaderTaskForSessionTask:v13];
  activeTasks = v15->_activeTasks;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "taskIdentifier")}];
  [(NSMutableDictionary *)activeTasks removeObjectForKey:?];
  MEMORY[0x277D82BD8](v10);
  if (v11)
  {
    v5 = v15->_activeTasks;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "taskIdentifier")}];
    [(NSMutableDictionary *)v5 setObject:v11 forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v6);
  }

  [(NSMutableArray *)v15->_sessionTasks removeObject:v13];
  [(NSMutableArray *)v15->_sessionTasks addObject:v12];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v10 = [(MCLURLDataLoader *)v14 loaderTaskForSessionTask:v12];
  if ([v10 cancelled])
  {
    [v12 cancel];
    v9 = 1;
  }

  else
  {
    v8 = [v10 receiveDataHandler];
    if (v8)
    {
      (*(v8 + 2))(v8, v10, v11);
    }

    else
    {
      v5 = [v10 responseData];
      [v5 appendData:v11];
      MEMORY[0x277D82BD8](v5);
    }

    objc_storeStrong(&v8, 0);
    v9 = 0;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)a3 dataTask:(id)a4 willCacheResponse:(id)a5 completionHandler:(id)a6
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  v23 = 0;
  objc_storeStrong(&v23, a5);
  v22 = 0;
  objc_storeStrong(&v22, a6);
  v21 = [(MCLURLDataLoader *)v26 loaderTaskForSessionTask:v24];
  v19 = 0;
  v13 = 1;
  if (v21)
  {
    v13 = 1;
    if (([v21 download] & 1) == 0)
    {
      v20 = [v21 receiveDataHandler];
      v19 = 1;
      v13 = v20 != 0;
    }
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](v20);
  }

  if (v13)
  {
    (*(v22 + 2))(v22, 0);
  }

  else
  {
    v7 = [v23 response];
    v18 = [v7 allHeaderFields];
    MEMORY[0x277D82BD8](v7);
    v8 = [v24 originalRequest];
    v16 = 0;
    v14 = 0;
    v9 = 1;
    if ([v8 cachePolicy] != 1)
    {
      v17 = [v18 objectForKeyedSubscript:@"Cache-Control"];
      v16 = 1;
      v6 = 0;
      if (!v17)
      {
        v15 = [v18 objectForKeyedSubscript:@"Expires"];
        v14 = 1;
        v6 = v15 == 0;
      }

      v9 = v6;
    }

    if (v14)
    {
      MEMORY[0x277D82BD8](v15);
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](v17);
    }

    MEMORY[0x277D82BD8](v8);
    if (v9)
    {
      (*(v22 + 2))(v22, 0);
    }

    else
    {
      (*(v22 + 2))(v22, v23);
    }

    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v20 = 0;
  objc_storeStrong(&v20, a6);
  v19 = 0;
  objc_storeStrong(&v19, a7);
  v18 = [(MCLURLDataLoader *)v24 loaderTaskForSessionTask:v22];
  if ([v18 cancelled])
  {
    [v22 cancel];
    v17 = 1;
  }

  else
  {
    v16 = [v18 redirectHandler];
    if (v16)
    {
      v15 = (*(v16 + 2))(v16, v18, v21, v20);
      if (v15)
      {
        [v18 setRequest:v15];
        v14 = [v15 mutableCopy];
        v8 = v14;
        [v15 timeoutInterval];
        [v8 setTimeoutInterval:?];
        [objc_opt_class() applyDefaultRequestHeaders:v14];
        [(MCLURLDataLoader *)v24 processURLRequestRewrite:v14];
        objc_storeStrong(&v15, v14);
        objc_storeStrong(&v14, 0);
      }

      (*(v19 + 2))(v19, v15);
      if (!v15 && [v21 statusCode] == 301)
      {
        [v18 setResponse:v21];
        [v22 cancel];
      }

      objc_storeStrong(&v15, 0);
    }

    else
    {
      [v18 setRequest:v20];
      v13 = [v20 mutableCopy];
      v7 = v13;
      [v20 timeoutInterval];
      [v7 setTimeoutInterval:?];
      [objc_opt_class() applyDefaultRequestHeaders:v13];
      [(MCLURLDataLoader *)v24 processURLRequestRewrite:v13];
      (*(v19 + 2))(v19, v13);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v16, 0);
    v17 = 0;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = 0;
  objc_storeStrong(&v28, a5);
  v27 = [(MCLURLDataLoader *)v31 loaderTaskForSessionTask:v29];
  v16 = [v29 response];
  [v27 setResponse:?];
  MEMORY[0x277D82BD8](v16);
  if ([v27 responseOk])
  {
    v25 = 0;
    [v27 applyMimeType];
    v24 = [v27 targetPath];
    v23 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v23 fileExistsAtPath:v24])
    {
      v12 = [v27 response];
      v13 = [v12 expectedContentLength];
      MEMORY[0x277D82BD8](v12);
      v22 = v13;
      if ((v13 & 0x8000000000000000) == 0)
      {
        v10 = [v28 path];
        v20 = v25;
        v9 = [v23 attributesOfItemAtPath:? error:?];
        objc_storeStrong(&v25, v20);
        v21 = v9;
        MEMORY[0x277D82BD8](v10);
        v18 = 0;
        v11 = 1;
        if (v9)
        {
          v11 = 1;
          if ([v21 fileSize] >= v22)
          {
            v19 = [objc_opt_class() downloadData];
            v18 = 1;
            v11 = v22 == [v19 length];
          }
        }

        if (v18)
        {
          MEMORY[0x277D82BD8](v19);
        }

        if (v11)
        {
          [v27 setCachedResponse:1];
          v26 = 1;
        }

        else
        {
          v26 = 0;
        }

        objc_storeStrong(&v21, 0);
        if (v26)
        {
          goto LABEL_19;
        }
      }

      [v23 removeItemAtPath:v24 error:0];
    }

    v6 = v23;
    v5 = v28;
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v24];
    v17 = v25;
    v8 = [v6 moveItemAtURL:v5 toURL:? error:?];
    objc_storeStrong(&v25, v17);
    MEMORY[0x277D82BD8](v7);
    if (v8)
    {
      [(MCLURLDataLoader *)v31 updateDownloadCacheEntry:v27];
    }

    else
    {
      [(MCLURLDataLoader *)v31 task:v27 completedWithError:v25];
    }

    v26 = 0;
LABEL_19:
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    goto LABEL_20;
  }

  v26 = 1;
LABEL_20:
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didResumeAtOffset:(int64_t)a5 expectedTotalBytes:(int64_t)a6
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didWriteData:(int64_t)a5 totalBytesWritten:(int64_t)a6 totalBytesExpectedToWrite:(int64_t)a7
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12[3] = a5;
  v12[2] = a6;
  v12[1] = a7;
  v12[0] = [(MCLURLDataLoader *)v15 loaderTaskForSessionTask:v13];
  HIDWORD(v7) = HIDWORD(a6);
  *&v7 = (a6 * 1.0) / a7;
  [v12[0] setProgress:v7];
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_removeCachedResponseForRequest:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(MCLURLDataLoader *)v4 _removeCachedResponseForRequest:location[0] force:0];
  objc_storeStrong(location, 0);
}

- (void)_removeCachedResponseForRequest:(id)a3 force:(BOOL)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = a4;
  if (a4)
  {
    v13 = MEMORY[0x277D82BE0](&unk_286781048);
    v12 = MEMORY[0x277D82BE0](&unk_286781070);
    v4 = objc_alloc(MEMORY[0x277CCAA40]);
    v5 = [location[0] URL];
    v11 = [v4 initWithURL:? statusCode:? HTTPVersion:? headerFields:?];
    MEMORY[0x277D82BD8](v5);
    v7 = objc_alloc(MEMORY[0x277CCA8F0]);
    v6 = v11;
    v8 = [MEMORY[0x277CBEA90] data];
    v10 = [v7 initWithResponse:v6 data:? userInfo:? storagePolicy:?];
    MEMORY[0x277D82BD8](v8);
    [(NSURLCache *)v16->_cache storeCachedResponse:v10 forRequest:location[0]];
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  [(NSURLCache *)v16->_cache removeCachedResponseForRequest:location[0]];
  objc_storeStrong(location, 0);
}

- (id)_cachedResponseForRequest:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [(NSURLCache *)v11->_cache cachedResponseForRequest:location[0]];
  if (v9 && (v6 = [v9 userInfo], v5 = objc_msgSend(v6, "objectForKeyedSubscript:", @"IGNORE"), v7 = objc_msgSend(v5, "BOOLValue"), MEMORY[0x277D82BD8](v5), MEMORY[0x277D82BD8](v6), (v7 & 1) != 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = MEMORY[0x277D82BE0](location[0]);
      [v8 setCachePolicy:1];
      objc_storeStrong(&v8, 0);
    }

    v12 = 0;
  }

  else
  {
    v12 = MEMORY[0x277D82BE0](v9);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  v3 = v12;

  return v3;
}

@end