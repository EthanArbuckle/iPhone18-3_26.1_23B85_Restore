@interface CATRemoteConnection
+ (void)createConnectionPairWithConnection:(id *)connection andConnection:(id *)andConnection bufferSize:(unint64_t)size;
- (BOOL)trySendingDataWithContext:(id)context error:(id *)error;
- (CATRemoteConnection)initWithInputStream:(id)stream outputStream:(id)outputStream bufferSize:(unint64_t)size;
- (CATRemoteConnection)initWithNetService:(id)service;
- (CATRemoteConnectionDelegate)delegate;
- (NSString)description;
- (__SecTrust)peerTrust;
- (int)applyCustomEvaluationPoliciesToTrust:(__SecTrust *)trust;
- (void)_stream:(id)_stream handleEvent:(unint64_t)event;
- (void)close;
- (void)configureStreamSocketOptions;
- (void)connectionDidInterruptWithError:(id)error;
- (void)connectionDidReceiveData;
- (void)connectionShouldSendData;
- (void)connectionTimedOut;
- (void)dealloc;
- (void)delegateDidClose;
- (void)delegateDidFailToSendData:(id)data userInfo:(id)info error:(id)error;
- (void)delegateDidFailToSendDataWithStream:(id)stream userInfo:(id)info error:(id)error;
- (void)delegateDidInterruptWithError:(id)error;
- (void)delegateDidOpen;
- (void)delegateDidReceiveData:(id)data;
- (void)delegateDidReceiveDataRequestWithURL:(id)l;
- (void)delegateDidSecure;
- (void)delegateDidSendData:(id)data userInfo:(id)info;
- (void)delegateDidSendDataWithStream:(id)stream userInfo:(id)info;
- (void)delegateDidWriteDataForContextIfNeeded:(id)needed;
- (void)delegateDidWriteDataFromStream:(id)stream totalBytesWritten:(unint64_t)written totalBytesExpectedToWrite:(unint64_t)write userInfo:(id)info;
- (void)delegateWillSecure;
- (void)enqueueSendContext:(id)context;
- (void)messageParser:(id)parser didParseRequestData:(id)data;
- (void)messageParser:(id)parser didParseRequestWithURL:(id)l;
- (void)open;
- (void)scheduleStreams;
- (void)secureUsingClientIdentity:(__SecIdentity *)identity trustedCertificates:(id)certificates;
- (void)secureUsingServerIdentity:(__SecIdentity *)identity trustedCertificates:(id)certificates;
- (void)sendData:(id)data userInfo:(id)info;
- (void)sendDataWithStream:(id)stream length:(unint64_t)length userInfo:(id)info;
- (void)sendDidFail:(id)fail withError:(id)error;
- (void)sendDidSucceed:(id)succeed;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
- (void)trustDecisionDidRespondWithDecisionToAllowUntrustedConnection:(BOOL)connection;
- (void)tryEvaluatingPeerTrustWithStream:(id)stream;
- (void)unscheduleStreams;
@end

@implementation CATRemoteConnection

- (__SecTrust)peerTrust
{
  inputStream = [(CATRemoteConnection *)self inputStream];
  v3 = [inputStream propertyForKey:*MEMORY[0x277CBAE60]];

  return v3;
}

+ (void)createConnectionPairWithConnection:(id *)connection andConnection:(id *)andConnection bufferSize:(unint64_t)size
{
  if (!connection)
  {
    +[CATRemoteConnection createConnectionPairWithConnection:andConnection:bufferSize:];
    if (andConnection)
    {
      goto LABEL_3;
    }

LABEL_5:
    +[CATRemoteConnection createConnectionPairWithConnection:andConnection:bufferSize:];
    goto LABEL_3;
  }

  if (!andConnection)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = 0;
  v18 = 0;
  [MEMORY[0x277CBEBA0] getBoundStreamsWithBufferSize:size inputStream:&v18 outputStream:&v17];
  v9 = v18;
  v10 = v17;
  v15 = 0;
  v16 = 0;
  [MEMORY[0x277CBEBA0] getBoundStreamsWithBufferSize:size inputStream:&v16 outputStream:&v15];
  v11 = v16;
  v12 = v15;
  *connection = [[self alloc] initWithInputStream:v9 outputStream:v12 bufferSize:size];
  v13 = [[self alloc] initWithInputStream:v11 outputStream:v10 bufferSize:size];
  v14 = v13;

  *andConnection = v13;
}

