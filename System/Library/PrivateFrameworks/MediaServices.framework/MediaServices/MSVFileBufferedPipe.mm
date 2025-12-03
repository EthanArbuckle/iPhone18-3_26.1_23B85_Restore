@interface MSVFileBufferedPipe
+ (id)pipe;
- (MSVFileBufferedPipe)init;
- (void)_createBufferFiles;
- (void)_inputReadyForReading:(unint64_t)reading;
- (void)_outputReadyForWriting:(unint64_t)writing;
- (void)_writeBufferedData;
@end

@implementation MSVFileBufferedPipe

- (void)_writeBufferedData
{
  v33 = *MEMORY[0x1E69E9840];
  if (!self->_readyForData)
  {
    goto LABEL_25;
  }

  *&v2 = 138543618;
  v28 = v2;
  while (1)
  {
    v4 = objc_autoreleasePoolPush();
    if (self->_dataPendingWrite)
    {
      if (!self->_writeSourceState)
      {
        self->_writeSourceState = 1;
        dispatch_resume(self->_writeSource);
        v5 = os_log_create("com.apple.amp.MediaServices", "StreamBufferedPipe");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy5 = self;
          _os_log_impl(&dword_1AC81F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Have valid _dataPendingWrite, resuming write source", buf, 0xCu);
        }
      }

      fileHandleForWriting = [(NSPipe *)self->_outputPipe fileHandleForWriting];
      fileDescriptor = [fileHandleForWriting fileDescriptor];

      if (fcntl(fileDescriptor, 3) == -1 || (v8 = write(fileDescriptor, [(NSData *)self->_dataPendingWrite bytes]+ self->_dataPendingOffset, [(NSData *)self->_dataPendingWrite length]- self->_dataPendingOffset), v8 < 1))
      {
        v11 = *__error();
        uniqueWriteErrors = self->_uniqueWriteErrors;
        v13 = [MEMORY[0x1E696AD98] numberWithInt:v11];
        LOBYTE(uniqueWriteErrors) = [(NSMutableSet *)uniqueWriteErrors containsObject:v13];

        if ((uniqueWriteErrors & 1) == 0)
        {
          v14 = self->_uniqueWriteErrors;
          v15 = [MEMORY[0x1E696AD98] numberWithInt:v11];
          [(NSMutableSet *)v14 addObject:v15];

          v16 = os_log_create("com.apple.amp.MediaServices", "StreamBufferedPipe");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = strerror(v11);
            *buf = v28;
            selfCopy5 = self;
            v31 = 2080;
            v32 = v17;
            _os_log_impl(&dword_1AC81F000, v16, OS_LOG_TYPE_ERROR, "%{public}@: write failed with err=%s, breaking out of _writeBufferedData", buf, 0x16u);
          }
        }

        self->_readyForData = 0;
      }

      else
      {
        v9 = (self->_dataPendingOffset + v8);
        self->_dataPendingOffset = v9;
        if ([(NSData *)self->_dataPendingWrite length]== v9)
        {
          dataPendingWrite = self->_dataPendingWrite;
          self->_dataPendingWrite = 0;

          self->_dataPendingOffset = 0;
        }
      }

      goto LABEL_24;
    }

    v18 = [(NSFileHandle *)self->_readBufferFileHandle readDataOfLength:0x10000];
    if (![v18 length])
    {
      break;
    }

    objc_storeStrong(&self->_dataPendingWrite, v18);
    self->_dataPendingOffset = 0;
LABEL_23:

LABEL_24:
    objc_autoreleasePoolPop(v4);
    if (!self->_readyForData)
    {
      goto LABEL_25;
    }
  }

  v19 = os_log_create("com.apple.amp.MediaServices", "StreamBufferedPipe");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy5 = self;
    _os_log_impl(&dword_1AC81F000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: No data left in the read file - swapping buffer file handles", buf, 0xCu);
  }

  readBufferFileHandle = self->_readBufferFileHandle;
  v21 = readBufferFileHandle;
  objc_storeStrong(&self->_readBufferFileHandle, self->_writeBufferFileHandle);
  objc_storeStrong(&self->_writeBufferFileHandle, readBufferFileHandle);
  [(NSFileHandle *)self->_readBufferFileHandle seekToFileOffset:0];
  [(NSFileHandle *)self->_writeBufferFileHandle truncateFileAtOffset:0];
  v22 = [(NSFileHandle *)self->_readBufferFileHandle readDataOfLength:0x10000];
  if ([(NSData *)v22 length])
  {
    v23 = self->_dataPendingWrite;
    self->_dataPendingWrite = v22;

    self->_dataPendingOffset = 0;
    goto LABEL_23;
  }

  if (self->_fileHandleForReading)
  {
    if (self->_writeSourceState)
    {
      self->_writeSourceState = 0;
      dispatch_suspend(self->_writeSource);
      v25 = os_log_create("com.apple.amp.MediaServices", "StreamBufferedPipe");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy5 = self;
        _os_log_impl(&dword_1AC81F000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: Suspending write source", buf, 0xCu);
      }
    }
  }

  else
  {
    v26 = os_log_create("com.apple.amp.MediaServices", "StreamBufferedPipe");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      writeSourceState = self->_writeSourceState;
      *buf = v28;
      selfCopy5 = self;
      v31 = 1024;
      LODWORD(v32) = writeSourceState;
      _os_log_impl(&dword_1AC81F000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: No valid data to write, fileHandleForReading is invalid. writerSourceState=%d", buf, 0x12u);
    }

    if (!self->_writeSourceState)
    {
      self->_writeSourceState = 1;
      dispatch_resume(self->_writeSource);
    }

    dispatch_source_cancel(self->_writeSource);
  }

  objc_autoreleasePoolPop(v4);
