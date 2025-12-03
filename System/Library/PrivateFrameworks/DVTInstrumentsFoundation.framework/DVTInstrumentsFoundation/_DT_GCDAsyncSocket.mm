@interface _DT_GCDAsyncSocket
+ (BOOL)getHost:(id *)host port:(unsigned __int16 *)port family:(char *)family fromAddress:(id)address;
+ (BOOL)isIPv4Address:(id)address;
+ (BOOL)isIPv6Address:(id)address;
+ (id)gaiError:(int)error;
+ (id)hostFromAddress:(id)address;
+ (id)hostFromSockaddr4:(const sockaddr_in *)sockaddr4;
+ (id)hostFromSockaddr6:(const sockaddr_in6 *)sockaddr6;
+ (unsigned)portFromAddress:(id)address;
+ (void)cfstreamThread;
+ (void)scheduleCFStreams:(id)streams;
+ (void)startCFStreamThreadIfNeeded;
+ (void)stopCFStreamThreadIfNeeded;
+ (void)unscheduleCFStreams:(id)streams;
- (BOOL)acceptOnInterface:(id)interface port:(unsigned __int16)port error:(id *)error;
- (BOOL)addStreamsToRunLoop;
- (BOOL)autoDisconnectOnClosedReadStream;
- (BOOL)connectToAddress:(id)address viaInterface:(id)interface withTimeout:(double)timeout error:(id *)error;
- (BOOL)connectToHost:(id)host onPort:(unsigned __int16)port viaInterface:(id)interface withTimeout:(double)timeout error:(id *)error;
- (BOOL)connectWithAddress4:(id)address4 address6:(id)address6 error:(id *)error;
- (BOOL)createReadAndWriteStream;
- (BOOL)doAccept:(int)accept;
- (BOOL)isConnected;
- (BOOL)isDisconnected;
- (BOOL)isIPv4;
- (BOOL)isIPv4Enabled;
- (BOOL)isIPv4PreferredOverIPv6;
- (BOOL)isIPv6;
- (BOOL)isIPv6Enabled;
- (BOOL)isSecure;
- (BOOL)openStreams;
- (BOOL)preConnectWithInterface:(id)interface error:(id *)error;
- (BOOL)registerForStreamCallbacksIncludingReadWrite:(BOOL)write;
- (NSData)connectedAddress;
- (NSData)localAddress;
- (NSString)connectedHost;
- (NSString)localHost;
- (OS_dispatch_queue)delegateQueue;
- (SSLContext)sslContext;
- (_DT_GCDAsyncSocket)initWithDelegate:(id)delegate delegateQueue:(id)queue socketQueue:(id)socketQueue;
- (__CFReadStream)readStream;
- (__CFWriteStream)writeStream;
- (float)progressOfReadReturningTag:(int64_t *)tag bytesDone:(unint64_t *)done total:(unint64_t *)total;
- (float)progressOfWriteReturningTag:(int64_t *)tag bytesDone:(unint64_t *)done total:(unint64_t *)total;
- (id)badConfigError:(id)error;
- (id)badParamError:(id)error;
- (id)connectTimeoutError;
- (id)connectedHost4;
- (id)connectedHost6;
- (id)connectedHostFromSocket4:(int)socket4;
- (id)connectedHostFromSocket6:(int)socket6;
- (id)connectionClosedError;
- (id)delegate;
- (id)errnoError;
- (id)errnoErrorWithReason:(id)reason;
- (id)localHost4;
- (id)localHost6;
- (id)localHostFromSocket4:(int)socket4;
- (id)localHostFromSocket6:(int)socket6;
- (id)otherError:(id)error;
- (id)readMaxedOutError;
- (id)readTimeoutError;
- (id)sslError:(int)error;
- (id)userData;
- (id)writeTimeoutError;
- (int)socket4FD;
- (int)socket6FD;
- (int)socketFD;
- (int)sslReadWithBuffer:(void *)buffer length:(unint64_t *)length;
- (int)sslWriteWithBuffer:(const void *)buffer length:(unint64_t *)length;
- (unsigned)connectedPort;
- (unsigned)connectedPort4;
- (unsigned)connectedPort6;
- (unsigned)connectedPortFromSocket4:(int)socket4;
- (unsigned)connectedPortFromSocket6:(int)socket6;
- (unsigned)localPort;
- (unsigned)localPort4;
- (unsigned)localPort6;
- (unsigned)localPortFromSocket4:(int)socket4;
- (unsigned)localPortFromSocket6:(int)socket6;
- (void)cf_abortSSLHandshake:(id)handshake;
- (void)cf_finishSSLHandshake;
- (void)cf_startTLS;
- (void)closeWithError:(id)error;
- (void)completeCurrentRead;
- (void)completeCurrentWrite;
- (void)dealloc;
- (void)didConnect:(int)connect;
- (void)didNotConnect:(int)connect error:(id)error;
- (void)disconnect;
- (void)disconnectAfterReading;
- (void)disconnectAfterReadingAndWriting;
- (void)disconnectAfterWriting;
- (void)doConnectTimeout;
- (void)doReadData;
- (void)doReadEOF;
- (void)doReadTimeout;
- (void)doReadTimeoutWithExtension:(double)extension;
- (void)doWriteData;
- (void)doWriteTimeout;
- (void)doWriteTimeoutWithExtension:(double)extension;
- (void)endConnectTimeout;
- (void)endCurrentRead;
- (void)endCurrentWrite;
- (void)flushSSLBuffers;
- (void)getDelegate:(id *)delegate delegateQueue:(id *)queue;
- (void)getInterfaceAddress4:(id *)address4 address6:(id *)address6 fromDescription:(id)description port:(unsigned __int16)port;
- (void)lookup:(int)lookup didFail:(id)fail;
- (void)lookup:(int)lookup didSucceedWithAddress4:(id)address4 address6:(id)address6;
- (void)maybeClose;
- (void)maybeDequeueRead;
- (void)maybeDequeueWrite;
- (void)maybeStartTLS;
- (void)performBlock:(id)block;
- (void)readDataToData:(id)data withTimeout:(double)timeout buffer:(id)buffer bufferOffset:(unint64_t)offset maxLength:(unint64_t)length tag:(int64_t)tag;
- (void)readDataToLength:(unint64_t)length withTimeout:(double)timeout buffer:(id)buffer bufferOffset:(unint64_t)offset tag:(int64_t)tag;
- (void)readDataWithTimeout:(double)timeout buffer:(id)buffer bufferOffset:(unint64_t)offset maxLength:(unint64_t)length tag:(int64_t)tag;
- (void)removeStreamsFromRunLoop;
- (void)resumeReadSource;
- (void)resumeWriteSource;
- (void)setAutoDisconnectOnClosedReadStream:(BOOL)stream;
- (void)setDelegate:(id)delegate delegateQueue:(id)queue synchronously:(BOOL)synchronously;
- (void)setDelegate:(id)delegate synchronously:(BOOL)synchronously;
- (void)setDelegateQueue:(id)queue synchronously:(BOOL)synchronously;
- (void)setIPv4Enabled:(BOOL)enabled;
- (void)setIPv4PreferredOverIPv6:(BOOL)pv6;
- (void)setIPv6Enabled:(BOOL)enabled;
- (void)setUserData:(id)data;
- (void)setupReadAndWriteSourcesForNewlyConnectedSocket:(int)socket;
- (void)setupReadTimerWithTimeout:(double)timeout;
- (void)setupWriteTimerWithTimeout:(double)timeout;
- (void)ssl_continueSSLHandshake;
- (void)ssl_shouldTrustPeer:(BOOL)peer stateIndex:(int)index;
- (void)ssl_startTLS;
- (void)startConnectTimeout:(double)timeout;
- (void)startTLS:(id)s;
- (void)suspendReadSource;
- (void)suspendWriteSource;
- (void)writeData:(id)data withTimeout:(double)timeout tag:(int64_t)tag;
@end

@implementation _DT_GCDAsyncSocket

- (_DT_GCDAsyncSocket)initWithDelegate:(id)delegate delegateQueue:(id)queue socketQueue:(id)socketQueue
{
  delegateCopy = delegate;
  queueCopy = queue;
  socketQueueCopy = socketQueue;
  v27.receiver = self;
  v27.super_class = _DT_GCDAsyncSocket;
  v11 = [(_DT_GCDAsyncSocket *)&v27 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->delegate, delegateCopy);
    objc_storeStrong(&v12->delegateQueue, queue);
    *&v12->socket4FD = -1;
    v12->stateIndex = 0;
    if (socketQueueCopy)
    {
      v13 = dispatch_get_global_queue(-2, 0);

      if (v13 == socketQueueCopy)
      {
        sub_24802D808();
      }

      v14 = dispatch_get_global_queue(2, 0);

      if (v14 == socketQueueCopy)
      {
        sub_24802D864();
      }

      v15 = dispatch_get_global_queue(0, 0);

      if (v15 == socketQueueCopy)
      {
        sub_24802D8C0();
      }

      v16 = socketQueueCopy;
    }

    else
    {
      v16 = dispatch_queue_create([@"_DT_GCDAsyncSocket" UTF8String], 0);
    }

    socketQueue = v12->socketQueue;
    v12->socketQueue = v16;

    v12->IsOnSocketQueueOrTargetQueueKey = &v12->IsOnSocketQueueOrTargetQueueKey;
    dispatch_queue_set_specific(v12->socketQueue, &v12->IsOnSocketQueueOrTargetQueueKey, v12, 0);
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
    readQueue = v12->readQueue;
    v12->readQueue = v18;

    currentRead = v12->currentRead;
    v12->currentRead = 0;

    v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:5];
    writeQueue = v12->writeQueue;
    v12->writeQueue = v21;

    currentWrite = v12->currentWrite;
    v12->currentWrite = 0;

    v24 = [[_DT_GCDAsyncSocketPreBuffer alloc] initWithCapacity:4096];
    preBuffer = v12->preBuffer;
    v12->preBuffer = v24;
  }

  return v12;
}

- (void)dealloc
{
  self->flags |= 0x10000u;
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    [(_DT_GCDAsyncSocket *)self closeWithError:0];
  }

  else
  {
    socketQueue = self->socketQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247F9D29C;
    block[3] = &unk_278EF1070;
    block[4] = self;
    dispatch_sync(socketQueue, block);
  }

  objc_storeWeak(&self->delegate, 0);
  delegateQueue = self->delegateQueue;
  self->delegateQueue = 0;

  v5 = self->socketQueue;
  self->socketQueue = 0;

  v6.receiver = self;
  v6.super_class = _DT_GCDAsyncSocket;
  [(_DT_GCDAsyncSocket *)&v6 dealloc];
}

- (id)delegate
{
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    WeakRetained = objc_loadWeakRetained(&self->delegate);
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_247F9D3B4;
    v11 = sub_247F9D3C4;
    v12 = 0;
    socketQueue = self->socketQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_247F9D3CC;
    v6[3] = &unk_278EF2738;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(socketQueue, v6);
    WeakRetained = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  return WeakRetained;
}

- (void)setDelegate:(id)delegate synchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  delegateCopy = delegate;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_247F9D4F8;
  v10[3] = &unk_278EF1550;
  v10[4] = self;
  v7 = delegateCopy;
  v11 = v7;
  v8 = _Block_copy(v10);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v8[2](v8);
  }

  else
  {
    socketQueue = self->socketQueue;
    if (synchronouslyCopy)
    {
      dispatch_sync(socketQueue, v8);
    }

    else
    {
      dispatch_async(socketQueue, v8);
    }
  }
}

- (OS_dispatch_queue)delegateQueue
{
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v3 = self->delegateQueue;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_247F9D3B4;
    v11 = sub_247F9D3C4;
    v12 = 0;
    socketQueue = self->socketQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_247F9D620;
    v6[3] = &unk_278EF2738;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(socketQueue, v6);
    v3 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  return v3;
}

- (void)setDelegateQueue:(id)queue synchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  queueCopy = queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_247F9D714;
  v10[3] = &unk_278EF1550;
  v10[4] = self;
  v7 = queueCopy;
  v11 = v7;
  v8 = _Block_copy(v10);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v8[2](v8);
  }

  else
  {
    socketQueue = self->socketQueue;
    if (synchronouslyCopy)
    {
      dispatch_sync(socketQueue, v8);
    }

    else
    {
      dispatch_async(socketQueue, v8);
    }
  }
}

- (void)getDelegate:(id *)delegate delegateQueue:(id *)queue
{
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    if (delegate)
    {
      *delegate = objc_loadWeakRetained(&self->delegate);
    }

    if (queue)
    {
      *queue = self->delegateQueue;
    }
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_247F9D3B4;
    v19 = sub_247F9D3C4;
    v20 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = sub_247F9D3B4;
    v13 = sub_247F9D3C4;
    v14 = 0;
    socketQueue = self->socketQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247F9D8B4;
    block[3] = &unk_278EF2760;
    block[4] = self;
    block[5] = &v15;
    block[6] = &v9;
    dispatch_sync(socketQueue, block);
    if (delegate)
    {
      *delegate = v16[5];
    }

    if (queue)
    {
      *queue = v10[5];
    }

    _Block_object_dispose(&v9, 8);

    _Block_object_dispose(&v15, 8);
  }
}

- (void)setDelegate:(id)delegate delegateQueue:(id)queue synchronously:(BOOL)synchronously
{
  synchronouslyCopy = synchronously;
  delegateCopy = delegate;
  queueCopy = queue;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_247F9DA28;
  aBlock[3] = &unk_278EF2788;
  aBlock[4] = self;
  v10 = delegateCopy;
  v15 = v10;
  v11 = queueCopy;
  v16 = v11;
  v12 = _Block_copy(aBlock);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v12[2](v12);
  }

  else
  {
    socketQueue = self->socketQueue;
    if (synchronouslyCopy)
    {
      dispatch_sync(socketQueue, v12);
    }

    else
    {
      dispatch_async(socketQueue, v12);
    }
  }
}

- (BOOL)isIPv4Enabled
{
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v3 = (self->config & 1) == 0;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    socketQueue = self->socketQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_247F9DB48;
    v6[3] = &unk_278EF2738;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(socketQueue, v6);
    v3 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v3 & 1;
}

- (void)setIPv4Enabled:(BOOL)enabled
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F9DC14;
  v5[3] = &unk_278EF27B0;
  enabledCopy = enabled;
  v5[4] = self;
  v4 = _Block_copy(v5);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v4[2](v4);
  }

  else
  {
    dispatch_async(self->socketQueue, v4);
  }
}

- (BOOL)isIPv6Enabled
{
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v3 = (self->config & 2) == 0;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    socketQueue = self->socketQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_247F9DCF8;
    v6[3] = &unk_278EF2738;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(socketQueue, v6);
    v3 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v3 & 1;
}

- (void)setIPv6Enabled:(BOOL)enabled
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F9DDC4;
  v5[3] = &unk_278EF27B0;
  enabledCopy = enabled;
  v5[4] = self;
  v4 = _Block_copy(v5);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v4[2](v4);
  }

  else
  {
    dispatch_async(self->socketQueue, v4);
  }
}

- (BOOL)isIPv4PreferredOverIPv6
{
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v3 = (self->config & 4) == 0;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    socketQueue = self->socketQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_247F9DEB4;
    v6[3] = &unk_278EF2738;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(socketQueue, v6);
    v3 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v3 & 1;
}

- (void)setIPv4PreferredOverIPv6:(BOOL)pv6
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247F9DF80;
  v5[3] = &unk_278EF27B0;
  pv6Copy = pv6;
  v5[4] = self;
  v4 = _Block_copy(v5);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v4[2](v4);
  }

  else
  {
    dispatch_async(self->socketQueue, v4);
  }
}

