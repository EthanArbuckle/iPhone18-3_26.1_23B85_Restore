@interface MCLURLDataLoader
+ (BOOL)isValidResumeData:(id)data;
+ (BOOL)task:(id)task equalsToTask:(id)toTask;
+ (id)dateFromRFC1123:(id)c1123;
+ (id)downloadData;
+ (id)duplicateResponse:(id)response withContentLength:(int64_t)length;
+ (id)fileExtensionForMimeType:(id)type;
+ (id)mimeTypeForFileExtension:(id)extension;
+ (id)shared;
+ (id)uniqueImageKeyForURL:(id)l;
+ (id)uniqueKeyForURL:(id)l;
+ (void)addSessionConfigurator:(id)configurator;
+ (void)applyDefaultRequestHeaders:(id)headers;
+ (void)removeFilesOlderThan:(id)than inDirectory:(id)directory;
+ (void)restart:(id)restart;
- (BOOL)deleteCookie:(id)cookie inDomain:(id)domain secure:(BOOL)secure;
- (MCLURLDataLoader)init;
- (NSOperationQueue)operationQueue;
- (NSSet)cacheLocations;
- (NSURLCache)cache;
- (id)_cachedResponseForRequest:(id)request;
- (id)allCookies;
- (id)cachableFileAttributes:(id)attributes;
- (id)configuredURLRequestForTask:(id)task download:(BOOL *)download resumeData:(id *)data;
- (id)cookiesForURL:(id)l;
- (id)defaultSessionConfiguration;
- (id)downloadCachedResponse:(id)response;
- (id)downloadImageFromURL:(id)l category:(id)category completionHandler:(id)handler;
- (id)downloadImageWithRequest:(id)request category:(id)category completionHandler:(id)handler;
- (id)downloadRequest:(id)request category:(id)category completionHandler:(id)handler;
- (id)downloadRequest:(id)request toPath:(id)path category:(id)category completionHandler:(id)handler;
- (id)downloadURL:(id)l category:(id)category completionHandler:(id)handler;
- (id)downloadURL:(id)l toPath:(id)path category:(id)category completionHandler:(id)handler;
- (id)duplicateTasksForTask:(id)task;
- (id)findCookie:(id)cookie inDomain:(id)domain secure:(BOOL)secure;
- (id)findCookie:(id)cookie inDomain:(id)domain secure:(BOOL)secure cookies:(id)cookies;
- (id)findMatchingCookies:(id)cookies inDomain:(id)domain secure:(BOOL)secure;
- (id)imagesDownloadDirectory;
- (id)loadRequest:(id)request category:(id)category completionHandler:(id)handler;
- (id)loadRequest:(id)request category:(id)category completionHandler:(id)handler receiveData:(id)data;
- (id)loadURL:(id)l category:(id)category completionHandler:(id)handler;
- (id)loaderTaskForSessionTask:(id)task;
- (int64_t)priorityForCategory:(id)category;
- (unint64_t)connectionsLimitForPriorityOfTask:(id)task;
- (void)URLSession:(id)session dataTask:(id)task didBecomeDownloadTask:(id)downloadTask;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session dataTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l;
- (void)URLSession:(id)session downloadTask:(id)task didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes;
- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session;
- (void)_removeCachedResponseForRequest:(id)request;
- (void)_removeCachedResponseForRequest:(id)request force:(BOOL)force;
- (void)addCacheLocation:(id)location;
- (void)addRewriteRule:(id)rule;
- (void)applicationDidBecomeActiveNotification:(id)notification;
- (void)applicationDidEnterBackgroundNotification:(id)notification;
- (void)applicationWillEnterForegroundNotification:(id)notification;
- (void)applyRewriteRules:(id)rules;
- (void)backgroundClearOldCaches:(id)caches;
- (void)backgroundRemoveCachedResponseForRequest:(id)request;
- (void)cancelTask:(id)task;
- (void)cancelTasks:(id)tasks;
- (void)clearCache;
- (void)clearOldCaches:(id)caches;
- (void)configureSession;
- (void)configureSession:(id)session;
- (void)deleteCookiesMatchingPredicate:(id)predicate;
- (void)dispose;
- (void)enqueueTask:(id)task reschedule:(BOOL)reschedule;
- (void)enumerateCookies:(id)cookies inDomain:(id)domain secure:(BOOL)secure withBlock:(id)block;
- (void)enumerateCookies:(id)cookies secure:(BOOL)secure cookies:(id)a5 withBlock:(id)block;
- (void)internalRestart:(id)restart;
- (void)notifyBackgroundStopped;
- (void)notifyEmptyQueue;
- (void)notifyEnqueue;
- (void)operationCancelTask:(id)task;
- (void)operationReschedule;
- (void)operationRestartSession;
- (void)operationSuspendSession;
- (void)processURLRequestRewrite:(id)rewrite;
- (void)removeCachedResponseForRequest:(id)request;
- (void)removeRewriteRule:(id)rule;
- (void)removeRewriteRules:(id)rules;
- (void)removeRewriteRulesWithName:(id)name;
- (void)resume;
- (void)setCategory:(id)category forTask:(id)task;
- (void)setCategory:(id)category forTasks:(id)tasks;
- (void)setCookie:(id)cookie;
- (void)setPriority:(int64_t)priority forCategory:(id)category;
- (void)setupCache:(BOOL)cache;
- (void)storeResumeData:(id)data forTask:(id)task;
- (void)suspend;
- (void)task:(id)task completedWithError:(id)error;
- (void)updateDownloadCacheEntry:(id)entry;
@end

@implementation MCLURLDataLoader

+ (id)dateFromRFC1123:(id)c1123
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, c1123);
  if (location[0])
  {
    v10 = location[0];
    v3 = location[0];
    uTF8String = [v10 UTF8String];
    v17 = 0;
    v16 = 0;
    v18 = "%a, %d %b %Y %H:%M:%S %Z";
    memset(&__b, 0, sizeof(__b));
    v16 = strptime_l(uTF8String, "%a, %d %b %Y %H:%M:%S %Z", &__b, 0);
    if (v16 && (v14 = mktime(&__b), v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v14], v5 = v17, v17 = v4, MEMORY[0x277D82BD8](v5), v17))
    {
      v22 = MEMORY[0x277D82BE0](v17);
      v20 = 1;
    }

    else
    {
      v18 = "%A, %d-%b-%y %H:%M:%S %Z";
      memset(&v13, 0, sizeof(v13));
      v16 = strptime_l(uTF8String, "%A, %d-%b-%y %H:%M:%S %Z", &v13, 0);
      if (v16 && (v12 = mktime(&v13), v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v12], v7 = v17, v17 = v6, MEMORY[0x277D82BD8](v7), v17))
      {
        v22 = MEMORY[0x277D82BE0](v17);
        v20 = 1;
      }

      else
      {
        v18 = "%a %b %e %H:%M:%S %Y";
        memset(&v11, 0, sizeof(v11));
        v16 = strptime_l(uTF8String, "%a %b %e %H:%M:%S %Y", &v11, 0);
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

+ (id)fileExtensionForMimeType:(id)type
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
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

+ (id)mimeTypeForFileExtension:(id)extension
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, extension);
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

- (void)setCookie:(id)cookie
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cookie);
  cookieStorage = [(MCLURLDataLoader *)selfCopy cookieStorage];
  [(NSHTTPCookieStorage *)cookieStorage setCookie:location[0]];
  MEMORY[0x277D82BD8](cookieStorage);
  objc_storeStrong(location, 0);
}

- (id)findCookie:(id)cookie inDomain:(id)domain secure:(BOOL)secure
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cookie);
  v21 = 0;
  objc_storeStrong(&v21, domain);
  secureCopy = secure;
  v19 = 0;
  if ([v21 length])
  {
    v13 = MEMORY[0x277CBEBC0];
    if (secureCopy)
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
    cookieStorage = [(MCLURLDataLoader *)selfCopy cookieStorage];
    v6 = [(NSHTTPCookieStorage *)cookieStorage cookiesForURL:v18];
    v7 = v19;
    v19 = v6;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](cookieStorage);
    objc_storeStrong(&v18, 0);
  }

  else
  {
    cookieStorage2 = [(MCLURLDataLoader *)selfCopy cookieStorage];
    cookies = [(NSHTTPCookieStorage *)cookieStorage2 cookies];
    v9 = v19;
    v19 = cookies;
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](cookieStorage2);
  }

  v11 = [MCLURLDataLoader findCookie:selfCopy inDomain:"findCookie:inDomain:secure:cookies:" secure:location[0] cookies:?];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (id)findCookie:(id)cookie inDomain:(id)domain secure:(BOOL)secure cookies:(id)cookies
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cookie);
  v32 = 0;
  objc_storeStrong(&v32, domain);
  secureCopy = secure;
  v30 = 0;
  objc_storeStrong(&v30, cookies);
  v23 = 0;
  v24 = &v23;
  v25 = 838860800;
  v26 = 48;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  date = [MEMORY[0x277CBEAA8] date];
  v11 = selfCopy;
  v8 = location[0];
  v9 = secureCopy;
  v10 = v30;
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __63__MCLURLDataLoader_Cookie__findCookie_inDomain_secure_cookies___block_invoke;
  v19 = &unk_2797EE758;
  v20 = MEMORY[0x277D82BE0](v32);
  v21[0] = MEMORY[0x277D82BE0](date);
  v21[1] = &v23;
  [(MCLURLDataLoader *)v11 enumerateCookies:v8 secure:v9 cookies:v10 withBlock:&v15];
  v7 = MEMORY[0x277D82BE0](v24[5]);
  objc_storeStrong(v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&date, 0);
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

- (id)findMatchingCookies:(id)cookies inDomain:(id)domain secure:(BOOL)secure
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cookies);
  v37 = 0;
  objc_storeStrong(&v37, domain);
  secureCopy = secure;
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
      date = [MEMORY[0x277CBEAA8] date];
      cookieStorage = [(MCLURLDataLoader *)selfCopy cookieStorage];
      cookies = [(NSHTTPCookieStorage *)cookieStorage cookies];
      v15 = MEMORY[0x277D85DD0];
      v16 = -1073741824;
      v17 = 0;
      v18 = __64__MCLURLDataLoader_Cookie__findMatchingCookies_inDomain_secure___block_invoke;
      v19 = &unk_2797EE780;
      v20 = MEMORY[0x277D82BE0](v33);
      v21 = MEMORY[0x277D82BE0](v28);
      v22 = MEMORY[0x277D82BE0](date);
      v23 = MEMORY[0x277D82BE0](v35);
      [(NSArray *)cookies enumerateObjectsUsingBlock:&v15];
      MEMORY[0x277D82BD8](cookies);
      MEMORY[0x277D82BD8](cookieStorage);
      v40 = MEMORY[0x277D82BE0](v35);
      v29 = 1;
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&date, 0);
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
  cookieStorage = [(MCLURLDataLoader *)self cookieStorage];
  cookies = [(NSHTTPCookieStorage *)cookieStorage cookies];
  MEMORY[0x277D82BD8](cookieStorage);

  return cookies;
}

