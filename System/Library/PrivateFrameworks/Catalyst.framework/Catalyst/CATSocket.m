@interface CATSocket
- (BOOL)connectToEndPoint:(id)a3 error:(id *)a4;
- (BOOL)delegateShouldAcceptNewSocket:(id)a3;
- (BOOL)listenWithEndPoint:(id)a3 error:(id *)a4;
- (CATSocket)init;
- (CATSocketDelegate)delegate;
- (void)acceptPendingConnection;
- (void)dealloc;
- (void)delegateDidClose;
- (void)delegateDidConnect;
- (void)delegateDidFailWithError:(id)a3;
- (void)delegateDidReceiveData:(id)a3;
- (void)invalidate;
- (void)populateLocalEndPoint;
- (void)populateRemoteEndPoint;
- (void)resume;
- (void)setNativeSocket:(int)a3;
- (void)socketDidCancel;
- (void)socketDidConnect;
- (void)socketDidFailWithError:(id)a3;
- (void)socketDidReceiveData;
- (void)socketDidReceiveEvent;
- (void)socketDidReceiveListeningEvent;
- (void)suspend;
@end

@implementation CATSocket

- (void)setNativeSocket:(int)a3
{
  if ([(CATSocket *)self nativeSocket]!= -1)
  {
    [CATSocket setNativeSocket:];
  }

  if (self->mIsInvalid)
  {
    [CATSocket setNativeSocket:];
  }

  if (self->_nativeSocket != a3)
  {
    self->_nativeSocket = a3;
    v5 = dispatch_source_create(MEMORY[0x277D85D28], a3, 0, self->_socketQueue);
    socketSource = self->_socketSource;
    self->_socketSource = v5;

    v7 = self->_socketSource;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __29__CATSocket_setNativeSocket___block_invoke;
    handler[3] = &unk_278DA72D0;
    handler[4] = self;
    dispatch_source_set_cancel_handler(v7, handler);
    v8 = self->_socketSource;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __29__CATSocket_setNativeSocket___block_invoke_2;
    v9[3] = &unk_278DA72D0;
    v9[4] = self;
    dispatch_source_set_event_handler(v8, v9);
    [(CATSocket *)self populateLocalEndPoint];
    if (self->mState != 1)
    {
      [(CATSocket *)self populateRemoteEndPoint];
    }
  }
}

- (CATSocket)init
{
  v9.receiver = self;
  v9.super_class = CATSocket;
  v2 = [(CATSocket *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_nativeSocket = -1;
    v4 = dispatch_queue_create(0, 0);
    userQueue = v3->_userQueue;
    v3->_userQueue = v4;

    v6 = dispatch_queue_create(0, 0);
    socketQueue = v3->_socketQueue;
    v3->_socketQueue = v6;
  }

  return v3;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (BOOL)listenWithEndPoint:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v7 = [(CATSocket *)self socketQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__CATSocket_listenWithEndPoint_error___block_invoke;
  v11[3] = &unk_278DA7850;
  v11[4] = self;
  v13 = &v15;
  v8 = v6;
  v12 = v8;
  v14 = &v21;
  dispatch_sync(v7, v11);

  if (a4)
  {
    *a4 = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

uint64_t __38__CATSocket_listenWithEndPoint_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 12);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = MEMORY[0x277CCA9B8];
      v4 = *MEMORY[0x277CCA5B8];
      v5 = 37;
LABEL_6:
      v8 = [v3 errorWithDomain:v4 code:v5 userInfo:0];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      return MEMORY[0x2821F96F8](v8, v10);
    }

LABEL_5:
    v3 = MEMORY[0x277CCA9B8];
    v4 = *MEMORY[0x277CCA5B8];
    v5 = 22;
    goto LABEL_6;
  }

  v6 = [*(a1 + 40) data];
  v7 = [v6 length];

  if (v7 <= 0xF)
  {
    goto LABEL_5;
  }

  v11 = [*(a1 + 40) data];
  v12 = [v11 bytes];

  v13 = socket(v12->sa_family, 1, 6);
  if (v13 == -1)
  {
    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA5B8];
    v5 = *__error();
    v3 = v18;
    v4 = v19;
    goto LABEL_6;
  }

  v14 = v13;
  v21 = 1;
  if (setsockopt(v13, 0xFFFF, 4, &v21, 4u) || bind(v14, v12, v12->sa_len) || listen(v14, 16))
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 56) + 8) + 24) != 1)
  {
    return close(v14);
  }

  *(*(a1 + 32) + 12) = 1;
  return [*(a1 + 32) setNativeSocket:v14];
}

