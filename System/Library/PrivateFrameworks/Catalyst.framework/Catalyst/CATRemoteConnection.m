@interface CATRemoteConnection
+ (void)createConnectionPairWithConnection:(id *)a3 andConnection:(id *)a4 bufferSize:(unint64_t)a5;
- (BOOL)trySendingDataWithContext:(id)a3 error:(id *)a4;
- (CATRemoteConnection)initWithInputStream:(id)a3 outputStream:(id)a4 bufferSize:(unint64_t)a5;
- (CATRemoteConnection)initWithNetService:(id)a3;
- (CATRemoteConnectionDelegate)delegate;
- (NSString)description;
- (__SecTrust)peerTrust;
- (int)applyCustomEvaluationPoliciesToTrust:(__SecTrust *)a3;
- (void)_stream:(id)a3 handleEvent:(unint64_t)a4;
- (void)close;
- (void)configureStreamSocketOptions;
- (void)connectionDidInterruptWithError:(id)a3;
- (void)connectionDidReceiveData;
- (void)connectionShouldSendData;
- (void)connectionTimedOut;
- (void)dealloc;
- (void)delegateDidClose;
- (void)delegateDidFailToSendData:(id)a3 userInfo:(id)a4 error:(id)a5;
- (void)delegateDidFailToSendDataWithStream:(id)a3 userInfo:(id)a4 error:(id)a5;
- (void)delegateDidInterruptWithError:(id)a3;
- (void)delegateDidOpen;
- (void)delegateDidReceiveData:(id)a3;
- (void)delegateDidReceiveDataRequestWithURL:(id)a3;
- (void)delegateDidSecure;
- (void)delegateDidSendData:(id)a3 userInfo:(id)a4;
- (void)delegateDidSendDataWithStream:(id)a3 userInfo:(id)a4;
- (void)delegateDidWriteDataForContextIfNeeded:(id)a3;
- (void)delegateDidWriteDataFromStream:(id)a3 totalBytesWritten:(unint64_t)a4 totalBytesExpectedToWrite:(unint64_t)a5 userInfo:(id)a6;
- (void)delegateWillSecure;
- (void)enqueueSendContext:(id)a3;
- (void)messageParser:(id)a3 didParseRequestData:(id)a4;
- (void)messageParser:(id)a3 didParseRequestWithURL:(id)a4;
- (void)open;
- (void)scheduleStreams;
- (void)secureUsingClientIdentity:(__SecIdentity *)a3 trustedCertificates:(id)a4;
- (void)secureUsingServerIdentity:(__SecIdentity *)a3 trustedCertificates:(id)a4;
- (void)sendData:(id)a3 userInfo:(id)a4;
- (void)sendDataWithStream:(id)a3 length:(unint64_t)a4 userInfo:(id)a5;
- (void)sendDidFail:(id)a3 withError:(id)a4;
- (void)sendDidSucceed:(id)a3;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
- (void)trustDecisionDidRespondWithDecisionToAllowUntrustedConnection:(BOOL)a3;
- (void)tryEvaluatingPeerTrustWithStream:(id)a3;
- (void)unscheduleStreams;
@end

@implementation CATRemoteConnection

- (__SecTrust)peerTrust
{
  v2 = [(CATRemoteConnection *)self inputStream];
  v3 = [v2 propertyForKey:*MEMORY[0x277CBAE60]];

  return v3;
}