- (BOOL)deleteCookie:(id)cookie inDomain:(id)domain secure:(BOOL)secure
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cookie);
  v26 = 0;
  objc_storeStrong(&v26, domain);
  secureCopy = secure;
  v20 = 0;
  v21 = &v20;
  v22 = 0x20000000;
  v23 = 32;
  v24 = 0;
  cookieStorage = [(MCLURLDataLoader *)selfCopy cookieStorage];
  v10 = selfCopy;
  v7 = location[0];
  v8 = v26;
  v9 = secureCopy;
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __57__MCLURLDataLoader_Cookie__deleteCookie_inDomain_secure___block_invoke;
  v17 = &unk_2797EE7A8;
  v18[0] = MEMORY[0x277D82BE0](cookieStorage);
  v18[1] = &v20;
  [(MCLURLDataLoader *)v10 enumerateCookies:v7 inDomain:v8 secure:v9 withBlock:&v13];
  v6 = *(v21 + 24);
  objc_storeStrong(v18, 0);
  objc_storeStrong(&cookieStorage, 0);
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

- (void)deleteCookiesMatchingPredicate:(id)predicate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, predicate);
  cookieStorage = [(MCLURLDataLoader *)selfCopy cookieStorage];
  cookies = [(NSHTTPCookieStorage *)cookieStorage cookies];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __59__MCLURLDataLoader_Cookie__deleteCookiesMatchingPredicate___block_invoke;
  v8 = &unk_2797EE7D0;
  v9 = MEMORY[0x277D82BE0](location[0]);
  v10 = MEMORY[0x277D82BE0](cookieStorage);
  [(NSArray *)cookies enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](cookies);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&cookieStorage, 0);
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

- (void)enumerateCookies:(id)cookies inDomain:(id)domain secure:(BOOL)secure withBlock:(id)block
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cookies);
  v22 = 0;
  objc_storeStrong(&v22, domain);
  secureCopy = secure;
  v20 = 0;
  objc_storeStrong(&v20, block);
  v19 = 0;
  if ([v22 length])
  {
    v12 = MEMORY[0x277CBEBC0];
    if (secureCopy)
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
    cookieStorage = [(MCLURLDataLoader *)selfCopy cookieStorage];
    v7 = [(NSHTTPCookieStorage *)cookieStorage cookiesForURL:v18];
    v8 = v19;
    v19 = v7;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](cookieStorage);
    objc_storeStrong(&v18, 0);
  }

  else
  {
    cookieStorage2 = [(MCLURLDataLoader *)selfCopy cookieStorage];
    cookies = [(NSHTTPCookieStorage *)cookieStorage2 cookies];
    v10 = v19;
    v19 = cookies;
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](cookieStorage2);
  }

  [(MCLURLDataLoader *)selfCopy enumerateCookies:location[0] secure:secureCopy cookies:v19 withBlock:v20];
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)enumerateCookies:(id)cookies secure:(BOOL)secure cookies:(id)a5 withBlock:(id)block
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cookies);
  secureCopy = secure;
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = 0;
  objc_storeStrong(&v13, block);
  v9 = v14;
  v10 = MEMORY[0x277D82BE0](location[0]);
  v12 = secureCopy;
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

- (id)cookiesForURL:(id)l
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  cookieStorage = [(MCLURLDataLoader *)selfCopy cookieStorage];
  v5 = [(NSHTTPCookieStorage *)cookieStorage cookiesForURL:location[0]];
  MEMORY[0x277D82BD8](cookieStorage);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)downloadImageFromURL:(id)l category:(id)category completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v12 = 0;
  objc_storeStrong(&v12, category);
  v11 = 0;
  objc_storeStrong(&v11, handler);
  v8 = selfCopy;
  v9 = [MEMORY[0x277CCAD20] requestWithURL:location[0]];
  v10 = [MCLURLDataLoader downloadImageWithRequest:v8 category:"downloadImageWithRequest:category:completionHandler:" completionHandler:?];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (id)downloadImageWithRequest:(id)request category:(id)category completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v40 = 0;
  objc_storeStrong(&v40, category);
  v39 = 0;
  objc_storeStrong(&v39, handler);
  v38 = [location[0] URL];
  imagesDownloadDirectory = [(MCLURLDataLoader *)selfCopy imagesDownloadDirectory];
  v10 = [MCLURLDataLoader uniqueImageKeyForURL:v38];
  v37 = [imagesDownloadDirectory stringByAppendingPathComponent:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](imagesDownloadDirectory);
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
  v14 = selfCopy;
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
  v21 = MEMORY[0x277D82BE0](selfCopy);
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

+ (id)uniqueImageKeyForURL:(id)l
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v24 = &uniqueImageKeyForURL__onceToken;
  v23 = 0;
  objc_storeStrong(&v23, &__block_literal_global_6);
  if (*v24 != -1)
  {
    dispatch_once(v24, v23);
  }

  objc_storeStrong(&v23, 0);
  v20 = [selfCopy uniqueKeyForURL:location[0]];
  v13 = 0;
  v14 = &v13;
  v15 = 838860800;
  v16 = 48;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  pathExtension = [v20 pathExtension];
  stringByDeletingPathExtension = [v20 stringByDeletingPathExtension];
  v3 = [stringByDeletingPathExtension stringByAppendingString:uniqueImageKeyForURL__screenScale];
  v4 = v20;
  v20 = v3;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](stringByDeletingPathExtension);
  if (![v14[5] length])
  {
    objc_storeStrong(v14 + 5, @"image");
    v10 = objc_alloc(MEMORY[0x277CCACE0]);
    v12 = [v10 initWithURL:location[0] resolvingAgainstBaseURL:0];
    queryItems = [v12 queryItems];
    [queryItems enumerateObjectsUsingBlock:?];
    MEMORY[0x277D82BD8](queryItems);
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
  objc_storeStrong(&pathExtension, 0);
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

+ (void)addSessionConfigurator:(id)configurator
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configurator);
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
  selfCopy = self;
  v10 = a2;
  obj = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __26__MCLURLDataLoader_shared__block_invoke;
  v8 = &__block_descriptor_40_e5_v8__0l;
  selfCopy2 = self;
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
    mEMORY[0x277CCAA38] = [MEMORY[0x277CCAA38] sharedHTTPCookieStorage];
    cookieStorage = v32->_cookieStorage;
    v32->_cookieStorage = mEMORY[0x277CCAA38];
    MEMORY[0x277D82BD8](cookieStorage);
    [(MCLURLDataLoader *)v32 setupCache:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v32 selector:sel_applicationDidEnterBackgroundNotification_ name:*MEMORY[0x277D76660] object:?];
    MEMORY[0x277D82BD8](defaultCenter);
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v32 selector:sel_applicationWillEnterForegroundNotification_ name:*MEMORY[0x277D76758] object:0];
    MEMORY[0x277D82BD8](defaultCenter2);
    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v32 selector:sel_applicationDidBecomeActiveNotification_ name:*MEMORY[0x277D76648] object:0];
    MEMORY[0x277D82BD8](defaultCenter3);
  }

  v21 = MEMORY[0x277D82BE0](v32);
  objc_storeStrong(&v32, 0);
  *MEMORY[0x277D85DE8];
  return v21;
}

- (void)dispose
{
  selfCopy = self;
  v3[1] = a2;
  v3[0] = MEMORY[0x277D82BE0](self->_session);
  objc_storeStrong(&selfCopy->_session, 0);
  [v3[0] invalidateAndCancel];
  v2 = MEMORY[0x277D82BE0](selfCopy->_operationQueue);
  objc_storeStrong(&selfCopy->_operationQueue, 0);
  [v2 cancelAllOperations];
  [MEMORY[0x277CCACC8] sleepForTimeInterval:0.01];
  [(NSRecursiveLock *)selfCopy->_taskQueueLock lock];
  [(NSMutableArray *)selfCopy->_taskQueue removeAllObjects];
  [(NSMutableDictionary *)selfCopy->_activeTasks removeAllObjects];
  [(NSMutableArray *)selfCopy->_sessionTasks removeAllObjects];
  [(NSMutableOrderedSet *)selfCopy->_duplicateTasks removeAllObjects];
  [(NSRecursiveLock *)selfCopy->_taskQueueLock unlock];
  [v2 waitUntilAllOperationsAreFinished];
  objc_storeStrong(&selfCopy->_cache, 0);
  objc_storeStrong(&v2, 0);
  objc_storeStrong(v3, 0);
}

- (NSURLCache)cache
{
  selfCopy = self;
  v21 = a2;
  if (!self->_cache)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v12 = [standardUserDefaults integerForKey:@"MCLURLDataLoader.cacheVersion"];
    MEMORY[0x277D82BD8](standardUserDefaults);
    v20 = v12;
    if (!v12)
    {
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults2 setInteger:0 forKey:@"MCLURLDataLoader.cacheVersion"];
      MEMORY[0x277D82BD8](standardUserDefaults2);
      standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults3 synchronize];
      MEMORY[0x277D82BD8](standardUserDefaults3);
    }

    v19 = [objc_opt_class() description];
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%ld", v19, v20];
    cachePath = selfCopy->_cachePath;
    selfCopy->_cachePath = v2;
    MEMORY[0x277D82BD8](cachePath);
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __25__MCLURLDataLoader_cache__block_invoke;
    v17 = &unk_2797EE220;
    v18 = MEMORY[0x277D82BE0](selfCopy);
    v24 = &cache_onceToken;
    location = 0;
    objc_storeStrong(&location, &v13);
    if (*v24 != -1)
    {
      dispatch_once(v24, location);
    }

    objc_storeStrong(&location, 0);
    v4 = objc_alloc(MEMORY[0x277CCACD8]);
    v5 = [v4 initWithMemoryCapacity:0 diskCapacity:1000000000 diskPath:selfCopy->_cachePath];
    cache = selfCopy->_cache;
    selfCopy->_cache = v5;
    MEMORY[0x277D82BD8](cache);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  v7 = selfCopy->_cache;

  return v7;
}

