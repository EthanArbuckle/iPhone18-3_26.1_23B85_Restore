@interface MSVStreamWriter
- (BOOL)_processInput:(id)a3 generatingDecompressedData:(id *)a4;
- (BOOL)writeAllData:(id)a3 error:(id *)a4;
- (MSVStreamWriter)initWithOutputStream:(id)a3 queue:(id)a4;
- (MSVStreamWriter)initWithQueue:(id)a3;
- (void)_onQueue_stop;
- (void)_writeAvailablePendingData;
- (void)start;
- (void)stopWithCompletion:(id)a3;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
- (void)writeAllData:(id)a3 withCompletion:(id)a4;
- (void)writeData:(id)a3 withCompletion:(id)a4;
@end

@implementation MSVStreamWriter

- (void)_onQueue_stop
{
  v19 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  stopped = self->_stopped;
  v4 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (stopped)
  {
    if (v5)
    {
      v15 = 134217984;
      v16 = self;
      v6 = "%p - stream writer is already stopped";
      v7 = v4;
      v8 = 12;
LABEL_18:
      _os_log_impl(&dword_1AC81F000, v7, OS_LOG_TYPE_DEFAULT, v6, &v15, v8);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (v5)
  {
    compressed = self->_compressed;
    v15 = 134218240;
    v16 = self;
    v17 = 1024;
    v18 = compressed;
    _os_log_impl(&dword_1AC81F000, v4, OS_LOG_TYPE_DEFAULT, "%p - stopping stream writer, isCompressed=%d", &v15, 0x12u);
  }

  self->_stopped = 1;
  MEMORY[0x1B26EB580](self->_outputStream, 0);
  [(NSOutputStream *)self->_outputStream setDelegate:0];
  if ([(MSVStreamWriter *)self isCompressed]&& self->_zstreamp)
  {
    v10 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = self;
      _os_log_impl(&dword_1AC81F000, v10, OS_LOG_TYPE_DEFAULT, "%p - Finishing pending data in _zstreamp", &v15, 0xCu);
    }

    [(MSVStreamWriter *)self writeAllData:0 error:0];
  }

  if (self->_closeOnStop)
  {
    self->_closeOnStop = 0;
    [(NSOutputStream *)self->_outputStream close];
    v11 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = self;
      _os_log_impl(&dword_1AC81F000, v11, OS_LOG_TYPE_DEFAULT, "%p - Closing _outputStream", &v15, 0xCu);
    }
  }

  zstreamp = self->_zstreamp;
  if (zstreamp)
  {
    v13 = inflateEnd(zstreamp);
    free(self->_zstreamp);
    self->_zstreamp = 0;
    v4 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134218240;
      v16 = self;
      v17 = 1024;
      v18 = v13;
      v6 = "%p - Releasing _zstreamp finished with code=%d";
      v7 = v4;
      v8 = 18;
      goto LABEL_18;
    }

LABEL_19:
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_writeAvailablePendingData
{
  v29 = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->_pendingWriteDataList count])
  {
    *&v3 = 134218754;
    v20 = v3;
    do
    {
      if (![(NSOutputStream *)self->_outputStream hasSpaceAvailable])
      {
        break;
      }

      v4 = [(NSMutableArray *)self->_pendingWriteDataList firstObject];
      v5 = [v4 data];
      v6 = [v4 bytesWritten];
      do
      {
        if (v6 >= [v5 length] || !-[NSOutputStream hasSpaceAvailable](self->_outputStream, "hasSpaceAvailable"))
        {
          break;
        }

        v7 = -[NSOutputStream write:maxLength:](self->_outputStream, "write:maxLength:", [v5 bytes] + v6, objc_msgSend(v5, "length") - v6);
        v8 = v7;
        if (v7 < 0)
        {
          v11 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [(NSOutputStream *)self->_outputStream streamError];
            v13 = [(NSOutputStream *)self->_outputStream streamStatus];
            *buf = v20;
            v22 = self;
            v23 = 2114;
            v24 = v12;
            v25 = 2048;
            v26 = v13;
            v27 = 1024;
            v28 = v8;
            _os_log_impl(&dword_1AC81F000, v11, OS_LOG_TYPE_DEFAULT, "%p - error while writing to data stream: err=%{public}@, status=%lu, bytesWritten:%d", buf, 0x26u);
          }

          v14 = [(NSOutputStream *)self->_outputStream streamError];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MSVStreamWriter" code:-1 userInfo:0];
          }

          v9 = v16;

          [v5 length];
          v10 = 0;
          goto LABEL_18;
        }

        v6 += v7;
      }

      while (v7);
      if (v6 != [v5 length])
      {
        [v4 setBytesWritten:v6];
        goto LABEL_21;
      }

      v9 = 0;
      v10 = 1;