- (CATRemoteConnection)initWithNetService:(id)service
{
  serviceCopy = service;
  if (!serviceCopy)
  {
    [CATRemoteConnection initWithNetService:];
  }

  v12 = 0;
  v13 = 0;
  if ([serviceCopy getInputStream:&v13 outputStream:&v12])
  {
    v5 = [(CATRemoteConnection *)self initWithInputStream:v13 outputStream:v12];
    if (v5)
    {
      name = [serviceCopy name];
      v7 = [name copy];
      name = v5->_name;
      v5->_name = v7;
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CATRemoteConnection;
    v5 = [(CATRemoteConnection *)&v11 init];
  }

  v9 = v5;

  return v9;
}

- (CATRemoteConnection)initWithInputStream:(id)stream outputStream:(id)outputStream bufferSize:(unint64_t)size
{
  streamCopy = stream;
  outputStreamCopy = outputStream;
  v11 = outputStreamCopy;
  if (streamCopy)
  {
    if (outputStreamCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CATRemoteConnection initWithInputStream:outputStream:bufferSize:];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [CATRemoteConnection initWithInputStream:outputStream:bufferSize:];
LABEL_3:
  v22.receiver = self;
  v22.super_class = CATRemoteConnection;
  v12 = [(CATRemoteConnection *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_inputStream, stream);
    objc_storeStrong(&v13->_outputStream, outputStream);
    v13->_connectionTimeoutInterval = -1.0;
    v13->_bufferSize = size;
    v14 = objc_opt_new();
    mMessageParser = v13->mMessageParser;
    v13->mMessageParser = v14;

    [(CATHTTPMessageParser *)v13->mMessageParser setDelegate:v13];
    v16 = objc_opt_new();
    mPendingSendContexts = v13->mPendingSendContexts;
    v13->mPendingSendContexts = v16;

    v18 = objc_opt_new();
    mStreamEventQueue = v13->mStreamEventQueue;
    v13->mStreamEventQueue = v18;

    [(CATSerialOperationQueue *)v13->mStreamEventQueue setName:@"Stream Event Queue"];
    v20 = CATGetCatalystQueue();
    [(CATOperationQueue *)v13->mStreamEventQueue setUnderlyingQueue:v20];

    [(CATSerialOperationQueue *)v13->mStreamEventQueue setSuspended:1];
    v13->mState = 1;
  }

  return v13;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(CATRemoteConnection *)self name];
  v7 = [v3 stringWithFormat:@"<%@: %p { name = %@ } >", v5, self, name];

  return v7;
}

- (void)sendData:(id)data userInfo:(id)info
{
  infoCopy = info;
  dataCopy = data;
  v8 = [[_CATRemoteConnectionSendDataContext alloc] initWithData:dataCopy userInfo:infoCopy];

  [(CATRemoteConnection *)self enqueueSendContext:v8];
}

- (void)sendDataWithStream:(id)stream length:(unint64_t)length userInfo:(id)info
{
  infoCopy = info;
  streamCopy = stream;
  v10 = [[_CATRemoteConnectionSendDataWithStreamContext alloc] initWithStream:streamCopy length:length bufferSize:[(CATRemoteConnection *)self bufferSize] userInfo:infoCopy];

  [(CATRemoteConnection *)self enqueueSendContext:v10];
}

- (void)secureUsingClientIdentity:(__SecIdentity *)identity trustedCertificates:(id)certificates
{
  certificatesCopy = certificates;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  [(CATRemoteConnection *)self secureUsingIdentity:identity trustedCertificates:certificatesCopy isServer:0];
}

- (void)secureUsingServerIdentity:(__SecIdentity *)identity trustedCertificates:(id)certificates
{
  certificatesCopy = certificates;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  [(CATRemoteConnection *)self secureUsingIdentity:identity trustedCertificates:certificatesCopy isServer:1];
}

- (void)open
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(self);
  [currentHandler handleFailureInMethod:self object:a2 file:@"CATRemoteConnection.m" lineNumber:249 description:{@"%@ cannot call %@ when invalidated.", a2, v9}];

  *a4 = *a3;
}

void __27__CATRemoteConnection_open__block_invoke(uint64_t a1)
{
  if (!dispatch_source_testcancel(*(a1 + 32)))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained connectionTimedOut];
  }
}