- (BOOL)connectToEndPoint:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    [CATSocket connectToEndPoint:error:];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v7 = [(CATSocket *)self socketQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __37__CATSocket_connectToEndPoint_error___block_invoke;
  v11[3] = &unk_278DA7850;
  v11[4] = self;
  v13 = &v15;
  v8 = v6;
  v12 = v8;
  v14 = &v21;
  dispatch_sync(v7, v11);

  if (a4)
  {
    *a4 = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __37__CATSocket_connectToEndPoint_error___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 12);
  if (v2)
  {
    if (v2 == 3)
    {
      v3 = MEMORY[0x277CCA9B8];
      v4 = *MEMORY[0x277CCA5B8];
      v5 = 37;
      goto LABEL_8;
    }

    if (v2 == 2)
    {
      v3 = MEMORY[0x277CCA9B8];
      v4 = *MEMORY[0x277CCA5B8];
      v5 = 36;
      goto LABEL_8;
    }

LABEL_7:
    v3 = MEMORY[0x277CCA9B8];
    v4 = *MEMORY[0x277CCA5B8];
    v5 = 22;
    goto LABEL_8;
  }

  v6 = [*(a1 + 40) data];
  v7 = [v6 length];

  if (v7 <= 0xF)
  {
    goto LABEL_7;
  }

  v11 = [*(a1 + 40) data];
  v12 = [v11 bytes];

  v13 = socket(*(v12 + 1), 1, 0);
  if (v13 != -1)
  {
    v14 = v13;
    v23 = 1;
    if (setsockopt(v13, 0xFFFF, 4130, &v23, 4u))
    {
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
      v16 = *(*(a1 + 48) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      close(v14);
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      *(*(a1 + 32) + 12) = 2;
      [*(a1 + 32) setNativeSocket:v14];
      v20 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__CATSocket_connectToEndPoint_error___block_invoke_2;
      block[3] = &unk_278DA7878;
      v22 = v14;
      block[4] = *(a1 + 32);
      block[5] = v12;
      dispatch_async(v20, block);
    }

    return;
  }

  v18 = MEMORY[0x277CCA9B8];
  v19 = *MEMORY[0x277CCA5B8];
  v5 = *__error();
  v3 = v18;
  v4 = v19;
LABEL_8:
  v8 = [v3 errorWithDomain:v4 code:v5 userInfo:0];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  MEMORY[0x2821F96F8](v8, v10);
}

void __37__CATSocket_connectToEndPoint_error___block_invoke_2(uint64_t a1)
{
  v2 = connect(*(a1 + 48), *(a1 + 40), **(a1 + 40));
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    [v3 socketDidFailWithError:v4];
  }

  else
  {

    [v3 socketDidConnect];
  }
}

- (void)resume
{
  v3 = [(CATSocket *)self socketQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __19__CATSocket_resume__block_invoke;
  block[3] = &unk_278DA72D0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __19__CATSocket_resume__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) socketSource];

  if (v2)
  {
    v3 = [*(a1 + 32) socketSource];
    dispatch_resume(v3);
  }
}

- (void)suspend
{
  v3 = [(CATSocket *)self socketQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__CATSocket_suspend__block_invoke;
  block[3] = &unk_278DA72D0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __20__CATSocket_suspend__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) socketSource];

  if (v2)
  {
    v3 = [*(a1 + 32) socketSource];
    dispatch_suspend(v3);
  }
}

- (void)invalidate
{
  v3 = [(CATSocket *)self socketQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__CATSocket_invalidate__block_invoke;
  block[3] = &unk_278DA72D0;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __23__CATSocket_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[8] & 1) == 0)
  {
    v3 = [v2 socketSource];

    if (v3)
    {
      v4 = [*(a1 + 32) socketSource];
      dispatch_source_cancel(v4);
    }

    *(*(a1 + 32) + 8) = 1;
  }
}

- (void)socketDidReceiveEvent
{
  if (self->mState == 1)
  {
    [(CATSocket *)self socketDidReceiveListeningEvent];
  }

  else
  {
    [(CATSocket *)self socketDidReceiveData];
  }
}

- (void)socketDidReceiveListeningEvent
{
  v3 = [(CATSocket *)self socketSource];
  data = dispatch_source_get_data(v3);

  for (; data; --data)
  {
    [(CATSocket *)self acceptPendingConnection];
  }
}

- (void)acceptPendingConnection
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = __error();
  v7 = strerror(*v6);
  v8 = *__error();
  v10 = 138413058;
  v11 = a1;
  v12 = 1024;
  v13 = a3;
  v14 = 2080;
  v15 = v7;
  v16 = 1024;
  v17 = v8;
  _os_log_error_impl(&dword_24329F000, v5, OS_LOG_TYPE_ERROR, "%@ failed accepting from socket (%d): %s (%i)", &v10, 0x22u);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __36__CATSocket_acceptPendingConnection__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) delegateShouldAcceptNewSocket:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 40);

    return [v3 invalidate];
  }

  return result;
}

