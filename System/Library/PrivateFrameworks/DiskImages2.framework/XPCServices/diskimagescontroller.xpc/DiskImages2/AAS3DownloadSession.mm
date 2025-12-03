@interface AAS3DownloadSession
+ (void)completeRequest:(id)request data:(id)data response:(id)response error:(id)error;
- (AAS3DownloadSession)initWithURL:(id)l streamBase:(id *)base maxAttempts:(unsigned int)attempts pauseInterval:(float)interval maxRequestsInFlight:(unsigned int)flight;
- (id)enqueueRequestWithSize:(unint64_t)size atOffset:(int64_t)offset destinationBuffer:(char *)buffer destinationStream:(AAAsyncByteStream_impl *)stream completionSemaphore:(id)semaphore;
- (int)addRequest:(id)request;
- (int)readToAsyncByteStream:(AAAsyncByteStream_impl *)stream size:(unint64_t)size atOffset:(int64_t)offset;
- (int)syncRequests;
- (int64_t)readToBuffer:(void *)buffer size:(unint64_t)size atOffset:(int64_t)offset;
- (void)cacheDocument:(id)document;
- (void)invalidateAndCancel;
- (void)removeRequest:(id)request;
@end

@implementation AAS3DownloadSession

- (AAS3DownloadSession)initWithURL:(id)l streamBase:(id *)base maxAttempts:(unsigned int)attempts pauseInterval:(float)interval maxRequestsInFlight:(unsigned int)flight
{
  lCopy = l;
  v58.receiver = self;
  v58.super_class = AAS3DownloadSession;
  v14 = [(AAS3DownloadSession *)&v58 init];
  if (v14)
  {
    obj = l;
    attemptsCopy = attempts;
    flightCopy = flight;
    v57 = lCopy;
    v56 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    v18 = objc_alloc_init(NSMutableDictionary);
    baseCopy = base;
    var2 = base->var2;
    if (*(var2 + 348))
    {
      v20 = [NSString stringWithUTF8String:?];
      [v18 setValue:v20 forKey:@"User-Agent"];
    }

    for (i = *(var2 + 349); i; i = *(i + 8))
    {
      v22 = *i;
      if (*i)
      {
        v23 = strlen(*i);
        v24 = v23 + 1;
        if (v23 + 1 < 0x2000000001)
        {
          v25 = malloc(v23 + 1);
          if (v25)
          {
            v26 = v25;
            memcpy(v25, v22, v24);
            v27 = strchr(v26, 58);
            if (v27)
            {
              *v27 = 0;
              v30 = [NSString stringWithUTF8String:v27 + 1];
              v31 = [NSString stringWithUTF8String:v26];
              [v18 setValue:v30 forKey:v31];
            }

            else
            {
              sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession initWithURL:streamBase:maxAttempts:pauseInterval:maxRequestsInFlight:]", 252, 121, 0, "invalid header: %s", v28, v29, v26);
            }

            free(v26);
            continue;
          }
        }

        else
        {
          *__error() = 12;
        }
      }

      v32 = __error();
      sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession initWithURL:streamBase:maxAttempts:pauseInterval:maxRequestsInFlight:]", 250, 121, *v32, "malloc", v33, v34, v51);
    }

    if (*(var2 + 350))
    {
      sub_10001E660("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession initWithURL:streamBase:maxAttempts:pauseInterval:maxRequestsInFlight:]", 259, 121, "Non supported options in AAS3DownloadSession (ignored): proxy_headers %s", v15, v16, v17, *(var2 + 350));
    }

    if (*(var2 + 346))
    {
      sub_10001E660("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession initWithURL:streamBase:maxAttempts:pauseInterval:maxRequestsInFlight:]", 260, 121, "Non supported options in AAS3DownloadSession (ignored): pinned_public_key %s", v15, v16, v17, *(var2 + 346));
    }

    if (*(var2 + 347))
    {
      sub_10001E660("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession initWithURL:streamBase:maxAttempts:pauseInterval:maxRequestsInFlight:]", 261, 121, "Non supported options in AAS3DownloadSession (ignored): proxy_pinned_public_key %s", v15, v16, v17, *(var2 + 347));
    }

    [(NSURLSessionConfiguration *)v56 setHTTPAdditionalHeaders:v18];
    [(NSURLSessionConfiguration *)v56 setHTTPMaximumConnectionsPerHost:16];
    [(NSURLSessionConfiguration *)v56 setTimeoutIntervalForRequest:120.0];
    [(NSURLSessionConfiguration *)v56 setTimeoutIntervalForResource:1200.0];
    v35 = [NSURLSession sessionWithConfiguration:v56];
    urlSession = v14->_urlSession;
    v14->_urlSession = v35;

    objc_storeStrong(&v14->_url, obj);
    v14->_streamBase = baseCopy;
    v37 = objc_alloc_init(NSMutableSet);
    requests = v14->_requests;
    v14->_requests = v37;

    v39 = objc_alloc_init(NSLock);
    requestsLock = v14->_requestsLock;
    v14->_requestsLock = v39;

    if (attemptsCopy)
    {
      v41 = attemptsCopy;
    }

    else
    {
      v41 = 5;
    }

    intervalCopy = 250.0;
    if (interval != 0.0)
    {
      intervalCopy = interval;
    }

    v14->_pauseInterval = intervalCopy;
    if (flightCopy)
    {
      v43 = flightCopy;
    }

    else
    {
      v43 = 16;
    }

    v14->_maxRequests = v43;
    v14->_maxAttempts = v41;
    v44 = dispatch_semaphore_create(v43);
    requestsSem = v14->_requestsSem;
    v14->_requestsSem = v44;

    atomic_store(0, &v14->_bytesDownloaded);
    v46 = objc_alloc_init(NSLock);
    cacheLock = v14->_cacheLock;
    v14->_cacheLock = v46;

    cache = v14->_cache;
    v14->_cache = 0;

    v49 = v14;
    lCopy = v57;
  }

  return v14;
}

