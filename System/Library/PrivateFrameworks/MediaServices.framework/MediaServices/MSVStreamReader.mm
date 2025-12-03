@interface MSVStreamReader
- (MSVStreamReader)initWithInputStream:(id)stream queue:(id)queue;
- (id)_compressedDataForData:(id)data;
- (id)readAllDataWithError:(id *)error;
- (void)_stop;
- (void)dealloc;
- (void)readAllDataIntoFileHandle:(id)handle withCompletion:(id)completion;
- (void)readAllDataWithCompletion:(id)completion;
- (void)start;
- (void)stopWithCompletion:(id)completion;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation MSVStreamReader

- (void)_stop
{
  v9 = *MEMORY[0x1E69E9840];
  stopped = self->_stopped;
  v4 = os_log_create("com.apple.amp.MediaServices", "StreamReader");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (stopped)
  {
    if (v5)
    {
      v7 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1AC81F000, v4, OS_LOG_TYPE_DEFAULT, "Reader=%p stream reader already stopped", &v7, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v7 = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_1AC81F000, v4, OS_LOG_TYPE_DEFAULT, "Reader=%p stopping stream reader", &v7, 0xCu);
    }

    self->_stopped = 1;
    MEMORY[0x1B26EB3B0](self->_stream, 0);
    [(NSInputStream *)self->_stream setDelegate:0];
    [(NSInputStream *)self->_stream close];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (id)_compressedDataForData:(id)data
{
  v3 = MEMORY[0x1EEE9AC00](self, a2, data);
  v14 = *MEMORY[0x1E69E9840];
  v5 = v4;
  if (*(v3 + 16) || (v9 = malloc_type_malloc(0x70uLL, 0x10B0040E8CA615DuLL), *(v3 + 16) = v9, v9[8] = 0, *(*(v3 + 16) + 72) = 0, *(*(v3 + 16) + 80) = 0, !deflateInit_(*(v3 + 16), -1, "1.2.12", 112)))
  {
    v6 = objc_opt_new();
    **(v3 + 16) = [v5 bytes];
    v7 = [v5 length];
    v8 = *(v3 + 16);
    *(v8 + 8) = v7;
    do
    {
      *(v8 + 32) = 20480;
      *(v8 + 24) = v13;
      if (deflate(*(v3 + 16), 4 * (v5 == 0)) == -2)
      {
        __assert_rtn("[MSVStreamReader _compressedDataForData:]", "MSVStreamReader.m", 280, "ret != Z_STREAM_ERROR");
      }

      [v6 appendBytes:v13 length:20480 - *(*(v3 + 16) + 32)];
      v8 = *(v3 + 16);
    }

    while (!*(v8 + 32));
    if (*(v8 + 8))
    {
      __assert_rtn("[MSVStreamReader _compressedDataForData:]", "MSVStreamReader.m", 284, "_zstreamp->avail_in == 0");
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.MediaServices", "StreamReader");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_1AC81F000, v10, OS_LOG_TYPE_ERROR, "deflateInit failed", v13, 2u);
    }

    free(*(v3 + 16));
    v6 = 0;
    *(v3 + 16) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  v25 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  if (self->_stream != streamCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVStreamReader.m" lineNumber:215 description:@"unexpected stream"];
  }

  self->_timestamp = CFAbsoluteTimeGetCurrent();
  if (event - 1 <= 1 && [(NSInputStream *)self->_stream hasBytesAvailable])
  {
    v8 = malloc_type_malloc(self->_maximumBufferSize, 0xA4C4BFBuLL);
    v9 = [(NSInputStream *)self->_stream read:v8 maxLength:self->_maximumBufferSize];
    if (v9 >= 1)
    {
      v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v8 length:v9 freeWhenDone:1];
      if ([(MSVStreamReader *)self shouldCompress])
      {
        v11 = [(MSVStreamReader *)self _compressedDataForData:v10];

        if (v11)
        {
          if (![v11 length])
          {

            goto LABEL_32;
          }

          v10 = v11;
        }

        else
        {
          v10 = 0;
        }
      }

      didReadDataBlock = self->_didReadDataBlock;
      if (didReadDataBlock)
      {
        didReadDataBlock[2](didReadDataBlock, v10);
      }

      goto LABEL_31;
    }

    free(v8);
  }

  else
  {
    v12 = os_log_create("com.apple.amp.MediaServices", "StreamReader");
    v10 = v12;
    if (event == 8)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 134217984;
        selfCopy3 = self;
        _os_log_impl(&dword_1AC81F000, v10, OS_LOG_TYPE_DEFAULT, "Reader=%p Encountered error event", &v21, 0xCu);
      }

      [(MSVStreamReader *)self _stop];
      didEncounterErrorBlock = self->_didEncounterErrorBlock;
      if (didEncounterErrorBlock)
      {
        streamError = [(NSInputStream *)self->_stream streamError];
        didEncounterErrorBlock[2](didEncounterErrorBlock, streamError);
      }
    }

    else
    {
      if (event != 16)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v21 = 134218240;
          selfCopy3 = self;
          v23 = 2048;
          eventCopy = event;
          _os_log_impl(&dword_1AC81F000, v10, OS_LOG_TYPE_ERROR, "Reader=%p unexpected stream event %lu", &v21, 0x16u);
        }

LABEL_31:

        goto LABEL_32;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 134217984;
        selfCopy3 = self;
        _os_log_impl(&dword_1AC81F000, v10, OS_LOG_TYPE_DEFAULT, "Reader=%p Encountered end event", &v21, 0xCu);
      }

      [(MSVStreamReader *)self _stop];
      if ([(MSVStreamReader *)self shouldCompress])
      {
        v13 = [(MSVStreamReader *)self _compressedDataForData:0];
        if ([v13 length])
        {
          v14 = self->_didReadDataBlock;
          if (v14)
          {
            v14[2](v14, v13);
          }
        }
      }

      didFinishReadingBlock = self->_didFinishReadingBlock;
      if (didFinishReadingBlock)
      {
        didFinishReadingBlock[2]();
      }
    }
  }