- (id)userData
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_247F9D3B4;
  v11 = sub_247F9D3C4;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247F9E0E0;
  v6[3] = &unk_278EF2738;
  v6[4] = self;
  v6[5] = &v7;
  v3 = _Block_copy(v6);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v3[2](v3);
  }

  else
  {
    dispatch_sync(self->socketQueue, v3);
  }

  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setUserData:(id)data
{
  dataCopy = data;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_247F9E1C4;
  v7[3] = &unk_278EF1550;
  v7[4] = self;
  v5 = dataCopy;
  v8 = v5;
  v6 = _Block_copy(v7);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v6[2](v6);
  }

  else
  {
    dispatch_async(self->socketQueue, v6);
  }
}

- (BOOL)acceptOnInterface:(id)interface port:(unsigned __int16)port error:(id *)error
{
  interfaceCopy = interface;
  v9 = [interfaceCopy copy];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_247F9D3B4;
  v27 = sub_247F9D3C4;
  v28 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_247F9E42C;
  aBlock[3] = &unk_278EF27D8;
  aBlock[4] = self;
  aBlock[5] = &v23;
  v10 = _Block_copy(aBlock);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_247F9E5C8;
  v16[3] = &unk_278EF2848;
  v16[4] = self;
  v19 = &v23;
  v11 = v9;
  v17 = v11;
  portCopy = port;
  v12 = v10;
  v18 = v12;
  v20 = &v29;
  v13 = _Block_copy(v16);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v13[2](v13);
  }

  else
  {
    dispatch_sync(self->socketQueue, v13);
  }

  v14 = *(v30 + 24);
  if (error && (v30[3] & 1) == 0)
  {
    *error = v24[5];
    v14 = *(v30 + 24);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v14 & 1;
}

- (BOOL)doAccept:(int)accept
{
  v26 = *MEMORY[0x277D85DE8];
  socket4FD = self->socket4FD;
  *&v23.sa_len = 0;
  *&v23.sa_data[6] = 0;
  if (socket4FD == accept)
  {
    v6 = 16;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v6 = 28;
  }

  v22 = v6;
  v7 = accept(accept, &v23, &v22);
  if (v7 == -1)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:&v23 length:v22];
  if (fcntl(v8, 4, 4) == -1)
  {
    close(v8);

LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  *&v23.sa_len = 1;
  setsockopt(v8, 0xFFFF, 4130, &v23, 4u);
  if (self->delegateQueue)
  {
    v10 = socket4FD == accept;
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    delegateQueue = self->delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247F9EDB0;
    block[3] = &unk_278EF2870;
    v17 = WeakRetained;
    v18 = v9;
    selfCopy = self;
    v21 = v10;
    v20 = v8;
    v13 = WeakRetained;
    dispatch_async(delegateQueue, block);
  }

  result = 1;
LABEL_11:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)preConnectWithInterface:(id)interface error:(id *)error
{
  interfaceCopy = interface;
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    sub_24802D91C();
  }

  WeakRetained = objc_loadWeakRetained(&self->delegate);

  if (!WeakRetained)
  {
    if (error)
    {
      v9 = @"Attempting to connect without a delegate. Set a delegate first.";
      goto LABEL_15;
    }

LABEL_30:
    v10 = 0;
    goto LABEL_31;
  }

  if (!self->delegateQueue)
  {
    if (error)
    {
      v9 = @"Attempting to connect without a delegate queue. Set a delegate queue first.";
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  if (![(_DT_GCDAsyncSocket *)self isDisconnected])
  {
    if (error)
    {
      v9 = @"Attempting to connect while connected or accepting connections. Disconnect first.";
      goto LABEL_15;
    }

    goto LABEL_30;
  }

  config = self->config;
  if ((~config & 3) != 0)
  {
    if (interfaceCopy)
    {
      v19 = 0;
      v20 = 0;
      [(_DT_GCDAsyncSocket *)self getInterfaceAddress4:&v20 address6:&v19 fromDescription:interfaceCopy port:0];
      v11 = v20;
      v12 = v19;
      v13 = v12;
      if (!(v11 | v12))
      {
        if (error)
        {
          v14 = @"Unknown interface. Specify valid interface by name (e.g. en1) or IP address.";
LABEL_28:
          *error = [(_DT_GCDAsyncSocket *)self badParamError:v14];
          goto LABEL_29;
        }

        goto LABEL_29;
      }

      if ((config & 1) != 0 && !v12)
      {
        if (error)
        {
          v14 = @"IPv4 has been disabled and specified interface doesn't support IPv6.";
          goto LABEL_28;
        }

LABEL_29:

        goto LABEL_30;
      }

      if ((config & 2) != 0 && !v11)
      {
        if (error)
        {
          v14 = @"IPv6 has been disabled and specified interface doesn't support IPv4.";
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      connectInterface4 = self->connectInterface4;
      self->connectInterface4 = v11;
      v17 = v11;

      connectInterface6 = self->connectInterface6;
      self->connectInterface6 = v13;
    }

    [(NSMutableArray *)self->readQueue removeAllObjects];
    [(NSMutableArray *)self->writeQueue removeAllObjects];
    v10 = 1;
    goto LABEL_31;
  }

  if (!error)
  {
    goto LABEL_30;
  }

  v9 = @"Both IPv4 and IPv6 have been disabled. Must enable at least one protocol first.";
LABEL_15:
  [(_DT_GCDAsyncSocket *)self badConfigError:v9];
  *error = v10 = 0;
LABEL_31:

  return v10;
}

- (BOOL)connectToHost:(id)host onPort:(unsigned __int16)port viaInterface:(id)interface withTimeout:(double)timeout error:(id *)error
{
  hostCopy = host;
  interfaceCopy = interface;
  v14 = [hostCopy copy];
  v15 = [interfaceCopy copy];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_247F9D3B4;
  v33 = sub_247F9D3C4;
  v34 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_247F9F340;
  aBlock[3] = &unk_278EF2910;
  v16 = v14;
  v25 = &v29;
  v22 = v16;
  selfCopy = self;
  v17 = v15;
  portCopy = port;
  timeoutCopy = timeout;
  v24 = v17;
  v26 = &v35;
  v18 = _Block_copy(aBlock);
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    dispatch_sync(self->socketQueue, v18);
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v18[2](v18);
  if (error)
  {
LABEL_3:
    *error = v30[5];
  }

LABEL_4:
  v19 = *(v36 + 24);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v19;
}

- (BOOL)connectToAddress:(id)address viaInterface:(id)interface withTimeout:(double)timeout error:(id *)error
{
  addressCopy = address;
  interfaceCopy = interface;
  v12 = [addressCopy copy];
  v13 = [interfaceCopy copy];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_247F9D3B4;
  v30 = sub_247F9D3C4;
  v31 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_247F9FA88;
  v19[3] = &unk_278EF2938;
  v14 = v12;
  v23 = &v26;
  v20 = v14;
  selfCopy = self;
  v15 = v13;
  timeoutCopy = timeout;
  v22 = v15;
  v24 = &v32;
  v16 = _Block_copy(v19);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v16[2](v16);
  }

  else
  {
    dispatch_sync(self->socketQueue, v16);
  }

  v17 = *(v33 + 24);
  if (error && (v33[3] & 1) == 0)
  {
    *error = v27[5];
    v17 = *(v33 + 24);
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  return v17 & 1;
}

- (void)lookup:(int)lookup didSucceedWithAddress4:(id)address4 address6:(id)address6
{
  address4Copy = address4;
  address6Copy = address6;
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    sub_24802D988();
  }

  if (!(address4Copy | address6Copy))
  {
    sub_24802D9F4();
  }

  if (self->stateIndex == lookup)
  {
    config = self->config;
    if (address6Copy || (config & 1) == 0)
    {
      if (address4Copy || (config & 2) == 0)
      {
        v14 = 0;
        v13 = [(_DT_GCDAsyncSocket *)self connectWithAddress4:address4Copy address6:address6Copy error:&v14];
        v12 = v14;
        if (v13)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v11 = @"IPv6 has been disabled and DNS lookup found no IPv4 address.";
    }

    else
    {
      v11 = @"IPv4 has been disabled and DNS lookup found no IPv6 address.";
    }

    v12 = [(_DT_GCDAsyncSocket *)self otherError:v11];
LABEL_13:
    [(_DT_GCDAsyncSocket *)self closeWithError:v12];
LABEL_14:
  }
}

- (void)lookup:(int)lookup didFail:(id)fail
{
  failCopy = fail;
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    sub_24802DA60();
  }

  if (self->stateIndex == lookup)
  {
    [(_DT_GCDAsyncSocket *)self endConnectTimeout];
    [(_DT_GCDAsyncSocket *)self closeWithError:failCopy];
  }
}

- (BOOL)connectWithAddress4:(id)address4 address6:(id)address6 error:(id *)error
{
  address4Copy = address4;
  address6Copy = address6;
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    sub_24802DACC();
  }

  v10 = (self->config >> 2) & 1;
  if (!address6Copy)
  {
    v10 = 0;
  }

  if (!address4Copy)
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 30;
  }

  else
  {
    v11 = 2;
  }

  if (v10)
  {
    v12 = 36;
  }

  else
  {
    v12 = 32;
  }

  if (v10)
  {
    v13 = address6Copy;
  }

  else
  {
    v13 = address4Copy;
  }

  if (v10)
  {
    v14 = 56;
  }

  else
  {
    v14 = 48;
  }

  v15 = socket(v11, 1, 0);
  *(&self->super.isa + v12) = v15;
  v16 = v13;
  v17 = *(&self->super.isa + v14);
  v18 = v17;
  if (v15 == -1)
  {
    if (error)
    {
      v19 = @"Error in socket() function";
      goto LABEL_29;
    }

LABEL_30:
    v20 = 0;
    goto LABEL_31;
  }

  if (v17)
  {
    if ([objc_opt_class() portFromAddress:v17])
    {
      LODWORD(location) = 1;
      setsockopt(v15, 0xFFFF, 4, &location, 4u);
    }

    if (bind(v15, [v18 bytes], objc_msgSend(v18, "length")))
    {
      if (error)
      {
        v19 = @"Error in bind() function";
LABEL_29:
        [(_DT_GCDAsyncSocket *)self errnoErrorWithReason:v19];
        *error = v20 = 0;
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  v20 = 1;
  v30 = 1;
  setsockopt(v15, 0xFFFF, 4130, &v30, 4u);
  fcntl(v15, 2, 0x1000000);
  stateIndex = self->stateIndex;
  objc_initWeak(&location, self);
  v22 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FA0074;
  block[3] = &unk_278EF2960;
  v27 = v15;
  v25 = v16;
  objc_copyWeak(&v26, &location);
  v28 = stateIndex;
  dispatch_async(v22, block);
  objc_destroyWeak(&v26);

  objc_destroyWeak(&location);
LABEL_31:

  return v20;
}

- (void)didConnect:(int)connect
{
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    sub_24802DB38();
  }

  if (self->stateIndex == connect)
  {
    self->flags |= 2u;
    [(_DT_GCDAsyncSocket *)self endConnectTimeout];
    stateIndex = self->stateIndex;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_247FA0530;
    aBlock[3] = &unk_278EF1070;
    aBlock[4] = self;
    v6 = _Block_copy(aBlock);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_247FA05E4;
    v20[3] = &unk_278EF1260;
    v21 = stateIndex;
    v20[4] = self;
    v7 = _Block_copy(v20);
    connectedHost = [(_DT_GCDAsyncSocket *)self connectedHost];
    connectedPort = [(_DT_GCDAsyncSocket *)self connectedPort];
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    if (self->delegateQueue && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v6[2](v6);
      delegateQueue = self->delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_247FA06A4;
      block[3] = &unk_278EF2988;
      v15 = WeakRetained;
      selfCopy = self;
      v17 = connectedHost;
      v19 = connectedPort;
      v18 = v7;
      dispatch_async(delegateQueue, block);
    }

    else
    {
      v6[2](v6);
      v7[2](v7);
    }

    socket4FD = self->socket4FD;
    if (socket4FD == -1)
    {
      socket4FD = self->socket6FD;
    }

    if (fcntl(socket4FD, 4, 4) == -1)
    {
      v13 = [(_DT_GCDAsyncSocket *)self otherError:@"Error enabling non-blocking IO on socket (fcntl)"];
      [(_DT_GCDAsyncSocket *)self closeWithError:v13];
    }

    else
    {
      [(_DT_GCDAsyncSocket *)self setupReadAndWriteSourcesForNewlyConnectedSocket:socket4FD];
      [(_DT_GCDAsyncSocket *)self maybeDequeueRead];
      [(_DT_GCDAsyncSocket *)self maybeDequeueWrite];
    }
  }
}

- (void)didNotConnect:(int)connect error:(id)error
{
  errorCopy = error;
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    sub_24802DBA4();
  }

  if (self->stateIndex == connect)
  {
    [(_DT_GCDAsyncSocket *)self closeWithError:errorCopy];
  }
}

- (void)startConnectTimeout:(double)timeout
{
  if (timeout >= 0.0)
  {
    location[1] = v6;
    location[2] = v5;
    location[7] = v3;
    location[8] = v4;
    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->socketQueue);
    connectTimer = self->connectTimer;
    self->connectTimer = v9;

    objc_initWeak(location, self);
    v11 = self->connectTimer;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_247FA0950;
    v13[3] = &unk_278EF1238;
    objc_copyWeak(&v14, location);
    dispatch_source_set_event_handler(v11, v13);
    v12 = dispatch_time(0, (timeout * 1000000000.0));
    dispatch_source_set_timer(self->connectTimer, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->connectTimer);
    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }
}

- (void)endConnectTimeout
{
  connectTimer = self->connectTimer;
  if (connectTimer)
  {
    dispatch_source_cancel(connectTimer);
    v4 = self->connectTimer;
    self->connectTimer = 0;
  }

  ++self->stateIndex;
  connectInterface4 = self->connectInterface4;
  if (connectInterface4)
  {
    self->connectInterface4 = 0;
  }

  connectInterface6 = self->connectInterface6;
  if (connectInterface6)
  {
    self->connectInterface6 = 0;
  }
}

- (void)doConnectTimeout
{
  [(_DT_GCDAsyncSocket *)self endConnectTimeout];
  connectTimeoutError = [(_DT_GCDAsyncSocket *)self connectTimeoutError];
  [(_DT_GCDAsyncSocket *)self closeWithError:connectTimeoutError];
}