- (void)setupCache:(BOOL)cache
{
  selfCopy = self;
  v16 = a2;
  cacheCopy = cache;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  downloadCacheDirectory = selfCopy->_downloadCacheDirectory;
  v12 = 0;
  v5 = [defaultManager createDirectoryAtPath:downloadCacheDirectory withIntermediateDirectories:1 attributes:0 error:&v12];
  objc_storeStrong(&v13, v12);
  if ((v5 & 1) == 0)
  {
    NSLog(&cfstr_ErrorCreatingD.isa, v13);
  }

  if (cacheCopy)
  {
    cacheLocations = [(MCLURLDataLoader *)selfCopy cacheLocations];
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __31__MCLURLDataLoader_setupCache___block_invoke;
    v10 = &unk_2797EDFB8;
    v11 = MEMORY[0x277D82BE0](defaultManager);
    [(NSSet *)cacheLocations enumerateObjectsUsingBlock:&v6];
    MEMORY[0x277D82BD8](cacheLocations);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(&defaultManager, 0);
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

- (void)clearOldCaches:(id)caches
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, caches);
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v4 = [mEMORY[0x277D75128] beginBackgroundTaskWithName:@"Clear Cache" expirationHandler:0];
  MEMORY[0x277D82BD8](mEMORY[0x277D75128]);
  v13 = v4;
  queue = dispatch_get_global_queue(2, 0);
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __35__MCLURLDataLoader_clearOldCaches___block_invoke;
  v10 = &unk_2797EE968;
  v11 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)backgroundClearOldCaches:(id)caches
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, caches);
  v6 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v5 = [(NSArray *)v6 objectAtIndex:0];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v29 = [v5 stringByAppendingPathComponent:?];
  MEMORY[0x277D82BD8](bundleIdentifier);
  MEMORY[0x277D82BD8](mainBundle);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v28 = [objc_opt_class() description];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [defaultManager contentsOfDirectoryAtPath:v29 error:0];
  v18[1] = MEMORY[0x277D85DD0];
  v19 = -1073741824;
  v20 = 0;
  v21 = __45__MCLURLDataLoader_backgroundClearOldCaches___block_invoke;
  v22 = &unk_2797EE990;
  v23 = MEMORY[0x277D82BE0](location[0]);
  v24 = MEMORY[0x277D82BE0](v28);
  v25 = MEMORY[0x277D82BE0](v29);
  v26 = MEMORY[0x277D82BE0](defaultManager);
  [v7 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v7);
  v18[0] = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-604800.0];
  v17 = [v29 stringByAppendingPathComponent:location[0]];
  [objc_opt_class() removeFilesOlderThan:v18[0] inDirectory:v17];
  cacheLocations = [(MCLURLDataLoader *)selfCopy cacheLocations];
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __45__MCLURLDataLoader_backgroundClearOldCaches___block_invoke_2;
  v13 = &unk_2797EE9B8;
  v14 = MEMORY[0x277D82BE0](defaultManager);
  v15 = MEMORY[0x277D82BE0](selfCopy);
  v16 = MEMORY[0x277D82BE0](v18[0]);
  [(NSSet *)cacheLocations enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](cacheLocations);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&defaultManager, 0);
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

+ (void)removeFilesOlderThan:(id)than inDirectory:(id)directory
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, than);
  v15 = 0;
  objc_storeStrong(&v15, directory);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager contentsOfDirectoryAtPath:v15 error:0];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __53__MCLURLDataLoader_removeFilesOlderThan_inDirectory___block_invoke;
  v10 = &unk_2797EE9E0;
  v11 = MEMORY[0x277D82BE0](v15);
  v12 = MEMORY[0x277D82BE0](defaultManager);
  v13 = MEMORY[0x277D82BE0](location[0]);
  [v5 enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&defaultManager, 0);
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
  selfCopy = self;
  v23[1] = a2;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"MCLURLDataLoaderWillClearCache" object:selfCopy];
  MEMORY[0x277D82BD8](defaultCenter);
  v23[0] = MEMORY[0x277D82BE0](selfCopy->_cache);
  [(MCLURLDataLoader *)selfCopy dispose];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v8 = [standardUserDefaults integerForKey:?];
  MEMORY[0x277D82BD8](standardUserDefaults);
  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v22[1] = (v8 + 1);
  [standardUserDefaults2 setInteger:? forKey:?];
  MEMORY[0x277D82BD8](standardUserDefaults2);
  standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults3 synchronize];
  MEMORY[0x277D82BD8](standardUserDefaults3);
  [v23[0] removeAllCachedResponses];
  v22[0] = [MEMORY[0x277CCAA00] defaultManager];
  v21 = 0;
  v20 = [(NSString *)selfCopy->_downloadCacheDirectory stringByAppendingPathExtension:@"0"];
  downloadCacheDirectory = selfCopy->_downloadCacheDirectory;
  v19 = v21;
  v11 = [v22[0] moveItemAtPath:downloadCacheDirectory toPath:v20 error:&v19];
  objc_storeStrong(&v21, v19);
  if ((v11 & 1) == 0 || (v18 = v21, v5 = [v22[0] removeItemAtPath:v20 error:&v18], objc_storeStrong(&v21, v18), (v5 & 1) == 0))
  {
    NSLog(&cfstr_ErrorDeletingD.isa, v21);
  }

  cacheLocations = [(MCLURLDataLoader *)selfCopy cacheLocations];
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __30__MCLURLDataLoader_clearCache__block_invoke;
  v16 = &unk_2797EDFB8;
  v17 = MEMORY[0x277D82BE0](v22[0]);
  [(NSSet *)cacheLocations enumerateObjectsUsingBlock:&v12];
  MEMORY[0x277D82BD8](cacheLocations);
  [(MCLURLDataLoader *)selfCopy setupCache:1];
  [(MCLURLDataLoader *)selfCopy configureSession];
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 postNotificationName:@"MCLURLDataLoaderDidClearCache" object:selfCopy];
  MEMORY[0x277D82BD8](defaultCenter2);
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

- (void)removeCachedResponseForRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v12 = [location[0] mutableCopy];
  [objc_opt_class() applyDefaultRequestHeaders:v12];
  [(MCLURLDataLoader *)selfCopy processURLRequestRewrite:v12];
  objc_initWeak(&v11, selfCopy);
  operationQueue = selfCopy->_operationQueue;
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

- (void)backgroundRemoveCachedResponseForRequest:(id)request
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  [(MCLURLDataLoader *)selfCopy _removeCachedResponseForRequest:location[0] force:1];
  downloadCacheDirectory = selfCopy->_downloadCacheDirectory;
  v19 = [location[0] URL];
  v18 = [MCLURLDataLoader uniqueKeyForURL:?];
  v26 = [(NSString *)downloadCacheDirectory stringByAppendingPathComponent:?];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  pathExtension = [v26 pathExtension];
  v21 = [pathExtension length];
  MEMORY[0x277D82BD8](pathExtension);
  if (v21)
  {
    [defaultManager removeItemAtPath:v26 error:0];
  }

  else
  {
    lastPathComponent = [v26 lastPathComponent];
    memset(__b, 0, sizeof(__b));
    v13 = defaultManager;
    stringByDeletingLastPathComponent = [v26 stringByDeletingLastPathComponent];
    obj = [v13 enumeratorAtPath:?];
    MEMORY[0x277D82BD8](stringByDeletingLastPathComponent);
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
        stringByDeletingPathExtension = [v23 stringByDeletingPathExtension];
        v8 = [stringByDeletingPathExtension isEqualToString:lastPathComponent];
        MEMORY[0x277D82BD8](stringByDeletingPathExtension);
        if (v8)
        {
          v4 = defaultManager;
          v3 = v26;
          pathExtension2 = [v23 pathExtension];
          v5 = [v3 stringByAppendingPathExtension:?];
          [v4 removeItemAtPath:? error:?];
          MEMORY[0x277D82BD8](v5);
          MEMORY[0x277D82BD8](pathExtension2);
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
    objc_storeStrong(&lastPathComponent, 0);
  }

  objc_storeStrong(&defaultManager, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)addCacheLocation:(id)location
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, location);
  v20 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v19 = v20;
  v10 = [defaultManager createDirectoryAtPath:location[0] withIntermediateDirectories:1 attributes:0 error:&v19];
  objc_storeStrong(&v20, v19);
  MEMORY[0x277D82BD8](defaultManager);
  if ((v10 & 1) == 0)
  {
    NSLog(&cfstr_ErrorCreatingC.isa, v20);
  }

  v4 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  firstObject = [(NSArray *)v4 firstObject];
  stringByDeletingLastPathComponent = [firstObject stringByDeletingLastPathComponent];
  MEMORY[0x277D82BD8](firstObject);
  MEMORY[0x277D82BD8](v4);
  cacheLocations = [(MCLURLDataLoader *)selfCopy cacheLocations];
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __37__MCLURLDataLoader_addCacheLocation___block_invoke;
  v15 = &unk_2797EEA30;
  v16 = MEMORY[0x277D82BE0](stringByDeletingLastPathComponent);
  v5 = [(NSSet *)cacheLocations objectsPassingTest:&v11];
  v17 = [(NSSet *)v5 mutableCopy];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](cacheLocations);
  [v17 addObject:location[0]];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  allObjects = [v17 allObjects];
  [standardUserDefaults setObject:? forKey:?];
  MEMORY[0x277D82BD8](allObjects);
  MEMORY[0x277D82BD8](standardUserDefaults);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&stringByDeletingLastPathComponent, 0);
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

- (void)addRewriteRule:(id)rule
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rule);
  [(NSMutableOrderedSet *)selfCopy->_rewriteRules addObject:location[0]];
  [(NSMutableOrderedSet *)selfCopy->_rewriteRules sortWithOptions:16 usingComparator:&__block_literal_global_104];
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

- (void)removeRewriteRule:(id)rule
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rule);
  [(NSMutableOrderedSet *)selfCopy->_rewriteRules removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeRewriteRulesWithName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  rewriteRules = selfCopy->_rewriteRules;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __47__MCLURLDataLoader_removeRewriteRulesWithName___block_invoke;
  v8 = &unk_2797EEA78;
  v9 = MEMORY[0x277D82BE0](location[0]);
  v10 = [(NSMutableOrderedSet *)rewriteRules indexesOfObjectsPassingTest:?];
  [(NSMutableOrderedSet *)selfCopy->_rewriteRules removeObjectsAtIndexes:v10];
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

- (void)removeRewriteRules:(id)rules
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rules);
  [(NSMutableOrderedSet *)selfCopy->_rewriteRules removeObjectsInArray:location[0]];
  objc_storeStrong(location, 0);
}

- (void)applyRewriteRules:(id)rules
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rules);
  [(MCLURLDataLoader *)selfCopy processURLRequestRewrite:location[0]];
  objc_storeStrong(location, 0);
}