LABEL_25:
  v24 = *MEMORY[0x1E69E9840];
}

- (void)_inputReadyForReading:(unint64_t)reading
{
  if (reading)
  {
    if (self->_dataPendingWrite)
    {
      if (self->_writeBufferFileHandle || ([(MSVFileBufferedPipe *)self _createBufferFiles], self->_writeBufferFileHandle))
      {
        fileHandleForReading = [(NSPipe *)self->_inputPipe fileHandleForReading];
        v10 = [fileHandleForReading readDataOfLength:reading];

        [(NSFileHandle *)self->_writeBufferFileHandle writeData:v10];
      }
    }

    else
    {
      fileHandleForReading2 = [(NSPipe *)self->_inputPipe fileHandleForReading];
      v8 = [fileHandleForReading2 readDataOfLength:reading];

      dataPendingWrite = self->_dataPendingWrite;
      self->_dataPendingWrite = v8;

      self->_dataPendingOffset = 0;

      [(MSVFileBufferedPipe *)self _writeBufferedData];
    }
  }

  else
  {
    readSource = self->_readSource;

    dispatch_source_cancel(readSource);
  }
}

- (void)_outputReadyForWriting:(unint64_t)writing
{
  if (writing)
  {
    self->_readyForData = 1;
    [(MSVFileBufferedPipe *)self _writeBufferedData];
  }

  else
  {
    dispatch_source_cancel(self->_writeSource);
  }
}

