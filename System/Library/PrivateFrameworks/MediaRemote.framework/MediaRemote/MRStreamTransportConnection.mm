@interface MRStreamTransportConnection
- (MRStreamTransportConnection)initWithInputStream:(id)a3 outputStream:(id)a4 dataSource:(id)a5;
- (unint64_t)sendTransportData:(id)a3 options:(id)a4;
- (void)_closeAllStreams;
- (void)_closeStream:(id)a3;
- (void)_openStream:(id)a3;
- (void)_setQOSPropertiesOnStream:(id)a3;
- (void)_stream:(id)a3 handleEvent:(unint64_t)a4;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation MRStreamTransportConnection

- (MRStreamTransportConnection)initWithInputStream:(id)a3 outputStream:(id)a4 dataSource:(id)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = MRStreamTransportConnection;
  v11 = [(MRExternalDeviceTransportConnection *)&v16 initWithDataSource:a5];
  if (v11)
  {
    v12 = [MEMORY[0x1E695DFD0] mainRunLoop];
    runLoop = v11->_runLoop;
    v11->_runLoop = v12;

    objc_storeStrong(&v11->_inputStream, a3);
    objc_storeStrong(&v11->_outputStream, a4);
    [(MRStreamTransportConnection *)v11 _openStream:v11->_inputStream];
    v14 = *MEMORY[0x1E695DA28];
    [(NSInputStream *)v11->_inputStream scheduleInRunLoop:v11->_runLoop forMode:*MEMORY[0x1E695DA28]];
    [(MRStreamTransportConnection *)v11 _openStream:v11->_outputStream];
    [(NSOutputStream *)v11->_outputStream scheduleInRunLoop:v11->_runLoop forMode:v14];
  }

  return v11;
}

- (unint64_t)sendTransportData:(id)a3 options:(id)a4
{
  v5 = a3;
  v6 = -[NSOutputStream write:maxLength:](self->_outputStream, "write:maxLength:", [v5 bytes], objc_msgSend(v5, "length"));
  if (v6 >= 1 && [v5 length] - v6 >= 1)
  {
    do
    {
      v7 = [v5 subdataWithRange:v6];

      v5 = v7;
      v6 = -[NSOutputStream write:maxLength:](self->_outputStream, "write:maxLength:", [v7 bytes], objc_msgSend(v7, "length"));
    }

    while ((v6 & 0x8000000000000000) == 0 && [v5 length] - v6 > 0);
  }

  return v6;
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v7 = a3;
  v6 = objc_autoreleasePoolPush();
  [(MRStreamTransportConnection *)self _stream:v7 handleEvent:a4];
  objc_autoreleasePoolPop(v6);
}