- (int)addRequest:(id)request
{
  requestCopy = request;
  requestsSem = [(AAS3DownloadSession *)self requestsSem];
  v6 = dispatch_time(0, 600000000000);
  v7 = dispatch_semaphore_wait(requestsSem, v6);

  if (v7)
  {
    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession addRequest:]", 292, 121, 0, "euqueueRequest timed out", v8, v9, v15);
    v10 = -1;
  }

  else
  {
    requestsLock = [(AAS3DownloadSession *)self requestsLock];
    [(NSLock *)requestsLock lock];

    requests = [(AAS3DownloadSession *)self requests];
    [(NSMutableSet *)requests addObject:requestCopy];

    requestsLock2 = [(AAS3DownloadSession *)self requestsLock];
    [(NSLock *)requestsLock2 unlock];

    v10 = 0;
  }

  return v10;
}

- (void)removeRequest:(id)request
{
  requestCopy = request;
  requestsLock = [(AAS3DownloadSession *)self requestsLock];
  [(NSLock *)requestsLock lock];

  requests = [(AAS3DownloadSession *)self requests];
  [(NSMutableSet *)requests removeObject:requestCopy];

  requestsLock2 = [(AAS3DownloadSession *)self requestsLock];
  [(NSLock *)requestsLock2 unlock];

  requestsSem = [(AAS3DownloadSession *)self requestsSem];
  dispatch_semaphore_signal(requestsSem);
}

- (id)enqueueRequestWithSize:(unint64_t)size atOffset:(int64_t)offset destinationBuffer:(char *)buffer destinationStream:(AAAsyncByteStream_impl *)stream completionSemaphore:(id)semaphore
{
  semaphoreCopy = semaphore;
  v13 = [[AAS3DownloadRequest alloc] initWithSession:self size:size atOffset:offset destinationBuffer:buffer destinationStream:stream completionSemaphore:semaphoreCopy];

  if (v13)
  {
    if ([(AAS3DownloadSession *)self addRequest:v13]< 0)
    {
      v17 = "addRequest";
      v18 = 335;
    }

    else
    {
      if (([(AAS3DownloadRequest *)v13 createAndResumeTask]& 0x80000000) == 0)
      {
        v16 = v13;
        goto LABEL_9;
      }

      v17 = "createTask";
      v18 = 338;
    }
  }

  else
  {
    v17 = "Request creation";
    v18 = 332;
  }

  sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession enqueueRequestWithSize:atOffset:destinationBuffer:destinationStream:completionSemaphore:]", v18, 121, 0, v17, v14, v15, v20);
  v16 = 0;
LABEL_9:

  return v16;
}