- (void)closeWithError:(id)error
{
  errorCopy = error;
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    sub_24802DC10();
  }

  [(_DT_GCDAsyncSocket *)self endConnectTimeout];
  if (self->currentRead)
  {
    [(_DT_GCDAsyncSocket *)self endCurrentRead];
  }

  if (self->currentWrite)
  {
    [(_DT_GCDAsyncSocket *)self endCurrentWrite];
  }

  [(NSMutableArray *)self->readQueue removeAllObjects];
  [(NSMutableArray *)self->writeQueue removeAllObjects];
  [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer reset];
  if (self->readStream || self->writeStream)
  {
    [(_DT_GCDAsyncSocket *)self removeStreamsFromRunLoop];
    readStream = self->readStream;
    if (readStream)
    {
      CFReadStreamSetClient(readStream, 0, 0, 0);
      CFReadStreamClose(self->readStream);
      CFRelease(self->readStream);
      self->readStream = 0;
    }

    writeStream = self->writeStream;
    if (writeStream)
    {
      CFWriteStreamSetClient(writeStream, 0, 0, 0);
      CFWriteStreamClose(self->writeStream);
      CFRelease(self->writeStream);
      self->writeStream = 0;
    }
  }

  [(_DT_GCDAsyncSocketPreBuffer *)self->sslPreBuffer reset];
  self->sslErrCode = 0;
  sslContext = self->sslContext;
  if (sslContext)
  {
    SSLClose(sslContext);
    CFRelease(self->sslContext);
    self->sslContext = 0;
  }

  accept4Source = self->accept4Source;
  if (accept4Source)
  {
    dispatch_source_cancel(accept4Source);
    v9 = self->accept4Source;
    self->accept4Source = 0;

    accept6Source = self->accept6Source;
    if (!accept6Source)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  accept6Source = self->accept6Source;
  if (accept6Source)
  {
LABEL_19:
    dispatch_source_cancel(accept6Source);
    v11 = self->accept6Source;
    self->accept6Source = 0;

LABEL_20:
    readSource = self->readSource;
    if (readSource)
    {
      dispatch_source_cancel(readSource);
      [(_DT_GCDAsyncSocket *)self resumeReadSource];
      v13 = self->readSource;
      self->readSource = 0;
    }

    writeSource = self->writeSource;
    if (writeSource)
    {
      dispatch_source_cancel(writeSource);
      [(_DT_GCDAsyncSocket *)self resumeWriteSource];
      v15 = self->writeSource;
      self->writeSource = 0;
    }

    self->socket4FD = -1;
    p_socket6FD = &self->socket6FD;
    goto LABEL_25;
  }

  if (self->readSource || self->writeSource)
  {
    goto LABEL_20;
  }

  socket4FD = self->socket4FD;
  if (socket4FD != -1)
  {
    close(socket4FD);
    self->socket4FD = -1;
  }

  p_socket6FD = &self->socket6FD;
  socket6FD = self->socket6FD;
  if (socket6FD != -1)
  {
    close(socket6FD);
LABEL_25:
    *p_socket6FD = -1;
  }

  flags = self->flags;
  self->socketFDBytesAvailable = 0;
  self->flags = 0;
  if (flags)
  {
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    if ((flags & 0x10000) != 0)
    {
      selfCopy = 0;
    }

    else
    {
      selfCopy = self;
    }

    v20 = selfCopy;
    if (self->delegateQueue && (objc_opt_respondsToSelector() & 1) != 0)
    {
      delegateQueue = self->delegateQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_247FA0D54;
      block[3] = &unk_278EF2788;
      v25 = WeakRetained;
      v26 = v20;
      v27 = errorCopy;
      dispatch_async(delegateQueue, block);
    }
  }
}

- (void)disconnect
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_247FA0E48;
  aBlock[3] = &unk_278EF1070;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v3[2](v3);
  }

  else
  {
    dispatch_sync(self->socketQueue, v3);
  }
}

- (void)disconnectAfterReading
{
  socketQueue = self->socketQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FA0F0C;
  block[3] = &unk_278EF1070;
  block[4] = self;
  dispatch_async(socketQueue, block);
}

- (void)disconnectAfterWriting
{
  socketQueue = self->socketQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FA0FDC;
  block[3] = &unk_278EF1070;
  block[4] = self;
  dispatch_async(socketQueue, block);
}

- (void)disconnectAfterReadingAndWriting
{
  socketQueue = self->socketQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FA10AC;
  block[3] = &unk_278EF1070;
  block[4] = self;
  dispatch_async(socketQueue, block);
}

- (void)maybeClose
{
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    sub_24802DC7C();
  }

  flags = self->flags;
  if ((flags & 0x20) == 0)
  {
    if ((flags & 0x40) == 0)
    {
      return;
    }

LABEL_5:
    if ([(NSMutableArray *)self->writeQueue count]|| self->currentWrite)
    {
      return;
    }

    goto LABEL_12;
  }

  if ([(NSMutableArray *)self->readQueue count]|| self->currentRead)
  {
    return;
  }

  if ((self->flags & 0x40) != 0)
  {
    goto LABEL_5;
  }

LABEL_12:

  [(_DT_GCDAsyncSocket *)self closeWithError:0];
}

- (id)badConfigError:(id)error
{
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObject:error forKey:*MEMORY[0x277CCA450]];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GCDAsyncSocketErrorDomain" code:1 userInfo:v3];

  return v4;
}

- (id)badParamError:(id)error
{
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObject:error forKey:*MEMORY[0x277CCA450]];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GCDAsyncSocketErrorDomain" code:2 userInfo:v3];

  return v4;
}

+ (id)gaiError:(int)error
{
  v4 = [MEMORY[0x277CCACA8] stringWithCString:gai_strerror(error) encoding:1];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v4 forKey:*MEMORY[0x277CCA450]];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kCFStreamErrorDomainNetDB" code:error userInfo:v5];

  return v6;
}

- (id)errnoErrorWithReason:(id)reason
{
  v3 = MEMORY[0x277CCACA8];
  reasonCopy = reason;
  v5 = __error();
  v6 = [v3 stringWithUTF8String:strerror(*v5)];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v6, *MEMORY[0x277CCA450], reasonCopy, *MEMORY[0x277CCA470], 0}];

  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:v7];

  return v8;
}

- (id)errnoError
{
  v2 = MEMORY[0x277CCACA8];
  v3 = __error();
  v4 = [v2 stringWithUTF8String:strerror(*v3)];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v4 forKey:*MEMORY[0x277CCA450]];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:v5];

  return v6;
}

- (id)sslError:(int)error
{
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:@"Error code definition can be found in Apple's SecureTransport.h" forKey:*MEMORY[0x277CCA498]];
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kCFStreamErrorDomainSSL" code:error userInfo:v4];

  return v5;
}

- (id)connectTimeoutError
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"GCDAsyncSocketConnectTimeoutError" value:@"Attempt to connect to host timed out" table:@"_DT_GCDAsyncSocket"];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v3 forKey:*MEMORY[0x277CCA450]];
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GCDAsyncSocketErrorDomain" code:3 userInfo:v4];

  return v5;
}

- (id)readMaxedOutError
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"GCDAsyncSocketReadMaxedOutError" value:@"Read operation reached set maximum length" table:@"_DT_GCDAsyncSocket"];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v3 forKey:*MEMORY[0x277CCA450]];
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GCDAsyncSocketErrorDomain" code:6 userInfo:v4];

  return v5;
}

- (id)readTimeoutError
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"GCDAsyncSocketReadTimeoutError" value:@"Read operation timed out" table:@"_DT_GCDAsyncSocket"];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v3 forKey:*MEMORY[0x277CCA450]];
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GCDAsyncSocketErrorDomain" code:4 userInfo:v4];

  return v5;
}

- (id)writeTimeoutError
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"GCDAsyncSocketWriteTimeoutError" value:@"Write operation timed out" table:@"_DT_GCDAsyncSocket"];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v3 forKey:*MEMORY[0x277CCA450]];
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GCDAsyncSocketErrorDomain" code:5 userInfo:v4];

  return v5;
}

- (id)connectionClosedError
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"GCDAsyncSocketClosedError" value:@"Socket closed by remote peer" table:@"_DT_GCDAsyncSocket"];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v3 forKey:*MEMORY[0x277CCA450]];
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GCDAsyncSocketErrorDomain" code:7 userInfo:v4];

  return v5;
}

- (id)otherError:(id)error
{
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObject:error forKey:*MEMORY[0x277CCA450]];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"GCDAsyncSocketErrorDomain" code:8 userInfo:v3];

  return v4;
}

- (BOOL)isDisconnected
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247FA1ABC;
  v6[3] = &unk_278EF2738;
  v6[4] = self;
  v6[5] = &v7;
  v3 = _Block_copy(v6);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v3[2](v3);
  }

  else
  {
    dispatch_sync(self->socketQueue, v3);
  }

  v4 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isConnected
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247FA1BCC;
  v6[3] = &unk_278EF2738;
  v6[4] = self;
  v6[5] = &v7;
  v3 = _Block_copy(v6);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v3[2](v3);
  }

  else
  {
    dispatch_sync(self->socketQueue, v3);
  }

  v4 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v4;
}

- (NSString)connectedHost
{
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_247F9D3B4;
    v12 = sub_247F9D3C4;
    v13 = 0;
    socketQueue = self->socketQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_247FA1D24;
    v7[3] = &unk_278EF1890;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(socketQueue, v7);
    v5 = v9[5];
    _Block_object_dispose(&v8, 8);

    goto LABEL_8;
  }

  if (self->socket4FD != -1)
  {
    v3 = [(_DT_GCDAsyncSocket *)self connectedHostFromSocket4:?];
LABEL_7:
    v5 = v3;
    goto LABEL_8;
  }

  if (self->socket6FD != -1)
  {
    v3 = [(_DT_GCDAsyncSocket *)self connectedHostFromSocket6:?];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (unsigned)connectedPort
{
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    socketQueue = self->socketQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_247FA1EC4;
    v6[3] = &unk_278EF1890;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(socketQueue, v6);
    v5 = *(v8 + 12);
    _Block_object_dispose(&v7, 8);
    return v5;
  }

  if (self->socket4FD != -1)
  {

    return [(_DT_GCDAsyncSocket *)self connectedPortFromSocket4:?];
  }

  if (self->socket6FD == -1)
  {
    return 0;
  }

  return [(_DT_GCDAsyncSocket *)self connectedPortFromSocket6:?];
}

- (NSString)localHost
{
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = sub_247F9D3B4;
    v12 = sub_247F9D3C4;
    v13 = 0;
    socketQueue = self->socketQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_247FA2058;
    v7[3] = &unk_278EF1890;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(socketQueue, v7);
    v5 = v9[5];
    _Block_object_dispose(&v8, 8);

    goto LABEL_8;
  }

  if (self->socket4FD != -1)
  {
    v3 = [(_DT_GCDAsyncSocket *)self localHostFromSocket4:?];
LABEL_7:
    v5 = v3;
    goto LABEL_8;
  }

  if (self->socket6FD != -1)
  {
    v3 = [(_DT_GCDAsyncSocket *)self localHostFromSocket6:?];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

- (unsigned)localPort
{
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    socketQueue = self->socketQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_247FA21F8;
    v6[3] = &unk_278EF1890;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(socketQueue, v6);
    v5 = *(v8 + 12);
    _Block_object_dispose(&v7, 8);
    return v5;
  }

  if (self->socket4FD != -1)
  {

    return [(_DT_GCDAsyncSocket *)self localPortFromSocket4:?];
  }

  if (self->socket6FD == -1)
  {
    return 0;
  }

  return [(_DT_GCDAsyncSocket *)self localPortFromSocket6:?];
}

- (id)connectedHost4
{
  if (self->socket4FD == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(_DT_GCDAsyncSocket *)self connectedHostFromSocket4:v2];
  }

  return v4;
}

- (id)connectedHost6
{
  if (self->socket6FD == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(_DT_GCDAsyncSocket *)self connectedHostFromSocket6:v2];
  }

  return v4;
}

- (unsigned)connectedPort4
{
  if (self->socket4FD == -1)
  {
    return 0;
  }

  else
  {
    return [(_DT_GCDAsyncSocket *)self connectedPortFromSocket4:?];
  }
}

- (unsigned)connectedPort6
{
  if (self->socket6FD == -1)
  {
    return 0;
  }

  else
  {
    return [(_DT_GCDAsyncSocket *)self connectedPortFromSocket6:?];
  }
}

- (id)localHost4
{
  if (self->socket4FD == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(_DT_GCDAsyncSocket *)self localHostFromSocket4:v2];
  }

  return v4;
}

- (id)localHost6
{
  if (self->socket6FD == -1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(_DT_GCDAsyncSocket *)self localHostFromSocket6:v2];
  }

  return v4;
}

- (unsigned)localPort4
{
  if (self->socket4FD == -1)
  {
    return 0;
  }

  else
  {
    return [(_DT_GCDAsyncSocket *)self localPortFromSocket4:?];
  }
}

- (unsigned)localPort6
{
  if (self->socket6FD == -1)
  {
    return 0;
  }

  else
  {
    return [(_DT_GCDAsyncSocket *)self localPortFromSocket6:?];
  }
}

- (id)connectedHostFromSocket4:(int)socket4
{
  v8 = *MEMORY[0x277D85DE8];
  *&v7.sa_len = 0;
  *&v7.sa_data[6] = 0;
  v6 = 16;
  if (getpeername(socket4, &v7, &v6) < 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_opt_class() hostFromSockaddr4:&v7];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)connectedHostFromSocket6:(int)socket6
{
  *&v6.sa_len = 0;
  *&v6.sa_data[6] = 0;
  v8 = 0;
  v7 = 0;
  v5 = 28;
  if (getpeername(socket6, &v6, &v5) < 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_opt_class() hostFromSockaddr6:&v6];
  }

  return v3;
}

- (unsigned)connectedPortFromSocket4:(int)socket4
{
  v7 = *MEMORY[0x277D85DE8];
  *&v6.sa_len = 0;
  *&v6.sa_data[6] = 0;
  v5 = 16;
  if (getpeername(socket4, &v6, &v5) < 0)
  {
    result = 0;
  }

  else
  {
    result = [objc_opt_class() portFromSockaddr4:&v6];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)connectedPortFromSocket6:(int)socket6
{
  *&v5.sa_len = 0;
  *&v5.sa_data[6] = 0;
  v7 = 0;
  v6 = 0;
  v4 = 28;
  if (getpeername(socket6, &v5, &v4) < 0)
  {
    return 0;
  }

  else
  {
    return [objc_opt_class() portFromSockaddr6:&v5];
  }
}

- (id)localHostFromSocket4:(int)socket4
{
  v8 = *MEMORY[0x277D85DE8];
  *&v7.sa_len = 0;
  *&v7.sa_data[6] = 0;
  v6 = 16;
  if (getsockname(socket4, &v7, &v6) < 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_opt_class() hostFromSockaddr4:&v7];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)localHostFromSocket6:(int)socket6
{
  *&v6.sa_len = 0;
  *&v6.sa_data[6] = 0;
  v8 = 0;
  v7 = 0;
  v5 = 28;
  if (getsockname(socket6, &v6, &v5) < 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_opt_class() hostFromSockaddr6:&v6];
  }

  return v3;
}

- (unsigned)localPortFromSocket4:(int)socket4
{
  v7 = *MEMORY[0x277D85DE8];
  *&v6.sa_len = 0;
  *&v6.sa_data[6] = 0;
  v5 = 16;
  if (getsockname(socket4, &v6, &v5) < 0)
  {
    result = 0;
  }

  else
  {
    result = [objc_opt_class() portFromSockaddr4:&v6];
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (unsigned)localPortFromSocket6:(int)socket6
{
  *&v5.sa_len = 0;
  *&v5.sa_data[6] = 0;
  v7 = 0;
  v6 = 0;
  v4 = 28;
  if (getsockname(socket6, &v5, &v4) < 0)
  {
    return 0;
  }

  else
  {
    return [objc_opt_class() portFromSockaddr6:&v5];
  }
}

- (NSData)connectedAddress
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_247F9D3B4;
  v11 = sub_247F9D3C4;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247FA2954;
  v6[3] = &unk_278EF1890;
  v6[4] = self;
  v6[5] = &v7;
  v3 = _Block_copy(v6);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v3[2](v3);
  }

  else
  {
    dispatch_sync(self->socketQueue, v3);
  }

  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSData)localAddress
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_247F9D3B4;
  v11 = sub_247F9D3C4;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_247FA2B98;
  v6[3] = &unk_278EF1890;
  v6[4] = self;
  v6[5] = &v7;
  v3 = _Block_copy(v6);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v3[2](v3);
  }

  else
  {
    dispatch_sync(self->socketQueue, v3);
  }

  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)isIPv4
{
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v3 = self->socket4FD != -1;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    socketQueue = self->socketQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_247FA2D6C;
    v6[3] = &unk_278EF2738;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(socketQueue, v6);
    v3 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v3 & 1;
}

- (BOOL)isIPv6
{
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v3 = self->socket6FD != -1;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    socketQueue = self->socketQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_247FA2E50;
    v6[3] = &unk_278EF2738;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(socketQueue, v6);
    v3 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v3 & 1;
}

- (BOOL)isSecure
{
  selfCopy = self;
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    LODWORD(selfCopy) = (BYTE1(selfCopy->flags) >> 5) & 1;
  }

  else
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    socketQueue = selfCopy->socketQueue;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_247FA2F30;
    v5[3] = &unk_278EF2738;
    v5[4] = selfCopy;
    v5[5] = &v6;
    dispatch_sync(socketQueue, v5);
    LOBYTE(selfCopy) = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  return selfCopy & 1;
}

