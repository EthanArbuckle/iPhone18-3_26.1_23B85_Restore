@interface ResourceLoader
+ (id)_localDateFormatter;
+ (id)_rfc1123DateFormatter;
- (ResourceLoader)init;
- (double)_simulatedLatency;
- (void)asynchronousDataFromURL:(id)a3 completionBlock:(id)a4;
- (void)flushCache;
- (void)refreshCacheForRequest:(id)a3 usingCachedResponse:(id)a4 completionBlock:(id)a5;
@end

@implementation ResourceLoader

+ (id)_rfc1123DateFormatter
{
  if (_rfc1123DateFormatter_onceToken != -1)
  {
    +[ResourceLoader _rfc1123DateFormatter];
  }

  v3 = _rfc1123DateFormatter_formatter;

  return v3;
}

void __39__ResourceLoader__rfc1123DateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _rfc1123DateFormatter_formatter;
  _rfc1123DateFormatter_formatter = v0;

  [_rfc1123DateFormatter_formatter setDateFormat:@"EEE', ' dd MMM yyyy HH':'mm':'ss 'GMT'"];
  v2 = [MEMORY[0x277CBEBB0] timeZoneWithName:@"GMT"];
  [_rfc1123DateFormatter_formatter setTimeZone:v2];
}

+ (id)_localDateFormatter
{
  v2 = _localDateFormatter_formatter;
  if (!_localDateFormatter_formatter)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCA968]);
    v4 = _localDateFormatter_formatter;
    _localDateFormatter_formatter = v3;

    v5 = [MEMORY[0x277CBEBB0] systemTimeZone];
    [_localDateFormatter_formatter setTimeZone:v5];

    [_localDateFormatter_formatter setDateStyle:1];
    [_localDateFormatter_formatter setTimeStyle:2];
    v2 = _localDateFormatter_formatter;
  }

  return v2;
}

- (ResourceLoader)init
{
  v13.receiver = self;
  v13.super_class = ResourceLoader;
  v2 = [(ResourceLoader *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v4 = [&stru_285B72378 stringByAppendingPathComponent:@"DeviceImages"];
    v5 = [objc_alloc(MEMORY[0x277CCACD8]) initWithMemoryCapacity:0x400000 diskCapacity:52428800 diskPath:v4];
    [(ResourceLoader *)v2 setUrlCache:v5];

    v6 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [(ResourceLoader *)v2 setQueue:v6];

    v7 = [(ResourceLoader *)v2 queue];
    [v7 setQualityOfService:25];

    v8 = [(ResourceLoader *)v2 urlCache];
    [v3 setURLCache:v8];

    v9 = MEMORY[0x277CCAD30];
    v10 = [(ResourceLoader *)v2 queue];
    v11 = [v9 sessionWithConfiguration:v3 delegate:v2 delegateQueue:v10];
    [(ResourceLoader *)v2 setSession:v11];
  }

  return v2;
}

- (void)refreshCacheForRequest:(id)a3 usingCachedResponse:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277CBEBD0];
  v11 = a4;
  v12 = [v10 standardUserDefaults];
  v13 = [v12 BOOLForKey:@"verboseNetworking"];

  v14 = [v11 response];

  v15 = [v14 allHeaderFields];

  v16 = MEMORY[0x277CCAB70];
  v17 = [v8 URL];
  [v8 timeoutInterval];
  v18 = [v16 requestWithURL:v17 cachePolicy:0 timeoutInterval:?];

  v19 = [v15 objectForKeyedSubscript:@"Last-Modified"];
  v20 = [v15 objectForKeyedSubscript:@"Etag"];
  v21 = v20;
  if (v11 && v19 && v20)
  {
    [v18 setValue:v19 forHTTPHeaderField:@"If-Modified-Since"];
    [v18 setValue:v21 forHTTPHeaderField:@"If-None-Match"];
  }

  if (v13)
  {
    v22 = MEMORY[0x277CCAB68];
    v23 = [v18 URL];
    v24 = [v22 stringWithFormat:@"%@ GET %@\n", self, v23];

    v25 = [v8 allHTTPHeaderFields];

    if (v25)
    {
      v26 = [v8 allHTTPHeaderFields];
      v27 = [v26 description];
      [v24 appendString:v27];
    }
  }

  v28 = [(ResourceLoader *)self session];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __77__ResourceLoader_refreshCacheForRequest_usingCachedResponse_completionBlock___block_invoke;
  v32[3] = &unk_278F66CC0;
  v32[4] = self;
  v33 = v18;
  v34 = v9;
  v29 = v9;
  v30 = v18;
  v31 = [v28 dataTaskWithRequest:v30 completionHandler:v32];

  [v31 resume];
}

