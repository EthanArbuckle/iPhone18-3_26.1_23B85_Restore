@interface CUSerialPort
- (BOOL)_ensureSetUpAndReturnError:(id *)a3;
- (CUSerialPort)initWithConfiguration:(id)a3 dispatchQueue:(id)a4;
- (void)_cleanup;
- (void)_readLineWithFlags:(unint64_t)a3 completionHandler:(id)a4;
- (void)_writeLine:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)readLineWithFlags:(unint64_t)a3 completionHandler:(id)a4;
- (void)writeLine:(id)a3 completionHandler:(id)a4;
@end

@implementation CUSerialPort

- (void)_writeLine:(id)a3 completionHandler:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = 0;
  [(CUSerialPort *)self _ensureSetUpAndReturnError:&v21];
  v8 = v21;
  if (v8)
  {
    v7[2](v7, v8);
  }

  else
  {
    v20[0] = [v6 UTF8String];
    v20[1] = strlen(v20[0]);
    v9 = _Block_copy(v7);
    v10 = SerialStreamWrite(self->_serialStream, 1, v20, 1, _writeLineCompletion, v9);
    if (v10)
    {
      v11 = v10;
      v12 = logger_12375();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v23 = v11;
        _os_log_error_impl(&dword_191EAF000, v12, OS_LOG_TYPE_ERROR, "### write line start failed: err=%d", buf, 8u);
      }

      v18 = NSErrorF_safe(*MEMORY[0x1E696A768], v11, "Write line start failed", v13, v14, v15, v16, v17, v19);
      v7[2](v7, v18);
    }
  }
}

- (void)writeLine:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = logger_12375();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_191EAF000, v8, OS_LOG_TYPE_INFO, "write line start: line='%@'", buf, 0xCu);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CUSerialPort_writeLine_completionHandler___block_invoke;
  block[3] = &unk_1E73A4BD8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_readLineWithFlags:(unint64_t)a3 completionHandler:(id)a4
{
  v4 = a3;
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v19 = 0;
  [(CUSerialPort *)self _ensureSetUpAndReturnError:&v19];
  v7 = v19;
  if (v7)
  {
    v6[2](v6, 0, v7);
  }

  else
  {
    v8 = _Block_copy(v6);
    Line = SerialStreamReadLine(self->_serialStream, v4, _readLineCompletion, v8);
    if (Line)
    {
      v10 = Line;
      v11 = logger_12375();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v21 = v10;
        _os_log_error_impl(&dword_191EAF000, v11, OS_LOG_TYPE_ERROR, "### read line start failed: err=%d", buf, 8u);
      }

      v17 = NSErrorF_safe(*MEMORY[0x1E696A768], v10, "Read line start failed", v12, v13, v14, v15, v16, v18);
      v6[2](v6, 0, v17);
    }
  }
}

- (void)readLineWithFlags:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = logger_12375();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_191EAF000, v7, OS_LOG_TYPE_INFO, "read line start", buf, 2u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CUSerialPort_readLineWithFlags_completionHandler___block_invoke;
  block[3] = &unk_1E73A4BB0;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v9 = v6;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)_ensureSetUpAndReturnError:(id *)a3
{
  v37 = *MEMORY[0x1E69E9840];
  if (!self->_serialStream)
  {
    v6 = logger_12375();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(CUSerialPortConfiguration *)self->_configuration devicePath];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_191EAF000, v6, OS_LOG_TYPE_DEFAULT, "serial stream start: path=%@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x2020000000;
    v36 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __43__CUSerialPort__ensureSetUpAndReturnError___block_invoke;
    aBlock[3] = &unk_1E73A4B88;
    aBlock[4] = &buf;
    v8 = _Block_copy(aBlock);
    v9 = SerialStreamCreate((*(&buf + 1) + 24));
    if (v9)
    {
      if (a3)
      {
        v31 = NSErrorF_safe(*MEMORY[0x1E696A768], v9, "serial stream create failed", v10, v11, v12, v13, v14, v32);
LABEL_17:
        v3 = 0;
        *a3 = v31;
        goto LABEL_11;
      }
    }

    else
    {
      SerialStreamSetDispatchQueue(*(*(&buf + 1) + 24), self->_dispatchQueue);
      v15 = [(CUSerialPortConfiguration *)self->_configuration devicePath];
      v16 = v15;
      v17 = [v15 UTF8String];

      v18 = [(CUSerialPortConfiguration *)self->_configuration baudRate];
      v19 = [(CUSerialPortConfiguration *)self->_configuration flowControl];
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = 115200;
      }

      v21 = [(CUSerialPortConfiguration *)self->_configuration flags];
      if (v17)
      {
        v27 = v21;
        v28 = *(*(&buf + 1) + 24);
        __strlcpy_chk();
        *(v28 + 1156) = __PAIR64__(v19, v20);
        *(v28 + 1164) = v27;
        v29 = *(&buf + 1);
        self->_serialStream = *(*(&buf + 1) + 24);
        *(v29 + 24) = 0;
        v3 = 1;
LABEL_11:
        v8[2](v8);

        _Block_object_dispose(&buf, 8);
        return v3;
      }

      if (a3)
      {
        v31 = NSErrorF_safe(*MEMORY[0x1E696A768], 4294960592, "serial stream configure failed", v22, v23, v24, v25, v26, v32);
        goto LABEL_17;
      }
    }

    v3 = 0;
    goto LABEL_11;
  }

  return 1;
}

void __43__CUSerialPort__ensureSetUpAndReturnError___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 24);
  if (v2)
  {
    CFRetain(*(v1 + 24));
    dispatch_async_f(v2[2], v2, _SerialStreamInvalidate);
    CFRelease(*(*(*(a1 + 32) + 8) + 24));
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

- (void)invalidate
{
  v3 = logger_12375();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_191EAF000, v3, OS_LOG_TYPE_DEFAULT, "invalidate", buf, 2u);
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__CUSerialPort_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_cleanup
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_serialStream)
  {
    v3 = logger_12375();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CUSerialPortConfiguration *)self->_configuration devicePath];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_191EAF000, v3, OS_LOG_TYPE_DEFAULT, "serial stream end: path=%@", &v6, 0xCu);
    }

    serialStream = self->_serialStream;
    CFRetain(serialStream);
    dispatch_async_f(*(serialStream + 2), serialStream, _SerialStreamInvalidate);
    self->_serialStream = 0;
  }
}

- (void)dealloc
{
  [(CUSerialPort *)self _cleanup];
  v3.receiver = self;
  v3.super_class = CUSerialPort;
  [(CUSerialPort *)&v3 dealloc];
}

- (CUSerialPort)initWithConfiguration:(id)a3 dispatchQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CUSerialPort;
  v9 = [(CUSerialPort *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    objc_storeStrong(&v10->_dispatchQueue, a4);
    v11 = v10;
  }

  return v10;
}

@end