- (void)getInterfaceAddress4:(id *)address4 address6:(id *)address6 fromDescription:(id)description port:(unsigned __int16)port
{
  portCopy = port;
  v32 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  v10 = [descriptionCopy componentsSeparatedByString:@":"];
  if ([v10 count])
  {
    v11 = [v10 objectAtIndex:0];
    if ([v11 length])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = [v10 count];
  if (!portCopy && v13 >= 2)
  {
    v14 = [v10 objectAtIndex:1];
    v15 = strtol([v14 UTF8String], 0, 10);

    if ((v15 - 1) >= 0xFFFF)
    {
      portCopy = 0;
    }

    else
    {
      portCopy = v15;
    }
  }

  if (!v12)
  {
    *&__s1[8] = 0;
    *__s1 = 528;
    *&__s1[2] = bswap32(portCopy) >> 16;
    *&__s1[4] = 0;
    memset(v30 + 4, 0, 24);
    LOWORD(v30[0]) = 7708;
    WORD1(v30[0]) = *&__s1[2];
    v16 = MEMORY[0x277D85EE8];
    goto LABEL_17;
  }

  if (([v12 isEqualToString:@"localhost"] & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"loopback"))
  {
    *&__s1[8] = 0;
    *__s1 = 528;
    *&__s1[2] = bswap32(portCopy) >> 16;
    *&__s1[4] = 16777343;
    memset(v30 + 4, 0, 24);
    LOWORD(v30[0]) = 7708;
    WORD1(v30[0]) = *&__s1[2];
    v16 = MEMORY[0x277D85EF0];
LABEL_17:
    *(v30 + 8) = *v16;
    v17 = [MEMORY[0x277CBEB28] dataWithBytes:__s1 length:16];
    v18 = [MEMORY[0x277CBEB28] dataWithBytes:v30 length:28];
    goto LABEL_18;
  }

  uTF8String = [v12 UTF8String];
  v29 = 0;
  v18 = 0;
  v17 = 0;
  if (!getifaddrs(&v29))
  {
    v23 = v29;
    if (v29)
    {
      v17 = 0;
      v18 = 0;
      v24 = bswap32(portCopy) >> 16;
      do
      {
        if (v17 || (v25 = v23->ifa_addr, v25->sa_family != 2))
        {
          if (!v18)
          {
            if (v23->ifa_addr->sa_family == 30 && ((memset(__s1, 0, 28), ifa_addr = v23->ifa_addr, v27 = *&ifa_addr->sa_data[10], *__s1 = *ifa_addr, *&__s1[12] = v27, !strcmp(v23->ifa_name, uTF8String)) || inet_ntop(30, &__s1[8], v30, 0x2Eu) && !strcmp(v30, uTF8String)))
            {
              *&__s1[2] = v24;
              v18 = [MEMORY[0x277CBEB28] dataWithBytes:__s1 length:28];
            }

            else
            {
              v18 = 0;
            }
          }
        }

        else
        {
          v30[0] = 0uLL;
          v30[0] = *v25;
          if (!strcmp(v23->ifa_name, uTF8String) || inet_ntop(2, v30 + 4, __s1, 0x10u) && !strcmp(__s1, uTF8String))
          {
            WORD1(v30[0]) = v24;
            v17 = [MEMORY[0x277CBEB28] dataWithBytes:v30 length:16];
          }

          else
          {
            v17 = 0;
          }
        }

        v23 = v23->ifa_next;
      }

      while (v23);
      v28 = v29;
    }

    else
    {
      v28 = 0;
      v18 = 0;
      v17 = 0;
    }

    MEMORY[0x24C1C2F30](v28);
  }

LABEL_18:
  if (address4)
  {
    v19 = v17;
    *address4 = v17;
  }

  if (address6)
  {
    v20 = v18;
    *address6 = v18;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setupReadAndWriteSourcesForNewlyConnectedSocket:(int)socket
{
  socketCopy = socket;
  v6 = dispatch_source_create(MEMORY[0x277D85D28], socket, 0, self->socketQueue);
  readSource = self->readSource;
  self->readSource = v6;

  v8 = dispatch_source_create(MEMORY[0x277D85D50], socketCopy, 0, self->socketQueue);
  writeSource = self->writeSource;
  self->writeSource = v8;

  objc_initWeak(&location, self);
  v10 = self->readSource;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_247FA356C;
  handler[3] = &unk_278EF1238;
  objc_copyWeak(&v23, &location);
  dispatch_source_set_event_handler(v10, handler);
  v11 = self->writeSource;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_247FA35E0;
  v20[3] = &unk_278EF1238;
  objc_copyWeak(&v21, &location);
  dispatch_source_set_event_handler(v11, v20);
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 2;
  v12 = self->readSource;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_247FA3644;
  v16[3] = &unk_278EF29B0;
  v16[4] = v18;
  socketCopy2 = socket;
  dispatch_source_set_cancel_handler(v12, v16);
  v13 = self->writeSource;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_247FA3668;
  v14[3] = &unk_278EF29B0;
  v14[4] = v18;
  socketCopy3 = socket;
  dispatch_source_set_cancel_handler(v13, v14);
  self->socketFDBytesAvailable = 0;
  self->flags &= ~0x100u;
  dispatch_resume(self->readSource);
  self->flags |= 0x280u;
  _Block_object_dispose(v18, 8);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)suspendReadSource
{
  if ((self->flags & 0x100) == 0)
  {
    dispatch_suspend(self->readSource);
    self->flags |= 0x100u;
  }
}

- (void)resumeReadSource
{
  if ((self->flags & 0x100) != 0)
  {
    dispatch_resume(self->readSource);
    self->flags &= ~0x100u;
  }
}

- (void)suspendWriteSource
{
  if ((self->flags & 0x200) == 0)
  {
    dispatch_suspend(self->writeSource);
    self->flags |= 0x200u;
  }
}

- (void)resumeWriteSource
{
  if ((self->flags & 0x200) != 0)
  {
    dispatch_resume(self->writeSource);
    self->flags &= ~0x200u;
  }
}

- (void)readDataWithTimeout:(double)timeout buffer:(id)buffer bufferOffset:(unint64_t)offset maxLength:(unint64_t)length tag:(int64_t)tag
{
  bufferCopy = buffer;
  if ([bufferCopy length] >= offset)
  {
    v13 = [[_DT_GCDAsyncReadPacket alloc] initWithData:bufferCopy startOffset:offset maxLength:length timeout:0 readLength:0 terminator:tag tag:timeout];
    socketQueue = self->socketQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_247FA38DC;
    v16[3] = &unk_278EF1550;
    v16[4] = self;
    v17 = v13;
    v15 = v13;
    dispatch_async(socketQueue, v16);
  }
}

- (void)readDataToLength:(unint64_t)length withTimeout:(double)timeout buffer:(id)buffer bufferOffset:(unint64_t)offset tag:(int64_t)tag
{
  bufferCopy = buffer;
  v13 = bufferCopy;
  if (length && [bufferCopy length] >= offset)
  {
    v14 = [[_DT_GCDAsyncReadPacket alloc] initWithData:v13 startOffset:offset maxLength:0 timeout:length readLength:0 terminator:tag tag:timeout];
    socketQueue = self->socketQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_247FA3A5C;
    v17[3] = &unk_278EF1550;
    v17[4] = self;
    v18 = v14;
    v16 = v14;
    dispatch_async(socketQueue, v17);
  }
}

- (void)readDataToData:(id)data withTimeout:(double)timeout buffer:(id)buffer bufferOffset:(unint64_t)offset maxLength:(unint64_t)length tag:(int64_t)tag
{
  dataCopy = data;
  bufferCopy = buffer;
  if ([dataCopy length] && objc_msgSend(bufferCopy, "length") >= offset && (!length || objc_msgSend(dataCopy, "length") <= length))
  {
    v16 = [[_DT_GCDAsyncReadPacket alloc] initWithData:bufferCopy startOffset:offset maxLength:length timeout:0 readLength:dataCopy terminator:tag tag:timeout];
    socketQueue = self->socketQueue;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_247FA3C2C;
    v19[3] = &unk_278EF1550;
    v19[4] = self;
    v20 = v16;
    v18 = v16;
    dispatch_async(socketQueue, v19);
  }
}

- (float)progressOfReadReturningTag:(int64_t *)tag bytesDone:(unint64_t *)done total:(unint64_t *)total
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_247FA3D98;
  aBlock[3] = &unk_278EF29D8;
  aBlock[6] = tag;
  aBlock[7] = done;
  aBlock[8] = total;
  aBlock[4] = self;
  aBlock[5] = &v10;
  v6 = _Block_copy(aBlock);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v6[2](v6);
  }

  else
  {
    dispatch_sync(self->socketQueue, v6);
  }

  v7 = v11[6];

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (void)maybeDequeueRead
{
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    sub_24802DCE8();
  }

  if (!self->currentRead && (self->flags & 2) != 0)
  {
    if ([(NSMutableArray *)self->readQueue count])
    {
      v3 = [(NSMutableArray *)self->readQueue objectAtIndex:0];
      currentRead = self->currentRead;
      self->currentRead = v3;

      [(NSMutableArray *)self->readQueue removeObjectAtIndex:0];
      v5 = self->currentRead;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->flags |= 0x800u;

        MEMORY[0x2821F9670](self, sel_maybeStartTLS);
      }

      else
      {
        [(_DT_GCDAsyncSocket *)self setupReadTimerWithTimeout:self->currentRead->timeout];

        [(_DT_GCDAsyncSocket *)self doReadData];
      }
    }

    else
    {
      flags = self->flags;
      if ((flags & 0x20) != 0)
      {
        if ((flags & 0x40) == 0 || ![(NSMutableArray *)self->writeQueue count]&& !self->currentWrite)
        {

          [(_DT_GCDAsyncSocket *)self closeWithError:0];
        }
      }

      else if ((flags & 0x2000) != 0)
      {
        [(_DT_GCDAsyncSocket *)self flushSSLBuffers];
        if (![(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer availableBytes]&& ![(_DT_GCDAsyncSocket *)self usingCFStreamForTLS])
        {

          [(_DT_GCDAsyncSocket *)self resumeReadSource];
        }
      }
    }
  }
}

- (void)flushSSLBuffers
{
  if ((self->flags & 0x2000) == 0)
  {
    sub_24802DD54();
  }

  if (![(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer availableBytes])
  {
    if ([(_DT_GCDAsyncSocket *)self usingCFStreamForTLS])
    {
      if ((self->flags & 0x80000) != 0 && CFReadStreamHasBytesAvailable(self->readStream))
      {
        [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer ensureCapacityForWrite:4096];
        v3 = CFReadStreamRead(self->readStream, [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer writeBuffer], 4096);
        if (v3 >= 1)
        {
          [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer didWrite:v3];
        }

        self->flags &= ~0x80000u;
      }
    }

    else
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_247FA41C0;
      aBlock[3] = &unk_278EF2738;
      aBlock[4] = self;
      aBlock[5] = &v9;
      v4 = _Block_copy(aBlock);
      v4[2]();
      while (v10[3])
      {
        [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer ensureCapacityForWrite:?];
        writeBuffer = [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer writeBuffer];
        processed = 0;
        v6 = SSLRead(self->sslContext, writeBuffer, v10[3], &processed);
        if (processed)
        {
          [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer didWrite:?];
        }

        if (v6)
        {
          break;
        }

        (v4[2])(v4);
      }

      _Block_object_dispose(&v9, 8);
    }
  }
}

- (void)doReadData
{
  p_currentRead = &self->currentRead;
  if (self->currentRead)
  {
    v4 = (self->flags & 8) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    if ((self->flags & 0x2000) != 0)
    {
      [(_DT_GCDAsyncSocket *)self flushSSLBuffers];
    }

    if (![(_DT_GCDAsyncSocket *)self usingCFStreamForTLS]&& self->socketFDBytesAvailable)
    {

      [(_DT_GCDAsyncSocket *)self suspendReadSource];
    }

    return;
  }

  if ([(_DT_GCDAsyncSocket *)self usingCFStreamForTLS])
  {
    if ((self->flags & 0x80000) != 0 && CFReadStreamHasBytesAvailable(self->readStream))
    {
      socketFDBytesAvailable = 0;
LABEL_19:
      v7 = 1;
      goto LABEL_22;
    }
  }

  else
  {
    socketFDBytesAvailable = self->socketFDBytesAvailable;
    if ((self->flags & 0x2000) != 0)
    {
      availableBytes = [(_DT_GCDAsyncSocketPreBuffer *)self->sslPreBuffer availableBytes];
      bufferSize = 0;
      SSLGetBufferedReadSize(self->sslContext, &bufferSize);
      socketFDBytesAvailable += availableBytes + bufferSize;
    }

    if (socketFDBytesAvailable)
    {
      goto LABEL_19;
    }
  }

  if (![(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer availableBytes])
  {
LABEL_132:
    if (![(_DT_GCDAsyncSocket *)self usingCFStreamForTLS:v49])
    {
      [(_DT_GCDAsyncSocket *)self resumeReadSource];
    }

    return;
  }

  v7 = 0;
  socketFDBytesAvailable = 0;
LABEL_22:
  flags = self->flags;
  if ((flags & 0x800) == 0)
  {
    v58 = 0;
    if ([(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer availableBytes])
    {
      currentRead = self->currentRead;
      if (currentRead->term)
      {
        v10 = [(_DT_GCDAsyncReadPacket *)self->currentRead readLengthForTermWithPreBuffer:self->preBuffer found:&v58];
      }

      else
      {
        v10 = [(_DT_GCDAsyncReadPacket *)currentRead readLengthForNonTermWithHint:[(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer availableBytes]];
      }

      v11 = v10;
      [(_DT_GCDAsyncReadPacket *)self->currentRead ensureCapacityForAdditionalDataOfLength:v10];
      memcpy([(NSMutableData *)self->currentRead->buffer mutableBytes]+ self->currentRead->startOffset + self->currentRead->bytesDone, [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer readBuffer], v11);
      [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer didRead:v11];
      self->currentRead->bytesDone += v11;
      v13 = self->currentRead;
      readLength = v13->readLength;
      if (readLength)
      {
        readMaxedOutError = 0;
        v15 = v13->bytesDone == readLength;
LABEL_36:
        v58 = v15;
        goto LABEL_37;
      }

      if (!v13->term)
      {
        maxLength = v13->maxLength;
        if (maxLength)
        {
          v15 = v13->bytesDone == maxLength;
        }

        else
        {
          v15 = 0;
        }

        readMaxedOutError = 0;
        goto LABEL_36;
      }

      if (!v58)
      {
        v22 = v13->maxLength;
        if (v22)
        {
          if (v13->bytesDone >= v22)
          {
            readMaxedOutError = [(_DT_GCDAsyncSocket *)self readMaxedOutError];
            goto LABEL_37;
          }
        }
      }
    }

    else
    {
      v11 = 0;
    }

    readMaxedOutError = 0;
LABEL_37:
    v16 = self->flags;
    if (v58 || readMaxedOutError)
    {
      v18 = 0;
      v21 = (v16 >> 14) & 1;
      if (v58)
      {
        goto LABEL_50;
      }

      goto LABEL_120;
    }

    v17 = v7 ^ 1;
    if ((v16 & 0x4000) != 0)
    {
      v18 = 0;
    }

    else
    {
      v18 = v7 ^ 1;
    }

    if ((v16 & 0x4000) != 0)
    {
      readMaxedOutError = 0;
      v18 = 0;
      v21 = 1;
    }

    else
    {
      if (v7)
      {
        if ([(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer availableBytes])
        {
          sub_24802DDC0();
        }

        v57 = 0;
        if ((self->flags & 0x2000) != 0)
        {
          if ([(_DT_GCDAsyncSocket *)self usingCFStreamForTLS])
          {
            v24 = [(_DT_GCDAsyncReadPacket *)*p_currentRead optimalReadLengthWithDefault:0x8000 shouldPreBuffer:&v57];
            if (v57 == 1)
            {
              [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer ensureCapacityForWrite:v24];
              writeBuffer = [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer writeBuffer];
            }

            else
            {
              [(_DT_GCDAsyncReadPacket *)*p_currentRead ensureCapacityForAdditionalDataOfLength:v24];
              writeBuffer = ([(NSMutableData *)(*p_currentRead)->buffer mutableBytes]+ (*p_currentRead)->startOffset + (*p_currentRead)->bytesDone);
            }

            v35 = CFReadStreamRead(self->readStream, writeBuffer, v24);
            if (v35 < 0)
            {
              readMaxedOutError = CFReadStreamCopyError(self->readStream);
              v31 = 0;
              v18 = 0;
              v21 = 0;
            }

            else
            {
              v31 = v35;
              readMaxedOutError = 0;
              v21 = v35 == 0;
              if (v35)
              {
                v18 = 1;
              }

              else
              {
                v18 = v17;
              }
            }

            self->flags &= ~0x80000u;
          }

          else
          {
            if (socketFDBytesAvailable <= 0x8000)
            {
              v26 = 0x8000;
            }

            else
            {
              v26 = socketFDBytesAvailable + 0x4000;
            }

            v27 = [(_DT_GCDAsyncReadPacket *)*p_currentRead optimalReadLengthWithDefault:v26 shouldPreBuffer:&v57];
            if (v57 == 1)
            {
              [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer ensureCapacityForWrite:v27];
              writeBuffer = [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer writeBuffer];
            }

            else
            {
              [(_DT_GCDAsyncReadPacket *)*p_currentRead ensureCapacityForAdditionalDataOfLength:v27];
              writeBuffer = ([(NSMutableData *)(*p_currentRead)->buffer mutableBytes]+ (*p_currentRead)->startOffset + (*p_currentRead)->bytesDone);
            }

            v31 = 0;
            do
            {
              bufferSize = 0;
              v36 = SSLRead(self->sslContext, &writeBuffer[v31], v27 - v31, &bufferSize);
              v31 += bufferSize;
              if (v36)
              {
                v37 = 1;
              }

              else
              {
                v37 = v31 >= v27;
              }
            }

            while (!v37);
            readMaxedOutError = 0;
            v21 = 0;
            if (v36 == -9803)
            {
              v18 = 1;
            }

            else if (v36)
            {
              if (v36 >> 1 == 2147478745)
              {
                readMaxedOutError = 0;
                self->sslErrCode = v36;
                v21 = 1;
              }

              else
              {
                readMaxedOutError = [(_DT_GCDAsyncSocket *)self sslError:v36];
                v21 = 0;
              }
            }
          }

          if (!v31)
          {
LABEL_119:
            if (v58)
            {
              goto LABEL_50;
            }

            goto LABEL_120;
          }
        }

        else
        {
          v19 = *p_currentRead;
          if ((*p_currentRead)->term)
          {
            v20 = [(_DT_GCDAsyncReadPacket *)v19 readLengthForTermWithHint:socketFDBytesAvailable shouldPreBuffer:&v57];
          }

          else
          {
            v20 = [(_DT_GCDAsyncReadPacket *)v19 readLengthForNonTermWithHint:socketFDBytesAvailable];
          }

          v28 = v20;
          if (v57 == 1)
          {
            [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer ensureCapacityForWrite:v20];
            writeBuffer = [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer writeBuffer];
          }

          else
          {
            [(_DT_GCDAsyncReadPacket *)*p_currentRead ensureCapacityForAdditionalDataOfLength:v20];
            writeBuffer = ([(NSMutableData *)(*p_currentRead)->buffer mutableBytes]+ (*p_currentRead)->startOffset + (*p_currentRead)->bytesDone);
          }

          socket4FD = self->socket4FD;
          if (socket4FD == -1)
          {
            socket4FD = self->socket6FD;
          }

          v30 = read(socket4FD, writeBuffer, v28);
          if ((v30 & 0x8000000000000000) != 0)
          {
            v34 = *__error();
            v18 = v34 == 35;
            if (v34 == 35)
            {
              readMaxedOutError = 0;
            }

            else
            {
              readMaxedOutError = [(_DT_GCDAsyncSocket *)self errnoErrorWithReason:@"Error in read() function"];
            }

            v21 = 0;
            self->socketFDBytesAvailable = 0;
            goto LABEL_119;
          }

          v31 = v30;
          if (!v30)
          {
            v18 = 0;
            readMaxedOutError = 0;
            self->socketFDBytesAvailable = 0;
            v21 = 1;
            goto LABEL_119;
          }

          if (v30 >= v28)
          {
            v38 = self->socketFDBytesAvailable;
            v37 = v38 >= v30;
            v32 = v38 - v30;
            v33 = v38 <= v30;
            if (!v37)
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = 0;
            v33 = 1;
          }

          readMaxedOutError = 0;
          v21 = 0;
          self->socketFDBytesAvailable = v32;
          v18 = v33 | v17;
        }

        p_isa = *p_currentRead;
        if ((*p_currentRead)->readLength)
        {
          if (v57)
          {
            sub_24802DE1C();
            p_isa = bufferSize;
          }

          p_isa[3] += v31;
          v11 += v31;
          v40 = (*p_currentRead)->bytesDone == (*p_currentRead)->readLength;
LABEL_118:
          v58 = v40;
          goto LABEL_119;
        }

        if (!p_isa[7])
        {
          if (v57)
          {
            [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer didWrite:v31];
            [(_DT_GCDAsyncReadPacket *)self->currentRead ensureCapacityForAdditionalDataOfLength:v31];
            memcpy([(NSMutableData *)self->currentRead->buffer mutableBytes]+ self->currentRead->startOffset + self->currentRead->bytesDone, [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer readBuffer], v31);
            [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer didRead:v31];
            p_isa = &self->currentRead->super.isa;
          }

          p_isa[3] += v31;
          v11 += v31;
          v40 = 1;
          goto LABEL_118;
        }

        if (v57)
        {
          [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer didWrite:v31];
          v44 = [(_DT_GCDAsyncReadPacket *)self->currentRead readLengthForTermWithPreBuffer:self->preBuffer found:&v58];
          [(_DT_GCDAsyncReadPacket *)self->currentRead ensureCapacityForAdditionalDataOfLength:v44];
          memcpy([(NSMutableData *)self->currentRead->buffer mutableBytes]+ self->currentRead->startOffset + self->currentRead->bytesDone, [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer readBuffer], v44);
          [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer didRead:v44];
          self->currentRead->bytesDone += v44;
          v11 += v44;
          if (v58)
          {
            goto LABEL_119;
          }

          goto LABEL_149;
        }

        v45 = [p_isa searchForTermAfterPreBuffering:v31];
        if (v45)
        {
          v46 = v45;
          if (v45 < 1)
          {
            (*p_currentRead)->bytesDone += v31;
            v58 = 0;
            v11 += v31;
LABEL_149:
            v47 = (*p_currentRead)->maxLength;
            if (v47 && (*p_currentRead)->bytesDone >= v47)
            {
              readMaxedOutError2 = [(_DT_GCDAsyncSocket *)self readMaxedOutError];

              readMaxedOutError = readMaxedOutError2;
            }

            goto LABEL_119;
          }

          v31 -= v45;
          [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer ensureCapacityForWrite:v45];
          memcpy([(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer writeBuffer], &writeBuffer[v31], v46);
          [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer didWrite:v46];
        }

        (*p_currentRead)->bytesDone += v31;
        v58 = 1;
        v11 += v31;
        goto LABEL_119;
      }

      readMaxedOutError = 0;
      v21 = 0;
      v18 = 1;
    }

LABEL_120:
    if ((*p_currentRead)->readLength || (*p_currentRead)->term)
    {
      if (v11)
      {
        WeakRetained = objc_loadWeakRetained(&self->delegate);
        if (self->delegateQueue && (objc_opt_respondsToSelector() & 1) != 0)
        {
          tag = self->currentRead->tag;
          delegateQueue = self->delegateQueue;
          v49 = MEMORY[0x277D85DD0];
          v50 = 3221225472;
          v51 = sub_247FA4B9C;
          v52 = &unk_278EF2A00;
          v53 = WeakRetained;
          selfCopy = self;
          v55 = v11;
          v56 = tag;
          dispatch_async(delegateQueue, &v49);
        }
      }

      goto LABEL_127;
    }

    v58 = v11 != 0;
    if (!v11)
    {
LABEL_127:
      if (readMaxedOutError)
      {
        goto LABEL_128;
      }

      if (v21)
      {
LABEL_130:
        [(_DT_GCDAsyncSocket *)self doReadEOF:v49];
        return;
      }

      if (!v18)
      {
        return;
      }

      goto LABEL_132;
    }

LABEL_50:
    [(_DT_GCDAsyncSocket *)self completeCurrentRead];
    if (readMaxedOutError)
    {
LABEL_128:
      [(_DT_GCDAsyncSocket *)self closeWithError:readMaxedOutError, v49, v50, v51, v52];

      return;
    }

    if (v21)
    {
      if ([(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer availableBytes])
      {
        [(_DT_GCDAsyncSocket *)self maybeDequeueRead];
      }

      goto LABEL_130;
    }

    [(_DT_GCDAsyncSocket *)self maybeDequeueRead];
    if ((v18 & 1) == 0)
    {
      return;
    }

    goto LABEL_132;
  }

  if ((flags & 0x1000) != 0)
  {
    if ([(_DT_GCDAsyncSocket *)self usingSecureTransportForTLS])
    {
      [(_DT_GCDAsyncSocket *)self ssl_continueSSLHandshake];
    }
  }

  else if (![(_DT_GCDAsyncSocket *)self usingCFStreamForTLS])
  {
    [(_DT_GCDAsyncSocket *)self suspendReadSource];
  }
}

- (void)doReadEOF
{
  v19 = *MEMORY[0x277D85DE8];
  flags = self->flags;
  LOWORD(v4) = flags | 0x4000;
  self->flags = flags | 0x4000;
  if ((flags & 0x2000) != 0)
  {
    [(_DT_GCDAsyncSocket *)self flushSSLBuffers];
    v4 = self->flags;
  }

  if ((v4 & 0x1800) != 0)
  {
    if ([(_DT_GCDAsyncSocket *)self usingSecureTransportForTLS])
    {
      v5 = [(_DT_GCDAsyncSocket *)self sslError:4294957490];
      if (v5)
      {
LABEL_20:
        [(_DT_GCDAsyncSocket *)self closeWithError:v5];

        goto LABEL_21;
      }
    }

LABEL_15:
    if ([(_DT_GCDAsyncSocket *)self usingSecureTransportForTLS]&& (sslErrCode = self->sslErrCode, sslErrCode != -9805) && sslErrCode)
    {
      connectionClosedError = [(_DT_GCDAsyncSocket *)self sslError:?];
    }

    else
    {
      connectionClosedError = [(_DT_GCDAsyncSocket *)self connectionClosedError];
    }

    v5 = connectionClosedError;
    goto LABEL_20;
  }

  if ((v4 & 0x8000) == 0 && ![(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer availableBytes])
  {
    if ((self->config & 8) == 0)
    {
      goto LABEL_15;
    }

    socket4FD = self->socket4FD;
    if (socket4FD == -1)
    {
      socket4FD = self->socket6FD;
    }

    v18.fd = socket4FD;
    *&v18.events = 4;
    poll(&v18, 1u, 0);
    if ((v18.revents & 4) == 0)
    {
      goto LABEL_15;
    }

    self->flags |= 0x8000u;
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    if (self->delegateQueue && (objc_opt_respondsToSelector() & 1) != 0)
    {
      delegateQueue = self->delegateQueue;
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = sub_247FA4DDC;
      v15 = &unk_278EF1550;
      v16 = WeakRetained;
      selfCopy = self;
      dispatch_async(delegateQueue, &v12);
    }
  }

  if (![(_DT_GCDAsyncSocket *)self usingCFStreamForTLS:v12])
  {
    [(_DT_GCDAsyncSocket *)self suspendReadSource];
  }

LABEL_21:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)completeCurrentRead
{
  p_currentRead = &self->currentRead;
  currentRead = self->currentRead;
  if (!currentRead)
  {
    sub_24802DE84();
    currentRead = v24;
  }

  buffer = currentRead->buffer;
  if (currentRead->bufferOwner)
  {
    [(NSMutableData *)buffer setLength:currentRead->bytesDone];
    v6 = (*p_currentRead)->buffer;
  }

  else
  {
    v7 = [(NSMutableData *)buffer length];
    v8 = *p_currentRead;
    originalBufferLength = (*p_currentRead)->originalBufferLength;
    if (v7 > originalBufferLength)
    {
      startOffset = v8->startOffset;
      bytesDone = v8->bytesDone;
      if (bytesDone + startOffset <= originalBufferLength)
      {
        v12 = (*p_currentRead)->originalBufferLength;
      }

      else
      {
        v12 = bytesDone + startOffset;
      }

      [(NSMutableData *)v8->buffer setLength:v12];
      v8 = *p_currentRead;
    }

    mutableBytes = [(NSMutableData *)v8->buffer mutableBytes];
    v6 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:mutableBytes + (*p_currentRead)->startOffset length:(*p_currentRead)->bytesDone freeWhenDone:0];
  }

  v14 = v6;
  WeakRetained = objc_loadWeakRetained(&self->delegate);
  if (self->delegateQueue && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v16 = self->currentRead;
    delegateQueue = self->delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247FA4FD4;
    block[3] = &unk_278EF2A28;
    v20 = WeakRetained;
    selfCopy = self;
    v22 = v14;
    v23 = v16;
    v18 = v16;
    dispatch_async(delegateQueue, block);
  }

  [(_DT_GCDAsyncSocket *)self endCurrentRead];
}

- (void)endCurrentRead
{
  readTimer = self->readTimer;
  if (readTimer)
  {
    dispatch_source_cancel(readTimer);
    v4 = self->readTimer;
    self->readTimer = 0;
  }

  currentRead = self->currentRead;
  self->currentRead = 0;
}

- (void)setupReadTimerWithTimeout:(double)timeout
{
  if (timeout >= 0.0)
  {
    location[1] = v6;
    location[2] = v5;
    location[7] = v3;
    location[8] = v4;
    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->socketQueue);
    readTimer = self->readTimer;
    self->readTimer = v9;

    objc_initWeak(location, self);
    v11 = self->readTimer;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_247FA518C;
    v13[3] = &unk_278EF1238;
    objc_copyWeak(&v14, location);
    dispatch_source_set_event_handler(v11, v13);
    v12 = dispatch_time(0, (timeout * 1000000000.0));
    dispatch_source_set_timer(self->readTimer, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->readTimer);
    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }
}

- (void)doReadTimeout
{
  self->flags |= 8u;
  WeakRetained = objc_loadWeakRetained(&self->delegate);
  if (self->delegateQueue && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = self->currentRead;
    delegateQueue = self->delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247FA52E4;
    block[3] = &unk_278EF2788;
    v8 = WeakRetained;
    selfCopy = self;
    v10 = v4;
    v6 = v4;
    dispatch_async(delegateQueue, block);
  }

  else
  {
    [(_DT_GCDAsyncSocket *)self doReadTimeoutWithExtension:0.0];
  }
}

- (void)doReadTimeoutWithExtension:(double)extension
{
  currentRead = self->currentRead;
  if (currentRead)
  {
    if (extension <= 0.0)
    {
      readTimeoutError = [(_DT_GCDAsyncSocket *)self readTimeoutError];
      [(_DT_GCDAsyncSocket *)self closeWithError:readTimeoutError];
    }

    else
    {
      currentRead->timeout = currentRead->timeout + extension;
      v5 = dispatch_time(0, (extension * 1000000000.0));
      dispatch_source_set_timer(self->readTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
      self->flags &= ~8u;

      [(_DT_GCDAsyncSocket *)self doReadData];
    }
  }
}

- (void)writeData:(id)data withTimeout:(double)timeout tag:(int64_t)tag
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v9 = [[_DT_GCDAsyncWritePacket alloc] initWithData:dataCopy timeout:tag tag:timeout];
    socketQueue = self->socketQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_247FA5594;
    v12[3] = &unk_278EF1550;
    v12[4] = self;
    v13 = v9;
    v11 = v9;
    dispatch_async(socketQueue, v12);
  }
}

- (float)progressOfWriteReturningTag:(int64_t *)tag bytesDone:(unint64_t *)done total:(unint64_t *)total
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_247FA5700;
  aBlock[3] = &unk_278EF29D8;
  aBlock[6] = tag;
  aBlock[7] = done;
  aBlock[8] = total;
  aBlock[4] = self;
  aBlock[5] = &v10;
  v6 = _Block_copy(aBlock);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v6[2](v6);
  }

  else
  {
    dispatch_sync(self->socketQueue, v6);
  }

  v7 = v11[6];

  _Block_object_dispose(&v10, 8);
  return v7;
}

- (void)maybeDequeueWrite
{
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    sub_24802DEEC();
  }

  if (!self->currentWrite && (self->flags & 2) != 0)
  {
    if ([(NSMutableArray *)self->writeQueue count])
    {
      v3 = [(NSMutableArray *)self->writeQueue objectAtIndex:0];
      currentWrite = self->currentWrite;
      self->currentWrite = v3;

      [(NSMutableArray *)self->writeQueue removeObjectAtIndex:0];
      v5 = self->currentWrite;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->flags |= 0x1000u;

        MEMORY[0x2821F9670](self, sel_maybeStartTLS);
      }

      else
      {
        [(_DT_GCDAsyncSocket *)self setupWriteTimerWithTimeout:self->currentWrite->timeout];

        [(_DT_GCDAsyncSocket *)self doWriteData];
      }
    }

    else
    {
      flags = self->flags;
      if ((flags & 0x40) != 0 && ((flags & 0x20) == 0 || ![(NSMutableArray *)self->readQueue count]&& !self->currentRead))
      {

        [(_DT_GCDAsyncSocket *)self closeWithError:0];
      }
    }
  }
}

- (void)doWriteData
{
  currentWrite = self->currentWrite;
  if (!currentWrite || (flags = self->flags, (flags & 0x10) != 0))
  {
    if ([(_DT_GCDAsyncSocket *)self usingCFStreamForTLS]|| (self->flags & 0x80) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

  if ((flags & 0x80) == 0)
  {
    if (![(_DT_GCDAsyncSocket *)self usingCFStreamForTLS])
    {

      [(_DT_GCDAsyncSocket *)self resumeWriteSource];
    }

    return;
  }

  if ((flags & 0x1000) != 0)
  {
    if ((flags & 0x800) != 0)
    {
      if ([(_DT_GCDAsyncSocket *)self usingSecureTransportForTLS])
      {

        [(_DT_GCDAsyncSocket *)self ssl_continueSSLHandshake];
      }

      return;
    }

    if ([(_DT_GCDAsyncSocket *)self usingCFStreamForTLS])
    {
      return;
    }

LABEL_10:

    [(_DT_GCDAsyncSocket *)self suspendWriteSource];
    return;
  }

  if ((flags & 0x2000) == 0)
  {
    socket4FD = self->socket4FD;
    if (socket4FD == -1)
    {
      socket4FD = self->socket6FD;
    }

    v6 = write(socket4FD, [(NSData *)currentWrite->buffer bytes]+ self->currentWrite->bytesDone, [(NSData *)self->currentWrite->buffer length]- self->currentWrite->bytesDone);
    if ((v6 & 0x8000000000000000) == 0)
    {
      sslWriteCachedLength = v6;
      goto LABEL_19;
    }

    if (*__error() == 35)
    {
      goto LABEL_36;
    }

    v10 = [(_DT_GCDAsyncSocket *)self errnoErrorWithReason:@"Error in write() function"];
    goto LABEL_39;
  }

  if ([(_DT_GCDAsyncSocket *)self usingCFStreamForTLS])
  {
    sslWriteCachedLength = CFWriteStreamWrite(self->writeStream, ([(NSData *)self->currentWrite->buffer bytes]+ self->currentWrite->bytesDone), [(NSData *)self->currentWrite->buffer length]- self->currentWrite->bytesDone);
    if ((sslWriteCachedLength & 0x8000000000000000) == 0)
    {
      goto LABEL_50;
    }

    v10 = CFWriteStreamCopyError(self->writeStream);
LABEL_39:
    v9 = v10;
    sslWriteCachedLength = 0;
    v8 = 0;
    goto LABEL_58;
  }

  if (self->sslWriteCachedLength)
  {
    processed = 0;
    v11 = SSLWrite(self->sslContext, 0, 0, &processed);
    if (v11)
    {
      if (v11 == -9803)
      {
LABEL_36:
        sslWriteCachedLength = 0;
        goto LABEL_50;
      }

      v10 = [(_DT_GCDAsyncSocket *)self sslError:v11];
      goto LABEL_39;
    }

    sslWriteCachedLength = self->sslWriteCachedLength;
    self->sslWriteCachedLength = 0;
    v13 = [(NSData *)self->currentWrite->buffer length];
    v12 = self->currentWrite;
    if (v13 == v12->bytesDone + sslWriteCachedLength)
    {
LABEL_19:
      v8 = 0;
      v9 = 0;
      if (!sslWriteCachedLength)
      {
        goto LABEL_58;
      }

LABEL_53:
      self->currentWrite->bytesDone += sslWriteCachedLength;
      v18 = self->currentWrite;
      bytesDone = v18->bytesDone;
      if (bytesDone == [(NSData *)v18->buffer length])
      {
        [(_DT_GCDAsyncSocket *)self completeCurrentWrite];
        if (!v9)
        {
          socketQueue = self->socketQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_247FA5DE0;
          block[3] = &unk_278EF1070;
          block[4] = self;
          dispatch_async(socketQueue, block);
          return;
        }

        goto LABEL_69;
      }

      v21 = 0;
      goto LABEL_59;
    }
  }

  else
  {
    sslWriteCachedLength = 0;
    v12 = self->currentWrite;
  }

  v14 = ([(NSData *)v12->buffer bytes]+ self->currentWrite->bytesDone + sslWriteCachedLength);
  v15 = [(NSData *)self->currentWrite->buffer length]- (sslWriteCachedLength + self->currentWrite->bytesDone);
  while (1)
  {
    v16 = v15 >= 0x8000 ? 0x8000 : v15;
    processed = 0;
    v17 = SSLWrite(self->sslContext, v14, v16, &processed);
    if (v17)
    {
      break;
    }

    v14 += processed;
    sslWriteCachedLength += processed;
    v15 -= processed;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  if (v17 == -9803)
  {
    self->sslWriteCachedLength = v16;
LABEL_50:
    self->flags &= ~0x80u;
    if (![(_DT_GCDAsyncSocket *)self usingCFStreamForTLS])
    {
      [(_DT_GCDAsyncSocket *)self resumeWriteSource];
    }

    v9 = 0;
    v8 = 1;
    if (!sslWriteCachedLength)
    {
      goto LABEL_58;
    }

    goto LABEL_53;
  }

  v9 = [(_DT_GCDAsyncSocket *)self sslError:v17];
  v8 = 0;
  if (sslWriteCachedLength)
  {
    goto LABEL_53;
  }

LABEL_58:
  v21 = 1;
LABEL_59:
  if ((v8 & 1) == 0 && !v9)
  {
    self->flags &= ~0x80u;
    if (![(_DT_GCDAsyncSocket *)self usingCFStreamForTLS])
    {
      [(_DT_GCDAsyncSocket *)self resumeWriteSource];
    }
  }

  if ((v21 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    if (self->delegateQueue && (objc_opt_respondsToSelector() & 1) != 0)
    {
      tag = self->currentWrite->tag;
      delegateQueue = self->delegateQueue;
      v26 = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = sub_247FA5E24;
      v29 = &unk_278EF2A00;
      v30 = WeakRetained;
      selfCopy = self;
      v32 = sslWriteCachedLength;
      v33 = tag;
      dispatch_async(delegateQueue, &v26);
    }
  }

  if (v9)
  {
LABEL_69:
    v25 = [(_DT_GCDAsyncSocket *)self errnoErrorWithReason:@"Error in write() function", v26, v27, v28, v29];
    [(_DT_GCDAsyncSocket *)self closeWithError:v25];
  }
}

- (void)completeCurrentWrite
{
  if (!self->currentWrite)
  {
    sub_24802DF58();
  }

  WeakRetained = objc_loadWeakRetained(&self->delegate);
  if (self->delegateQueue && (objc_opt_respondsToSelector() & 1) != 0)
  {
    tag = self->currentWrite->tag;
    delegateQueue = self->delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247FA5F58;
    block[3] = &unk_278EF2A50;
    v7 = WeakRetained;
    selfCopy = self;
    v9 = tag;
    dispatch_async(delegateQueue, block);
  }

  [(_DT_GCDAsyncSocket *)self endCurrentWrite];
}

- (void)endCurrentWrite
{
  writeTimer = self->writeTimer;
  if (writeTimer)
  {
    dispatch_source_cancel(writeTimer);
    v4 = self->writeTimer;
    self->writeTimer = 0;
  }

  currentWrite = self->currentWrite;
  self->currentWrite = 0;
}

- (void)setupWriteTimerWithTimeout:(double)timeout
{
  if (timeout >= 0.0)
  {
    location[1] = v6;
    location[2] = v5;
    location[7] = v3;
    location[8] = v4;
    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->socketQueue);
    writeTimer = self->writeTimer;
    self->writeTimer = v9;

    objc_initWeak(location, self);
    v11 = self->writeTimer;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_247FA610C;
    v13[3] = &unk_278EF1238;
    objc_copyWeak(&v14, location);
    dispatch_source_set_event_handler(v11, v13);
    v12 = dispatch_time(0, (timeout * 1000000000.0));
    dispatch_source_set_timer(self->writeTimer, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->writeTimer);
    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }
}

- (void)doWriteTimeout
{
  self->flags |= 0x10u;
  WeakRetained = objc_loadWeakRetained(&self->delegate);
  if (self->delegateQueue && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = self->currentWrite;
    delegateQueue = self->delegateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_247FA6264;
    block[3] = &unk_278EF2788;
    v8 = WeakRetained;
    selfCopy = self;
    v10 = v4;
    v6 = v4;
    dispatch_async(delegateQueue, block);
  }

  else
  {
    [(_DT_GCDAsyncSocket *)self doWriteTimeoutWithExtension:0.0];
  }
}

- (void)doWriteTimeoutWithExtension:(double)extension
{
  currentWrite = self->currentWrite;
  if (currentWrite)
  {
    if (extension <= 0.0)
    {
      writeTimeoutError = [(_DT_GCDAsyncSocket *)self writeTimeoutError];
      [(_DT_GCDAsyncSocket *)self closeWithError:writeTimeoutError];
    }

    else
    {
      currentWrite->timeout = currentWrite->timeout + extension;
      v5 = dispatch_time(0, (extension * 1000000000.0));
      dispatch_source_set_timer(self->writeTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
      self->flags &= ~0x10u;

      [(_DT_GCDAsyncSocket *)self doWriteData];
    }
  }
}

- (void)startTLS:(id)s
{
  sCopy = s;
  if (!sCopy)
  {
    sCopy = [MEMORY[0x277CBEAC0] dictionary];
  }

  v5 = [[_DT_GCDAsyncSpecialPacket alloc] initWithTLSSettings:sCopy];
  socketQueue = self->socketQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_247FA6508;
  v8[3] = &unk_278EF1550;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(socketQueue, v8);
}

- (void)maybeStartTLS
{
  if ((~self->flags & 0x1800) != 0)
  {
    return;
  }

  v3 = self->currentRead;
  v4 = v3;
  if (v3)
  {
    v3 = v3->buffer;
  }

  v5 = [(_DT_GCDAsyncReadPacket *)v3 objectForKey:@"GCDAsyncSocketUseCFStreamForTLS"];
  if (v5)
  {
    v6 = v5;
    bOOLValue = [v5 BOOLValue];

    if (bOOLValue)
    {

      MEMORY[0x2821F9670](self, sel_cf_startTLS);
      return;
    }
  }

  else
  {
  }

  MEMORY[0x2821F9670](self, sel_ssl_startTLS);
}

- (int)sslReadWithBuffer:(void *)buffer length:(unint64_t *)length
{
  if (!self->socketFDBytesAvailable && ![(_DT_GCDAsyncSocketPreBuffer *)self->sslPreBuffer availableBytes])
  {
    [(_DT_GCDAsyncSocket *)self resumeReadSource];
    *length = 0;
    return -9803;
  }

  v7 = *length;
  availableBytes = [(_DT_GCDAsyncSocketPreBuffer *)self->sslPreBuffer availableBytes];
  if (availableBytes)
  {
    if (availableBytes >= v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = availableBytes;
    }

    memcpy(buffer, [(_DT_GCDAsyncSocketPreBuffer *)self->sslPreBuffer readBuffer], v9);
    [(_DT_GCDAsyncSocketPreBuffer *)self->sslPreBuffer didRead:v9];
    v7 -= v9;
    if (!v7)
    {
      result = 0;
LABEL_28:
      *length = v9;
      return result;
    }
  }

  else
  {
    v9 = 0;
  }

  socketFDBytesAvailable = self->socketFDBytesAvailable;
  if (!socketFDBytesAvailable)
  {
    result = -9803;
    goto LABEL_28;
  }

  socket6FD = self->socket6FD;
  if (socket6FD == -1)
  {
    socket6FD = self->socket4FD;
  }

  if (socketFDBytesAvailable <= v7)
  {
    writeBuffer = buffer + v9;
    v13 = v7;
  }

  else
  {
    [(_DT_GCDAsyncSocketPreBuffer *)self->sslPreBuffer ensureCapacityForWrite:self->socketFDBytesAvailable];
    v13 = self->socketFDBytesAvailable;
    writeBuffer = [(_DT_GCDAsyncSocketPreBuffer *)self->sslPreBuffer writeBuffer];
  }

  v15 = read(socket6FD, writeBuffer, v13);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = v15;
    if (v15)
    {
      v17 = self->socketFDBytesAvailable;
      v18 = v17 >= v15;
      v19 = v17 - v15;
      if (!v18)
      {
        v19 = 0;
      }

      self->socketFDBytesAvailable = v19;
      if (socketFDBytesAvailable > v7)
      {
        [(_DT_GCDAsyncSocketPreBuffer *)self->sslPreBuffer didWrite:v15];
        if (v7 < v16)
        {
          v16 = v7;
        }

        memcpy(buffer + v9, [(_DT_GCDAsyncSocketPreBuffer *)self->sslPreBuffer readBuffer], v16);
        [(_DT_GCDAsyncSocketPreBuffer *)self->sslPreBuffer didRead:v16];
      }

      v9 += v16;
      if (v7 == v16)
      {
        result = 0;
      }

      else
      {
        result = -9803;
      }

      goto LABEL_28;
    }

    self->socketFDBytesAvailable = 0;
    *length = v9;
    return -9806;
  }

  v20 = *__error();
  self->socketFDBytesAvailable = 0;
  *length = v9;
  if (v20 == 35)
  {
    return -9803;
  }

  return -9806;
}

- (int)sslWriteWithBuffer:(const void *)buffer length:(unint64_t *)length
{
  if ((self->flags & 0x80) == 0)
  {
    [(_DT_GCDAsyncSocket *)self resumeWriteSource];
LABEL_3:
    *length = 0;
    return -9803;
  }

  v7 = *length;
  socket4FD = self->socket4FD;
  if (socket4FD == -1)
  {
    socket4FD = self->socket6FD;
  }

  v9 = write(socket4FD, buffer, *length);
  if (v9 < 0)
  {
    v10 = *__error();
    self->flags &= ~0x80u;
    *length = 0;
    if (v10 == 35)
    {
      return -9803;
    }

    else
    {
      return -9806;
    }
  }

  else
  {
    if (!v9)
    {
      self->flags &= ~0x80u;
      goto LABEL_3;
    }

    *length = v9;
    if (v9 == v7)
    {
      return 0;
    }

    else
    {
      return -9803;
    }
  }
}

- (void)ssl_startTLS
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = self->currentRead;
  v5 = v4;
  if (v4)
  {
    v6 = v4->buffer;
    v7 = [(NSMutableData *)v6 objectForKey:*MEMORY[0x277CBAEA8]];
    bOOLValue = [v7 BOOLValue];

    v9 = SSLCreateContext(*MEMORY[0x277CBECE8], (bOOLValue ^ 1), kSSLStreamType);
    self->sslContext = v9;
    if (!v9)
    {
      v10 = @"Error in SSLCreateContext";
      goto LABEL_9;
    }

    if (SSLSetIOFuncs(v9, sub_247FA73D0, sub_247FA7434))
    {
      v10 = @"Error in SSLSetIOFuncs";
LABEL_9:
      v12 = [(_DT_GCDAsyncSocket *)self otherError:v10];
      [(_DT_GCDAsyncSocket *)self closeWithError:v12];

      goto LABEL_10;
    }

    if (SSLSetConnection(self->sslContext, self))
    {
      v10 = @"Error in SSLSetConnection";
      goto LABEL_9;
    }

    v14 = [(NSMutableData *)v6 objectForKey:@"GCDAsyncSocketManuallyEvaluateTrust"];
    bOOLValue2 = [v14 BOOLValue];

    if (bOOLValue2)
    {
      if (bOOLValue)
      {
        v10 = @"Manual trust validation is not supported for server sockets";
        goto LABEL_9;
      }

      if (SSLSetSessionOption(self->sslContext, kSSLSessionOptionBreakOnServerAuth, 1u))
      {
        v10 = @"Error in SSLSetSessionOption";
        goto LABEL_9;
      }
    }

    v16 = [(NSMutableData *)v6 objectForKey:*MEMORY[0x277CBAEC8]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [v16 UTF8String];
      v18 = strlen(uTF8String);
      if (SSLSetPeerDomainName(self->sslContext, uTF8String, v18))
      {
        v19 = @"Error in SSLSetPeerDomainName";
LABEL_21:
        v21 = [(_DT_GCDAsyncSocket *)self otherError:v19];
        [(_DT_GCDAsyncSocket *)self closeWithError:v21];

LABEL_22:
        goto LABEL_10;
      }
    }

    else if (v16)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"GCDAsyncSocket.m" lineNumber:6251 description:@"Invalid value for kCFStreamSSLPeerName. Value must be of type NSString."];

      v19 = @"Invalid value for kCFStreamSSLPeerName.";
      goto LABEL_21;
    }

    v22 = [(NSMutableData *)v6 objectForKey:*MEMORY[0x277CBAE98]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (SSLSetCertificate(self->sslContext, v22))
      {
        v23 = @"Error in SSLSetCertificate";
LABEL_28:
        v25 = [(_DT_GCDAsyncSocket *)self otherError:v23];
        [(_DT_GCDAsyncSocket *)self closeWithError:v25];

        goto LABEL_10;
      }
    }

    else if (v22)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"GCDAsyncSocket.m" lineNumber:6273 description:@"Invalid value for kCFStreamSSLCertificates. Value must be of type NSArray."];

      v23 = @"Invalid value for kCFStreamSSLCertificates.";
      goto LABEL_28;
    }

    v26 = [(NSMutableData *)v6 objectForKey:@"GCDAsyncSocketSSLPeerID"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v26;
      if (SSLSetPeerID(self->sslContext, [v16 bytes], objc_msgSend(v16, "length")))
      {
        v27 = [(_DT_GCDAsyncSocket *)self otherError:@"Error in SSLSetPeerID"];
        [(_DT_GCDAsyncSocket *)self closeWithError:v27];

        goto LABEL_22;
      }
    }

    else if (v26)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"GCDAsyncSocket.m" lineNumber:6297 description:@"Invalid value for GCDAsyncSocketSSLPeerID. Value must be of type NSData. (You can convert strings to data using a method like [string dataUsingEncoding:NSUTF8StringEncoding])"];

      v29 = @"Invalid value for GCDAsyncSocketSSLPeerID.";