- (void)close
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  mState = self->mState;
  if (mState != 4)
  {
    mConnectionTimeoutTimer = self->mConnectionTimeoutTimer;
    if (mConnectionTimeoutTimer)
    {
      dispatch_source_cancel(mConnectionTimeoutTimer);
      v6 = self->mConnectionTimeoutTimer;
      self->mConnectionTimeoutTimer = 0;

      mState = self->mState;
    }

    if (mState >= 1)
    {
      [(CATRemoteConnection *)self unscheduleStreams];
    }

    inputStream = [(CATRemoteConnection *)self inputStream];
    [inputStream setDelegate:0];

    outputStream = [(CATRemoteConnection *)self outputStream];
    [outputStream setDelegate:0];

    inputStream2 = [(CATRemoteConnection *)self inputStream];
    [inputStream2 close];

    outputStream2 = [(CATRemoteConnection *)self outputStream];
    [outputStream2 close];

    [(CATRemoteConnection *)self setInputStream:0];
    [(CATRemoteConnection *)self setOutputStream:0];
    [(CATHTTPMessageParser *)self->mMessageParser setDelegate:0];
    mMessageParser = self->mMessageParser;
    self->mMessageParser = 0;

    self->mState = 4;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = self->mPendingSendContexts;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * v16);
          v18 = CATErrorWithCodeAndUserInfo(100, 0);
          [(CATRemoteConnection *)self sendDidFail:v17 withError:v18];

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    [(CATSerialOperationQueue *)self->mStreamEventQueue cancelAllOperations];
    [(CATSerialOperationQueue *)self->mStreamEventQueue setSuspended:0];
    [(NSMutableArray *)self->mPendingSendContexts removeAllObjects];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __28__CATRemoteConnection_close__block_invoke;
    v21[3] = &unk_278DA72D0;
    v21[4] = self;
    v19 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v21];
    [v19 setName:@"Connection did close"];
    [(CATSerialOperationQueue *)self->mStreamEventQueue addOperation:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)scheduleStreams
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  [(CATSerialOperationQueue *)self->mStreamEventQueue setSuspended:0];
  inputStream = [(CATRemoteConnection *)self inputStream];
  v5 = CATGetCatalystQueue();
  MEMORY[0x245D2EE20](inputStream, v5);

  outputStream = [(CATRemoteConnection *)self outputStream];
  v7 = CATGetCatalystQueue();
  MEMORY[0x245D2EE70](outputStream, v7);

  inputStream2 = [(CATRemoteConnection *)self inputStream];
  NSSelectorFromString(&cfstr_Scheduleincfru.isa);
  if (objc_opt_respondsToSelector())
  {
    inputStream3 = [(CATRemoteConnection *)self inputStream];
    if ([inputStream3 streamStatus] == 2)
    {
      inputStream4 = [(CATRemoteConnection *)self inputStream];
      hasBytesAvailable = [inputStream4 hasBytesAvailable];

      if (!hasBytesAvailable)
      {
        goto LABEL_7;
      }

      inputStream2 = [(CATRemoteConnection *)self inputStream];
      CFReadStreamSignalEvent();
    }

    else
    {
    }
  }

LABEL_7:
  outputStream2 = [(CATRemoteConnection *)self outputStream];
  NSSelectorFromString(&cfstr_Scheduleincfru.isa);
  if (objc_opt_respondsToSelector())
  {
    outputStream3 = [(CATRemoteConnection *)self outputStream];
    if ([outputStream3 streamStatus] == 2)
    {
      outputStream4 = [(CATRemoteConnection *)self outputStream];
      hasSpaceAvailable = [outputStream4 hasSpaceAvailable];

      if (!hasSpaceAvailable)
      {
        return;
      }

      outputStream2 = [(CATRemoteConnection *)self outputStream];
      CFWriteStreamSignalEvent();
    }

    else
    {
    }
  }
}

- (void)unscheduleStreams
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  [(CATSerialOperationQueue *)self->mStreamEventQueue setSuspended:1];
  inputStream = [(CATRemoteConnection *)self inputStream];
  MEMORY[0x245D2EE20](inputStream, 0);

  outputStream = [(CATRemoteConnection *)self outputStream];
  MEMORY[0x245D2EE70](outputStream, 0);
}

- (void)tryEvaluatingPeerTrustWithStream:(id)stream
{
  v24 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  v6 = [streamCopy propertyForKey:*MEMORY[0x277CBAE60]];
  if (v6)
  {
    result = kSecTrustResultInvalid;
    if (SecTrustSetAnchorCertificates(v6, self->mTrustedCertificates) || SecTrustSetAnchorCertificatesOnly(v6, 1u) || [(CATRemoteConnection *)self applyCustomEvaluationPoliciesToTrust:v6])
    {
      v7 = 0;
      v8 = 0;
    }

    else
    {
      *buf = 0;
      if (SecTrustEvaluateWithError(v6, buf))
      {
        v8 = 0;
      }

      else
      {
        v8 = *buf;
      }

      v7 = SecTrustGetTrustResult(v6, &result) == 0;
    }

    if (_CATLogGeneral_onceToken_5 != -1)
    {
      [CATRemoteConnection tryEvaluatingPeerTrustWithStream:];
    }

    v9 = _CATLogGeneral_logObj_5;
    if (os_log_type_enabled(_CATLogGeneral_logObj_5, OS_LOG_TYPE_INFO))
    {
      v10 = MEMORY[0x277CCABB0];
      v11 = result;
      v12 = v9;
      v13 = [v10 numberWithUnsignedInt:v11];
      *buf = 138412290;
      *&buf[4] = v13;
      _os_log_impl(&dword_24329F000, v12, OS_LOG_TYPE_INFO, "trust result: %@", buf, 0xCu);
    }

    if (v7)
    {
      switch(result)
      {
        case kSecTrustResultProceed:
LABEL_14:
          self->mPeerTrustState = 1;
          [(CATRemoteConnection *)self delegateDidSecure];
LABEL_20:

          goto LABEL_21;
        case kSecTrustResultRecoverableTrustFailure:
          self->mPeerTrustState = 3;
          v15 = [[CATRemoteConnectionTrustDecision alloc] initWithConnection:self trust:v6];
          delegate = [(CATRemoteConnection *)self delegate];
          v18 = objc_opt_respondsToSelector();

          if (v18)
          {
            delegate2 = [(CATRemoteConnection *)self delegate];
            [delegate2 connection:self encounteredTrustDecisionWhileTryingToSecure:v15];
          }

          goto LABEL_19;
        case kSecTrustResultUnspecified:
          goto LABEL_14;
      }
    }

    if (v8)
    {
      v21 = *MEMORY[0x277CCA7E8];
      v22 = v8;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v15 = CATErrorWithCodeAndUserInfo(106, v14);
    }

    else
    {
      v15 = CATErrorWithCodeAndUserInfo(106, 0);
    }

    self->mPeerTrustState = 2;
    [(CATRemoteConnection *)self connectionDidInterruptWithError:v15];
LABEL_19:

    goto LABEL_20;
  }

LABEL_21:
  v16 = *MEMORY[0x277D85DE8];
}

