@interface PHMediaFormatConversionSinglePassVideoProgressObserver
- (NSProgress)progress;
- (PHMediaFormatConversionRequest)request;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)startObservingProgress:(id)a3 forRequest:(id)a4;
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v26 = *MEMORY[0x277D85DE8];
  if (a6 == &PHMediaFormatConversionSinglePassVideoProgressObserverContext)
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

    v8 = [MEMORY[0x277CCAA00] defaultManager];
    observedFileHandle = self->_observedFileHandle;
    if (!observedFileHandle)
    {
      v12 = [(NSURL *)self->_observedFileURL path];
      v13 = [v8 fileExistsAtPath:v12];

      if ((v13 & 1) == 0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v18 = [(NSURL *)self->_observedFileURL path];
          *buf = 138412290;
          v23 = v18;
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
          v20 = [(NSURL *)self->_observedFileURL path];
          *buf = 138412546;
          v23 = v20;
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

    v10 = [(NSFileHandle *)observedFileHandle seekToEndOfFile];
    if (v10 != self->_lastFileSize)
    {
      self->_lastFileSize = v10;
      [WeakRetained updateSinglePassVideoConversionStatus:2 addedRange:? error:?];
    }

LABEL_17:

LABEL_18:
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)startObservingProgress:(id)a3 forRequest:(id)a4
{
  obj = a3;
  v7 = a4;
  if (obj)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionSinglePassVideoProgressObserver.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"progress"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionSinglePassVideoProgressObserver.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"request"}];

LABEL_3:
  v8 = [v7 singlePassVideoConversionUpdateHandler];

  if (!v8)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionSinglePassVideoProgressObserver.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"request.singlePassVideoConversionUpdateHandler"}];
  }

  v9 = [v7 destination];
  v10 = [v9 fileURL];

  if (!v10)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversionSinglePassVideoProgressObserver.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"request.destination.fileURL"}];
  }

  objc_storeWeak(&self->_progress, obj);
  objc_storeWeak(&self->_request, v7);
  v11 = [v7 destination];
  v12 = [v11 fileURL];
  observedFileURL = self->_observedFileURL;
  self->_observedFileURL = v12;

  [obj addObserver:self forKeyPath:@"fractionCompleted" options:0 context:&PHMediaFormatConversionSinglePassVideoProgressObserverContext];
}

@end