+ (void)createConnectionPairWithConnection:(id *)a3 andConnection:(id *)a4 bufferSize:(unint64_t)a5
{
  if (!a3)
  {
    +[CATRemoteConnection createConnectionPairWithConnection:andConnection:bufferSize:];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    +[CATRemoteConnection createConnectionPairWithConnection:andConnection:bufferSize:];
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = 0;
  v18 = 0;
  [MEMORY[0x277CBEBA0] getBoundStreamsWithBufferSize:a5 inputStream:&v18 outputStream:&v17];
  v9 = v18;
  v10 = v17;
  v15 = 0;
  v16 = 0;
  [MEMORY[0x277CBEBA0] getBoundStreamsWithBufferSize:a5 inputStream:&v16 outputStream:&v15];
  v11 = v16;
  v12 = v15;
  *a3 = [[a1 alloc] initWithInputStream:v9 outputStream:v12 bufferSize:a5];
  v13 = [[a1 alloc] initWithInputStream:v11 outputStream:v10 bufferSize:a5];
  v14 = v13;

  *a4 = v13;
}

- (CATRemoteConnection)initWithNetService:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [CATRemoteConnection initWithNetService:];
  }

  v12 = 0;
  v13 = 0;
  if ([v4 getInputStream:&v13 outputStream:&v12])
  {
    v5 = [(CATRemoteConnection *)self initWithInputStream:v13 outputStream:v12];
    if (v5)
    {
      v6 = [v4 name];
      v7 = [v6 copy];
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

- (CATRemoteConnection)initWithInputStream:(id)a3 outputStream:(id)a4 bufferSize:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
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
    objc_storeStrong(&v12->_inputStream, a3);
    objc_storeStrong(&v13->_outputStream, a4);
    v13->_connectionTimeoutInterval = -1.0;
    v13->_bufferSize = a5;
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
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CATRemoteConnection *)self name];
  v7 = [v3 stringWithFormat:@"<%@: %p { name = %@ } >", v5, self, v6];

  return v7;
}

- (void)sendData:(id)a3 userInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_CATRemoteConnectionSendDataContext alloc] initWithData:v7 userInfo:v6];

  [(CATRemoteConnection *)self enqueueSendContext:v8];
}

- (void)sendDataWithStream:(id)a3 length:(unint64_t)a4 userInfo:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[_CATRemoteConnectionSendDataWithStreamContext alloc] initWithStream:v9 length:a4 bufferSize:[(CATRemoteConnection *)self bufferSize] userInfo:v8];

  [(CATRemoteConnection *)self enqueueSendContext:v10];
}

- (void)secureUsingClientIdentity:(__SecIdentity *)a3 trustedCertificates:(id)a4
{
  v7 = a4;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  [(CATRemoteConnection *)self secureUsingIdentity:a3 trustedCertificates:v7 isServer:0];
}

- (void)secureUsingServerIdentity:(__SecIdentity *)a3 trustedCertificates:(id)a4
{
  v7 = a4;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  [(CATRemoteConnection *)self secureUsingIdentity:a3 trustedCertificates:v7 isServer:1];
}

- (void)open
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(a1);
  [v8 handleFailureInMethod:a1 object:a2 file:@"CATRemoteConnection.m" lineNumber:249 description:{@"%@ cannot call %@ when invalidated.", a2, v9}];

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

    v7 = [(CATRemoteConnection *)self inputStream];
    [v7 setDelegate:0];

    v8 = [(CATRemoteConnection *)self outputStream];
    [v8 setDelegate:0];

    v9 = [(CATRemoteConnection *)self inputStream];
    [v9 close];

    v10 = [(CATRemoteConnection *)self outputStream];
    [v10 close];

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
  v4 = [(CATRemoteConnection *)self inputStream];
  v5 = CATGetCatalystQueue();
  MEMORY[0x245D2EE20](v4, v5);

  v6 = [(CATRemoteConnection *)self outputStream];
  v7 = CATGetCatalystQueue();
  MEMORY[0x245D2EE70](v6, v7);

  v8 = [(CATRemoteConnection *)self inputStream];
  NSSelectorFromString(&cfstr_Scheduleincfru.isa);
  if (objc_opt_respondsToSelector())
  {
    v9 = [(CATRemoteConnection *)self inputStream];
    if ([v9 streamStatus] == 2)
    {
      v10 = [(CATRemoteConnection *)self inputStream];
      v11 = [v10 hasBytesAvailable];

      if (!v11)
      {
        goto LABEL_7;
      }

      v8 = [(CATRemoteConnection *)self inputStream];
      CFReadStreamSignalEvent();
    }

    else
    {
    }
  }