- (int)applyCustomEvaluationPoliciesToTrust:(__SecTrust *)trust
{
  customTrustEvaluationPolicies = [(CATRemoteConnection *)self customTrustEvaluationPolicies];
  if (customTrustEvaluationPolicies)
  {
    v5 = SecTrustSetPolicies(trust, customTrustEvaluationPolicies);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)trustDecisionDidRespondWithDecisionToAllowUntrustedConnection:(BOOL)connection
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__CATRemoteConnection_trustDecisionDidRespondWithDecisionToAllowUntrustedConnection___block_invoke;
  v5[3] = &unk_278DA75D0;
  connectionCopy = connection;
  v5[4] = self;
  v3 = v5;
  v4 = CATGetCatalystQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_5;
  block[3] = &unk_278DA7208;
  v8 = v3;
  dispatch_async(v4, block);
}

void __85__CATRemoteConnection_trustDecisionDidRespondWithDecisionToAllowUntrustedConnection___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    *(v2 + 64) = 1;
    [*(a1 + 32) delegateDidSecure];
    [*(a1 + 32) connectionShouldSendData];
    v3 = *(a1 + 32);

    [v3 connectionDidReceiveData];
  }

  else
  {
    *(v2 + 64) = 2;
    v4 = *(a1 + 32);
    v5 = CATErrorWithCodeAndUserInfo(106, 0);
    [v4 connectionDidInterruptWithError:v5];
  }
}

- (void)configureStreamSocketOptions
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  inputStream = [(CATRemoteConnection *)self inputStream];
  v5 = CFReadStreamCopyProperty(inputStream, *MEMORY[0x277CBF078]);

  if (v5)
  {
    *buffer = 0;
    v37.location = 0;
    v37.length = 4;
    CFDataGetBytes(v5, v37, buffer);
    CFRelease(v5);
    name = [(CATRemoteConnection *)self name];

    if (!name)
    {
      v7 = [MEMORY[0x277CBEB28] dataWithLength:28];
      v35 = [v7 length];
      if (!getpeername(*buffer, [v7 mutableBytes], &v35))
      {
        [v7 setLength:v35];
        v8 = [[CATAddress alloc] initWithData:v7];
        address = [(CATAddress *)v8 address];
        [(CATRemoteConnection *)self setName:address];
      }
    }

    socketOptions = [(CATRemoteConnection *)self socketOptions];
    keepAliveEnabled = [socketOptions keepAliveEnabled];
    intValue = [keepAliveEnabled intValue];

    v35 = intValue;
    if (intValue >= 1)
    {
      if (setsockopt(*buffer, 0xFFFF, 8, &v35, 4u) < 0)
      {
        goto LABEL_16;
      }

      socketOptions2 = [(CATRemoteConnection *)self socketOptions];
      keepAliveDelay = [socketOptions2 keepAliveDelay];

      if (keepAliveDelay)
      {
        socketOptions3 = [(CATRemoteConnection *)self socketOptions];
        keepAliveDelay2 = [socketOptions3 keepAliveDelay];
        intValue2 = [keepAliveDelay2 intValue];

        v34 = intValue2;
        if (setsockopt(*buffer, 6, 16, &v34, 4u) < 0)
        {
          goto LABEL_16;
        }
      }

      socketOptions4 = [(CATRemoteConnection *)self socketOptions];
      keepAliveInterval = [socketOptions4 keepAliveInterval];

      if (keepAliveInterval)
      {
        socketOptions5 = [(CATRemoteConnection *)self socketOptions];
        keepAliveInterval2 = [socketOptions5 keepAliveInterval];
        intValue3 = [keepAliveInterval2 intValue];

        v34 = intValue3;
        if (setsockopt(*buffer, 6, 257, &v34, 4u) < 0)
        {
          goto LABEL_16;
        }
      }

      socketOptions6 = [(CATRemoteConnection *)self socketOptions];
      keepAliveCount = [socketOptions6 keepAliveCount];

      if (keepAliveCount)
      {
        socketOptions7 = [(CATRemoteConnection *)self socketOptions];
        keepAliveCount2 = [socketOptions7 keepAliveCount];
        intValue4 = [keepAliveCount2 intValue];

        v34 = intValue4;
        if (setsockopt(*buffer, 6, 258, &v34, 4u) < 0)
        {
          goto LABEL_16;
        }
      }

      socketOptions8 = [(CATRemoteConnection *)self socketOptions];
      netServiceType = [socketOptions8 netServiceType];

      if (netServiceType)
      {
        socketOptions9 = [(CATRemoteConnection *)self socketOptions];
        netServiceType2 = [socketOptions9 netServiceType];
        intValue5 = [netServiceType2 intValue];

        v34 = intValue5;
        if (setsockopt(*buffer, 0xFFFF, 4374, &v34, 4u) < 0)
        {
LABEL_16:
          v33 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
          [(CATRemoteConnection *)self connectionDidInterruptWithError:v33];
        }
      }
    }
  }
}