LABEL_34:
      v30 = [(_DT_GCDAsyncSocket *)self otherError:v29];
      [(_DT_GCDAsyncSocket *)self closeWithError:v30];

LABEL_35:
      goto LABEL_10;
    }

    v16 = [(NSMutableData *)v6 objectForKey:@"GCDAsyncSocketSSLProtocolVersionMin"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue = [v16 intValue];
      if (intValue && SSLSetProtocolVersionMin(self->sslContext, intValue))
      {
        v19 = @"Error in SSLSetProtocolVersionMin";
        goto LABEL_21;
      }
    }

    else if (v16)
    {
      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"GCDAsyncSocket.m" lineNumber:6321 description:@"Invalid value for GCDAsyncSocketSSLProtocolVersionMin. Value must be of type NSNumber."];

      v19 = @"Invalid value for GCDAsyncSocketSSLProtocolVersionMin.";
      goto LABEL_21;
    }

    v26 = [(NSMutableData *)v6 objectForKey:@"GCDAsyncSocketSSLProtocolVersionMax"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue2 = [v26 intValue];
      if (intValue2 && SSLSetProtocolVersionMax(self->sslContext, intValue2))
      {
        v29 = @"Error in SSLSetProtocolVersionMax";
        goto LABEL_34;
      }
    }

    else if (v26)
    {
      currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler5 handleFailureInMethod:a2 object:self file:@"GCDAsyncSocket.m" lineNumber:6345 description:@"Invalid value for GCDAsyncSocketSSLProtocolVersionMax. Value must be of type NSNumber."];

      v29 = @"Invalid value for GCDAsyncSocketSSLProtocolVersionMax.";
      goto LABEL_34;
    }

    v16 = [(NSMutableData *)v6 objectForKey:@"GCDAsyncSocketSSLSessionOptionFalseStart"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (SSLSetSessionOption(self->sslContext, kSSLSessionOptionFalseStart, [v16 BOOLValue]))
      {
        v19 = @"Error in SSLSetSessionOption (kSSLSessionOptionFalseStart)";
        goto LABEL_21;
      }
    }

    else if (v16)
    {
      currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler6 handleFailureInMethod:a2 object:self file:@"GCDAsyncSocket.m" lineNumber:6365 description:@"Invalid value for GCDAsyncSocketSSLSessionOptionFalseStart. Value must be of type NSNumber."];

      v19 = @"Invalid value for GCDAsyncSocketSSLSessionOptionFalseStart.";
      goto LABEL_21;
    }

    v26 = [(NSMutableData *)v6 objectForKey:@"GCDAsyncSocketSSLSessionOptionSendOneByteRecord"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (SSLSetSessionOption(self->sslContext, kSSLSessionOptionSendOneByteRecord, [v26 BOOLValue]))
      {
        v29 = @"Error in SSLSetSessionOption (kSSLSessionOptionSendOneByteRecord)";
        goto LABEL_34;
      }
    }

    else if (v26)
    {
      currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler7 handleFailureInMethod:a2 object:self file:@"GCDAsyncSocket.m" lineNumber:6387 description:@"Invalid value for GCDAsyncSocketSSLSessionOptionSendOneByteRecord. Value must be of type NSNumber."];

      v29 = @"Invalid value for GCDAsyncSocketSSLSessionOptionSendOneByteRecord.";
      goto LABEL_34;
    }

    v16 = [(NSMutableData *)v6 objectForKey:@"GCDAsyncSocketSSLCipherSuites"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v16;
      v37 = [v26 count];
      v56 = &v56;
      v38 = (&v56 - ((2 * v37 + 15) & 0xFFFFFFFFFFFFFFF0));
      if (v37)
      {
        for (i = 0; i != v37; ++i)
        {
          v40 = [v26 objectAtIndex:{i, v56, v57}];
          v38[i] = [v40 shortValue];
        }
      }

      if (SSLSetEnabledCiphers(self->sslContext, v38, v37))
      {
        v41 = [(_DT_GCDAsyncSocket *)self otherError:@"Error in SSLSetEnabledCiphers"];
        [(_DT_GCDAsyncSocket *)self closeWithError:v41];

        goto LABEL_35;
      }
    }

    else if (v16)
    {
      currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler8 handleFailureInMethod:a2 object:self file:@"GCDAsyncSocket.m" lineNumber:6418 description:@"Invalid value for GCDAsyncSocketSSLCipherSuites. Value must be of type NSArray."];

      v19 = @"Invalid value for GCDAsyncSocketSSLCipherSuites.";
      goto LABEL_21;
    }

    v26 = [(NSMutableData *)v6 objectForKey:*MEMORY[0x277CBAE80], v56];

    if (v26)
    {
      currentHandler9 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler9 handleFailureInMethod:a2 object:self file:@"GCDAsyncSocket.m" lineNumber:6459 description:@"Security option unavailable - kCFStreamSSLAllowsAnyRoot - You must use manual trust evaluation"];

      v29 = @"Security option unavailable - kCFStreamSSLAllowsAnyRoot";
      goto LABEL_34;
    }

    v44 = [(NSMutableData *)v6 objectForKey:*MEMORY[0x277CBAE90]];
    if (v44)
    {
      v16 = v44;
      currentHandler10 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler10 handleFailureInMethod:a2 object:self file:@"GCDAsyncSocket.m" lineNumber:6474 description:@"Security option unavailable - kCFStreamSSLAllowsExpiredRoots - You must use manual trust evaluation"];

      v19 = @"Security option unavailable - kCFStreamSSLAllowsExpiredRoots";
      goto LABEL_21;
    }

    v46 = [(NSMutableData *)v6 objectForKey:*MEMORY[0x277CBAED0]];
    if (v46)
    {
      v16 = v46;
      currentHandler11 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler11 handleFailureInMethod:a2 object:self file:@"GCDAsyncSocket.m" lineNumber:6489 description:@"Security option unavailable - kCFStreamSSLValidatesCertificateChain - You must use manual trust evaluation"];

      v19 = @"Security option unavailable - kCFStreamSSLValidatesCertificateChain";
      goto LABEL_21;
    }

    v48 = [(NSMutableData *)v6 objectForKey:*MEMORY[0x277CBAE88]];
    if (v48)
    {
      v16 = v48;
      currentHandler12 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler12 handleFailureInMethod:a2 object:self file:@"GCDAsyncSocket.m" lineNumber:6504 description:@"Security option unavailable - kCFStreamSSLAllowsExpiredCertificates - You must use manual trust evaluation"];

      v19 = @"Security option unavailable - kCFStreamSSLAllowsExpiredCertificates";
      goto LABEL_21;
    }

    v50 = [(NSMutableData *)v6 objectForKey:*MEMORY[0x277CBAEB0]];
    if (v50)
    {
      v16 = v50;
      currentHandler13 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler13 handleFailureInMethod:a2 object:self file:@"GCDAsyncSocket.m" lineNumber:6519 description:@"Security option unavailable - kCFStreamSSLLevel - You must use GCDAsyncSocketSSLProtocolVersionMin & GCDAsyncSocketSSLProtocolVersionMax"];

      v19 = @"Security option unavailable - kCFStreamSSLLevel";
      goto LABEL_21;
    }

    v52 = [[_DT_GCDAsyncSocketPreBuffer alloc] initWithCapacity:4096];
    sslPreBuffer = self->sslPreBuffer;
    self->sslPreBuffer = v52;

    availableBytes = [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer availableBytes];
    if (availableBytes)
    {
      v55 = availableBytes;
      [(_DT_GCDAsyncSocketPreBuffer *)self->sslPreBuffer ensureCapacityForWrite:availableBytes];
      memcpy([(_DT_GCDAsyncSocketPreBuffer *)self->sslPreBuffer writeBuffer], [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer readBuffer], v55);
      [(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer didRead:v55];
      [(_DT_GCDAsyncSocketPreBuffer *)self->sslPreBuffer didWrite:v55];
    }

    self->sslErrCode = 0;
    [(_DT_GCDAsyncSocket *)self ssl_continueSSLHandshake];
  }

  else
  {
    currentHandler14 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler14 handleFailureInMethod:a2 object:self file:@"GCDAsyncSocket.m" lineNumber:6125 description:@"Logic error"];

    v6 = [(_DT_GCDAsyncSocket *)self otherError:@"Logic error"];
    [(_DT_GCDAsyncSocket *)self closeWithError:v6];
  }

LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)ssl_continueSSLHandshake
{
  v3 = SSLHandshake(self->sslContext);
  if (v3 == -9841)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v6 = SSLCopyPeerTrust(self->sslContext, &v30);
    if (v6)
    {
      v7 = [(_DT_GCDAsyncSocket *)self sslError:v6];
      [(_DT_GCDAsyncSocket *)self closeWithError:v7];
    }

    else
    {
      stateIndex = self->stateIndex;
      v9 = self->socketQueue;
      objc_initWeak(&location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = sub_247FA7878;
      aBlock[3] = &unk_278EF2AA0;
      v7 = v9;
      v22 = v7;
      v23 = &v27;
      objc_copyWeak(&v24, &location);
      v25 = stateIndex;
      v10 = _Block_copy(aBlock);
      WeakRetained = objc_loadWeakRetained(&self->delegate);
      if (self->delegateQueue && (objc_opt_respondsToSelector() & 1) != 0)
      {
        delegateQueue = self->delegateQueue;
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = sub_247FA79C4;
        v16[3] = &unk_278EF2AC8;
        v17 = WeakRetained;
        selfCopy = self;
        v20 = &v27;
        v19 = v10;
        dispatch_async(delegateQueue, v16);

        v13 = v17;
      }

      else
      {
        v14 = v28[3];
        if (v14)
        {
          CFRelease(v14);
          v28[3] = 0;
        }

        v13 = [(_DT_GCDAsyncSocket *)self otherError:@"GCDAsyncSocketManuallyEvaluateTrust specified in tlsSettings, but delegate doesn't implement socket:shouldTrustPeer:"];
        [(_DT_GCDAsyncSocket *)self closeWithError:v13];
      }

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    _Block_object_dispose(&v27, 8);
  }

  else if (v3 != -9803)
  {
    if (v3)
    {
      v15 = [(_DT_GCDAsyncSocket *)self sslError:v3];
      [(_DT_GCDAsyncSocket *)self closeWithError:v15];
    }

    else
    {
      self->flags = self->flags & 0xFFFFC7FF | 0x2000;
      v4 = objc_loadWeakRetained(&self->delegate);
      if (self->delegateQueue)
      {
        if (objc_opt_respondsToSelector())
        {
          v5 = self->delegateQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_247FA7834;
          block[3] = &unk_278EF1550;
          v32 = v4;
          selfCopy2 = self;
          dispatch_async(v5, block);
        }
      }

      [(_DT_GCDAsyncSocket *)self endCurrentRead];
      [(_DT_GCDAsyncSocket *)self endCurrentWrite];
      [(_DT_GCDAsyncSocket *)self maybeDequeueRead];
      [(_DT_GCDAsyncSocket *)self maybeDequeueWrite];
    }
  }
}

- (void)ssl_shouldTrustPeer:(BOOL)peer stateIndex:(int)index
{
  if (self->stateIndex == index)
  {
    self->stateIndex = index + 1;
    if (peer)
    {

      [(_DT_GCDAsyncSocket *)self ssl_continueSSLHandshake];
    }

    else
    {
      v5 = [(_DT_GCDAsyncSocket *)self sslError:4294957471];
      [(_DT_GCDAsyncSocket *)self closeWithError:v5];
    }
  }
}

- (void)cf_finishSSLHandshake
{
  flags = self->flags;
  if ((~flags & 0x1800) == 0)
  {
    v14 = v2;
    v15 = v3;
    self->flags = flags & 0xFFFFC7FF | 0x2000;
    WeakRetained = objc_loadWeakRetained(&self->delegate);
    if (self->delegateQueue)
    {
      if (objc_opt_respondsToSelector())
      {
        delegateQueue = self->delegateQueue;
        v8 = MEMORY[0x277D85DD0];
        v9 = 3221225472;
        v10 = sub_247FA7BBC;
        v11 = &unk_278EF1550;
        v12 = WeakRetained;
        selfCopy = self;
        dispatch_async(delegateQueue, &v8);
      }
    }

    [(_DT_GCDAsyncSocket *)self endCurrentRead:v8];
    [(_DT_GCDAsyncSocket *)self endCurrentWrite];
    [(_DT_GCDAsyncSocket *)self maybeDequeueRead];
    [(_DT_GCDAsyncSocket *)self maybeDequeueWrite];
  }
}

- (void)cf_abortSSLHandshake:(id)handshake
{
  flags = self->flags;
  if ((~flags & 0x1800) == 0)
  {
    self->flags = flags & 0xFFFFE7FF;
    [(_DT_GCDAsyncSocket *)self closeWithError:handshake];
  }
}

- (void)cf_startTLS
{
  if ([(_DT_GCDAsyncSocketPreBuffer *)self->preBuffer availableBytes])
  {
    v3 = @"Invalid TLS transition. Handshake has already been read from socket.";
LABEL_15:
    v11 = [(_DT_GCDAsyncSocket *)self otherError:v3];
    [(_DT_GCDAsyncSocket *)self closeWithError:v11];
    goto LABEL_16;
  }

  [(_DT_GCDAsyncSocket *)self suspendReadSource];
  [(_DT_GCDAsyncSocket *)self suspendWriteSource];
  self->socketFDBytesAvailable = 0;
  self->flags = self->flags & 0xFFF3FF7F | 0x40000;
  if (![(_DT_GCDAsyncSocket *)self createReadAndWriteStream])
  {
    v3 = @"Error in CFStreamCreatePairWithSocket";
    goto LABEL_15;
  }

  if (![(_DT_GCDAsyncSocket *)self registerForStreamCallbacksIncludingReadWrite:1])
  {
    v3 = @"Error in CFStreamSetClient";
    goto LABEL_15;
  }

  if (![(_DT_GCDAsyncSocket *)self addStreamsToRunLoop])
  {
    v3 = @"Error in CFStreamScheduleWithRunLoop";
    goto LABEL_15;
  }

  currentRead = self->currentRead;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_24802E0DC();
  }

  currentWrite = self->currentWrite;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_24802E148();
  }

  v11 = self->currentRead;
  buffer = v11->buffer;
  v7 = *MEMORY[0x277CBAE68];
  v8 = CFReadStreamSetProperty(self->readStream, *MEMORY[0x277CBAE68], buffer);
  if (v8 | CFWriteStreamSetProperty(self->writeStream, v7, buffer))
  {
    if ([(_DT_GCDAsyncSocket *)self openStreams])
    {
      goto LABEL_16;
    }

    v9 = @"Error in CFStreamOpen";
  }

  else
  {
    v9 = @"Error in CFStreamSetProperty";
  }

  v10 = [(_DT_GCDAsyncSocket *)self otherError:v9];
  [(_DT_GCDAsyncSocket *)self closeWithError:v10];