LABEL_18:
      [(NSMutableArray *)self->_pendingWriteDataList removeObject:v4];
      v17 = [v4 completionHandler];
      v18 = v17;
      if (v17)
      {
        (*(v17 + 16))(v17, v10, v9);
      }

LABEL_21:
    }

    while ([(NSMutableArray *)self->_pendingWriteDataList count]);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (BOOL)_processInput:(id)a3 generatingDecompressedData:(id *)a4
{
  v4 = MEMORY[0x1EEE9AC00](self, a2, a3);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v57 = *MEMORY[0x1E69E9840];
  v11 = v10;
  v12 = objc_opt_new();
  v13 = 4 * ([v11 length] == 0);
  v14 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 length];
    v16 = *(v9 + 24);
    *buf = 134219008;
    v50 = v9;
    v51 = 2048;
    *v52 = v11;
    *&v52[8] = 1024;
    *v53 = v15;
    *&v53[4] = 2048;
    v54 = v16;
    v55 = 1024;
    v56 = v13;
    _os_log_impl(&dword_1AC81F000, v14, OS_LOG_TYPE_DEFAULT, "%p starting to decompress input data (%p) len=%d, _zstreamp=%p, inflateOption=%d", buf, 0x2Cu);
  }

  v17 = *(v9 + 24);
  if (v11)
  {
    if (!v17)
    {
      v18 = malloc_type_malloc(0x70uLL, 0x10B0040E8CA615DuLL);
      *(v9 + 24) = v18;
      v18[8] = 0;
      *(*(v9 + 24) + 72) = 0;
      *(*(v9 + 24) + 80) = 0;
      v19 = inflateInit_(*(v9 + 24), "1.2.12", 112);
      v20 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        if (v21)
        {
          *buf = 134217984;
          v50 = v9;
          _os_log_impl(&dword_1AC81F000, v20, OS_LOG_TYPE_DEFAULT, "%p inflateInit failed", buf, 0xCu);
        }

        free(*(v9 + 24));
        LOBYTE(v22) = 0;
        *(v9 + 24) = 0;
        goto LABEL_36;
      }

      if (v21)
      {
        *buf = 134217984;
        v50 = v9;
        _os_log_impl(&dword_1AC81F000, v20, OS_LOG_TYPE_DEFAULT, "%p Created _zstreamp", buf, 0xCu);
      }
    }

    goto LABEL_14;
  }

  if (v17)
  {
LABEL_14:
    **(v9 + 24) = [v11 bytes];
    v23 = [v11 length];
    v24 = *(v9 + 24);
    *(v24 + 8) = v23;
    while (1)
    {
      *(v24 + 24) = buf;
      v25 = *(v9 + 24);
      v25->avail_out = 35840;
      v26 = inflate(v25, v13);
      if ((v26 & 0x80000000) != 0)
      {
        break;
      }

      [v12 appendBytes:buf length:35840 - *(*(v9 + 24) + 32)];
      v24 = *(v9 + 24);
      if (*(v24 + 32))
      {
        goto LABEL_24;
      }
    }

    [v12 setLength:0];
    if (v26 == -5 || (*(v9 + 16) & 1) != 0)
    {
      v27 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(v9 + 24);
        v29 = *(v28 + 8);
        v30 = *(v28 + 32);
        *v39 = 134219008;
        v40 = v9;
        v41 = 1024;
        v42 = v26;
        v43 = 2048;
        v44 = v29;
        v45 = 2048;
        v46 = v30;
        v47 = 2048;
        v48 = [v11 length];
        _os_log_impl(&dword_1AC81F000, v27, OS_LOG_TYPE_DEFAULT, "%p - Inflate failed (ignoring inflate failure). ret=%d, _zstreamp->avail_in=%lu, _zstreamp->avail_out=%lu, in_len=%lu", v39, 0x30u);
      }
    }

    else
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      -[NSObject handleFailureInMethod:object:file:lineNumber:description:](v27, "handleFailureInMethod:object:file:lineNumber:description:", v8, v9, @"MSVStreamWriter.m", 339, @"zlib inflate failed. ret=%d. in_len = %lu, _zstreamp->avail_out=%lu", v26, [v11 length], *(*(v9 + 24) + 32));
    }

    v24 = *(v9 + 24);