void __77__ResourceLoader_refreshCacheForRequest_usingCachedResponse_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) _simulatedLatency];
  v11 = v10;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v8;
    v13 = [v12 statusCode];
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v14 = [MEMORY[0x277CBEB38] dictionaryWithObject:*(a1 + 40) forKey:@"request"];
  v15 = v14;
  if (v8)
  {
    [v14 setObject:v8 forKeyedSubscript:ResourceLoaderPayloadResponseKey];
  }

  if (v9)
  {
    [v15 setObject:v9 forKeyedSubscript:ResourceLoaderPayloadErrorKey];
  }

  v16 = [v12 statusCode];
  if (v7 && v16 == 200)
  {
    [v15 setObject:v7 forKeyedSubscript:ResourceLoaderPayloadDataKey];
  }

  if (v13 != 200 && v13 != 304)
  {
    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:ResourceLoaderErrorDomain code:v13 userInfo:0];
    if (!v9)
    {
      [v15 setObject:v17 forKeyedSubscript:ResourceLoaderPayloadErrorKey];
    }
  }

  if (v11 <= 0.0)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v18 = dispatch_time(0, (v11 * 1000000000.0));
    v19 = dispatch_get_global_queue(0, 0);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __77__ResourceLoader_refreshCacheForRequest_usingCachedResponse_completionBlock___block_invoke_2;
    v20[3] = &unk_278F653F8;
    v22 = *(a1 + 48);
    v21 = v15;
    dispatch_after(v18, v19, v20);
  }
}

- (void)asynchronousDataFromURL:(id)a3 completionBlock:(id)a4
{
  v42[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![v6 isFileURL])
  {
    v10 = [(ResourceLoader *)self urlCache];
    v11 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v6 cachePolicy:0 timeoutInterval:120.0];
    v12 = [v10 cachedResponseForRequest:v11];
    v34 = [v12 response];
    v13 = [v34 allHeaderFields];
    v14 = [v13 objectForKeyedSubscript:@"Expires"];
    if ([v14 length])
    {
      v15 = +[ResourceLoader _rfc1123DateFormatter];
      v16 = [v15 dateFromString:v14];

      v17 = v16;
      if (v16)
      {
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        v19 = v18;
        [v16 timeIntervalSinceReferenceDate];
        v21 = v19 > v20;
        if (!v7)
        {
          goto LABEL_13;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v17 = 0;
    }

    v21 = 1;
    if (!v7)
    {
LABEL_13:

      goto LABEL_14;
    }

LABEL_9:
    v33 = v17;
    v22 = [v12 data];

    if (v22)
    {
      v39 = ResourceLoaderPayloadDataKey;
      v23 = [v12 data];
      v40 = v23;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v32 = v10;
      v24 = v12;
      v25 = v13;
      v26 = v14;
      v27 = self;
      v29 = v28 = v21;

      v7[2](v7, v29, 1);
      v21 = v28;
      self = v27;
      v14 = v26;
      v13 = v25;
      v12 = v24;
      v10 = v32;
    }

    v17 = v33;
    if (v21)
    {
      v30 = [(ResourceLoader *)self queue];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __58__ResourceLoader_asynchronousDataFromURL_completionBlock___block_invoke;
      v35[3] = &unk_278F65AF8;
      v35[4] = self;
      v36 = v11;
      v37 = v12;
      v38 = v7;
      [v30 addOperationWithBlock:v35];

      v17 = v33;
    }

    goto LABEL_13;
  }

  v8 = MEMORY[0x277CBEA90];
  v9 = [v6 path];
  v10 = [v8 dataWithContentsOfFile:v9];

  v41 = ResourceLoaderPayloadDataKey;
  v42[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  v7[2](v7, v11, 1);
LABEL_14:

  v31 = *MEMORY[0x277D85DE8];
}

void __58__ResourceLoader_asynchronousDataFromURL_completionBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__ResourceLoader_asynchronousDataFromURL_completionBlock___block_invoke_2;
  v4[3] = &unk_278F66CE8;
  v3 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v1 refreshCacheForRequest:v2 usingCachedResponse:v3 completionBlock:v4];
}

- (void)flushCache
{
  v2 = [(ResourceLoader *)self urlCache];
  [v2 removeAllCachedResponses];
}

- (double)_simulatedLatency
{
  if (_simulatedLatency_onceToken != -1)
  {
    [ResourceLoader _simulatedLatency];
  }

  return *&_simulatedLatency_retValue;
}

void __35__ResourceLoader__simulatedLatency__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v0 objectForKey:@"ISSimulateLatency"];

  v1 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v1 = v3;
    _simulatedLatency_retValue = v2;
  }
}

@end