LABEL_16:
}

+ (void)startCFStreamThreadIfNeeded
{
  if (qword_27EE842E0 != -1)
  {
    sub_24802E1B4();
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_247FA7EE0;
  block[3] = &unk_278EF2AE8;
  block[4] = self;
  dispatch_sync(qword_27EE842F0, block);
}

+ (void)stopCFStreamThreadIfNeeded
{
  v2 = dispatch_time(0, 30000000000);
  v3 = qword_27EE842F0;

  dispatch_after(v2, v3, &unk_285A187F0);
}

+ (void)cfstreamThread
{
  v3 = objc_autoreleasePoolPush();
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  [currentThread setName:@"_DT_GCDAsyncSocket-CFStream"];

  v5 = MEMORY[0x277CBEBB8];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [distantFuture timeIntervalSinceNow];
  v7 = [v5 scheduledTimerWithTimeInterval:self target:sel_ignore_ selector:0 userInfo:1 repeats:?];

  currentThread2 = [MEMORY[0x277CCACC8] currentThread];
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  if (([currentThread2 isCancelled] & 1) == 0)
  {
    v10 = *MEMORY[0x277CBE640];
    do
    {
      distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
      v12 = [currentRunLoop runMode:v10 beforeDate:distantFuture2];
    }

    while (v12 && ![currentThread2 isCancelled]);
  }

  objc_autoreleasePoolPop(v3);
}

+ (void)scheduleCFStreams:(id)streams
{
  streamsCopy = streams;
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  v4 = qword_27EE842F8;

  if (currentThread != v4)
  {
    sub_24802E1C8();
  }

  Current = CFRunLoopGetCurrent();
  v6 = streamsCopy;
  v7 = *(streamsCopy + 27);
  v8 = MEMORY[0x277CBF058];
  if (v7)
  {
    CFReadStreamScheduleWithRunLoop(v7, Current, *MEMORY[0x277CBF058]);
    v6 = streamsCopy;
  }

  v9 = v6[28];
  if (v9)
  {
    CFWriteStreamScheduleWithRunLoop(v9, Current, *v8);
    v6 = streamsCopy;
  }
}

+ (void)unscheduleCFStreams:(id)streams
{
  streamsCopy = streams;
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  v4 = qword_27EE842F8;

  if (currentThread != v4)
  {
    sub_24802E234();
  }

  Current = CFRunLoopGetCurrent();
  v6 = streamsCopy;
  v7 = *(streamsCopy + 27);
  v8 = MEMORY[0x277CBF058];
  if (v7)
  {
    CFReadStreamUnscheduleFromRunLoop(v7, Current, *MEMORY[0x277CBF058]);
    v6 = streamsCopy;
  }

  v9 = v6[28];
  if (v9)
  {
    CFWriteStreamUnscheduleFromRunLoop(v9, Current, *v8);
    v6 = streamsCopy;
  }
}

- (BOOL)createReadAndWriteStream
{
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    sub_24802E2A0();
  }

  p_readStream = &self->readStream;
  if (self->readStream)
  {
    goto LABEL_5;
  }

  p_writeStream = &self->writeStream;
  if (self->writeStream)
  {
    goto LABEL_5;
  }

  socket6FD = self->socket6FD;
  if (socket6FD == -1)
  {
    socket6FD = self->socket4FD;
    if (socket6FD == -1)
    {
      goto LABEL_20;
    }
  }

  LODWORD(v5) = [(_DT_GCDAsyncSocket *)self isConnected];
  if (!v5)
  {
    return v5;
  }

  CFStreamCreatePairWithSocket(0, socket6FD, &self->readStream, &self->writeStream);
  v7 = MEMORY[0x277CBF070];
  v8 = MEMORY[0x277CBED10];
  if (*p_readStream)
  {
    CFReadStreamSetProperty(*p_readStream, *MEMORY[0x277CBF070], *MEMORY[0x277CBED10]);
  }

  if (!*p_writeStream)
  {
    v9 = *p_readStream;
    if (*p_readStream)
    {
      goto LABEL_17;
    }

LABEL_20:
    LOBYTE(v5) = 0;
    return v5;
  }

  CFWriteStreamSetProperty(*p_writeStream, *v7, *v8);
  v5 = *p_writeStream;
  v9 = *p_readStream;
  if (!*p_readStream)
  {
    goto LABEL_18;
  }

  if (v5)
  {
LABEL_5:
    LOBYTE(v5) = 1;
    return v5;
  }

LABEL_17:
  CFReadStreamClose(v9);
  CFRelease(*p_readStream);
  *p_readStream = 0;
  v5 = *p_writeStream;
LABEL_18:
  if (v5)
  {
    CFWriteStreamClose(v5);
    CFRelease(*p_writeStream);
    LOBYTE(v5) = 0;
    *p_writeStream = 0;
  }

  return v5;
}