LABEL_24:
    v31 = *(v24 + 8);
    if (v31)
    {
      if (v26 == -5 || (*(v9 + 16) & 1) != 0)
      {
        v32 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *v39 = 134218240;
          v40 = v9;
          v41 = 1024;
          v42 = v31;
          _os_log_impl(&dword_1AC81F000, v32, OS_LOG_TYPE_DEFAULT, "%p Ignoring inflate failure, availableInLength=%u", v39, 0x12u);
        }
      }

      else
      {
        v32 = [MEMORY[0x1E696AAA8] currentHandler];
        [v32 handleFailureInMethod:v8 object:v9 file:@"MSVStreamWriter.m" lineNumber:354 description:@"_zstreamp->avail_in = %d", *(*(v9 + 24) + 8)];
      }
    }

    v22 = v26 >= 0;
    if (v6)
    {
      v33 = v12;
      *v6 = v12;
    }

    goto LABEL_33;
  }

  v22 = 1;
LABEL_33:
  v34 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v11 length];
    v36 = [v12 length];
    *buf = 134218752;
    v50 = v9;
    v51 = 1024;
    *v52 = v22;
    *&v52[4] = 1024;
    *&v52[6] = v35;
    *v53 = 1024;
    *&v53[2] = v36;
    _os_log_impl(&dword_1AC81F000, v34, OS_LOG_TYPE_DEFAULT, "%p finished _decompressData with status=%{BOOL}u, input data length=%d, decompressed data length=%d", buf, 0x1Eu);
  }

