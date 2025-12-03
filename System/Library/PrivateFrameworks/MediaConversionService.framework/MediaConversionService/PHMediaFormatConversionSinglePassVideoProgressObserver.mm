@interface PHMediaFormatConversionSinglePassVideoProgressObserver
- (NSProgress)progress;
- (PHMediaFormatConversionRequest)request;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startObservingProgress:(id)progress forRequest:(id)request;
- (void)stopObserving;
@end

@implementation PHMediaFormatConversionSinglePassVideoProgressObserver

- (PHMediaFormatConversionRequest)request
{
  WeakRetained = objc_loadWeakRetained(&self->_request);

  return WeakRetained;
}

- (NSProgress)progress
{
  WeakRetained = objc_loadWeakRetained(&self->_progress);

  return WeakRetained;
}

- (void)stopObserving
{
  WeakRetained = objc_loadWeakRetained(&self->_progress);
  [WeakRetained removeObserver:self forKeyPath:@"fractionCompleted" context:&PHMediaFormatConversionSinglePassVideoProgressObserverContext];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v26 = *MEMORY[0x277D85DE8];
  if (context == &PHMediaFormatConversionSinglePassVideoProgressObserverContext)
  {
    WeakRetained = objc_loadWeakRetained(&self->_request);
    if (!WeakRetained)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        observedFileURL = self->_observedFileURL;
        *buf = 138412290;
        v23 = observedFileURL;
        _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Ignoring progress update for deallocated request for URL %@", buf, 0xCu);
      }

      [(PHMediaFormatConversionSinglePassVideoProgressObserver *)self stopObserving];
      goto LABEL_18;
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    observedFileHandle = self->_observedFileHandle;
    if (!observedFileHandle)
    {
      path = [(NSURL *)self->_observedFileURL path];
      v13 = [defaultManager fileExistsAtPath:path];

      if ((v13 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          path2 = [(NSURL *)self->_observedFileURL path];
          *buf = 138412290;
          v23 = path2;
          _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Ignoring progress update for output file %@ that doesn't exist", buf, 0xCu);
        }

        goto LABEL_17;
      }

      v14 = self->_observedFileURL;
      v21 = 0;
      v15 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v14 error:&v21];
      v16 = v21;
      if (!v15)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          path3 = [(NSURL *)self->_observedFileURL path];
          *buf = 138412546;
          v23 = path3;
          v24 = 2112;
          v25 = v16;
          _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to open file handle for output file %@: %@", buf, 0x16u);
        }

        goto LABEL_17;
      }

      v17 = self->_observedFileHandle;
      self->_observedFileHandle = v15;

      observedFileHandle = self->_observedFileHandle;
    }

    seekToEndOfFile = [(NSFileHandle *)observedFileHandle seekToEndOfFile];
    if (seekToEndOfFile != self->_lastFileSize)
    {
      self->_lastFileSize = seekToEndOfFile;
      [WeakRetained updateSinglePassVideoConversionStatus:2 addedRange:? error:?];
    }

LABEL_17:

LABEL_18:
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)startObservingProgress:(id)progress forRequest:(id)request
{
  obj = progress;
  requestCopy = request;
  if (obj)
  {
    if (requestCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionSinglePassVideoProgressObserver.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"progress"}];

    if (requestCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionSinglePassVideoProgressObserver.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"request"}];

LABEL_3:
  singlePassVideoConversionUpdateHandler = [requestCopy singlePassVideoConversionUpdateHandler];

  if (!singlePassVideoConversionUpdateHandler)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionSinglePassVideoProgressObserver.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"request.singlePassVideoConversionUpdateHandler"}];
  }

  destination = [requestCopy destination];
  fileURL = [destination fileURL];

  if (!fileURL)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionSinglePassVideoProgressObserver.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"request.destination.fileURL"}];
  }

  objc_storeWeak(&self->_progress, obj);
  objc_storeWeak(&self->_request, requestCopy);
  destination2 = [requestCopy destination];
  fileURL2 = [destination2 fileURL];
  observedFileURL = self->_observedFileURL;
  self->_observedFileURL = fileURL2;

  [obj addObserver:self forKeyPath:@"fractionCompleted" options:0 context:&PHMediaFormatConversionSinglePassVideoProgressObserverContext];
}

@end