- (BOOL)registerForStreamCallbacksIncludingReadWrite:(BOOL)write
{
  writeCopy = write;
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    sub_24802E30C();
  }

  readStream = self->readStream;
  if (!readStream || !self->writeStream)
  {
    sub_24802E378();
    readStream = v10;
  }

  self->streamContext.version = 0;
  self->streamContext.info = self;
  self->streamContext.retain = 0;
  if (writeCopy)
  {
    v6 = 26;
  }

  else
  {
    v6 = 24;
  }

  self->streamContext.release = 0;
  self->streamContext.copyDescription = 0;
  v7 = CFReadStreamSetClient(readStream, v6, sub_247FA8554, &self->streamContext);
  if (v7)
  {
    if (writeCopy)
    {
      v8 = 28;
    }

    else
    {
      v8 = 24;
    }

    LOBYTE(v7) = CFWriteStreamSetClient(self->writeStream, v8, sub_247FA86A4, &self->streamContext) != 0;
  }

  return v7;
}

- (BOOL)addStreamsToRunLoop
{
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    sub_24802E3E0();
  }

  if (!self->readStream || !self->writeStream)
  {
    sub_24802E44C();
  }

  if ((self->flags & 0x20000) == 0)
  {
    [objc_opt_class() startCFStreamThreadIfNeeded];
    [objc_opt_class() performSelector:sel_scheduleCFStreams_ onThread:qword_27EE842F8 withObject:self waitUntilDone:1];
    self->flags |= 0x20000u;
  }

  return 1;
}

- (void)removeStreamsFromRunLoop
{
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    sub_24802E4B8();
  }

  if (!self->readStream || !self->writeStream)
  {
    sub_24802E524();
  }

  if ((self->flags & 0x20000) != 0)
  {
    [objc_opt_class() performSelector:sel_unscheduleCFStreams_ onThread:qword_27EE842F8 withObject:self waitUntilDone:1];
    [objc_opt_class() stopCFStreamThreadIfNeeded];
    self->flags &= ~0x20000u;
  }
}

- (BOOL)openStreams
{
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    sub_24802E590();
  }

  readStream = self->readStream;
  if (!readStream || !self->writeStream)
  {
    sub_24802E5FC();
    readStream = v9;
  }

  Status = CFReadStreamGetStatus(readStream);
  v5 = CFWriteStreamGetStatus(self->writeStream);
  if (Status && v5)
  {
    return 1;
  }

  v7 = CFReadStreamOpen(self->readStream);
  if (CFWriteStreamOpen(self->writeStream))
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  return !v8;
}

- (BOOL)autoDisconnectOnClosedReadStream
{
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v3 = (self->config & 8) == 0;
  }

  else
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    socketQueue = self->socketQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_247FA8ABC;
    v6[3] = &unk_278EF2738;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(socketQueue, v6);
    v3 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v3 & 1;
}

- (void)setAutoDisconnectOnClosedReadStream:(BOOL)stream
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_247FA8B88;
  v5[3] = &unk_278EF27B0;
  streamCopy = stream;
  v5[4] = self;
  v4 = _Block_copy(v5);
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v4[2](v4);
  }

  else
  {
    dispatch_async(self->socketQueue, v4);
  }
}

- (void)performBlock:(id)block
{
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    v5 = *(block + 2);

    v5(block);
  }

  else
  {
    socketQueue = self->socketQueue;

    dispatch_sync(socketQueue, block);
  }
}

- (int)socketFD
{
  if (!dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    return -1;
  }

  result = self->socket4FD;
  if (result == -1)
  {
    return self->socket6FD;
  }

  return result;
}

- (int)socket4FD
{
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    return self->socket4FD;
  }

  else
  {
    return -1;
  }
}

- (int)socket6FD
{
  if (dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey))
  {
    return self->socket6FD;
  }

  else
  {
    return -1;
  }
}

- (__CFReadStream)readStream
{
  result = dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey);
  if (result)
  {
    result = self->readStream;
    if (!result)
    {
      [(_DT_GCDAsyncSocket *)self createReadAndWriteStream];
      return self->readStream;
    }
  }

  return result;
}

- (__CFWriteStream)writeStream
{
  result = dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey);
  if (result)
  {
    result = self->writeStream;
    if (!result)
    {
      [(_DT_GCDAsyncSocket *)self createReadAndWriteStream];
      return self->writeStream;
    }
  }

  return result;
}

- (SSLContext)sslContext
{
  result = dispatch_get_specific(self->IsOnSocketQueueOrTargetQueueKey);
  if (result)
  {
    return self->sslContext;
  }

  return result;
}

+ (id)hostFromSockaddr4:(const sockaddr_in *)sockaddr4
{
  v7 = *MEMORY[0x277D85DE8];
  if (!inet_ntop(2, &sockaddr4->sin_addr, v6, 0x10u))
  {
    v6[0] = 0;
  }

  v3 = [MEMORY[0x277CCACA8] stringWithCString:v6 encoding:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)hostFromSockaddr6:(const sockaddr_in6 *)sockaddr6
{
  v7 = *MEMORY[0x277D85DE8];
  if (!inet_ntop(30, &sockaddr6->sin6_addr, v6, 0x2Eu))
  {
    v6[0] = 0;
  }

  v3 = [MEMORY[0x277CCACA8] stringWithCString:v6 encoding:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)hostFromAddress:(id)address
{
  v8 = 0;
  v3 = [self getHost:&v8 port:0 fromAddress:address];
  v4 = v8;
  v5 = v4;
  v6 = 0;
  if (v3)
  {
    v6 = v4;
  }

  return v6;
}

+ (unsigned)portFromAddress:(id)address
{
  v6 = 0;
  v3 = [self getHost:0 port:&v6 fromAddress:address];
  v4 = v6;
  if (!v3)
  {
    return 0;
  }

  return v4;
}

+ (BOOL)isIPv4Address:(id)address
{
  addressCopy = address;
  v4 = [addressCopy length] >= 0x10 && *(objc_msgSend(addressCopy, "bytes") + 1) == 2;

  return v4;
}

+ (BOOL)isIPv6Address:(id)address
{
  addressCopy = address;
  v4 = [addressCopy length] >= 0x10 && *(objc_msgSend(addressCopy, "bytes") + 1) == 30;

  return v4;
}

+ (BOOL)getHost:(id *)host port:(unsigned __int16 *)port family:(char *)family fromAddress:(id)address
{
  v19 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  if ([addressCopy length] < 0x10)
  {
    goto LABEL_20;
  }

  bytes = [addressCopy bytes];
  v12 = *(bytes + 1);
  if (v12 == 30)
  {
    if ([addressCopy length] >= 0x1C)
    {
      v14 = *bytes;
      *&v18[12] = *(bytes + 12);
      *v18 = v14;
      if (host)
      {
        *host = [self hostFromSockaddr6:v18];
      }

      if (port)
      {
        *port = [self portFromSockaddr6:v18];
      }

      if (!family)
      {
        goto LABEL_19;
      }

      v13 = 30;
      goto LABEL_18;
    }

LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  if (v12 != 2 || [addressCopy length] < 0x10)
  {
    goto LABEL_20;
  }

  *v18 = *bytes;
  if (host)
  {
    *host = [self hostFromSockaddr4:v18];
  }

  if (port)
  {
    *port = [self portFromSockaddr4:v18];
  }

  if (!family)
  {
    goto LABEL_19;
  }

  v13 = 2;
LABEL_18:
  *family = v13;
LABEL_19:
  v15 = 1;
LABEL_21:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

@end