- (void)_createBufferFiles
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = NSTemporaryDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"msv_tmp.XXXXXX"];

  v20 = 0;
  v5 = MSVCreateTemporaryFileHandle(v4, &v20);
  v6 = v20;
  writeBufferFileHandle = self->_writeBufferFileHandle;
  self->_writeBufferFileHandle = v5;

  if (self->_writeBufferFileHandle)
  {
    unlink([v6 fileSystemRepresentation]);
    v19 = v6;
    v8 = MSVCreateTemporaryFileHandle(v4, &v19);
    v9 = v19;

    readBufferFileHandle = self->_readBufferFileHandle;
    self->_readBufferFileHandle = v8;

    if (self->_readBufferFileHandle)
    {
      unlink([v9 fileSystemRepresentation]);
    }

    else
    {
      v14 = *__error();
      v15 = os_log_create("com.apple.amp.MediaServices", "StreamBufferedPipe");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = strerror(v14);
        *buf = 138543618;
        selfCopy2 = self;
        v23 = 2080;
        v24 = v16;
        _os_log_impl(&dword_1AC81F000, v15, OS_LOG_TYPE_ERROR, "%{public}@: failed to create tmp file for reading. err=%s", buf, 0x16u);
      }

      v17 = self->_writeBufferFileHandle;
      self->_writeBufferFileHandle = 0;
    }

    v6 = v9;
  }

  else
  {
    v11 = *__error();
    v12 = os_log_create("com.apple.amp.MediaServices", "StreamBufferedPipe");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = strerror(v11);
      *buf = 138543618;
      selfCopy2 = self;
      v23 = 2080;
      v24 = v13;
      _os_log_impl(&dword_1AC81F000, v12, OS_LOG_TYPE_ERROR, "%{public}@: failed to create tmp file for writing. err=%s", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (MSVFileBufferedPipe)init
{
  v42.receiver = self;
  v42.super_class = MSVFileBufferedPipe;
  v2 = [(MSVFileBufferedPipe *)&v42 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MediaServices.MSVFileBufferedPipe.queue", 0);
    v4 = *(v2 + 10);
    *(v2 + 10) = v3;

    pipe = [MEMORY[0x1E696AE00] pipe];
    v6 = *(v2 + 3);
    *(v2 + 3) = pipe;

    pipe2 = [MEMORY[0x1E696AE00] pipe];
    v8 = *(v2 + 4);
    *(v2 + 4) = pipe2;

    fileHandleForReading = [*(v2 + 4) fileHandleForReading];
    v10 = *(v2 + 13);
    *(v2 + 13) = fileHandleForReading;

    fileHandleForWriting = [*(v2 + 3) fileHandleForWriting];
    v12 = *(v2 + 14);
    *(v2 + 14) = fileHandleForWriting;

    v13 = [MEMORY[0x1E695DFA8] set];
    v14 = *(v2 + 11);
    *(v2 + 11) = v13;

    fileHandleForWriting2 = [*(v2 + 4) fileHandleForWriting];
    fileDescriptor = [fileHandleForWriting2 fileDescriptor];

    fcntl(fileDescriptor, 73, 1);
    v17 = fcntl(fileDescriptor, 3);
    fcntl(fileDescriptor, 4, v17 | 4u);
    *(v2 + 56) = 0;
    objc_initWeak(&location, v2);
    fileHandleForWriting3 = [*(v2 + 4) fileHandleForWriting];
    fileDescriptor2 = [fileHandleForWriting3 fileDescriptor];
    v20 = dispatch_source_create(MEMORY[0x1E69E9730], fileDescriptor2, 0, *(v2 + 10));

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __27__MSVFileBufferedPipe_init__block_invoke;
    handler[3] = &unk_1E79825D8;
    objc_copyWeak(&v40, &location);
    v21 = v20;
    v39 = v21;
    dispatch_source_set_event_handler(v21, handler);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __27__MSVFileBufferedPipe_init__block_invoke_2;
    v36[3] = &unk_1E7982988;
    v22 = v2;
    v37 = v22;
    dispatch_source_set_cancel_handler(v21, v36);
    objc_storeStrong(v22 + 5, v20);
    v22[12] = 1;
    dispatch_resume(v22[5]);
    fileHandleForReading2 = [*(v2 + 3) fileHandleForReading];
    fileDescriptor3 = [fileHandleForReading2 fileDescriptor];
    v25 = dispatch_source_create(MEMORY[0x1E69E96F8], fileDescriptor3, 0, *(v2 + 10));

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __27__MSVFileBufferedPipe_init__block_invoke_3;
    v33[3] = &unk_1E79825D8;
    objc_copyWeak(&v35, &location);
    v26 = v25;
    v34 = v26;
    dispatch_source_set_event_handler(v26, v33);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __27__MSVFileBufferedPipe_init__block_invoke_2_4;
    v31[3] = &unk_1E7982988;
    v27 = v22;
    v32 = v27;
    dispatch_source_set_cancel_handler(v26, v31);
    v28 = v27[6];
    v27[6] = v26;
    v29 = v26;

    dispatch_resume(v27[6]);
    objc_destroyWeak(&v35);

    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __27__MSVFileBufferedPipe_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _outputReadyForWriting:dispatch_source_get_data(*(a1 + 32))];
}

void __27__MSVFileBufferedPipe_init__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.MediaServices", "StreamBufferedPipe");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 96);
    v11 = 138543618;
    v12 = v3;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_1AC81F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Cancelling write source handler, writerSourceState=%d", &v11, 0x12u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 112);
  *(v5 + 112) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = 0;

  v9 = *(a1 + 32);
  if (*(v9 + 104))
  {
    dispatch_source_cancel(*(v9 + 48));
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __27__MSVFileBufferedPipe_init__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _inputReadyForReading:dispatch_source_get_data(*(a1 + 32))];
}

void __27__MSVFileBufferedPipe_init__block_invoke_2_4(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.amp.MediaServices", "StreamBufferedPipe");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 96);
    v11 = 138543618;
    v12 = v3;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_1AC81F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Cancelling read source handler, writerSourceState=%d", &v11, 0x12u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 104);
  *(v5 + 104) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  *(v7 + 24) = 0;

  v9 = *(a1 + 32);
  if (!*(v9 + 96))
  {
    *(v9 + 96) = 1;
    dispatch_resume(*(*(a1 + 32) + 40));
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)pipe
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

@end