- (void)connectionTimedOut
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = CATErrorWithCodeAndUserInfo(105, 0);
  [(CATRemoteConnection *)self connectionDidInterruptWithError:v4];
}

- (void)connectionShouldSendData
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  lastObject = [(NSMutableArray *)self->mPendingSendContexts lastObject];
  if (lastObject)
  {
    v5 = lastObject;
    v6 = 0;
    while (1)
    {
      v7 = v6;
      v10 = v6;
      v8 = [(CATRemoteConnection *)self trySendingDataWithContext:v5 error:&v10];
      v6 = v10;

      if (!v8)
      {
        break;
      }

      if (([v5 hasBytesRemaining] & 1) == 0)
      {
        [(NSMutableArray *)self->mPendingSendContexts removeLastObject];
        [(CATRemoteConnection *)self sendDidSucceed:v5];
        lastObject2 = [(NSMutableArray *)self->mPendingSendContexts lastObject];

        v5 = lastObject2;
        if (lastObject2)
        {
          continue;
        }
      }

      goto LABEL_8;
    }

    [(CATRemoteConnection *)self sendDidFail:v5 withError:v6];
LABEL_8:
  }
}

- (void)enqueueSendContext:(id)context
{
  contextCopy = context;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  mState = self->mState;
  if (mState)
  {
    if (mState == 3)
    {
      v7 = self->mInterruptionError;
      goto LABEL_8;
    }

    if (mState == 4)
    {
      v6 = 100;
    }

    else
    {
      if (![(CATRemoteConnection *)self usesSSL]|| self->mPeerTrustState != 2)
      {
        goto LABEL_13;
      }

      v6 = 106;
    }
  }

  else
  {
    v6 = 104;
  }

  v7 = CATErrorWithCodeAndUserInfo(v6, 0);
LABEL_8:
  v8 = v7;
  if (v7)
  {
    [(CATRemoteConnection *)self sendDidFail:contextCopy withError:v7];

    goto LABEL_16;
  }

LABEL_13:
  [(NSMutableArray *)self->mPendingSendContexts insertObject:contextCopy atIndex:0];
  if (![(CATRemoteConnection *)self usesSSL]|| self->mPeerTrustState == 1)
  {
    [(CATRemoteConnection *)self connectionShouldSendData];
  }

LABEL_16:
}