- (void)applicationDidEnterBackgroundNotification:(id)notification
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, notification);
  if (selfCopy->_backgroundTaskIdentifier == *MEMORY[0x277D767B0])
  {
    v13 = 0;
    [(NSRecursiveLock *)selfCopy->_taskQueueLock lock];
    v6 = [(NSMutableDictionary *)selfCopy->_activeTasks count];
    v13 = v6 + [(NSMutableArray *)selfCopy->_taskQueue count]!= 0;
    [(NSRecursiveLock *)selfCopy->_taskQueueLock unlock];
    if (v13)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      v4 = [objc_opt_class() description];
      v7 = MEMORY[0x277D85DD0];
      v8 = -1073741824;
      v9 = 0;
      v10 = __62__MCLURLDataLoader_applicationDidEnterBackgroundNotification___block_invoke;
      v11 = &unk_2797EE220;
      v12 = MEMORY[0x277D82BE0](selfCopy);
      v3 = [mEMORY[0x277D75128] beginBackgroundTaskWithName:v4 expirationHandler:&v7];
      selfCopy->_backgroundTaskIdentifier = v3;
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](mEMORY[0x277D75128]);
      objc_storeStrong(&v12, 0);
    }

    if (selfCopy->_backgroundTaskIdentifier == *MEMORY[0x277D767B0])
    {
      [(MCLURLDataLoader *)selfCopy suspend];
    }
  }

  objc_storeStrong(location, 0);
}

- (void)applicationWillEnterForegroundNotification:(id)notification
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, notification);
  [(MCLURLDataLoader *)selfCopy notifyBackgroundStopped];
  selfCopy->_resuming = 1;
  [(MCLURLDataLoader *)selfCopy resume];
  objc_storeStrong(location, 0);
}

- (void)applicationDidBecomeActiveNotification:(id)notification
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, notification);
  selfCopy->_resuming = 0;
  [(MCLURLDataLoader *)selfCopy resume];
  objc_storeStrong(location, 0);
}

- (void)suspend
{
  selfCopy = self;
  location[1] = a2;
  if (!self->_suspended)
  {
    selfCopy->_suspended = 1;
    objc_initWeak(location, selfCopy);
    operationQueue = selfCopy->_operationQueue;
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
  selfCopy = self;
  location[1] = a2;
  if (self->_suspended)
  {
    objc_initWeak(location, selfCopy);
    operationQueue = selfCopy->_operationQueue;
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

+ (void)restart:(id)restart
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, restart);
  [shared internalRestart:location[0]];
  objc_storeStrong(location, 0);
}

- (void)internalRestart:(id)restart
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, restart);
  currentQueue = [MEMORY[0x277CCABD8] currentQueue];
  selfCopy->_suspended = 1;
  objc_initWeak(&v12, selfCopy);
  operationQueue = selfCopy->_operationQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __36__MCLURLDataLoader_internalRestart___block_invoke;
  v8 = &unk_2797EEAA0;
  objc_copyWeak(&v11, &v12);
  v9 = MEMORY[0x277D82BE0](currentQueue);
  v10 = MEMORY[0x277D82BE0](location[0]);
  [(NSOperationQueue *)operationQueue addOperationWithBlock:&v4];
  [(NSOperationQueue *)selfCopy->_operationQueue waitUntilAllOperationsAreFinished];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v12);
  objc_storeStrong(&currentQueue, 0);
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
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] endBackgroundTask:self->_backgroundTaskIdentifier];
    MEMORY[0x277D82BD8](mEMORY[0x277D75128]);
    self->_backgroundTaskIdentifier = *MEMORY[0x277D767B0];
  }
}

- (void)notifyEmptyQueue
{
  if (!self->_resuming)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    applicationState = [mEMORY[0x277D75128] applicationState];
    MEMORY[0x277D82BD8](mEMORY[0x277D75128]);
    if (applicationState == 2)
    {
      [(MCLURLDataLoader *)self suspend];
    }
  }
}

- (void)notifyEnqueue
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v5 = 0;
  v4 = 0;
  if ([mEMORY[0x277D75128] applicationState] == 2)
  {
    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    v5 = 1;
    [mEMORY[0x277D75128]2 backgroundTimeRemaining];
    v4 = v2 > 5.0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277D75128]2);
  }

  MEMORY[0x277D82BD8](mEMORY[0x277D75128]);
  if (v4)
  {
    [(MCLURLDataLoader *)self resume];
  }
}

- (int64_t)priorityForCategory:(id)category
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, category);
  v4 = [(NSMutableDictionary *)selfCopy->_priorities objectForKeyedSubscript:location[0]];
  integerValue = [v4 integerValue];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  return integerValue;
}

- (void)setPriority:(int64_t)priority forCategory:(id)category
{
  selfCopy = self;
  v26 = a2;
  priorityCopy = priority;
  location = 0;
  objc_storeStrong(&location, category);
  v8 = [(NSMutableDictionary *)selfCopy->_priorities objectForKeyedSubscript:location];
  integerValue = [v8 integerValue];
  MEMORY[0x277D82BD8](v8);
  v23[1] = integerValue;
  if (integerValue != priorityCopy)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:priorityCopy];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v4);
    [(NSRecursiveLock *)selfCopy->_taskQueueLock lock];
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    v23[0] = [v5 initWithCapacity:{-[NSMutableArray count](selfCopy->_taskQueue, "count")}];
    taskQueue = selfCopy->_taskQueue;
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __44__MCLURLDataLoader_setPriority_forCategory___block_invoke;
    v20 = &unk_2797EEAC8;
    v21 = MEMORY[0x277D82BE0](location);
    v22 = MEMORY[0x277D82BE0](v23[0]);
    [(NSMutableArray *)taskQueue enumerateObjectsUsingBlock:&v16];
    [(NSRecursiveLock *)selfCopy->_taskQueueLock unlock];
    v7 = v23[0];
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __44__MCLURLDataLoader_setPriority_forCategory___block_invoke_2;
    v14 = &unk_2797EEAF0;
    v15 = MEMORY[0x277D82BE0](selfCopy);
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

- (id)loadRequest:(id)request category:(id)category completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v10 = 0;
  objc_storeStrong(&v10, category);
  v9 = 0;
  objc_storeStrong(&v9, handler);
  v8 = [(MCLURLDataLoader *)selfCopy loadRequest:location[0] category:v10 completionHandler:v9 receiveData:0];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)loadRequest:(id)request category:(id)category completionHandler:(id)handler receiveData:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v16 = 0;
  objc_storeStrong(&v16, category);
  v15 = 0;
  objc_storeStrong(&v15, handler);
  v14 = 0;
  objc_storeStrong(&v14, data);
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
  [(MCLURLDataLoader *)selfCopy enqueueTask:v13 reschedule:0];
  v8 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)loadURL:(id)l category:(id)category completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v12 = 0;
  objc_storeStrong(&v12, category);
  v11 = 0;
  objc_storeStrong(&v11, handler);
  v8 = selfCopy;
  v9 = [MEMORY[0x277CCAD20] requestWithURL:location[0]];
  v10 = [MCLURLDataLoader loadRequest:v8 category:"loadRequest:category:completionHandler:" completionHandler:?];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (id)downloadRequest:(id)request toPath:(id)path category:(id)category completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v16 = 0;
  objc_storeStrong(&v16, path);
  v15 = 0;
  objc_storeStrong(&v15, category);
  v14 = 0;
  objc_storeStrong(&v14, handler);
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
  [(MCLURLDataLoader *)selfCopy enqueueTask:v13 reschedule:0];
  v8 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)downloadURL:(id)l toPath:(id)path category:(id)category completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v15 = 0;
  objc_storeStrong(&v15, path);
  v14 = 0;
  objc_storeStrong(&v14, category);
  v13 = 0;
  objc_storeStrong(&v13, handler);
  v10 = selfCopy;
  v11 = [MEMORY[0x277CCAD20] requestWithURL:location[0]];
  v12 = [MCLURLDataLoader downloadRequest:v10 toPath:"downloadRequest:toPath:category:completionHandler:" category:? completionHandler:?];
  MEMORY[0x277D82BD8](v11);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);

  return v12;
}

- (id)downloadRequest:(id)request category:(id)category completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v18 = 0;
  objc_storeStrong(&v18, category);
  v17 = 0;
  objc_storeStrong(&v17, handler);
  downloadCacheDirectory = selfCopy->_downloadCacheDirectory;
  v13 = [location[0] URL];
  v12 = [MCLURLDataLoader uniqueKeyForURL:?];
  v16 = [(NSString *)downloadCacheDirectory stringByAppendingPathComponent:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  pathExtension = [(NSString *)v16 pathExtension];
  v15 = [(NSString *)pathExtension length];
  MEMORY[0x277D82BD8](pathExtension);
  if (!v15)
  {
    v5 = [(NSString *)v16 stringByAppendingPathExtension:@"[content_type]"];
    v6 = v16;
    v16 = v5;
    MEMORY[0x277D82BD8](v6);
  }

  v8 = [(MCLURLDataLoader *)selfCopy downloadRequest:location[0] toPath:v16 category:v18 completionHandler:v17];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)downloadURL:(id)l category:(id)category completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v12 = 0;
  objc_storeStrong(&v12, category);
  v11 = 0;
  objc_storeStrong(&v11, handler);
  v8 = selfCopy;
  v9 = [MEMORY[0x277CCAD20] requestWithURL:location[0]];
  v10 = [MCLURLDataLoader downloadRequest:v8 category:"downloadRequest:category:completionHandler:" completionHandler:?];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v10;
}

- (void)cancelTask:(id)task
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, task);
  [location[0] setCancelled:1];
  objc_initWeak(&v11, selfCopy);
  operationQueue = selfCopy->_operationQueue;
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

- (void)cancelTasks:(id)tasks
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tasks);
  [location[0] enumerateObjectsUsingBlock:&__block_literal_global_112];
  objc_initWeak(&from, selfCopy);
  v5 = [location[0] copy];
  v3 = location[0];
  location[0] = v5;
  MEMORY[0x277D82BD8](v3);
  operationQueue = selfCopy->_operationQueue;
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

- (void)setCategory:(id)category forTask:(id)task
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, category);
  v7 = 0;
  objc_storeStrong(&v7, task);
  category = [v7 category];
  v6 = [category isEqualToString:location[0]];
  MEMORY[0x277D82BD8](category);
  if ((v6 & 1) == 0)
  {
    [v7 setCategory:location[0]];
    [(MCLURLDataLoader *)selfCopy enqueueTask:v7 reschedule:1];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)setCategory:(id)category forTasks:(id)tasks
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, category);
  v13 = 0;
  objc_storeStrong(&v13, tasks);
  v5 = v13;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __41__MCLURLDataLoader_setCategory_forTasks___block_invoke;
  v10 = &unk_2797EEAC8;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](selfCopy);
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