LABEL_32:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)readAllDataIntoFileHandle:(id)handle withCompletion:(id)completion
{
  handleCopy = handle;
  completionCopy = completion;
  didFinishReadingBlock = [(MSVStreamReader *)self didFinishReadingBlock];
  objc_initWeak(&location, self);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __60__MSVStreamReader_readAllDataIntoFileHandle_withCompletion___block_invoke;
  v28[3] = &unk_1E79826A0;
  objc_copyWeak(&v31, &location);
  v9 = completionCopy;
  v29 = v9;
  v10 = didFinishReadingBlock;
  v30 = v10;
  [(MSVStreamReader *)self setDidFinishReadingBlock:v28];
  didEncounterErrorBlock = [(MSVStreamReader *)self didEncounterErrorBlock];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __60__MSVStreamReader_readAllDataIntoFileHandle_withCompletion___block_invoke_2;
  v24[3] = &unk_1E79826C8;
  objc_copyWeak(&v27, &location);
  v12 = v9;
  v25 = v12;
  v13 = didEncounterErrorBlock;
  v26 = v13;
  [(MSVStreamReader *)self setDidEncounterErrorBlock:v24];
  didReadDataBlock = [(MSVStreamReader *)self didReadDataBlock];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __60__MSVStreamReader_readAllDataIntoFileHandle_withCompletion___block_invoke_3;
  v20 = &unk_1E79826F0;
  objc_copyWeak(&v23, &location);
  v15 = handleCopy;
  v21 = v15;
  v16 = didReadDataBlock;
  v22 = v16;
  [(MSVStreamReader *)self setDidReadDataBlock:&v17];
  [(MSVStreamReader *)self start:v17];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&v27);

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __60__MSVStreamReader_readAllDataIntoFileHandle_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _stop];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