- (BOOL)trySendingDataWithContext:(id)context error:(id *)error
{
  v32[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  v28 = 0;
  v8 = [contextCopy bufferedDataWithError:&v28];
  v9 = v28;
  if ([v8 length])
  {
    while (1)
    {
      outputStream = [(CATRemoteConnection *)self outputStream];
      hasSpaceAvailable = [outputStream hasSpaceAvailable];

      if (!hasSpaceAvailable)
      {
        break;
      }

      outputStream2 = [(CATRemoteConnection *)self outputStream];
      v13 = [outputStream2 write:objc_msgSend(v8 maxLength:{"bytes"), objc_msgSend(v8, "length")}];

      if (v13 < 1)
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          break;
        }

        outputStream3 = [(CATRemoteConnection *)self outputStream];
        streamError = [outputStream3 streamError];
        if (streamError)
        {
          v31 = *MEMORY[0x277CCA7E8];
          outputStream4 = [(CATRemoteConnection *)self outputStream];
          streamError2 = [outputStream4 streamError];
          v32[0] = streamError2;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
          v18 = CATErrorWithCodeAndUserInfo(102, v26);
        }

        else
        {
          v18 = CATErrorWithCodeAndUserInfo(102, 0);
        }

        if (error)
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      [contextCopy setBytesWritten:{objc_msgSend(contextCopy, "bytesWritten") + v13}];
      v27 = v9;
      v14 = [contextCopy bufferedDataWithError:&v27];
      v15 = v27;

      if ([contextCopy clientBytesWritten])
      {
        [(CATRemoteConnection *)self delegateDidWriteDataForContextIfNeeded:contextCopy];
      }

      v9 = v15;
      v8 = v14;
      if (![v14 length])
      {
        if (!v14)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }
    }
  }

  v14 = v8;
  v15 = v9;
  if (v8)
  {
LABEL_8:
    v16 = 1;
  }

  else
  {
LABEL_11:
    if (v15)
    {
      v29 = *MEMORY[0x277CCA7E8];
      v30 = v15;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v18 = CATErrorWithCodeAndUserInfo(102, v17);
    }

    else
    {
      v18 = CATErrorWithCodeAndUserInfo(102, 0);
    }

    v8 = 0;
    v9 = v15;
    if (error)
    {
LABEL_15:
      v19 = v18;
      *error = v18;
    }

LABEL_16:

    v16 = 0;
    v14 = v8;
    v15 = v9;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)sendDidSucceed:(id)succeed
{
  succeedCopy = succeed;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    data = [succeedCopy data];
    userInfo = [succeedCopy userInfo];
    [(CATRemoteConnection *)self delegateDidSendData:data userInfo:userInfo];
  }

  else
  {
    data = [succeedCopy stream];
    userInfo = [succeedCopy userInfo];
    [(CATRemoteConnection *)self delegateDidSendDataWithStream:data userInfo:userInfo];
  }
}

- (void)sendDidFail:(id)fail withError:(id)error
{
  failCopy = fail;
  errorCopy = error;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    data = [failCopy data];
    userInfo = [failCopy userInfo];
    [(CATRemoteConnection *)self delegateDidFailToSendData:data userInfo:userInfo error:errorCopy];
  }

  else
  {
    data = [failCopy stream];
    userInfo = [failCopy userInfo];
    [(CATRemoteConnection *)self delegateDidFailToSendDataWithStream:data userInfo:userInfo error:errorCopy];
  }
}

- (void)connectionDidReceiveData
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  inputStream = [(CATRemoteConnection *)self inputStream];
  hasBytesAvailable = [inputStream hasBytesAvailable];

  if (hasBytesAvailable)
  {
    if (!self->mReadBuffer)
    {
      v6 = [MEMORY[0x277CBEB28] dataWithLength:{-[CATRemoteConnection bufferSize](self, "bufferSize")}];
      mReadBuffer = self->mReadBuffer;
      self->mReadBuffer = v6;
    }

    inputStream2 = [(CATRemoteConnection *)self inputStream];
    v9 = [inputStream2 read:-[NSMutableData mutableBytes](self->mReadBuffer maxLength:{"mutableBytes"), -[NSMutableData length](self->mReadBuffer, "length")}];

    if (v9 >= 1)
    {
      mMessageParser = self->mMessageParser;
      if (mMessageParser)
      {
        if (![(CATHTTPMessageParser *)mMessageParser appendBytes:[(NSMutableData *)self->mReadBuffer bytes] length:v9])
        {
          v11 = CATErrorWithCodeAndUserInfo(300, 0);
          [(CATRemoteConnection *)self connectionDidInterruptWithError:v11];
        }
      }
    }
  }
}

- (void)connectionDidInterruptWithError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  if (!errorCopy)
  {
    [CATRemoteConnection connectionDidInterruptWithError:];
  }

  mState = self->mState;
  if ((mState - 3) >= 2)
  {
    if (mState)
    {
      objc_storeStrong(&self->mInterruptionError, error);
      self->mState = 3;
    }

    mConnectionTimeoutTimer = self->mConnectionTimeoutTimer;
    if (mConnectionTimeoutTimer)
    {
      dispatch_source_cancel(mConnectionTimeoutTimer);
      v9 = self->mConnectionTimeoutTimer;
      self->mConnectionTimeoutTimer = 0;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = self->mPendingSendContexts;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(CATRemoteConnection *)self sendDidFail:*(*(&v16 + 1) + 8 * v14++) withError:errorCopy, v16];
        }

        while (v12 != v14);
        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    [(NSMutableArray *)self->mPendingSendContexts removeAllObjects];
    [(CATRemoteConnection *)self delegateDidInterruptWithError:errorCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)delegateWillSecure
{
  delegate = [(CATRemoteConnection *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CATRemoteConnection *)self delegate];
    [delegate2 connectionWillSecure:self];
  }
}