- (int64_t)readToBuffer:(void *)buffer size:(unint64_t)size atOffset:(int64_t)offset
{
  cacheLock = [(AAS3DownloadSession *)self cacheLock];
  [(NSLock *)cacheLock lock];

  cache = [(AAS3DownloadSession *)self cache];
  if (cache)
  {
    cache2 = [(AAS3DownloadSession *)self cache];
    v12 = [(NSData *)cache2 length];

    cache3 = [(AAS3DownloadSession *)self cache];
    bytes = [(NSData *)cache3 bytes];

    v15 = offset & ~(offset >> 63);
    v16 = offset + size;
    if (v12 < (offset + size))
    {
      v16 = v12;
    }

    v17 = v16 - v15;
    if (v16 > v15)
    {
      memcpy(buffer, &bytes[v15], v17);
    }

    cacheLock2 = [(AAS3DownloadSession *)self cacheLock];
    [(NSLock *)cacheLock2 unlock];

    v19 = 0;
    v20 = 0;
  }

  else
  {
    cacheLock3 = [(AAS3DownloadSession *)self cacheLock];
    [(NSLock *)cacheLock3 unlock];

    v20 = dispatch_semaphore_create(0);
    v19 = [(AAS3DownloadSession *)self enqueueRequestWithSize:size atOffset:offset destinationBuffer:buffer destinationStream:0 completionSemaphore:v20];
    if (v19)
    {
      v24 = dispatch_time(0, 600000000000);
      if (dispatch_semaphore_wait(v20, v24))
      {
        v25 = "Request timed out";
        v26 = 384;
      }

      else
      {
        if ([v19 status] > 0)
        {
          goto LABEL_12;
        }

        v25 = "Request failed";
        v26 = 386;
      }
    }

    else
    {
      v25 = "enqueueRequest";
      v26 = 380;
    }

    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession readToBuffer:size:atOffset:]", v26, 121, 0, v25, v22, v23, v28);
    size = -1;
  }

LABEL_12:

  return size;
}

- (int)syncRequests
{
  if ([(AAS3DownloadSession *)self maxRequests])
  {
    v3 = 0;
    while (1)
    {
      requestsSem = [(AAS3DownloadSession *)self requestsSem];
      v5 = dispatch_time(0, 600000000000);
      v6 = dispatch_semaphore_wait(requestsSem, v5);

      if (v6)
      {
        break;
      }

      if (++v3 >= [(AAS3DownloadSession *)self maxRequests])
      {
        goto LABEL_5;
      }
    }

    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession syncRequests]", 401, 121, 0, "Request timed out", v7, v8, v12);
    return -1;
  }

  else
  {
LABEL_5:
    result = [(AAS3DownloadSession *)self maxRequests];
    if (result)
    {
      v10 = 0;
      do
      {
        requestsSem2 = [(AAS3DownloadSession *)self requestsSem];
        dispatch_semaphore_signal(requestsSem2);

        ++v10;
      }

      while (v10 < [(AAS3DownloadSession *)self maxRequests]);
      return 0;
    }
  }

  return result;
}

- (int)readToAsyncByteStream:(AAAsyncByteStream_impl *)stream size:(unint64_t)size atOffset:(int64_t)offset
{
  if (size)
  {
    cacheLock = [(AAS3DownloadSession *)self cacheLock];
    [(NSLock *)cacheLock lock];

    cache = [(AAS3DownloadSession *)self cache];
    if (cache)
    {
      cache2 = [(AAS3DownloadSession *)self cache];
      [(NSData *)cache2 length];

      cache3 = [(AAS3DownloadSession *)self cache];
      [(NSData *)cache3 bytes];

      AAAsyncByteStreamProcess();
      cacheLock2 = [(AAS3DownloadSession *)self cacheLock];
      [(NSLock *)cacheLock2 unlock];

      v19 = 0;
LABEL_7:
      v14 = 0;
      goto LABEL_8;
    }

    cacheLock3 = [(AAS3DownloadSession *)self cacheLock];
    [(NSLock *)cacheLock3 unlock];

    v19 = [(AAS3DownloadSession *)self enqueueRequestWithSize:size atOffset:offset destinationBuffer:0 destinationStream:stream completionSemaphore:0];
    if (v19)
    {
      goto LABEL_7;
    }

    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadSession readToAsyncByteStream:size:atOffset:]", 451, 121, 0, "enqueueRequest", v16, v17, v21);
    v19 = 0;
    v14 = -1;
  }

  else
  {
    v13 = [(AAS3DownloadSession *)self syncRequests:stream];
    v19 = 0;
    v14 = v13 >> 31;
  }

LABEL_8:

  return v14;
}

