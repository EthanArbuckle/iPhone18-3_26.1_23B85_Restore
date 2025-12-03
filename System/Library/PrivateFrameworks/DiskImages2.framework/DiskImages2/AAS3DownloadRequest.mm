@interface AAS3DownloadRequest
- (AAS3DownloadRequest)initWithSession:(id)session size:(unint64_t)size atOffset:(int64_t)offset destinationBuffer:(char *)buffer destinationStream:(AAAsyncByteStream_impl *)stream completionSemaphore:(id)semaphore;
- (AAS3DownloadSession)downloadSession;
- (OS_dispatch_semaphore)sem;
- (int)createAndResumeTask;
@end

@implementation AAS3DownloadRequest

- (AAS3DownloadRequest)initWithSession:(id)session size:(unint64_t)size atOffset:(int64_t)offset destinationBuffer:(char *)buffer destinationStream:(AAAsyncByteStream_impl *)stream completionSemaphore:(id)semaphore
{
  v30 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  semaphoreCopy = semaphore;
  v28.receiver = self;
  v28.super_class = AAS3DownloadRequest;
  v16 = [(AAS3DownloadRequest *)&v28 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_downloadSession, sessionCopy);
    v18 = objc_alloc(MEMORY[0x277CBAB50]);
    v19 = [sessionCopy url];
    v20 = [v18 initWithURL:v19];
    urlRequest = v17->_urlRequest;
    v17->_urlRequest = v20;

    v17->_nbyte = size;
    v17->_offset = offset;
    v17->_buf = buffer;
    v17->_stream = stream;
    objc_storeWeak(&v17->_sem, semaphoreCopy);
    v17->_remainingAttempts = [sessionCopy maxAttempts];
    [sessionCopy pauseInterval];
    v17->_pauseInterval = v22;
    v17->_status = 0;
    snprintf(__str, 0xC8uLL, "bytes=%llu-%llu", offset, size + offset - 1);
    v23 = v17->_urlRequest;
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];
    [(NSMutableURLRequest *)v23 addValue:v24 forHTTPHeaderField:@"Range"];

    v25 = v17;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v17;
}

- (int)createAndResumeTask
{
  if ([(AAS3DownloadRequest *)self remainingAttempts])
  {
    [(AAS3DownloadRequest *)self setRemainingAttempts:[(AAS3DownloadRequest *)self remainingAttempts]- 1];
    objc_initWeak(&location, self);
    downloadSession = [(AAS3DownloadRequest *)self downloadSession];
    urlSession = [(AAS3DownloadSession *)downloadSession urlSession];
    urlRequest = [(AAS3DownloadRequest *)self urlRequest];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3254779904;
    v15 = __42__AAS3DownloadRequest_createAndResumeTask__block_invoke;
    v16 = &__block_descriptor_40_e8_32w_e46_v32__0__NSData_8__NSURLResponse_16__NSError_24l;
    objc_copyWeak(&v17, &location);
    v8 = [(NSURLSession *)urlSession dataTaskWithRequest:urlRequest completionHandler:&v13];

    if (v8)
    {
      [(NSURLSessionDataTask *)v8 resume:v13];
      v11 = 0;
    }

    else
    {
      pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadRequest createAndResumeTask]", 164, 121, 0, "dataTaskWithRequest", v9, v10, v13);
      v11 = -1;
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    pc_log_error("/Library/Caches/com.apple.xbs/Sources/ParallelCompression/AppleArchiveS3/AAS3DownloadStreamURLSession.m", "[AAS3DownloadRequest createAndResumeTask]", 150, 121, 0, "no more attempts allowed", v3, v4, v13);
    return -1;
  }

  return v11;
}

void __42__AAS3DownloadRequest_createAndResumeTask__block_invoke(uint64_t a1, void *a2, void *a3, id a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [AAS3DownloadSession completeRequest:WeakRetained data:v9 response:v8 error:v7];
}

- (AAS3DownloadSession)downloadSession
{
  WeakRetained = objc_loadWeakRetained(&self->_downloadSession);

  return WeakRetained;
}

- (OS_dispatch_semaphore)sem
{
  WeakRetained = objc_loadWeakRetained(&self->_sem);

  return WeakRetained;
}

@end