- (void)delegateDidSecure
{
  delegate = [(CATRemoteConnection *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CATRemoteConnection *)self delegate];
    [delegate2 connectionDidSecure:self];
  }
}

- (void)delegateDidSendData:(id)data userInfo:(id)info
{
  dataCopy = data;
  infoCopy = info;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  delegate = [(CATRemoteConnection *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(CATRemoteConnection *)self delegate];
    [delegate2 connection:self didSendData:dataCopy userInfo:infoCopy];
  }
}

- (void)delegateDidFailToSendData:(id)data userInfo:(id)info error:(id)error
{
  dataCopy = data;
  infoCopy = info;
  errorCopy = error;
  v10 = CATGetCatalystQueue();
  CATAssertIsQueue(v10);

  delegate = [(CATRemoteConnection *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(CATRemoteConnection *)self delegate];
    [delegate2 connection:self didFailToSendData:dataCopy userInfo:infoCopy error:errorCopy];
  }
}

- (void)delegateDidReceiveData:(id)data
{
  dataCopy = data;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  delegate = [(CATRemoteConnection *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CATRemoteConnection *)self delegate];
    [delegate2 connection:self didReceiveData:dataCopy];
  }
}

- (void)delegateDidReceiveDataRequestWithURL:(id)l
{
  lCopy = l;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  delegate = [(CATRemoteConnection *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CATRemoteConnection *)self delegate];
    [delegate2 connection:self didReceiveDataRequestWithURL:lCopy];
  }
}

- (void)delegateDidWriteDataForContextIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = neededCopy;
    stream = [v5 stream];
    clientBytesWritten = [v5 clientBytesWritten];
    dataLength = [v5 dataLength];
    userInfo = [v5 userInfo];

    [(CATRemoteConnection *)self delegateDidWriteDataFromStream:stream totalBytesWritten:clientBytesWritten totalBytesExpectedToWrite:dataLength userInfo:userInfo];
  }
}

- (void)delegateDidWriteDataFromStream:(id)stream totalBytesWritten:(unint64_t)written totalBytesExpectedToWrite:(unint64_t)write userInfo:(id)info
{
  streamCopy = stream;
  infoCopy = info;
  v11 = CATGetCatalystQueue();
  CATAssertIsQueue(v11);

  delegate = [(CATRemoteConnection *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(CATRemoteConnection *)self delegate];
    [delegate2 connection:self didWriteDataFromStream:streamCopy totalBytesWritten:written totalBytesExpectedToWrite:write userInfo:infoCopy];
  }
}

- (void)delegateDidSendDataWithStream:(id)stream userInfo:(id)info
{
  streamCopy = stream;
  infoCopy = info;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  delegate = [(CATRemoteConnection *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(CATRemoteConnection *)self delegate];
    [delegate2 connection:self didSendDataWithStream:streamCopy userInfo:infoCopy];
  }
}

- (void)delegateDidFailToSendDataWithStream:(id)stream userInfo:(id)info error:(id)error
{
  streamCopy = stream;
  infoCopy = info;
  errorCopy = error;
  v10 = CATGetCatalystQueue();
  CATAssertIsQueue(v10);

  delegate = [(CATRemoteConnection *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(CATRemoteConnection *)self delegate];
    [delegate2 connection:self didFailToSendDataWithStream:streamCopy userInfo:infoCopy error:errorCopy];
  }
}

- (void)delegateDidOpen
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  delegate = [(CATRemoteConnection *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CATRemoteConnection *)self delegate];
    [delegate2 connectionDidOpen:self];
  }
}

- (void)delegateDidClose
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  delegate = [(CATRemoteConnection *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CATRemoteConnection *)self delegate];
    [delegate2 connectionDidClose:self];
  }
}

- (void)delegateDidInterruptWithError:(id)error
{
  errorCopy = error;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  delegate = [(CATRemoteConnection *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CATRemoteConnection *)self delegate];
    [delegate2 connection:self didInterruptWithError:errorCopy];
  }
}

- (void)messageParser:(id)parser didParseRequestData:(id)data
{
  dataCopy = data;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  if (self->mState != 4)
  {
    [(CATRemoteConnection *)self delegateDidReceiveData:dataCopy];
  }
}

- (void)messageParser:(id)parser didParseRequestWithURL:(id)l
{
  lCopy = l;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  if (self->mState != 4)
  {
    [(CATRemoteConnection *)self delegateDidReceiveDataRequestWithURL:lCopy];
  }
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__CATRemoteConnection_stream_handleEvent___block_invoke;
  v11[3] = &unk_278DA75F8;
  v11[4] = self;
  v12 = streamCopy;
  eventCopy = event;
  v7 = v11;
  v8 = streamCopy;
  v9 = CATGetCatalystQueue();
  v10 = v7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_5;
  block[3] = &unk_278DA7208;
  v15 = v10;
  dispatch_async(v9, block);
}