LABEL_7:
  v15 = [(CATRemoteConnection *)self outputStream];
  NSSelectorFromString(&cfstr_Scheduleincfru.isa);
  if (objc_opt_respondsToSelector())
  {
    v12 = [(CATRemoteConnection *)self outputStream];
    if ([v12 streamStatus] == 2)
    {
      v13 = [(CATRemoteConnection *)self outputStream];
      v14 = [v13 hasSpaceAvailable];

      if (!v14)
      {
        return;
      }

      v15 = [(CATRemoteConnection *)self outputStream];
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
  v4 = [(CATRemoteConnection *)self inputStream];
  MEMORY[0x245D2EE20](v4, 0);

  v5 = [(CATRemoteConnection *)self outputStream];
  MEMORY[0x245D2EE70](v5, 0);
}

- (void)tryEvaluatingPeerTrustWithStream:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  v6 = [v4 propertyForKey:*MEMORY[0x277CBAE60]];
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
          v17 = [(CATRemoteConnection *)self delegate];
          v18 = objc_opt_respondsToSelector();

          if (v18)
          {
            v19 = [(CATRemoteConnection *)self delegate];
            [v19 connection:self encounteredTrustDecisionWhileTryingToSecure:v15];
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

- (int)applyCustomEvaluationPoliciesToTrust:(__SecTrust *)a3
{
  v4 = [(CATRemoteConnection *)self customTrustEvaluationPolicies];
  if (v4)
  {
    v5 = SecTrustSetPolicies(a3, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)trustDecisionDidRespondWithDecisionToAllowUntrustedConnection:(BOOL)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __85__CATRemoteConnection_trustDecisionDidRespondWithDecisionToAllowUntrustedConnection___block_invoke;
  v5[3] = &unk_278DA75D0;
  v6 = a3;
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

  v4 = [(CATRemoteConnection *)self inputStream];
  v5 = CFReadStreamCopyProperty(v4, *MEMORY[0x277CBF078]);

  if (v5)
  {
    *buffer = 0;
    v37.location = 0;
    v37.length = 4;
    CFDataGetBytes(v5, v37, buffer);
    CFRelease(v5);
    v6 = [(CATRemoteConnection *)self name];

    if (!v6)
    {
      v7 = [MEMORY[0x277CBEB28] dataWithLength:28];
      v35 = [v7 length];
      if (!getpeername(*buffer, [v7 mutableBytes], &v35))
      {
        [v7 setLength:v35];
        v8 = [[CATAddress alloc] initWithData:v7];
        v9 = [(CATAddress *)v8 address];
        [(CATRemoteConnection *)self setName:v9];
      }
    }

    v10 = [(CATRemoteConnection *)self socketOptions];
    v11 = [v10 keepAliveEnabled];
    v12 = [v11 intValue];

    v35 = v12;
    if (v12 >= 1)
    {
      if (setsockopt(*buffer, 0xFFFF, 8, &v35, 4u) < 0)
      {
        goto LABEL_16;
      }

      v13 = [(CATRemoteConnection *)self socketOptions];
      v14 = [v13 keepAliveDelay];

      if (v14)
      {
        v15 = [(CATRemoteConnection *)self socketOptions];
        v16 = [v15 keepAliveDelay];
        v17 = [v16 intValue];

        v34 = v17;
        if (setsockopt(*buffer, 6, 16, &v34, 4u) < 0)
        {
          goto LABEL_16;
        }
      }

      v18 = [(CATRemoteConnection *)self socketOptions];
      v19 = [v18 keepAliveInterval];

      if (v19)
      {
        v20 = [(CATRemoteConnection *)self socketOptions];
        v21 = [v20 keepAliveInterval];
        v22 = [v21 intValue];

        v34 = v22;
        if (setsockopt(*buffer, 6, 257, &v34, 4u) < 0)
        {
          goto LABEL_16;
        }
      }

      v23 = [(CATRemoteConnection *)self socketOptions];
      v24 = [v23 keepAliveCount];

      if (v24)
      {
        v25 = [(CATRemoteConnection *)self socketOptions];
        v26 = [v25 keepAliveCount];
        v27 = [v26 intValue];

        v34 = v27;
        if (setsockopt(*buffer, 6, 258, &v34, 4u) < 0)
        {
          goto LABEL_16;
        }
      }

      v28 = [(CATRemoteConnection *)self socketOptions];
      v29 = [v28 netServiceType];

      if (v29)
      {
        v30 = [(CATRemoteConnection *)self socketOptions];
        v31 = [v30 netServiceType];
        v32 = [v31 intValue];

        v34 = v32;
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

  v4 = [(NSMutableArray *)self->mPendingSendContexts lastObject];
  if (v4)
  {
    v5 = v4;
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
        v9 = [(NSMutableArray *)self->mPendingSendContexts lastObject];

        v5 = v9;
        if (v9)
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

- (void)enqueueSendContext:(id)a3
{
  v9 = a3;
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
    [(CATRemoteConnection *)self sendDidFail:v9 withError:v7];

    goto LABEL_16;
  }

LABEL_13:
  [(NSMutableArray *)self->mPendingSendContexts insertObject:v9 atIndex:0];
  if (![(CATRemoteConnection *)self usesSSL]|| self->mPeerTrustState == 1)
  {
    [(CATRemoteConnection *)self connectionShouldSendData];
  }

LABEL_16:
}

- (BOOL)trySendingDataWithContext:(id)a3 error:(id *)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  v28 = 0;
  v8 = [v6 bufferedDataWithError:&v28];
  v9 = v28;
  if ([v8 length])
  {
    while (1)
    {
      v10 = [(CATRemoteConnection *)self outputStream];
      v11 = [v10 hasSpaceAvailable];

      if (!v11)
      {
        break;
      }

      v12 = [(CATRemoteConnection *)self outputStream];
      v13 = [v12 write:objc_msgSend(v8 maxLength:{"bytes"), objc_msgSend(v8, "length")}];

      if (v13 < 1)
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          break;
        }

        v22 = [(CATRemoteConnection *)self outputStream];
        v23 = [v22 streamError];
        if (v23)
        {
          v31 = *MEMORY[0x277CCA7E8];
          v24 = [(CATRemoteConnection *)self outputStream];
          v25 = [v24 streamError];
          v32[0] = v25;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
          v18 = CATErrorWithCodeAndUserInfo(102, v26);
        }

        else
        {
          v18 = CATErrorWithCodeAndUserInfo(102, 0);
        }

        if (a4)
        {
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      [v6 setBytesWritten:{objc_msgSend(v6, "bytesWritten") + v13}];
      v27 = v9;
      v14 = [v6 bufferedDataWithError:&v27];
      v15 = v27;

      if ([v6 clientBytesWritten])
      {
        [(CATRemoteConnection *)self delegateDidWriteDataForContextIfNeeded:v6];
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
    if (a4)
    {
LABEL_15:
      v19 = v18;
      *a4 = v18;
    }

LABEL_16:

    v16 = 0;
    v14 = v8;
    v15 = v9;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)sendDidSucceed:(id)a3
{
  v7 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v7 data];
    v6 = [v7 userInfo];
    [(CATRemoteConnection *)self delegateDidSendData:v5 userInfo:v6];
  }

  else
  {
    v5 = [v7 stream];
    v6 = [v7 userInfo];
    [(CATRemoteConnection *)self delegateDidSendDataWithStream:v5 userInfo:v6];
  }
}

- (void)sendDidFail:(id)a3 withError:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v10 data];
    v9 = [v10 userInfo];
    [(CATRemoteConnection *)self delegateDidFailToSendData:v8 userInfo:v9 error:v6];
  }

  else
  {
    v8 = [v10 stream];
    v9 = [v10 userInfo];
    [(CATRemoteConnection *)self delegateDidFailToSendDataWithStream:v8 userInfo:v9 error:v6];
  }
}

- (void)connectionDidReceiveData
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [(CATRemoteConnection *)self inputStream];
  v5 = [v4 hasBytesAvailable];

  if (v5)
  {
    if (!self->mReadBuffer)
    {
      v6 = [MEMORY[0x277CBEB28] dataWithLength:{-[CATRemoteConnection bufferSize](self, "bufferSize")}];
      mReadBuffer = self->mReadBuffer;
      self->mReadBuffer = v6;
    }

    v8 = [(CATRemoteConnection *)self inputStream];
    v9 = [v8 read:-[NSMutableData mutableBytes](self->mReadBuffer maxLength:{"mutableBytes"), -[NSMutableData length](self->mReadBuffer, "length")}];

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

- (void)connectionDidInterruptWithError:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = CATGetCatalystQueue();
  CATAssertIsQueue(v6);

  if (!v5)
  {
    [CATRemoteConnection connectionDidInterruptWithError:];
  }

  mState = self->mState;
  if ((mState - 3) >= 2)
  {
    if (mState)
    {
      objc_storeStrong(&self->mInterruptionError, a3);
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

          [(CATRemoteConnection *)self sendDidFail:*(*(&v16 + 1) + 8 * v14++) withError:v5, v16];
        }

        while (v12 != v14);
        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    [(NSMutableArray *)self->mPendingSendContexts removeAllObjects];
    [(CATRemoteConnection *)self delegateDidInterruptWithError:v5];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)delegateWillSecure
{
  v3 = [(CATRemoteConnection *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CATRemoteConnection *)self delegate];
    [v5 connectionWillSecure:self];
  }
}

- (void)delegateDidSecure
{
  v3 = [(CATRemoteConnection *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CATRemoteConnection *)self delegate];
    [v5 connectionDidSecure:self];
  }
}

- (void)delegateDidSendData:(id)a3 userInfo:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  v8 = [(CATRemoteConnection *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CATRemoteConnection *)self delegate];
    [v10 connection:self didSendData:v11 userInfo:v6];
  }
}

- (void)delegateDidFailToSendData:(id)a3 userInfo:(id)a4 error:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = CATGetCatalystQueue();
  CATAssertIsQueue(v10);

  v11 = [(CATRemoteConnection *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(CATRemoteConnection *)self delegate];
    [v13 connection:self didFailToSendData:v14 userInfo:v8 error:v9];
  }
}