+ (id)uniqueKeyForURL:(id)l
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  absoluteString = [location[0] absoluteString];
  MEMORY[0x277D82BD8](0);
  v3 = absoluteString;
  uTF8String = [absoluteString UTF8String];
  if (uTF8String)
  {
    v4 = strlen(uTF8String);
    v19 = XXH64(uTF8String, v4, 0);
    path = [location[0] path];
    v16 = 0;
    if (path)
    {
      v5 = MEMORY[0x277D82BE0](path);
    }

    else
    {
      resourceSpecifier = [location[0] resourceSpecifier];
      v16 = 1;
      v5 = MEMORY[0x277D82BE0](resourceSpecifier);
    }

    v18 = v5;
    if (v16)
    {
      MEMORY[0x277D82BD8](resourceSpecifier);
    }

    MEMORY[0x277D82BD8](path);
    lastPathComponent = [v18 lastPathComponent];
    pathExtension = [lastPathComponent pathExtension];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    v6 = [stringByDeletingPathExtension stringByAppendingFormat:@"-%llX", v19];
    v7 = lastPathComponent;
    lastPathComponent = v6;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](stringByDeletingPathExtension);
    if ([pathExtension length])
    {
      v8 = [lastPathComponent stringByAppendingPathExtension:pathExtension];
      v9 = lastPathComponent;
      lastPathComponent = v8;
      MEMORY[0x277D82BD8](v9);
    }

    v24 = MEMORY[0x277D82BE0](lastPathComponent);
    v20 = 1;
    objc_storeStrong(&pathExtension, 0);
    objc_storeStrong(&lastPathComponent, 0);
    objc_storeStrong(&v18, 0);
  }

  else
  {
    v24 = 0;
    v20 = 1;
  }

  objc_storeStrong(&absoluteString, 0);
  objc_storeStrong(location, 0);
  v10 = v24;

  return v10;
}

- (NSSet)cacheLocations
{
  v3 = MEMORY[0x277CBEB98];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults arrayForKey:@"MCLURLDataLoader.cacheLocations"];
  v6 = [v3 setWithArray:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](standardUserDefaults);

  return v6;
}

- (void)configureSession
{
  if (!self->_session)
  {
    v4 = MEMORY[0x277CCAD30];
    defaultSessionConfiguration = [(MCLURLDataLoader *)self defaultSessionConfiguration];
    operationQueue = [(MCLURLDataLoader *)self operationQueue];
    v2 = [v4 sessionWithConfiguration:defaultSessionConfiguration delegate:self delegateQueue:?];
    session = self->_session;
    self->_session = v2;
    MEMORY[0x277D82BD8](session);
    MEMORY[0x277D82BD8](operationQueue);
    MEMORY[0x277D82BD8](defaultSessionConfiguration);
    v7 = [objc_opt_class() description];
    [(NSURLSession *)self->_session setSessionDescription:?];
    MEMORY[0x277D82BD8](v7);
  }
}

- (id)defaultSessionConfiguration
{
  selfCopy = self;
  v6[1] = a2;
  v6[0] = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  [(MCLURLDataLoader *)selfCopy configureSession:v6[0]];
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

- (void)configureSession:(id)session
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  [location[0] setTimeoutIntervalForRequest:15.0];
  [location[0] setTimeoutIntervalForResource:36000.0];
  [location[0] setNetworkServiceType:?];
  [location[0] setAllowsCellularAccess:1];
  [location[0] setHTTPShouldUsePipelining:1];
  [location[0] setHTTPShouldSetCookies:1];
  [location[0] setHTTPCookieStorage:selfCopy->_cookieStorage];
  [location[0] setHTTPCookieAcceptPolicy:1];
  [location[0] setHTTPAdditionalHeaders:0];
  [location[0] setHTTPMaximumConnectionsPerHost:10];
  cache = [(MCLURLDataLoader *)selfCopy cache];
  [location[0] setURLCache:?];
  MEMORY[0x277D82BD8](cache);
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

- (void)operationCancelTask:(id)task
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, task);
  [(NSRecursiveLock *)selfCopy->_taskQueueLock lock];
  [(NSMutableArray *)selfCopy->_taskQueue removeObject:location[0]];
  [(NSMutableOrderedSet *)selfCopy->_duplicateTasks removeObject:location[0]];
  [(NSRecursiveLock *)selfCopy->_taskQueueLock unlock];
  sessionTasks = selfCopy->_sessionTasks;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __40__MCLURLDataLoader_operationCancelTask___block_invoke;
  v8 = &unk_2797EEBD8;
  v9 = MEMORY[0x277D82BE0](selfCopy);
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

- (void)enqueueTask:(id)task reschedule:(BOOL)reschedule
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, task);
  rescheduleCopy = reschedule;
  [(NSRecursiveLock *)selfCopy->_taskQueueLock lock];
  if (reschedule)
  {
    if (([(NSMutableArray *)selfCopy->_taskQueue containsObject:location[0]]& 1) == 0)
    {
      [(NSRecursiveLock *)selfCopy->_taskQueueLock unlock];
      v26 = 1;
      goto LABEL_8;
    }

    [(NSMutableArray *)selfCopy->_taskQueue removeObject:location[0]];
  }

  taskQueue = selfCopy->_taskQueue;
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
  v22 = MEMORY[0x277D82BE0](selfCopy);
  v25 = [(NSMutableArray *)taskQueue indexOfObject:v6 inSortedRange:v23 options:v24 usingComparator:1536, &v17];
  [(NSMutableArray *)selfCopy->_taskQueue insertObject:location[0] atIndex:v25];
  v8 = v25;
  rescheduleCopy = v8 == [(NSMutableArray *)selfCopy->_taskQueue count]- 1;
  [(NSRecursiveLock *)selfCopy->_taskQueueLock unlock];
  [(MCLURLDataLoader *)selfCopy notifyEnqueue];
  if (rescheduleCopy)
  {
    objc_initWeak(&v16, selfCopy);
    operationQueue = selfCopy->_operationQueue;
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
  selfCopy = self;
  v36[1] = a2;
  if (!self->_suspended && [(NSMutableDictionary *)selfCopy->_activeTasks count]< 0x14)
  {
    [(NSRecursiveLock *)selfCopy->_taskQueueLock lock];
    v36[0] = [(NSMutableArray *)selfCopy->_taskQueue lastObject];
    if (selfCopy->_session && v36[0] && (v16 = [(NSMutableDictionary *)selfCopy->_activeTasks count], v16 < [(MCLURLDataLoader *)selfCopy connectionsLimitForPriorityOfTask:v36[0]]))
    {
      [(NSMutableArray *)selfCopy->_taskQueue removeLastObject];
      [(NSRecursiveLock *)selfCopy->_taskQueueLock unlock];
      v30 = 0;
      v31 = &v30;
      v32 = 0x20000000;
      v33 = 32;
      v34 = 0;
      activeTasks = selfCopy->_activeTasks;
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
        [(NSMutableOrderedSet *)selfCopy->_duplicateTasks addObject:v36[0]];
        v35 = 1;
      }

      else if (selfCopy->_session)
      {
        v23 = 0;
        location = 0;
        v20 = 0;
        v13 = [(MCLURLDataLoader *)selfCopy configuredURLRequestForTask:v36[0] download:&v23 resumeData:&v20];
        objc_storeStrong(&location, v20);
        v21 = v13;
        v18 = 0;
        v14 = 0;
        if (v23)
        {
          receiveDataHandler = [v36[0] receiveDataHandler];
          v18 = 1;
          v14 = receiveDataHandler == 0;
        }

        v23 = v14;
        if (v18)
        {
          MEMORY[0x277D82BD8](receiveDataHandler);
        }

        [v36[0] setRequest:v21];
        v17 = 0;
        if (location)
        {
          v2 = [(NSURLSession *)selfCopy->_session downloadTaskWithResumeData:location];
          v3 = v17;
          v17 = v2;
          MEMORY[0x277D82BD8](v3);
        }

        else
        {
          if (v23)
          {
            v4 = [(NSURLSession *)selfCopy->_session downloadTaskWithRequest:v21];
          }

          else
          {
            v4 = [(NSURLSession *)selfCopy->_session dataTaskWithRequest:v21];
          }

          v5 = v17;
          v17 = v4;
          MEMORY[0x277D82BD8](v5);
        }

        if (v17)
        {
          v11 = v36[0];
          v12 = selfCopy->_activeTasks;
          v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "taskIdentifier")}];
          [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:?];
          MEMORY[0x277D82BD8](v10);
          v9 = selfCopy;
          category = [v36[0] category];
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
          MEMORY[0x277D82BD8](category);
          [(NSMutableArray *)selfCopy->_sessionTasks addObject:v17];
          [v17 resume];
        }

        [(MCLURLDataLoader *)selfCopy operationReschedule];
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
      [(NSRecursiveLock *)selfCopy->_taskQueueLock unlock];
      if (!v36[0] && ![(NSMutableDictionary *)selfCopy->_activeTasks count])
      {
        [(MCLURLDataLoader *)selfCopy notifyEmptyQueue];
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
  selfCopy = self;
  v16[1] = a2;
  [(NSRecursiveLock *)self->_taskQueueLock lock];
  allValues = [(NSMutableDictionary *)selfCopy->_activeTasks allValues];
  v11[1] = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __43__MCLURLDataLoader_operationSuspendSession__block_invoke;
  v15 = &unk_2797EEAF0;
  v16[0] = MEMORY[0x277D82BE0](selfCopy);
  [allValues enumerateObjectsUsingBlock:?];
  MEMORY[0x277D82BD8](allValues);
  duplicateTasks = selfCopy->_duplicateTasks;
  v10[1] = MEMORY[0x277D85DD0];
  v10[2] = 3221225472;
  v10[3] = __43__MCLURLDataLoader_operationSuspendSession__block_invoke_2;
  v10[4] = &unk_2797EEAF0;
  v11[0] = MEMORY[0x277D82BE0](selfCopy);
  [(NSMutableOrderedSet *)duplicateTasks enumerateObjectsUsingBlock:?];
  [(NSRecursiveLock *)selfCopy->_taskQueueLock unlock];
  [(NSMutableOrderedSet *)selfCopy->_duplicateTasks removeAllObjects];
  sessionTasks = selfCopy->_sessionTasks;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __43__MCLURLDataLoader_operationSuspendSession__block_invoke_3;
  v9 = &unk_2797EEC50;
  v10[0] = MEMORY[0x277D82BE0](selfCopy);
  [(NSMutableArray *)sessionTasks enumerateObjectsUsingBlock:?];
  [(NSMutableDictionary *)selfCopy->_activeTasks removeAllObjects];
  [(MCLURLDataLoader *)selfCopy notifyBackgroundStopped];
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
  selfCopy = self;
  v2[1] = a2;
  [(MCLURLDataLoader *)self operationSuspendSession];
  v2[0] = MEMORY[0x277D82BE0](selfCopy->_session);
  objc_storeStrong(&selfCopy->_session, 0);
  [v2[0] invalidateAndCancel];
  [(MCLURLDataLoader *)selfCopy configureSession];
  [(MCLURLDataLoader *)selfCopy operationResumeSession];
  objc_storeStrong(v2, 0);
}