- (void)socketDidReceiveData
{
  v3 = [(CATSocket *)self socketSource];
  data = dispatch_source_get_data(v3);

  if (data)
  {
    v5 = [MEMORY[0x277CBEB28] dataWithLength:data];
    v6 = read(-[CATSocket nativeSocket](self, "nativeSocket"), [v5 mutableBytes], data);
    if (v6 == -1)
    {
      if (*__error() != 35 && *__error() != 4)
      {
        v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
        [(CATSocket *)self socketDidFailWithError:v9];

        [(CATSocket *)self invalidate];
        goto LABEL_11;
      }
    }

    else if (!v6)
    {
      v7 = [(CATSocket *)self socketSource];
      dispatch_source_cancel(v7);

LABEL_11:
      return;
    }

    v8 = [(CATSocket *)self userQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__CATSocket_socketDidReceiveData__block_invoke;
    block[3] = &unk_278DA7470;
    block[4] = self;
    v12 = v5;
    dispatch_async(v8, block);

    goto LABEL_11;
  }

  v10 = [(CATSocket *)self socketSource];
  dispatch_source_cancel(v10);
}

void __33__CATSocket_socketDidReceiveData__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 delegateDidReceiveData:v2];
}

- (void)socketDidConnect
{
  self->mState = 3;
  [(CATSocket *)self populateRemoteEndPoint];
  v3 = [(CATSocket *)self userQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__CATSocket_socketDidConnect__block_invoke;
  block[3] = &unk_278DA72D0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)socketDidCancel
{
  close(self->_nativeSocket);
  self->_nativeSocket = -1;
  socketSource = self->_socketSource;
  self->_socketSource = 0;

  if ((self->mState | 2) == 3)
  {
    self->mState = 5;
    v4 = [(CATSocket *)self userQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__CATSocket_socketDidCancel__block_invoke;
    block[3] = &unk_278DA72D0;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

- (void)socketDidFailWithError:(id)a3
{
  v4 = a3;
  self->mState = 4;
  v5 = [(CATSocket *)self userQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__CATSocket_socketDidFailWithError___block_invoke;
  v7[3] = &unk_278DA7470;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __36__CATSocket_socketDidFailWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) delegateDidFailWithError:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)populateLocalEndPoint
{
  v6 = 16;
  getsockname(self->_nativeSocket, 0, &v6);
  if (v6)
  {
    v3 = [MEMORY[0x277CBEB28] dataWithLength:?];
    getsockname(self->_nativeSocket, [v3 mutableBytes], &v6);
    v4 = [[CATEndPoint alloc] initWithData:v3];
    localEndPoint = self->_localEndPoint;
    self->_localEndPoint = v4;
  }
}

- (void)populateRemoteEndPoint
{
  v6 = 16;
  getpeername(self->_nativeSocket, 0, &v6);
  if (v6)
  {
    v3 = [MEMORY[0x277CBEB28] dataWithLength:?];
    getpeername(self->_nativeSocket, [v3 mutableBytes], &v6);
    v4 = [[CATEndPoint alloc] initWithData:v3];
    remoteEndPoint = self->_remoteEndPoint;
    self->_remoteEndPoint = v4;
  }
}

- (BOOL)delegateShouldAcceptNewSocket:(id)a3
{
  v4 = a3;
  v5 = [(CATSocket *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CATSocket *)self delegate];
    v8 = [v7 socket:self shouldAcceptNewSocket:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)delegateDidReceiveData:(id)a3
{
  v8 = a3;
  v4 = [(CATSocket *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CATSocket *)self delegate];
    v7 = [v8 copy];
    [v6 socket:self didReceiveData:v7];
  }
}

- (void)delegateDidClose
{
  v3 = [(CATSocket *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CATSocket *)self delegate];
    [v5 socketDidClose:self];
  }
}

- (void)delegateDidConnect
{
  v3 = [(CATSocket *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CATSocket *)self delegate];
    [v5 socketDidConnect:self];
  }
}

- (void)delegateDidFailWithError:(id)a3
{
  v7 = a3;
  v4 = [(CATSocket *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CATSocket *)self delegate];
    [v6 socket:self didFailWithError:v7];
  }
}

- (CATSocketDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setNativeSocket:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_0();
  [v3 handleFailureInMethod:v0 object:v2 file:? lineNumber:? description:?];
}

- (void)setNativeSocket:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSStringFromSelector(v1);
  OUTLINED_FUNCTION_0();
  [v3 handleFailureInMethod:v0 object:v2 file:? lineNumber:? description:?];
}

- (void)connectToEndPoint:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"endPoint" object:? file:? lineNumber:? description:?];
}

@end