LABEL_36:
  v37 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (self->_outputStream != v7)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MSVStreamWriter.m" lineNumber:243 description:@"unexpected stream"];
  }

  if (self->_stopped)
  {
    v8 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134218240;
      v17 = self;
      v18 = 2048;
      v19 = a4;
      _os_log_impl(&dword_1AC81F000, v8, OS_LOG_TYPE_DEFAULT, "%p Writer is already stopped - not handling event %lu", &v16, 0x16u);
    }
  }

  else
  {
    switch(a4)
    {
      case 0x10uLL:
        [(MSVStreamWriter *)self _onQueue_stop];
        didEncounterErrorBlock = self->_didEncounterErrorBlock;
        if (didEncounterErrorBlock)
        {
          v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MSVStreamWriter" code:-1 userInfo:0];
          didEncounterErrorBlock[2](didEncounterErrorBlock, v14);
        }

        break;
      case 8uLL:
        [(MSVStreamWriter *)self _onQueue_stop];
        v11 = self->_didEncounterErrorBlock;
        if (v11)
        {
          v12 = [(NSOutputStream *)self->_outputStream streamError];
          v11[2](v11, v12);
        }

        break;
      case 4uLL:
        canWriteDataBlock = self->_canWriteDataBlock;
        if (canWriteDataBlock)
        {
          canWriteDataBlock[2]();
        }

        [(MSVStreamWriter *)self _writeAvailablePendingData];
        break;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)writeAllData:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![(MSVStreamWriter *)self isCompressed])
  {
    v9 = 0;
    v10 = v6;
LABEL_5:
    if (self->_stopped)
    {
      v11 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v34 = self;
        _os_log_impl(&dword_1AC81F000, v11, OS_LOG_TYPE_DEFAULT, "StreamWriter %p is stopped", buf, 0xCu);
      }

      if (a4)
      {
        v12 = MEMORY[0x1E696ABC0];
        v13 = @"Stream writer is already stopped";
LABEL_10:
        [v12 msv_errorWithDomain:@"MSVStreamWriter" code:-1 debugDescription:v13];
        *a4 = v14 = 0;
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    if (v10 && [v10 length])
    {
      if (self->_stopped)
      {
        v15 = 0;
LABEL_26:
        v17 = 1;
LABEL_27:
        if (v15 < [v10 length])
        {
          v20 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v10 length];
            *buf = 134218496;
            v34 = self;
            v35 = 1024;
            *v36 = v15;
            *&v36[4] = 1024;
            *&v36[6] = v21;
            _os_log_impl(&dword_1AC81F000, v20, OS_LOG_TYPE_DEFAULT, "StreamWriter %p is stopped, totalBytesWritten=%d, dataLen=%d", buf, 0x18u);
          }

          if (a4)
          {
            v12 = MEMORY[0x1E696ABC0];
            v13 = @"Stream writer was stopped before flushing all data";
            goto LABEL_10;
          }

LABEL_47:
          v14 = 0;
          goto LABEL_48;
        }
      }

      else
      {
        v15 = 0;
        while (1)
        {
          if (v15 >= [v10 length])
          {
            v17 = 1;
            if (self->_stopped)
            {
              goto LABEL_27;
            }

            goto LABEL_42;
          }

          v18 = -[NSOutputStream write:maxLength:](self->_outputStream, "write:maxLength:", [v10 bytes] + v15, objc_msgSend(v10, "length") - v15);
          v19 = v18;
          if (v18 < 0)
          {
            break;
          }

          v15 += v18;
          if (self->_stopped)
          {
            goto LABEL_26;
          }
        }

        v22 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [(NSOutputStream *)self->_outputStream streamError];
          v24 = [(NSOutputStream *)self->_outputStream streamStatus];
          *buf = 134218754;
          v34 = self;
          v35 = 2114;
          *v36 = v23;
          *&v36[8] = 2048;
          v37 = v24;
          v38 = 1024;
          v39 = v19;
          _os_log_impl(&dword_1AC81F000, v22, OS_LOG_TYPE_DEFAULT, "%p error while writing to data stream: err=%{public}@, status=%lu, bytesWritten:%d", buf, 0x26u);
        }

        if (a4)
        {
          v25 = [(NSOutputStream *)self->_outputStream streamError];
          v26 = v25;
          if (v25)
          {
            v27 = v25;
            *a4 = v26;
          }

          else
          {
            v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MSVStreamWriter" code:-1 userInfo:0];
            *a4 = v28;
          }
        }

        v17 = 0;
        if (self->_stopped)
        {
          goto LABEL_27;
        }
      }