+ (BOOL)task:(id)task equalsToTask:(id)toTask
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, task);
  v22 = 0;
  objc_storeStrong(&v22, toTask);
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
    targetPath = [location[0] targetPath];
    v20 = 1;
    targetPath2 = [v22 targetPath];
    v18 = 1;
    v5 = 1;
    if (targetPath != targetPath2)
    {
      targetPath3 = [location[0] targetPath];
      v16 = 1;
      stringByDeletingPathExtension = [targetPath3 stringByDeletingPathExtension];
      v14 = 1;
      targetPath4 = [v22 targetPath];
      v12 = 1;
      stringByDeletingPathExtension2 = [targetPath4 stringByDeletingPathExtension];
      v10 = 1;
      v5 = [stringByDeletingPathExtension isEqualToString:?];
    }

    v9 = v5;
  }

  v24 = v9 & 1;
  if (v10)
  {
    MEMORY[0x277D82BD8](stringByDeletingPathExtension2);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](targetPath4);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](stringByDeletingPathExtension);
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](targetPath3);
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](targetPath2);
  }

  if (v20)
  {
    MEMORY[0x277D82BD8](targetPath);
  }

  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  return v24 & 1;
}

- (id)duplicateTasksForTask:(id)task
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, task);
  v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  duplicateTasks = selfCopy->_duplicateTasks;
  v21 = MEMORY[0x277D85DD0];
  v22 = -1073741824;
  v23 = 0;
  v24 = __42__MCLURLDataLoader_duplicateTasksForTask___block_invoke;
  v25 = &unk_2797EEAC8;
  v26 = MEMORY[0x277D82BE0](location[0]);
  v27 = MEMORY[0x277D82BE0](v28);
  [(NSMutableOrderedSet *)duplicateTasks enumerateObjectsUsingBlock:&v21];
  [(NSRecursiveLock *)selfCopy->_taskQueueLock lock];
  v14 = 0;
  v15 = &v14;
  v16 = 838860800;
  v17 = 48;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  taskQueue = selfCopy->_taskQueue;
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
    [(NSMutableArray *)selfCopy->_taskQueue removeObjectsAtIndexes:v15[5]];
  }

  [(NSRecursiveLock *)selfCopy->_taskQueueLock unlock];
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

- (id)loaderTaskForSessionTask:(id)task
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, task);
  activeTasks = selfCopy->_activeTasks;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(location[0], "taskIdentifier")}];
  v6 = [(NSMutableDictionary *)activeTasks objectForKeyedSubscript:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);

  return v6;
}

+ (void)applyDefaultRequestHeaders:(id)headers
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, headers);
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults stringForKey:@"UserAgentApp"];
  v10 = 0;
  v8 = 0;
  if (v7)
  {
    v3 = MEMORY[0x277D82BE0](v7);
  }

  else
  {
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = 1;
    v9 = [standardUserDefaults2 stringForKey:@"UserAgent"];
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
    MEMORY[0x277D82BD8](standardUserDefaults2);
  }

  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](standardUserDefaults);
  [location[0] setValue:v12 forHTTPHeaderField:@"User-Agent"];
  hTTPMethod = [location[0] HTTPMethod];
  v5 = [hTTPMethod isEqualToString:@"GET"];
  MEMORY[0x277D82BD8](hTTPMethod);
  if (v5)
  {
    [location[0] setHTTPMethod:@"GET"];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (id)configuredURLRequestForTask:(id)task download:(BOOL *)download resumeData:(id *)data
{
  v95 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, task);
  downloadCopy = download;
  dataCopy = data;
  request = [location[0] request];
  v88 = [request mutableCopy];
  MEMORY[0x277D82BD8](request);
  request2 = [location[0] request];
  [request2 timeoutInterval];
  [v88 setTimeoutInterval:?];
  MEMORY[0x277D82BD8](request2);
  [objc_opt_class() applyDefaultRequestHeaders:v88];
  [(MCLURLDataLoader *)selfCopy processURLRequestRewrite:v88];
  v51 = selfCopy;
  category = [location[0] category];
  v53 = [(MCLURLDataLoader *)v51 priorityForCategory:?];
  MEMORY[0x277D82BD8](category);
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
  hTTPMethod = [v88 HTTPMethod];
  v55 = [hTTPMethod isEqualToString:@"GET"];
  MEMORY[0x277D82BD8](hTTPMethod);
  if (v55)
  {
    receiveDataHandler = [location[0] receiveDataHandler];
    MEMORY[0x277D82BD8](receiveDataHandler);
    if (receiveDataHandler)
    {
      v93 = MEMORY[0x277D82BE0](v88);
      v86 = 1;
    }

    else
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      if ([location[0] download])
      {
        targetPath = [location[0] targetPath];
        if ([targetPath hasSuffix:@"[content_type]"])
        {
          stringByDeletingPathExtension = [targetPath stringByDeletingPathExtension];
          v7 = targetPath;
          targetPath = stringByDeletingPathExtension;
          MEMORY[0x277D82BD8](v7);
          lastPathComponent = [targetPath lastPathComponent];
          memset(__b, 0, sizeof(__b));
          v42 = defaultManager;
          stringByDeletingLastPathComponent = [targetPath stringByDeletingLastPathComponent];
          obj = [v42 enumeratorAtPath:?];
          MEMORY[0x277D82BD8](stringByDeletingLastPathComponent);
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
              stringByDeletingPathExtension2 = [v82 stringByDeletingPathExtension];
              v37 = [stringByDeletingPathExtension2 isEqualToString:lastPathComponent];
              MEMORY[0x277D82BD8](stringByDeletingPathExtension2);
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
            pathExtension = [v82 pathExtension];
            [v34 applyFileExtension:?];
            MEMORY[0x277D82BD8](pathExtension);
            v86 = 2;
          }

          else
          {
LABEL_18:
            v86 = 0;
          }

          MEMORY[0x277D82BD8](obj);
          objc_storeStrong(&lastPathComponent, 0);
        }

        objc_storeStrong(&targetPath, 0);
      }

      v80 = [(MCLURLDataLoader *)selfCopy _cachedResponseForRequest:v88];
      if (v80)
      {
        v79 = 1;
        if ([v88 cachePolicy])
        {
          [(MCLURLDataLoader *)selfCopy _removeCachedResponseForRequest:v88];
          v79 = 0;
        }

        else if ([location[0] download])
        {
          v78 = 0;
          v30 = defaultManager;
          targetPath2 = [location[0] targetPath];
          v76 = v78;
          v31 = [v30 attributesOfItemAtPath:? error:?];
          objc_storeStrong(&v78, v76);
          v77 = v31;
          MEMORY[0x277D82BD8](targetPath2);
          v74 = 0;
          v33 = 0;
          if (!v31)
          {
            v29 = defaultManager;
            targetPath3 = [location[0] targetPath];
            v74 = 1;
            v33 = [v29 fileExistsAtPath:?];
          }

          if (v74)
          {
            MEMORY[0x277D82BD8](targetPath3);
          }

          if (v33)
          {
            NSLog(&cfstr_ErrorGettingFi.isa, v78);
          }

          v8 = [(MCLURLDataLoader *)selfCopy cachableFileAttributes:v77];
          v9 = v77;
          v77 = v8;
          MEMORY[0x277D82BD8](v9);
          v72 = 0;
          v28 = 0;
          if (v77)
          {
            userInfo = [v80 userInfo];
            v72 = 1;
            v28 = [v77 isEqualToDictionary:?];
          }

          v79 = v28 & 1;
          if (v72)
          {
            MEMORY[0x277D82BD8](userInfo);
          }

          if ((v79 & 1) == 0)
          {
            [(MCLURLDataLoader *)selfCopy _removeCachedResponseForRequest:v88];
            *downloadCopy = 1;
            [v88 setCachePolicy:1];
          }

          objc_storeStrong(&v77, 0);
          objc_storeStrong(&v78, 0);
        }

        else
        {
          userInfo2 = [v80 userInfo];
          MEMORY[0x277D82BD8](userInfo2);
          if (userInfo2)
          {
            [(MCLURLDataLoader *)selfCopy _removeCachedResponseForRequest:v88];
            [v88 setCachePolicy:1];
            v79 = 0;
          }
        }

        if (v79)
        {
          response = [v80 response];
          allHeaderFields = [response allHeaderFields];
          MEMORY[0x277D82BD8](response);
          v25 = [allHeaderFields objectForKeyedSubscript:@"Cache-Control"];
          v26 = [v25 containsString:@"private"];
          MEMORY[0x277D82BD8](v25);
          v70 = v26;
          if ((v26 & 1) == 0)
          {
            v23 = [allHeaderFields objectForKeyedSubscript:@"Etag"];
            v67 = 0;
            if (v23)
            {
              v10 = MEMORY[0x277D82BE0](v23);
            }

            else
            {
              v68 = [allHeaderFields objectForKeyedSubscript:@"ETag"];
              v67 = 1;
              v10 = MEMORY[0x277D82BE0](v68);
            }

            v69 = v10;
            if (v67)
            {
              MEMORY[0x277D82BD8](v68);
            }

            MEMORY[0x277D82BD8](v23);
            v22 = [allHeaderFields objectForKeyedSubscript:@"Last-Modified"];
            v64 = 0;
            if (v22)
            {
              v11 = MEMORY[0x277D82BE0](v22);
            }

            else
            {
              v65 = [allHeaderFields objectForKeyedSubscript:@"Date"];
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

            v20 = [allHeaderFields objectForKeyedSubscript:@"Expires"];
            v61 = 0;
            v21 = 1;
            if (![v20 length])
            {
              v62 = [allHeaderFields objectForKeyedSubscript:@"Cache-Control"];
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

          objc_storeStrong(&allHeaderFields, 0);
        }
      }

      else if ([location[0] download])
      {
        [v88 setCachePolicy:1];
        *downloadCopy = 1;
        if (dataCopy)
        {
          targetPath4 = [location[0] targetPath];
          v60 = [targetPath4 stringByAppendingPathExtension:@"partial"];
          MEMORY[0x277D82BD8](targetPath4);
          if ([defaultManager fileExistsAtPath:v60])
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
              *dataCopy = v17;
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
        targetPath5 = [location[0] targetPath];
        v56 = [targetPath5 stringByAppendingPathExtension:@"partial"];
        MEMORY[0x277D82BD8](targetPath5);
        [defaultManager removeItemAtPath:v56 error:?];
        objc_storeStrong(&v56, 0);
      }

      v93 = MEMORY[0x277D82BE0](v88);
      v86 = 1;
      objc_storeStrong(&v80, 0);
      objc_storeStrong(&defaultManager, 0);
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

- (void)processURLRequestRewrite:(id)rewrite
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rewrite);
  rewriteRules = selfCopy->_rewriteRules;
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

- (unint64_t)connectionsLimitForPriorityOfTask:(id)task
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, task);
  v4 = selfCopy;
  category = [location[0] category];
  v6 = [(MCLURLDataLoader *)v4 priorityForCategory:?];
  MEMORY[0x277D82BD8](category);
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

- (id)cachableFileAttributes:(id)attributes
{
  v15[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, attributes);
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
    fileModificationDate = [location[0] fileModificationDate];
    v8 = 1;
    v15[1] = fileModificationDate;
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
    MEMORY[0x277D82BD8](fileModificationDate);
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

- (void)task:(id)task completedWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, task);
  v18 = 0;
  objc_storeStrong(&v18, error);
  domain = [v18 domain];
  v9 = 0;
  if ([domain isEqualToString:*MEMORY[0x277CCA738]])
  {
    v9 = [v18 code] == -999;
  }

  MEMORY[0x277D82BD8](domain);
  if (v9)
  {
    objc_storeStrong(&v18, 0);
    [location[0] setCancelled:1];
  }

  [location[0] applyMimeType];
  [location[0] dispatchCompletion:v18];
  activeTasks = selfCopy->_activeTasks;
  v5 = [(NSMutableDictionary *)activeTasks allKeysForObject:location[0]];
  [(NSMutableDictionary *)activeTasks removeObjectsForKeys:?];
  MEMORY[0x277D82BD8](v5);
  v6 = [(MCLURLDataLoader *)selfCopy duplicateTasksForTask:location[0]];
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __44__MCLURLDataLoader_task_completedWithError___block_invoke;
  v14 = &unk_2797EECC8;
  v15 = MEMORY[0x277D82BE0](selfCopy);
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

- (id)downloadCachedResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  targetPath = [location[0] targetPath];
  v20 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v18 = v20;
  v13 = [defaultManager attributesOfItemAtPath:targetPath error:&v18];
  objc_storeStrong(&v20, v18);
  v19 = v13;
  MEMORY[0x277D82BD8](defaultManager);
  if (v19)
  {
    fileSize = [v19 fileSize];
    response = [location[0] response];
    expectedContentLength = [response expectedContentLength];
    MEMORY[0x277D82BD8](response);
    if (fileSize == expectedContentLength)
    {
      v3 = [(MCLURLDataLoader *)selfCopy cachableFileAttributes:v19];
      v4 = v19;
      v19 = v3;
      MEMORY[0x277D82BD8](v4);
      downloadData = [objc_opt_class() downloadData];
      v8 = objc_opt_class();
      response2 = [location[0] response];
      v15 = [v8 duplicateResponse:response2 withContentLength:{objc_msgSend(downloadData, "length")}];
      MEMORY[0x277D82BD8](response2);
      v5 = objc_alloc(MEMORY[0x277CCA8F0]);
      v24 = [v5 initWithResponse:v15 data:downloadData userInfo:v19 storagePolicy:0];
      v17 = 1;
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&downloadData, 0);
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
  objc_storeStrong(&targetPath, 0);
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

+ (id)duplicateResponse:(id)response withContentLength:(int64_t)length
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  lengthCopy = length;
  allHeaderFields = [location[0] allHeaderFields];
  v12 = [allHeaderFields mutableCopy];
  MEMORY[0x277D82BD8](allHeaderFields);
  lengthCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", lengthCopy];
  [v12 setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](lengthCopy);
  v9 = objc_alloc(MEMORY[0x277CCAA40]);
  v10 = [location[0] URL];
  statusCode = [location[0] statusCode];
  v11 = [v9 initWithURL:v10 statusCode:statusCode HTTPVersion:@"HTTP/1.1" headerFields:v12];
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (void)updateDownloadCacheEntry:(id)entry
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, entry);
  request = [location[0] request];
  v22 = 0;
  v13 = 0;
  if ([location[0] responseOk])
  {
    hTTPMethod = [request HTTPMethod];
    v22 = 1;
    v13 = [hTTPMethod isEqualToString:@"GET"];
  }

  if (v22)
  {
    MEMORY[0x277D82BD8](hTTPMethod);
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_20;
  }

  response = [location[0] response];
  allHeaderFields = [response allHeaderFields];
  v11 = [allHeaderFields objectForKeyedSubscript:@"Cache-Control"];
  v20 = 0;
  v18 = 0;
  v16 = 0;
  v12 = 1;
  if (([v11 containsString:@"no-cache"] & 1) == 0)
  {
    response2 = [location[0] response];
    v20 = 1;
    allHeaderFields2 = [response2 allHeaderFields];
    v18 = 1;
    v17 = [allHeaderFields2 objectForKeyedSubscript:@"Pragma"];
    v16 = 1;
    v12 = [v17 containsString:@"no-cache"];
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](v17);
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](allHeaderFields2);
  }

  if (v20)
  {
    MEMORY[0x277D82BD8](response2);
  }

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](allHeaderFields);
  MEMORY[0x277D82BD8](response);
  if ((v12 & 1) == 0)
  {
    v14 = [(MCLURLDataLoader *)selfCopy downloadCachedResponse:location[0]];
    if (v14)
    {
      cache = selfCopy->_cache;
      request2 = [location[0] request];
      [(NSURLCache *)cache storeCachedResponse:v14 forRequest:?];
      MEMORY[0x277D82BD8](request2);
    }

    else
    {
      v3 = selfCopy;
      request3 = [location[0] request];
      [(MCLURLDataLoader *)v3 _removeCachedResponseForRequest:?];
      MEMORY[0x277D82BD8](request3);
    }

    objc_storeStrong(&v14, 0);
LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  v7 = selfCopy;
  request4 = [location[0] request];
  [(MCLURLDataLoader *)v7 _removeCachedResponseForRequest:?];
  MEMORY[0x277D82BD8](request4);
  v15 = 1;
LABEL_21:
  objc_storeStrong(&request, 0);
  objc_storeStrong(location, 0);
}