- (void)delegateDidReceiveData:(id)a3
{
  v8 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = [(CATRemoteConnection *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CATRemoteConnection *)self delegate];
    [v7 connection:self didReceiveData:v8];
  }
}

- (void)delegateDidReceiveDataRequestWithURL:(id)a3
{
  v8 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = [(CATRemoteConnection *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CATRemoteConnection *)self delegate];
    [v7 connection:self didReceiveDataRequestWithURL:v8];
  }
}

- (void)delegateDidWriteDataForContextIfNeeded:(id)a3
{
  v10 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v10;
    v6 = [v5 stream];
    v7 = [v5 clientBytesWritten];
    v8 = [v5 dataLength];
    v9 = [v5 userInfo];

    [(CATRemoteConnection *)self delegateDidWriteDataFromStream:v6 totalBytesWritten:v7 totalBytesExpectedToWrite:v8 userInfo:v9];
  }
}

- (void)delegateDidWriteDataFromStream:(id)a3 totalBytesWritten:(unint64_t)a4 totalBytesExpectedToWrite:(unint64_t)a5 userInfo:(id)a6
{
  v15 = a3;
  v10 = a6;
  v11 = CATGetCatalystQueue();
  CATAssertIsQueue(v11);

  v12 = [(CATRemoteConnection *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = [(CATRemoteConnection *)self delegate];
    [v14 connection:self didWriteDataFromStream:v15 totalBytesWritten:a4 totalBytesExpectedToWrite:a5 userInfo:v10];
  }
}

- (void)delegateDidSendDataWithStream:(id)a3 userInfo:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  v8 = [(CATRemoteConnection *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(CATRemoteConnection *)self delegate];
    [v10 connection:self didSendDataWithStream:v11 userInfo:v6];
  }
}