LABEL_42:
      self->_bytesWritten += v15;
    }

    else
    {
      v17 = 1;
    }

    v29 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v34 = self;
      v35 = 2048;
      *v36 = v10;
      *&v36[8] = 1024;
      LODWORD(v37) = v17;
      _os_log_impl(&dword_1AC81F000, v29, OS_LOG_TYPE_DEFAULT, "%p Finished writing data (%p), success=%{BOOL}u", buf, 0x1Cu);
    }

    if (v17)
    {
      v14 = !self->_stopped;
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v32 = 0;
  v7 = [(MSVStreamWriter *)self _processInput:v6 generatingDecompressedData:&v32];
  v8 = v32;
  v9 = v8;
  if (v7)
  {
    v9 = v8;

    v10 = v9;
    goto LABEL_5;
  }

  v16 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = self;
    _os_log_impl(&dword_1AC81F000, v16, OS_LOG_TYPE_DEFAULT, "%p Could not decompress input data", buf, 0xCu);
  }

  if (a4)
  {
    [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MSVStreamWriter" code:-1 debugDescription:@"Could not decompress input data"];
    *a4 = v14 = 0;
  }

  else
  {
    v14 = 0;
  }

  v10 = v6;
LABEL_48:

  v30 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)writeData:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_alloc_init(_MSVStreamWriterPendingData);
  [(_MSVStreamWriterPendingData *)v11 setData:v7];

  [(_MSVStreamWriterPendingData *)v11 setCompletionHandler:v6];
  pendingWriteDataList = self->_pendingWriteDataList;
  if (!pendingWriteDataList)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = self->_pendingWriteDataList;
    self->_pendingWriteDataList = v9;

    pendingWriteDataList = self->_pendingWriteDataList;
  }

  [(NSMutableArray *)pendingWriteDataList addObject:v11];
  [(MSVStreamWriter *)self _writeAvailablePendingData];
}

- (void)writeAllData:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __47__MSVStreamWriter_writeAllData_withCompletion___block_invoke;
  v26[3] = &unk_1E79829B0;
  objc_copyWeak(&v28, &location);
  v8 = v7;
  v27 = v8;
  [(MSVStreamWriter *)self setDidFinishWritingBlock:v26];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __47__MSVStreamWriter_writeAllData_withCompletion___block_invoke_2;
  v23[3] = &unk_1E79829D8;
  objc_copyWeak(&v25, &location);
  v9 = v8;
  v24 = v9;
  [(MSVStreamWriter *)self setDidEncounterErrorBlock:v23];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v10 = [v6 length];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __47__MSVStreamWriter_writeAllData_withCompletion___block_invoke_4;
  v15 = &unk_1E7982A00;
  objc_copyWeak(v19, &location);
  v17 = v20;
  v18 = v22;
  v19[1] = v10;
  v11 = v6;
  v16 = v11;
  [(MSVStreamWriter *)self setCanWriteDataBlock:&v12];
  [(MSVStreamWriter *)self start:v12];

  objc_destroyWeak(v19);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v22, 8);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __47__MSVStreamWriter_writeAllData_withCompletion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = WeakRetained;
    _os_log_impl(&dword_1AC81F000, v3, OS_LOG_TYPE_DEFAULT, "%p didFinishWritingBlock, enqueuing stop", &v6, 0xCu);
  }

  [WeakRetained _onQueue_stop];
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, 0);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __47__MSVStreamWriter_writeAllData_withCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = WeakRetained;
    _os_log_impl(&dword_1AC81F000, v5, OS_LOG_TYPE_DEFAULT, "%p didEncounterErrorBlock, enqueuing stop", &v8, 0xCu);
  }

  [WeakRetained _onQueue_stop];
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __47__MSVStreamWriter_writeAllData_withCompletion___block_invoke_4(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    if (*(*(*(a1 + 48) + 8) + 24) < *(a1 + 64))
    {
      v4 = [WeakRetained outputStream];
      v5 = [*(a1 + 32) bytes];
      v6 = *(*(*(a1 + 48) + 8) + 24);
      v7 = [v4 write:v5 + v6 maxLength:*(a1 + 64) - v6];

      if (v7 < 1)
      {
        v8 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(*(a1 + 48) + 8) + 24);
          *buf = 134218752;
          v18 = v3;
          v19 = 1024;
          v20 = v7;
          v21 = 1024;
          v22 = v9;
          v23 = 1024;
          v24 = [v3 bytesWritten];
          _os_log_impl(&dword_1AC81F000, v8, OS_LOG_TYPE_DEFAULT, "%p write error,  bytesWritten=%d, totalBytesWritten=%d, strongSelf.bytesWritten=%d", buf, 0x1Eu);
        }
      }

      else
      {
        *(*(*(a1 + 48) + 8) + 24) += v7;
        [v3 setBytesWritten:{objc_msgSend(v3, "bytesWritten") + v7}];
      }
    }

    if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 64))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v10 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(*(*(a1 + 48) + 8) + 24);
        v12 = [*(a1 + 32) length];
        *buf = 134218496;
        v18 = v3;
        v19 = 1024;
        v20 = v11;
        v21 = 1024;
        v22 = v12;
        _os_log_impl(&dword_1AC81F000, v10, OS_LOG_TYPE_DEFAULT, "%p finished writing, totalBytesWritten=%d, dataLen=%d", buf, 0x18u);
      }

      v13 = [v3 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__MSVStreamWriter_writeAllData_withCompletion___block_invoke_5;
      block[3] = &unk_1E7982988;
      v16 = v3;
      dispatch_async(v13, block);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __47__MSVStreamWriter_writeAllData_withCompletion___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) didFinishWritingBlock];
  v1[2]();
}