+ (void)completeRequest:(id)request data:(id)data response:(id)response error:(id)error
{
  requestCopy = request;
  dataCopy = data;
  responseCopy = response;
  errorCopy = error;
  downloadSession = [requestCopy downloadSession];
  statusCode = [responseCopy statusCode];
  if ([downloadSession isCancelled] || errorCopy && objc_msgSend(errorCopy, "code") == -999)
  {
    goto LABEL_2;
  }

  if (statusCode == 416)
  {
    [dataCopy bytes];
    if ([requestCopy stream])
    {
      [requestCopy stream];
      [requestCopy offset];
      AAAsyncByteStreamProcess();
    }

    goto LABEL_2;
  }

  if (statusCode == 206)
  {
    v21 = [dataCopy length];
    nbyte = [requestCopy nbyte];
    if (v21 >= nbyte)
    {
      v32 = nbyte;
    }

    else
    {
      v32 = v21;
    }

    bytes = [dataCopy bytes];
    if ([requestCopy buf])
    {
      memcpy([requestCopy buf], bytes, v32);
    }

    if (![requestCopy stream])
    {
      goto LABEL_33;
    }

LABEL_32:
    [requestCopy stream];
    [requestCopy offset];
    AAAsyncByteStreamProcess();
LABEL_33:
    [downloadSession addBytesDownloaded:v21];
LABEL_2:
    v18 = 1;
    goto LABEL_3;
  }

  if (statusCode == 200)
  {
    v21 = [dataCopy length];
    bytes2 = [dataCopy bytes];
    [downloadSession cacheDocument:dataCopy];
    offset = [requestCopy offset];
    v24 = offset & ~(offset >> 63);
    offset2 = [requestCopy offset];
    v26 = &offset2[[requestCopy nbyte]];
    if (v21 < v26)
    {
      v26 = v21;
    }

    v27 = v26 <= v24;
    v28 = &v26[-v24];
    if (v27)
    {
      v29 = 0;
    }

    else
    {
      v29 = v24;
    }

    if (v27)
    {
      v30 = 0;
    }

    else
    {
      v30 = v28;
    }

    if ([requestCopy buf])
    {
      memcpy([requestCopy buf], &bytes2[v29], v30);
    }

    if (![requestCopy stream])
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (errorCopy && (v34 = [errorCopy description]) != 0)
  {
    v35 = v34;
    [v34 UTF8String];
    sub_10001E660("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "+[AAS3DownloadSession completeRequest:data:response:error:]", 546, 121, "Request failed: %03ld %s", v36, v37, v38, statusCode);
  }

  else
  {
    sub_10001E660("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "+[AAS3DownloadSession completeRequest:data:response:error:]", 547, 121, "Request failed: %03ld (error not set)", v15, v16, v17, statusCode);
  }

  if ([requestCopy remainingAttempts])
  {
    [requestCopy pauseInterval];
    v40 = v39;
    [requestCopy nbyte];
    [requestCopy offset];
    sub_10001E660("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "+[AAS3DownloadSession completeRequest:data:response:error:]", 554, 121, "Retrying request after %.0f seconds %zu bytes at offset %llu", v41, v42, v43, SLOBYTE(v40));
    [requestCopy pauseInterval];
    [NSThread sleepForTimeInterval:v44];
    [requestCopy pauseInterval];
    *&v46 = v45 + v45;
    [requestCopy setPauseInterval:v46];
    if (([requestCopy createAndResumeTask] & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    sub_10001E554("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "+[AAS3DownloadSession completeRequest:data:response:error:]", 561, 121, 0, "createTask", v47, v48, v49);
  }

  v18 = 0xFFFFFFFFLL;
LABEL_3:
  [requestCopy setStatus:v18];
  v19 = [requestCopy sem];

  if (v19)
  {
    v20 = [requestCopy sem];
    dispatch_semaphore_signal(v20);
  }

  [downloadSession removeRequest:requestCopy];
LABEL_6:
}

- (void)invalidateAndCancel
{
  v3 = 0;
  atomic_compare_exchange_strong(&self->_cancelled, &v3, 1u);
  urlSession = [(AAS3DownloadSession *)self urlSession];
  [(NSURLSession *)urlSession invalidateAndCancel];

  [(AAS3DownloadSession *)self syncRequests];
}

- (void)cacheDocument:(id)document
{
  documentCopy = document;
  cacheLock = [(AAS3DownloadSession *)self cacheLock];
  [(NSLock *)cacheLock lock];

  cache = [(AAS3DownloadSession *)self cache];
  if (!cache)
  {
    [(AAS3DownloadSession *)self setCache:documentCopy];
  }

  cacheLock2 = [(AAS3DownloadSession *)self cacheLock];
  [(NSLock *)cacheLock2 unlock];
}

@end