- (void)delegateDidFailToSendDataWithStream:(id)a3 userInfo:(id)a4 error:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = CATGetCatalystQueue();
  CATAssertIsQueue(v10);

  v11 = [(CATRemoteConnection *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(CATRemoteConnection *)self delegate];
    [v13 connection:self didFailToSendDataWithStream:v14 userInfo:v8 error:v9];
  }
}

- (void)delegateDidOpen
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [(CATRemoteConnection *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CATRemoteConnection *)self delegate];
    [v6 connectionDidOpen:self];
  }
}

- (void)delegateDidClose
{
  v3 = CATGetCatalystQueue();
  CATAssertIsQueue(v3);

  v4 = [(CATRemoteConnection *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CATRemoteConnection *)self delegate];
    [v6 connectionDidClose:self];
  }
}

- (void)delegateDidInterruptWithError:(id)a3
{
  v8 = a3;
  v4 = CATGetCatalystQueue();
  CATAssertIsQueue(v4);

  v5 = [(CATRemoteConnection *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CATRemoteConnection *)self delegate];
    [v7 connection:self didInterruptWithError:v8];
  }
}

- (void)messageParser:(id)a3 didParseRequestData:(id)a4
{
  v6 = a4;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  if (self->mState != 4)
  {
    [(CATRemoteConnection *)self delegateDidReceiveData:v6];
  }
}

