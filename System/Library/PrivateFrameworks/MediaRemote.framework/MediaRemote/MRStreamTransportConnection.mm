@interface MRStreamTransportConnection
- (MRStreamTransportConnection)initWithInputStream:(id)stream outputStream:(id)outputStream dataSource:(id)source;
- (unint64_t)sendTransportData:(id)data options:(id)options;
- (void)_closeAllStreams;
- (void)_closeStream:(id)stream;
- (void)_openStream:(id)stream;
- (void)_setQOSPropertiesOnStream:(id)stream;
- (void)_stream:(id)_stream handleEvent:(unint64_t)event;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation MRStreamTransportConnection

- (MRStreamTransportConnection)initWithInputStream:(id)stream outputStream:(id)outputStream dataSource:(id)source
{
  streamCopy = stream;
  outputStreamCopy = outputStream;
  v16.receiver = self;
  v16.super_class = MRStreamTransportConnection;
  v11 = [(MRExternalDeviceTransportConnection *)&v16 initWithDataSource:source];
  if (v11)
  {
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    runLoop = v11->_runLoop;
    v11->_runLoop = mainRunLoop;

    objc_storeStrong(&v11->_inputStream, stream);
    objc_storeStrong(&v11->_outputStream, outputStream);
    [(MRStreamTransportConnection *)v11 _openStream:v11->_inputStream];
    v14 = *MEMORY[0x1E695DA28];
    [(NSInputStream *)v11->_inputStream scheduleInRunLoop:v11->_runLoop forMode:*MEMORY[0x1E695DA28]];
    [(MRStreamTransportConnection *)v11 _openStream:v11->_outputStream];
    [(NSOutputStream *)v11->_outputStream scheduleInRunLoop:v11->_runLoop forMode:v14];
  }

  return v11;
}

- (unint64_t)sendTransportData:(id)data options:(id)options
{
  dataCopy = data;
  v6 = -[NSOutputStream write:maxLength:](self->_outputStream, "write:maxLength:", [dataCopy bytes], objc_msgSend(dataCopy, "length"));
  if (v6 >= 1 && [dataCopy length] - v6 >= 1)
  {
    do
    {
      v7 = [dataCopy subdataWithRange:v6];

      dataCopy = v7;
      v6 = -[NSOutputStream write:maxLength:](self->_outputStream, "write:maxLength:", [v7 bytes], objc_msgSend(v7, "length"));
    }

    while ((v6 & 0x8000000000000000) == 0 && [dataCopy length] - v6 > 0);
  }

  return v6;
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  v6 = objc_autoreleasePoolPush();
  [(MRStreamTransportConnection *)self _stream:streamCopy handleEvent:event];
  objc_autoreleasePoolPop(v6);
}

- (void)_stream:(id)_stream handleEvent:(unint64_t)event
{
  v39 = *MEMORY[0x1E69E9840];
  _streamCopy = _stream;
  v7 = _streamCopy;
  if (event <= 3)
  {
    if (event == 1)
    {
      [(MRStreamTransportConnection *)self _setQOSPropertiesOnStream:_streamCopy];
    }

    else if (event == 2)
    {
      v10 = _streamCopy;
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
          mutableBytes = [v14 mutableBytes];
          v18 = [v10 read:mutableBytes + v15 maxLength:*buf];
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
    switch(event)
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
        streamError = [v7 streamError];
        v25 = _MRLogForCategory(4uLL);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          *&buf[4] = self;
          v35 = 2112;
          v36 = v23;
          v37 = 2112;
          v38 = streamError;
          _os_log_impl(&dword_1A2860000, v25, OS_LOG_TYPE_DEFAULT, "[MRNetServiceTransport] %{public}@ %@ Error: %@. Disconnecting...", buf, 0x20u);
        }

        [(MRExternalDeviceTransportConnection *)self _notifyDelegateDidCloseWithError:streamError];
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

- (void)_openStream:(id)stream
{
  streamCopy = stream;
  v4 = +[MRUserSettings currentSettings];
  useNoDelayOptionForExternalDeviceSockets = [v4 useNoDelayOptionForExternalDeviceSockets];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:useNoDelayOptionForExternalDeviceSockets];
  [streamCopy setProperty:v6 forKey:*MEMORY[0x1E695AD48]];

  [streamCopy setProperty:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E695AE70]];
  [streamCopy setDelegate:self];
  [streamCopy scheduleInRunLoop:self->_runLoop forMode:*MEMORY[0x1E695D918]];
  [streamCopy open];
}

- (void)_closeStream:(id)stream
{
  streamCopy = stream;
  [streamCopy close];
  [streamCopy setDelegate:0];
  [streamCopy removeFromRunLoop:self->_runLoop forMode:*MEMORY[0x1E695D918]];
}

- (void)_closeAllStreams
{
  [(MRStreamTransportConnection *)self _closeStream:self->_inputStream];
  outputStream = self->_outputStream;

  [(MRStreamTransportConnection *)self _closeStream:outputStream];
}

- (void)_setQOSPropertiesOnStream:(id)stream
{
  streamCopy = stream;
  *buffer = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = CFReadStreamCopyProperty(streamCopy, *MEMORY[0x1E695E948]);
    if (!v4)
    {
LABEL_9:
      v7 = streamCopy;
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

    v4 = CFWriteStreamCopyProperty(streamCopy, *MEMORY[0x1E695E948]);
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
      externalDeviceSocketQOSLevel = [v7 externalDeviceSocketQOSLevel];
    }

    else
    {
      externalDeviceSocketQOSLevel = 3;
    }

    v9 = MSVWeakLinkSymbol();
    v9(v6, externalDeviceSocketQOSLevel);
    goto LABEL_12;
  }

LABEL_13:
}

@end