void __42__CATRemoteConnection_stream_handleEvent___block_invoke(void *a1)
{
  v2 = MEMORY[0x277CCA8C8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__CATRemoteConnection_stream_handleEvent___block_invoke_2;
  v7[3] = &unk_278DA75F8;
  v3 = a1[5];
  v7[4] = a1[4];
  v4 = v3;
  v5 = a1[6];
  v8 = v4;
  v9 = v5;
  v6 = [v2 blockOperationWithBlock:v7];
  [v6 setName:@"Handle Stream Event Operation"];
  [*(a1[4] + 72) addOperation:v6];
}

void *__42__CATRemoteConnection_stream_handleEvent___block_invoke_2(void *a1)
{
  result = a1[4];
  if (result[2] != 4)
  {
    return [result _stream:a1[5] handleEvent:a1[6]];
  }

  return result;
}

- (void)_stream:(id)_stream handleEvent:(unint64_t)event
{
  v22[1] = *MEMORY[0x277D85DE8];
  _streamCopy = _stream;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  if (event <= 3)
  {
    if (event == 1)
    {
      if (self->mState == 1)
      {
        inputStream = [(CATRemoteConnection *)self inputStream];
        if ([inputStream streamStatus] <= 1)
        {
          goto LABEL_30;
        }

        outputStream = [(CATRemoteConnection *)self outputStream];
        streamStatus = [outputStream streamStatus];

        if (streamStatus >= 2)
        {
          self->mState = 2;
          [(CATRemoteConnection *)self configureStreamSocketOptions];
          [(CATRemoteConnection *)self delegateDidOpen];
        }
      }
    }

    else if (event == 2)
    {
      if ([(CATRemoteConnection *)self usesSSL]&& !self->mPeerTrustState)
      {
        [(CATRemoteConnection *)self tryEvaluatingPeerTrustWithStream:_streamCopy];
      }

      if (![(CATRemoteConnection *)self usesSSL]|| self->mPeerTrustState == 1)
      {
        [(CATRemoteConnection *)self connectionDidReceiveData];
      }
    }
  }

  else
  {
    switch(event)
    {
      case 4uLL:
        if ([(CATRemoteConnection *)self usesSSL]&& !self->mPeerTrustState)
        {
          [(CATRemoteConnection *)self tryEvaluatingPeerTrustWithStream:_streamCopy];
        }

        if (![(CATRemoteConnection *)self usesSSL]|| self->mPeerTrustState == 1)
        {
          [(CATRemoteConnection *)self connectionShouldSendData];
        }

        break;
      case 8uLL:
        inputStream2 = [(CATRemoteConnection *)self inputStream];

        if (inputStream2 == _streamCopy)
        {
          v21 = *MEMORY[0x277CCA7E8];
          inputStream = [(CATRemoteConnection *)self inputStream];
          streamError = [inputStream streamError];
          v22[0] = streamError;
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
          v14 = 101;
        }

        else
        {
          outputStream2 = [(CATRemoteConnection *)self outputStream];

          if (outputStream2 != _streamCopy)
          {
            break;
          }

          v19 = *MEMORY[0x277CCA7E8];
          inputStream = [(CATRemoteConnection *)self outputStream];
          streamError = [inputStream streamError];
          v20 = streamError;
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
          v14 = 102;
        }

        v17 = CATErrorWithCodeAndUserInfo(v14, v13);
        [(CATRemoteConnection *)self connectionDidInterruptWithError:v17];

        goto LABEL_30;
      case 0x10uLL:
        inputStream3 = [(CATRemoteConnection *)self inputStream];

        if (inputStream3 == _streamCopy)
        {
          inputStream = CATErrorWithCodeAndUserInfo(103, 0);
          [(CATRemoteConnection *)self connectionDidInterruptWithError:inputStream];
LABEL_30:
        }

        break;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (CATRemoteConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)createConnectionPairWithConnection:andConnection:bufferSize:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"connection1" object:? file:? lineNumber:? description:?];
}

+ (void)createConnectionPairWithConnection:andConnection:bufferSize:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"connection2" object:? file:? lineNumber:? description:?];
}

- (void)initWithNetService:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"netService" object:? file:? lineNumber:? description:?];
}

- (void)initWithInputStream:outputStream:bufferSize:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"inputStream" object:? file:? lineNumber:? description:?];
}

- (void)initWithInputStream:outputStream:bufferSize:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"outputStream" object:? file:? lineNumber:? description:?];
}

- (void)secureUsingIdentity:trustedCertificates:isServer:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"identity" object:? file:? lineNumber:? description:?];
}

- (void)secureUsingIdentity:trustedCertificates:isServer:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_0();
  [v3 handleFailureInMethod:v0 object:v2 file:? lineNumber:? description:?];
}

- (void)connectionDidInterruptWithError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"error" object:? file:? lineNumber:? description:?];
}

@end