- (void)messageParser:(id)a3 didParseRequestWithURL:(id)a4
{
  v6 = a4;
  v5 = CATGetCatalystQueue();
  CATAssertIsQueue(v5);

  if (self->mState != 4)
  {
    [(CATRemoteConnection *)self delegateDidReceiveDataRequestWithURL:v6];
  }
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__CATRemoteConnection_stream_handleEvent___block_invoke;
  v11[3] = &unk_278DA75F8;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v7 = v11;
  v8 = v6;
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

- (void)_stream:(id)a3 handleEvent:(unint64_t)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = CATGetCatalystQueue();
  CATAssertIsQueue(v7);

  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      if (self->mState == 1)
      {
        v9 = [(CATRemoteConnection *)self inputStream];
        if ([v9 streamStatus] <= 1)
        {
          goto LABEL_30;
        }

        v15 = [(CATRemoteConnection *)self outputStream];
        v16 = [v15 streamStatus];

        if (v16 >= 2)
        {
          self->mState = 2;
          [(CATRemoteConnection *)self configureStreamSocketOptions];
          [(CATRemoteConnection *)self delegateDidOpen];
        }
      }
    }

    else if (a4 == 2)
    {
      if ([(CATRemoteConnection *)self usesSSL]&& !self->mPeerTrustState)
      {
        [(CATRemoteConnection *)self tryEvaluatingPeerTrustWithStream:v6];
      }

      if (![(CATRemoteConnection *)self usesSSL]|| self->mPeerTrustState == 1)
      {
        [(CATRemoteConnection *)self connectionDidReceiveData];
      }
    }
  }

  else
  {
    switch(a4)
    {
      case 4uLL:
        if ([(CATRemoteConnection *)self usesSSL]&& !self->mPeerTrustState)
        {
          [(CATRemoteConnection *)self tryEvaluatingPeerTrustWithStream:v6];
        }

        if (![(CATRemoteConnection *)self usesSSL]|| self->mPeerTrustState == 1)
        {
          [(CATRemoteConnection *)self connectionShouldSendData];
        }

        break;
      case 8uLL:
        v10 = [(CATRemoteConnection *)self inputStream];

        if (v10 == v6)
        {
          v21 = *MEMORY[0x277CCA7E8];
          v9 = [(CATRemoteConnection *)self inputStream];
          v12 = [v9 streamError];
          v22[0] = v12;
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
          v14 = 101;
        }

        else
        {
          v11 = [(CATRemoteConnection *)self outputStream];

          if (v11 != v6)
          {
            break;
          }

          v19 = *MEMORY[0x277CCA7E8];
          v9 = [(CATRemoteConnection *)self outputStream];
          v12 = [v9 streamError];
          v20 = v12;
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
          v14 = 102;
        }

        v17 = CATErrorWithCodeAndUserInfo(v14, v13);
        [(CATRemoteConnection *)self connectionDidInterruptWithError:v17];

        goto LABEL_30;
      case 0x10uLL:
        v8 = [(CATRemoteConnection *)self inputStream];

        if (v8 == v6)
        {
          v9 = CATErrorWithCodeAndUserInfo(103, 0);
          [(CATRemoteConnection *)self connectionDidInterruptWithError:v9];
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