void __60__MSVStreamReader_readAllDataIntoFileHandle_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _stop];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void __60__MSVStreamReader_readAllDataIntoFileHandle_withCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [*(a1 + 32) fileDescriptor];
  if (fcntl(v5, 3) == -1)
  {
    v8 = *__error();
    v9 = os_log_create("com.apple.amp.MediaServices", "StreamReader");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v17 = WeakRetained;
      v18 = 2082;
      v19 = strerror(v8);
      _os_log_impl(&dword_1AC81F000, v9, OS_LOG_TYPE_ERROR, "Reader=%p readAllDataIntoFileHandle bad fileHandle err=%{public}s", buf, 0x16u);
    }

    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MSVStreamReader" code:-1 userInfo:0];
  }

  else
  {
    fcntl(v5, 73, 1);
    v6 = *(a1 + 32);
    v15 = 0;
    [v6 writeData:v3 error:&v15];
    v7 = v15;
  }

  v10 = v7;
  if (v7)
  {
    v11 = os_log_create("com.apple.amp.MediaServices", "StreamReader");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v17 = WeakRetained;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_1AC81F000, v11, OS_LOG_TYPE_ERROR, "Reader=%p readAllDataIntoFileHandle encountered error. error=%{public}@", buf, 0x16u);
    }

    v12 = [WeakRetained didEncounterErrorBlock];
    (v12)[2](v12, v10);
  }

  else
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      (*(v13 + 16))(v13, v3);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)readAllDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_opt_new();
  didFinishReadingBlock = [(MSVStreamReader *)self didFinishReadingBlock];
  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __45__MSVStreamReader_readAllDataWithCompletion___block_invoke;
  v25[3] = &unk_1E7982628;
  objc_copyWeak(&v29, &location);
  v7 = completionCopy;
  v27 = v7;
  v8 = v5;
  v26 = v8;
  v9 = didFinishReadingBlock;
  v28 = v9;
  [(MSVStreamReader *)self setDidFinishReadingBlock:v25];
  didEncounterErrorBlock = [(MSVStreamReader *)self didEncounterErrorBlock];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __45__MSVStreamReader_readAllDataWithCompletion___block_invoke_2;
  v20[3] = &unk_1E7982650;
  objc_copyWeak(&v24, &location);
  v11 = v7;
  v22 = v11;
  v12 = v8;
  v21 = v12;
  v13 = didEncounterErrorBlock;
  v23 = v13;
  [(MSVStreamReader *)self setDidEncounterErrorBlock:v20];
  didReadDataBlock = [(MSVStreamReader *)self didReadDataBlock];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __45__MSVStreamReader_readAllDataWithCompletion___block_invoke_3;
  v17[3] = &unk_1E7982678;
  v15 = v12;
  v18 = v15;
  v16 = didReadDataBlock;
  v19 = v16;
  [(MSVStreamReader *)self setDidReadDataBlock:v17];
  [(MSVStreamReader *)self start];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __45__MSVStreamReader_readAllDataWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _stop];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), 0);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

void __45__MSVStreamReader_readAllDataWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _stop];
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, *(a1 + 32), v6);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

void __45__MSVStreamReader_readAllDataWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) appendData:?];
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (id)readAllDataWithError:(id *)error
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__4603;
  v23 = __Block_byref_object_dispose__4604;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4603;
  v17 = __Block_byref_object_dispose__4604;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__MSVStreamReader_readAllDataWithError___block_invoke;
  v9[3] = &unk_1E7982600;
  v11 = &v19;
  v12 = &v13;
  v6 = v5;
  v10 = v6;
  [(MSVStreamReader *)self readAllDataWithCompletion:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v14[5];
  }

  v7 = v20[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v7;
}