- (void)stopWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__MSVStreamWriter_stopWithCompletion___block_invoke;
  v7[3] = &unk_1E7982B00;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __38__MSVStreamWriter_stopWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onQueue_stop];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 104);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__MSVStreamWriter_stopWithCompletion___block_invoke_2;
    block[3] = &unk_1E7982AD8;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

- (void)start
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.amp.MediaServices", "StreamWriter");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = self;
    _os_log_impl(&dword_1AC81F000, v3, OS_LOG_TYPE_DEFAULT, "%p starting stream writer", buf, 0xCu);
  }

  MEMORY[0x1B26EB580](self->_outputStream, self->_queue);
  [(NSOutputStream *)self->_outputStream setDelegate:self];
  self->_timestamp = CFAbsoluteTimeGetCurrent();
  v4 = [(NSOutputStream *)self->_outputStream streamStatus];
  outputStream = self->_outputStream;
  if (v4)
  {
    if ([(NSOutputStream *)outputStream hasSpaceAvailable])
    {
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __24__MSVStreamWriter_start__block_invoke;
      block[3] = &unk_1E7982988;
      block[4] = self;
      dispatch_async(queue, block);
    }
  }

  else
  {
    [(NSOutputStream *)outputStream open];
    self->_closeOnStop = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (MSVStreamWriter)initWithOutputStream:(id)a3 queue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = MSVStreamWriter;
  v9 = [(MSVStreamWriter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_outputStream, a3);
    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v12 = objc_opt_class();
      Name = class_getName(v12);
      v11 = dispatch_queue_create(Name, 0);
    }

    queue = v10->_queue;
    v10->_queue = v11;

    v10->_maximumBufferSize = 35840;
    v10->_closeOnStop = 0;
  }

  return v10;
}

- (MSVStreamWriter)initWithQueue:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MSVStreamWriter;
  v5 = [(MSVStreamWriter *)&v17 init];
  if (v5)
  {
    v15 = 0;
    v16 = 0;
    [MEMORY[0x1E695DFE0] getBoundStreamsWithBufferSize:35840 inputStream:&v16 outputStream:&v15];
    v6 = v16;
    v7 = v16;
    v8 = v15;
    v9 = v15;
    objc_storeStrong(&v5->_inputStream, v6);
    objc_storeStrong(&v5->_outputStream, v8);
    if (v4)
    {
      v10 = v4;
    }

    else
    {
      v11 = objc_opt_class();
      Name = class_getName(v11);
      v10 = dispatch_queue_create(Name, 0);
    }

    queue = v5->_queue;
    v5->_queue = v10;

    *&v5->_stopped = 0;
  }

  return v5;
}

@end