- (void)storeResumeData:(id)data forTask:(id)task
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v10 = 0;
  objc_storeStrong(&v10, task);
  if (location[0])
  {
    targetPath = [v10 targetPath];
    v9 = [targetPath stringByAppendingPathExtension:@"partial"];
    MEMORY[0x277D82BD8](targetPath);
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

+ (BOOL)isValidResumeData:(id)data
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
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

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v12 = 0;
  objc_storeStrong(&v12, error);
  [(NSRecursiveLock *)selfCopy->_taskQueueLock lock];
  activeTasks = selfCopy->_activeTasks;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __57__MCLURLDataLoader_URLSession_didBecomeInvalidWithError___block_invoke;
  v10 = &unk_2797EECF0;
  v11 = MEMORY[0x277D82BE0](v12);
  [(NSMutableDictionary *)activeTasks enumerateKeysAndObjectsUsingBlock:?];
  [(NSMutableDictionary *)selfCopy->_activeTasks removeAllObjects];
  [(NSMutableArray *)selfCopy->_sessionTasks removeAllObjects];
  [(NSRecursiveLock *)selfCopy->_taskQueueLock unlock];
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

- (void)URLSessionDidFinishEventsForBackgroundURLSession:(id)session
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __69__MCLURLDataLoader_URLSessionDidFinishEventsForBackgroundURLSession___block_invoke;
  v8 = &unk_2797EE220;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [mainQueue addOperationWithBlock:?];
  MEMORY[0x277D82BD8](mainQueue);
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

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v20 = 0;
  objc_storeStrong(&v20, task);
  v19 = 0;
  objc_storeStrong(&v19, error);
  v18 = [(MCLURLDataLoader *)selfCopy loaderTaskForSessionTask:v20];
  response = [v18 response];
  MEMORY[0x277D82BD8](response);
  if (!response)
  {
    response2 = [v20 response];
    [v18 setResponse:?];
    MEMORY[0x277D82BD8](response2);
  }

  [(NSMutableArray *)selfCopy->_sessionTasks removeObject:v20];
  v15 = 0;
  v7 = 0;
  if (v19)
  {
    domain = [v19 domain];
    v15 = 1;
    v7 = 0;
    if ([domain isEqualToString:*MEMORY[0x277CCA738]])
    {
      v7 = [v19 code] == -999;
    }
  }

  if (v15)
  {
    MEMORY[0x277D82BD8](domain);
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
      response3 = [v20 response];
      v13 = 1;
      v6 = [response3 expectedContentLength] >= 500000;
    }
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](response3);
  }

  if (v6)
  {
    userInfo = [v19 userInfo];
    v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA788]];
    MEMORY[0x277D82BD8](userInfo);
    [(MCLURLDataLoader *)selfCopy storeResumeData:v12 forTask:v18];
    objc_storeStrong(&v12, 0);
  }

  if (!v17 || !selfCopy->_suspended)
  {
    [(MCLURLDataLoader *)selfCopy task:v18 completedWithError:v19];
    [(MCLURLDataLoader *)selfCopy operationReschedule];
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v47 = 0;
  objc_storeStrong(&v47, task);
  v46 = 0;
  objc_storeStrong(&v46, response);
  v45 = 0;
  objc_storeStrong(&v45, handler);
  v44 = [(MCLURLDataLoader *)selfCopy loaderTaskForSessionTask:v47];
  [v44 setResponse:v46];
  if ([v44 cancelled])
  {
    (*(v45 + 2))(v45, 0);
  }

  else if ([v44 download])
  {
    v24 = selfCopy;
    request = [v44 request];
    v43 = [(MCLURLDataLoader *)v24 _cachedResponseForRequest:?];
    MEMORY[0x277D82BD8](request);
    originalRequest = [v44 originalRequest];
    v41 = 0;
    v27 = 0;
    if (![originalRequest cachePolicy])
    {
      userInfo = [v43 userInfo];
      v41 = 1;
      v27 = userInfo != 0;
    }

    if (v41)
    {
      MEMORY[0x277D82BD8](userInfo);
    }

    MEMORY[0x277D82BD8](originalRequest);
    if (v27)
    {
      response = [v44 response];
      allHeaderFields = [response allHeaderFields];
      v40 = [allHeaderFields mutableCopy];
      MEMORY[0x277D82BD8](allHeaderFields);
      MEMORY[0x277D82BD8](response);
      response2 = [v43 response];
      allHeaderFields2 = [response2 allHeaderFields];
      v39 = [allHeaderFields2 mutableCopy];
      MEMORY[0x277D82BD8](allHeaderFields2);
      MEMORY[0x277D82BD8](response2);
      [v40 removeObjectForKey:?];
      [v39 removeObjectForKey:@"Date"];
      null = [MEMORY[0x277CBEB68] null];
      v38 = [v40 objectsForKeys:&unk_286780F40 notFoundMarker:?];
      MEMORY[0x277D82BD8](null);
      null2 = [MEMORY[0x277CBEB68] null];
      v37 = [v39 objectsForKeys:&unk_286780F58 notFoundMarker:?];
      MEMORY[0x277D82BD8](null2);
      if ([v44 responseOk] & 1) == 0 || (objc_msgSend(v38, "isEqualToArray:", v37))
      {
        if (([v44 responseOk] & 1) != 0 && (objc_msgSend(v40, "isEqualToDictionary:", v39) & 1) == 0)
        {
          [(MCLURLDataLoader *)selfCopy updateDownloadCacheEntry:v44];
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
    v16 = selfCopy;
    request2 = [v44 request];
    v36 = [(MCLURLDataLoader *)v16 _cachedResponseForRequest:?];
    MEMORY[0x277D82BD8](request2);
    if (v36)
    {
      response3 = [v44 response];
      allHeaderFields3 = [response3 allHeaderFields];
      v35 = [allHeaderFields3 mutableCopy];
      MEMORY[0x277D82BD8](allHeaderFields3);
      MEMORY[0x277D82BD8](response3);
      response4 = [v36 response];
      allHeaderFields4 = [response4 allHeaderFields];
      v34 = [allHeaderFields4 mutableCopy];
      MEMORY[0x277D82BD8](allHeaderFields4);
      MEMORY[0x277D82BD8](response4);
      [v35 removeObjectForKey:?];
      [v34 removeObjectForKey:@"Date"];
      null3 = [MEMORY[0x277CBEB68] null];
      v33 = [v35 objectsForKeys:&unk_286780F70 notFoundMarker:?];
      MEMORY[0x277D82BD8](null3);
      null4 = [MEMORY[0x277CBEB68] null];
      v32 = [v34 objectsForKeys:&unk_286780F88 notFoundMarker:?];
      MEMORY[0x277D82BD8](null4);
      if ([v44 responseOk] & 1) != 0 && (objc_msgSend(v33, "isEqualToArray:", v32))
      {
        [v44 setCachedResponse:1];
      }

      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
    }

    receiveDataHandler = [v44 receiveDataHandler];
    if (receiveDataHandler)
    {
      (*(receiveDataHandler + 2))(receiveDataHandler, v44, 0);
    }

    else
    {
      v9 = objc_alloc(MEMORY[0x277CBEB28]);
      if ([v46 expectedContentLength])
      {
        if ([v46 expectedContentLength] >= 0xF4240)
        {
          expectedContentLength = 1000000;
        }

        else
        {
          expectedContentLength = [v46 expectedContentLength];
        }

        v7 = expectedContentLength;
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
    objc_storeStrong(&receiveDataHandler, 0);
    objc_storeStrong(&v36, 0);
  }

  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)session dataTask:(id)task didBecomeDownloadTask:(id)downloadTask
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v13 = 0;
  objc_storeStrong(&v13, task);
  v12 = 0;
  objc_storeStrong(&v12, downloadTask);
  v11 = [(MCLURLDataLoader *)selfCopy loaderTaskForSessionTask:v13];
  activeTasks = selfCopy->_activeTasks;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "taskIdentifier")}];
  [(NSMutableDictionary *)activeTasks removeObjectForKey:?];
  MEMORY[0x277D82BD8](v10);
  if (v11)
  {
    v5 = selfCopy->_activeTasks;
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "taskIdentifier")}];
    [(NSMutableDictionary *)v5 setObject:v11 forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v6);
  }

  [(NSMutableArray *)selfCopy->_sessionTasks removeObject:v13];
  [(NSMutableArray *)selfCopy->_sessionTasks addObject:v12];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v12 = 0;
  objc_storeStrong(&v12, task);
  v11 = 0;
  objc_storeStrong(&v11, data);
  v10 = [(MCLURLDataLoader *)selfCopy loaderTaskForSessionTask:v12];
  if ([v10 cancelled])
  {
    [v12 cancel];
    v9 = 1;
  }

  else
  {
    receiveDataHandler = [v10 receiveDataHandler];
    if (receiveDataHandler)
    {
      (*(receiveDataHandler + 2))(receiveDataHandler, v10, v11);
    }

    else
    {
      responseData = [v10 responseData];
      [responseData appendData:v11];
      MEMORY[0x277D82BD8](responseData);
    }

    objc_storeStrong(&receiveDataHandler, 0);
    v9 = 0;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)session dataTask:(id)task willCacheResponse:(id)response completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v24 = 0;
  objc_storeStrong(&v24, task);
  v23 = 0;
  objc_storeStrong(&v23, response);
  v22 = 0;
  objc_storeStrong(&v22, handler);
  v21 = [(MCLURLDataLoader *)selfCopy loaderTaskForSessionTask:v24];
  v19 = 0;
  v13 = 1;
  if (v21)
  {
    v13 = 1;
    if (([v21 download] & 1) == 0)
    {
      receiveDataHandler = [v21 receiveDataHandler];
      v19 = 1;
      v13 = receiveDataHandler != 0;
    }
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](receiveDataHandler);
  }

  if (v13)
  {
    (*(v22 + 2))(v22, 0);
  }

  else
  {
    response = [v23 response];
    allHeaderFields = [response allHeaderFields];
    MEMORY[0x277D82BD8](response);
    originalRequest = [v24 originalRequest];
    v16 = 0;
    v14 = 0;
    v9 = 1;
    if ([originalRequest cachePolicy] != 1)
    {
      v17 = [allHeaderFields objectForKeyedSubscript:@"Cache-Control"];
      v16 = 1;
      v6 = 0;
      if (!v17)
      {
        v15 = [allHeaderFields objectForKeyedSubscript:@"Expires"];
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

    MEMORY[0x277D82BD8](originalRequest);
    if (v9)
    {
      (*(v22 + 2))(v22, 0);
    }

    else
    {
      (*(v22 + 2))(v22, v23);
    }

    objc_storeStrong(&allHeaderFields, 0);
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v22 = 0;
  objc_storeStrong(&v22, task);
  v21 = 0;
  objc_storeStrong(&v21, redirection);
  v20 = 0;
  objc_storeStrong(&v20, request);
  v19 = 0;
  objc_storeStrong(&v19, handler);
  v18 = [(MCLURLDataLoader *)selfCopy loaderTaskForSessionTask:v22];
  if ([v18 cancelled])
  {
    [v22 cancel];
    v17 = 1;
  }

  else
  {
    redirectHandler = [v18 redirectHandler];
    if (redirectHandler)
    {
      v15 = (*(redirectHandler + 2))(redirectHandler, v18, v21, v20);
      if (v15)
      {
        [v18 setRequest:v15];
        v14 = [v15 mutableCopy];
        v8 = v14;
        [v15 timeoutInterval];
        [v8 setTimeoutInterval:?];
        [objc_opt_class() applyDefaultRequestHeaders:v14];
        [(MCLURLDataLoader *)selfCopy processURLRequestRewrite:v14];
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
      [(MCLURLDataLoader *)selfCopy processURLRequestRewrite:v13];
      (*(v19 + 2))(v19, v13);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&redirectHandler, 0);
    v17 = 0;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)session downloadTask:(id)task didFinishDownloadingToURL:(id)l
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v29 = 0;
  objc_storeStrong(&v29, task);
  v28 = 0;
  objc_storeStrong(&v28, l);
  v27 = [(MCLURLDataLoader *)selfCopy loaderTaskForSessionTask:v29];
  response = [v29 response];
  [v27 setResponse:?];
  MEMORY[0x277D82BD8](response);
  if ([v27 responseOk])
  {
    v25 = 0;
    [v27 applyMimeType];
    targetPath = [v27 targetPath];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:targetPath])
    {
      response2 = [v27 response];
      expectedContentLength = [response2 expectedContentLength];
      MEMORY[0x277D82BD8](response2);
      v22 = expectedContentLength;
      if ((expectedContentLength & 0x8000000000000000) == 0)
      {
        path = [v28 path];
        v20 = v25;
        v9 = [defaultManager attributesOfItemAtPath:? error:?];
        objc_storeStrong(&v25, v20);
        v21 = v9;
        MEMORY[0x277D82BD8](path);
        v18 = 0;
        v11 = 1;
        if (v9)
        {
          v11 = 1;
          if ([v21 fileSize] >= v22)
          {
            downloadData = [objc_opt_class() downloadData];
            v18 = 1;
            v11 = v22 == [downloadData length];
          }
        }

        if (v18)
        {
          MEMORY[0x277D82BD8](downloadData);
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

      [defaultManager removeItemAtPath:targetPath error:0];
    }

    v6 = defaultManager;
    v5 = v28;
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:targetPath];
    v17 = v25;
    v8 = [v6 moveItemAtURL:v5 toURL:? error:?];
    objc_storeStrong(&v25, v17);
    MEMORY[0x277D82BD8](v7);
    if (v8)
    {
      [(MCLURLDataLoader *)selfCopy updateDownloadCacheEntry:v27];
    }

    else
    {
      [(MCLURLDataLoader *)selfCopy task:v27 completedWithError:v25];
    }

    v26 = 0;
LABEL_19:
    objc_storeStrong(&defaultManager, 0);
    objc_storeStrong(&targetPath, 0);
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

- (void)URLSession:(id)session downloadTask:(id)task didResumeAtOffset:(int64_t)offset expectedTotalBytes:(int64_t)bytes
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v7 = 0;
  objc_storeStrong(&v7, task);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)URLSession:(id)session downloadTask:(id)task didWriteData:(int64_t)data totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v13 = 0;
  objc_storeStrong(&v13, task);
  v12[3] = data;
  v12[2] = written;
  v12[1] = write;
  v12[0] = [(MCLURLDataLoader *)selfCopy loaderTaskForSessionTask:v13];
  HIDWORD(v7) = HIDWORD(written);
  *&v7 = (written * 1.0) / write;
  [v12[0] setProgress:v7];
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_removeCachedResponseForRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  [(MCLURLDataLoader *)selfCopy _removeCachedResponseForRequest:location[0] force:0];
  objc_storeStrong(location, 0);
}

- (void)_removeCachedResponseForRequest:(id)request force:(BOOL)force
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  forceCopy = force;
  if (force)
  {
    v13 = MEMORY[0x277D82BE0](&unk_286781048);
    v12 = MEMORY[0x277D82BE0](&unk_286781070);
    v4 = objc_alloc(MEMORY[0x277CCAA40]);
    v5 = [location[0] URL];
    v11 = [v4 initWithURL:? statusCode:? HTTPVersion:? headerFields:?];
    MEMORY[0x277D82BD8](v5);
    v7 = objc_alloc(MEMORY[0x277CCA8F0]);
    v6 = v11;
    data = [MEMORY[0x277CBEA90] data];
    v10 = [v7 initWithResponse:v6 data:? userInfo:? storagePolicy:?];
    MEMORY[0x277D82BD8](data);
    [(NSURLCache *)selfCopy->_cache storeCachedResponse:v10 forRequest:location[0]];
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  [(NSURLCache *)selfCopy->_cache removeCachedResponseForRequest:location[0]];
  objc_storeStrong(location, 0);
}

- (id)_cachedResponseForRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v9 = [(NSURLCache *)selfCopy->_cache cachedResponseForRequest:location[0]];
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