void __40__MSVStreamReader_readAllDataWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)stopWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__MSVStreamReader_stopWithCompletion___block_invoke;
  v7[3] = &unk_1E7982B00;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __38__MSVStreamReader_stopWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stop];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__MSVStreamReader_stopWithCompletion___block_invoke_2;
    block[3] = &unk_1E7982AD8;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.MediaServices", "StreamReader");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1AC81F000, v3, OS_LOG_TYPE_DEFAULT, "Reader=%p stream reader dealloced", buf, 0xCu);
  }

  zstreamp = self->_zstreamp;
  if (zstreamp)
  {
    deflateEnd(zstreamp);
    free(self->_zstreamp);
    self->_zstreamp = 0;
  }

  v6.receiver = self;
  v6.super_class = MSVStreamReader;
  [(MSVStreamReader *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)start
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.MediaServices", "StreamReader");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy3 = self;
    _os_log_impl(&dword_1AC81F000, v3, OS_LOG_TYPE_DEFAULT, "Reader=%p starting stream reader", buf, 0xCu);
  }

  Current = CFAbsoluteTimeGetCurrent();
  stream = self->_stream;
  self->_timestamp = Current;
  MEMORY[0x1B26EB3B0](stream, self->_queue);
  [(NSInputStream *)self->_stream setDelegate:self];
  streamStatus = [(NSInputStream *)self->_stream streamStatus];
  v7 = os_log_create("com.apple.amp.MediaServices", "StreamReader");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (streamStatus)
  {
    if (v8)
    {
      streamStatus2 = [(NSInputStream *)self->_stream streamStatus];
      *buf = 134218240;
      selfCopy3 = self;
      v24 = 2048;
      v25 = streamStatus2;
      _os_log_impl(&dword_1AC81F000, v7, OS_LOG_TYPE_DEFAULT, "Reader=%p InputStream status %lu - streamreader will not open stream", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    if ([(NSInputStream *)self->_stream hasBytesAvailable])
    {
      queue = self->_queue;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __24__MSVStreamReader_start__block_invoke_8;
      v19[3] = &unk_1E79825D8;
      v11 = &v20;
      objc_copyWeak(&v20, buf);
      v19[4] = self;
      v12 = v19;
    }

    else if ([(NSInputStream *)self->_stream streamStatus]== 5 || [(NSInputStream *)self->_stream streamStatus]== 6)
    {
      queue = self->_queue;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __24__MSVStreamReader_start__block_invoke_2;
      v17[3] = &unk_1E79825D8;
      v11 = &v18;
      objc_copyWeak(&v18, buf);
      v17[4] = self;
      v12 = v17;
    }

    else
    {
      if ([(NSInputStream *)self->_stream streamStatus]!= 7)
      {
        goto LABEL_15;
      }

      queue = self->_queue;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __24__MSVStreamReader_start__block_invoke_3;
      v15[3] = &unk_1E79825D8;
      v11 = &v16;
      objc_copyWeak(&v16, buf);
      v15[4] = self;
      v12 = v15;
    }

    dispatch_async(queue, v12);
    objc_destroyWeak(v11);
LABEL_15:
    objc_destroyWeak(buf);
    goto LABEL_16;
  }

  if (v8)
  {
    *buf = 134217984;
    selfCopy3 = self;
    _os_log_impl(&dword_1AC81F000, v7, OS_LOG_TYPE_DEFAULT, "Reader=%p InputStream status is NSStreamStatusNotOpen - streamreader will open stream", buf, 0xCu);
  }

  v13 = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__MSVStreamReader_start__block_invoke;
  block[3] = &unk_1E7982988;
  block[4] = self;
  dispatch_async(v13, block);
LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __24__MSVStreamReader_start__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) open];
  *(*(a1 + 32) + 8) = 1;
  return result;
}

uint64_t __24__MSVStreamReader_start__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([WeakRetained _shouldHandleEvent])
    {
      [v4 stream:*(*(a1 + 32) + 72) handleEvent:2];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __24__MSVStreamReader_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([WeakRetained _shouldHandleEvent])
    {
      [v4 stream:*(*(a1 + 32) + 72) handleEvent:16];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __24__MSVStreamReader_start__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([WeakRetained _shouldHandleEvent])
    {
      [v4 stream:*(*(a1 + 32) + 72) handleEvent:8];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

- (MSVStreamReader)initWithInputStream:(id)stream queue:(id)queue
{
  streamCopy = stream;
  queueCopy = queue;
  if (!streamCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVStreamReader.m" lineNumber:31 description:@"inputStream cannot be nil"];
  }

  v18.receiver = self;
  v18.super_class = MSVStreamReader;
  v10 = [(MSVStreamReader *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_stream, stream);
    if (queueCopy)
    {
      v12 = queueCopy;
    }

    else
    {
      v13 = objc_opt_class();
      Name = class_getName(v13);
      v12 = dispatch_queue_create(Name, 0);
    }

    queue = v11->_queue;
    v11->_queue = v12;

    v11->_maximumBufferSize = 10240;
    *&v11->_closeOnStop = 0;
  }

  return v11;
}

@end