- (void)_stream:(id)a3 handleEvent:(unint64_t)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      [(MRStreamTransportConnection *)self _setQOSPropertiesOnStream:v6];
    }

    else if (a4 == 2)
    {
      v10 = v6;
      *buf = 0;
      v33 = 0;
      v11 = [v10 getBuffer:&v33 length:buf];
      if (v33)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if ((v12 & 1) == 0)
      {
        *buf = 1024;
      }

      v13 = objc_alloc(MEMORY[0x1E695DF88]);
      v14 = [v13 initWithCapacity:*buf];
      if ([v10 hasBytesAvailable])
      {
        do
        {
          v15 = [v14 length];
          [v14 increaseLengthBy:*buf];
          v16 = v14;
          v17 = [v14 mutableBytes];
          v18 = [v10 read:v17 + v15 maxLength:*buf];
          if (v18 < *buf)
          {
            [v14 setLength:{v18 - *buf + objc_msgSend(v14, "length")}];
          }
        }

        while (([v10 hasBytesAvailable] & 1) != 0);
      }

      if ([v14 length])
      {
        objc_initWeak(&location, self);
        runLoop = self->_runLoop;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __51__MRStreamTransportConnection__stream_handleEvent___block_invoke;
        v29[3] = &unk_1E769B150;
        objc_copyWeak(&v31, &location);
        v30 = v14;
        [(NSRunLoop *)runLoop performBlock:v29];

        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
    switch(a4)
    {
      case 4uLL:
        objc_initWeak(buf, self);
        v20 = self->_runLoop;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __51__MRStreamTransportConnection__stream_handleEvent___block_invoke_2;
        v27[3] = &unk_1E769B178;
        objc_copyWeak(&v28, buf);
        [(NSRunLoop *)v20 performBlock:v27];
        objc_destroyWeak(&v28);
        objc_destroyWeak(buf);
        break;
      case 8uLL:
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v22 = @"OutputStream";
        if (isKindOfClass)
        {
          v22 = @"InputStream";
        }

        v23 = v22;
        v24 = [v7 streamError];
        v25 = _MRLogForCategory(4uLL);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          *&buf[4] = self;
          v35 = 2112;
          v36 = v23;
          v37 = 2112;
          v38 = v24;
          _os_log_impl(&dword_1A2860000, v25, OS_LOG_TYPE_DEFAULT, "[MRNetServiceTransport] %{public}@ %@ Error: %@. Disconnecting...", buf, 0x20u);
        }

        [(MRExternalDeviceTransportConnection *)self _notifyDelegateDidCloseWithError:v24];
        break;
      case 0x10uLL:
        v8 = _MRLogForCategory(4uLL);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = self;
          _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[MRNetServiceTransport] %{public}@ Stream ended. Disconnecting...", buf, 0xCu);
        }

        v9 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:121];
        [(MRExternalDeviceTransportConnection *)self _notifyDelegateDidCloseWithError:v9];

        break;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __51__MRStreamTransportConnection__stream_handleEvent___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _notifyDelegateDidReceiveData:*(a1 + 32)];

  objc_autoreleasePoolPop(v2);
}

void __51__MRStreamTransportConnection__stream_handleEvent___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _notifyDelegateHasSpaceAvailable];

  objc_autoreleasePoolPop(v2);
}

- (void)_openStream:(id)a3
{
  v7 = a3;
  v4 = +[MRUserSettings currentSettings];
  v5 = [v4 useNoDelayOptionForExternalDeviceSockets];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  [v7 setProperty:v6 forKey:*MEMORY[0x1E695AD48]];

  [v7 setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695AE70]];
  [v7 setDelegate:self];
  [v7 scheduleInRunLoop:self->_runLoop forMode:*MEMORY[0x1E695D918]];
  [v7 open];
}

- (void)_closeStream:(id)a3
{
  v4 = a3;
  [v4 close];
  [v4 setDelegate:0];
  [v4 removeFromRunLoop:self->_runLoop forMode:*MEMORY[0x1E695D918]];
}

- (void)_closeAllStreams
{
  [(MRStreamTransportConnection *)self _closeStream:self->_inputStream];
  outputStream = self->_outputStream;

  [(MRStreamTransportConnection *)self _closeStream:outputStream];
}

- (void)_setQOSPropertiesOnStream:(id)a3
{
  v3 = a3;
  *buffer = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = CFReadStreamCopyProperty(v3, *MEMORY[0x1E695E948]);
    if (!v4)
    {
LABEL_9:
      v7 = v3;
LABEL_12:

      goto LABEL_13;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v4 = CFWriteStreamCopyProperty(v3, *MEMORY[0x1E695E948]);
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  v5 = v4;
  v11.location = 0;
  v11.length = 4;
  CFDataGetBytes(v4, v11, buffer);
  CFRelease(v5);
  v6 = *buffer;

  if (v6)
  {
    v7 = +[MRUserSettings currentSettings];
    if ([v7 hasExternalDeviceSocketQOSLevelSet])
    {
      v8 = [v7 externalDeviceSocketQOSLevel];
    }

    else
    {
      v8 = 3;
    }

    v9 = MSVWeakLinkSymbol();
    v9(v6, v8);
    goto LABEL_12;
  }

LABEL_13:
}

@end