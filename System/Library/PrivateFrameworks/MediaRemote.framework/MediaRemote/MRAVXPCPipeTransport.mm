@interface MRAVXPCPipeTransport
- (BOOL)getInputStream:(id *)a3 outputStream:(id *)a4 userInfo:(id)a5;
- (BOOL)shouldUseSystemAuthenticationPrompt;
- (MRAVXPCPipeTransport)initWithOutputDevice:(id)a3 pipeEndpoint:(id)a4;
- (NSString)description;
- (id)createConnectionWithUserInfo:(id)a3;
- (id)error;
- (void)_onQueue_resetStreams;
- (void)dealloc;
- (void)reset;
- (void)sendData:(id)a3;
- (void)setShouldUseSystemAuthenticationPrompt:(BOOL)a3;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation MRAVXPCPipeTransport

- (MRAVXPCPipeTransport)initWithOutputDevice:(id)a3 pipeEndpoint:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MRAVXPCPipeTransport initWithOutputDevice:a2 pipeEndpoint:self];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [MRAVXPCPipeTransport initWithOutputDevice:a2 pipeEndpoint:self];
LABEL_3:
  v35.receiver = self;
  v35.super_class = MRAVXPCPipeTransport;
  v11 = [(MRAVXPCPipeTransport *)&v35 init];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.mediaremote.externalDeviceTransport/serialQueue", v12);
    serialQueue = v11->_serialQueue;
    v11->_serialQueue = v13;

    objc_storeStrong(&v11->_outputDevice, a3);
    v15 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v10];
    pipeConnection = v11->_pipeConnection;
    v11->_pipeConnection = v15;

    objc_initWeak(&location, v11);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __58__MRAVXPCPipeTransport_initWithOutputDevice_pipeEndpoint___block_invoke;
    v31[3] = &unk_1E769B150;
    objc_copyWeak(&v33, &location);
    v17 = v11;
    v32 = v17;
    v18 = MEMORY[0x1A58E3570](v31);
    v19 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1595F40];
    [(NSXPCConnection *)v11->_pipeConnection setRemoteObjectInterface:v19];
    [(NSXPCConnection *)v11->_pipeConnection setExportedInterface:v19];
    [(NSXPCConnection *)v11->_pipeConnection setExportedObject:v17];
    [(NSXPCConnection *)v11->_pipeConnection setInterruptionHandler:v18];
    [(NSXPCConnection *)v11->_pipeConnection setInvalidationHandler:v18];
    [(NSXPCConnection *)v11->_pipeConnection resume];
    v17->_useSystemAuthenticationPrompt = 1;
    if (!v17->_runLoop)
    {
      if (!v17->_runLoopThread)
      {
        v37 = 0;
        v38 = &v37;
        v39 = 0x2050000000;
        v20 = getCURunLoopThreadClass_softClass;
        v40 = getCURunLoopThreadClass_softClass;
        if (!getCURunLoopThreadClass_softClass)
        {
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 3221225472;
          v36[2] = __getCURunLoopThreadClass_block_invoke;
          v36[3] = &unk_1E769ADA8;
          v36[4] = &v37;
          __getCURunLoopThreadClass_block_invoke(v36);
          v20 = v38[3];
        }

        v21 = v20;
        _Block_object_dispose(&v37, 8);
        v22 = objc_alloc_init(v20);
        runLoopThread = v17->_runLoopThread;
        v17->_runLoopThread = v22;

        [(CURunLoopThread *)v17->_runLoopThread setDispatchQueue:v11->_serialQueue];
        [(CURunLoopThread *)v17->_runLoopThread activate];
      }

      v24 = dispatch_semaphore_create(0);
      v25 = v17->_runLoopThread;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __58__MRAVXPCPipeTransport_initWithOutputDevice_pipeEndpoint___block_invoke_2;
      v28[3] = &unk_1E769A4A0;
      v29 = v17;
      v26 = v24;
      v30 = v26;
      [(CURunLoopThread *)v25 performBlock:v28];
      dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
    }

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v11;
}

void __58__MRAVXPCPipeTransport_initWithOutputDevice_pipeEndpoint___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) reset];
    WeakRetained = v3;
  }
}

intptr_t __58__MRAVXPCPipeTransport_initWithOutputDevice_pipeEndpoint___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFD0] currentRunLoop];
  v3 = *(a1 + 32);
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;

  v5 = *(a1 + 40);

  return dispatch_semaphore_signal(v5);
}

- (void)dealloc
{
  [(MRAVXPCPipeTransport *)self reset];
  [(CURunLoopThread *)self->_runLoopThread invalidate];
  v3.receiver = self;
  v3.super_class = MRAVXPCPipeTransport;
  [(MRAVXPCPipeTransport *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromMRAVEndpointConnectionType(self->super._connectionType);
  v6 = [v3 stringWithFormat:@"<%@: %p connectionType=%@>", v4, self, v5];

  return v6;
}

- (BOOL)shouldUseSystemAuthenticationPrompt
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__MRAVXPCPipeTransport_shouldUseSystemAuthenticationPrompt__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setShouldUseSystemAuthenticationPrompt:(BOOL)a3
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__MRAVXPCPipeTransport_setShouldUseSystemAuthenticationPrompt___block_invoke;
  v4[3] = &unk_1E769BBE0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(serialQueue, v4);
}

- (id)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__14;
  v10 = __Block_byref_object_dispose__14;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__MRAVXPCPipeTransport_error__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __29__MRAVXPCPipeTransport_error__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)createConnectionWithUserInfo:(id)a3
{
  v8 = 0;
  v9 = 0;
  v3 = [(MRAVXPCPipeTransport *)self getInputStream:&v9 outputStream:&v8 userInfo:a3];
  v4 = v9;
  v5 = v8;
  v6 = 0;
  if (v3)
  {
    v6 = [[MRStreamTransportConnection alloc] initWithInputStream:v4 outputStream:v5 dataSource:0];
  }

  return v6;
}

- (BOOL)getInputStream:(id *)a3 outputStream:(id *)a4 userInfo:(id)a5
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__14;
  v24 = __Block_byref_object_dispose__14;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__14;
  v18 = __Block_byref_object_dispose__14;
  v19 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__14;
  v12[4] = __Block_byref_object_dispose__14;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__14;
  v10[4] = __Block_byref_object_dispose__14;
  v11 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MRAVXPCPipeTransport_getInputStream_outputStream_userInfo___block_invoke;
  block[3] = &unk_1E769DFA0;
  block[4] = self;
  block[5] = &v20;
  block[6] = v10;
  block[7] = v12;
  block[8] = &v14;
  dispatch_sync(serialQueue, block);
  if (a3)
  {
    *a3 = v21[5];
  }

  if (a4)
  {
    *a4 = v15[5];
  }

  _Block_object_dispose(v10, 8);

  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return 1;
}

void *__61__MRAVXPCPipeTransport_getInputStream_outputStream_userInfo___block_invoke(void *result)
{
  v1 = result;
  v2 = result[4];
  if (!*(v2 + 64))
  {
    v3 = *(result[5] + 8);
    v4 = *(v3 + 40);
    v5 = *(result[6] + 8);
    v11 = *(v5 + 40);
    obj = v4;
    [MEMORY[0x1E695DFE0] getBoundStreamsWithBufferSize:35840 inputStream:&obj outputStream:&v11];
    objc_storeStrong((v3 + 40), obj);
    objc_storeStrong((v5 + 40), v11);
    objc_storeStrong((v1[4] + 64), *(*(v1[5] + 8) + 40));
    objc_storeStrong((v1[4] + 88), *(*(v1[6] + 8) + 40));
    [*(v1[4] + 88) scheduleInRunLoop:*(v1[4] + 112) forMode:*MEMORY[0x1E695DA28]];
    result = [*(v1[4] + 88) open];
    v2 = v1[4];
  }

  if (!*(v2 + 80))
  {
    v6 = *(v1[7] + 8);
    v7 = *(v6 + 40);
    v8 = *(v1[8] + 8);
    v9 = *(v8 + 40);
    v10 = v7;
    [MEMORY[0x1E695DFE0] getBoundStreamsWithBufferSize:35840 inputStream:&v10 outputStream:&v9];
    objc_storeStrong((v6 + 40), v10);
    objc_storeStrong((v8 + 40), v9);
    objc_storeStrong((v1[4] + 72), *(*(v1[7] + 8) + 40));
    objc_storeStrong((v1[4] + 80), *(*(v1[8] + 8) + 40));
    [*(v1[4] + 72) setDelegate:?];
    [*(v1[4] + 72) scheduleInRunLoop:*(v1[4] + 112) forMode:*MEMORY[0x1E695DA28]];
    return [*(v1[4] + 72) open];
  }

  return result;
}

- (void)reset
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__MRAVXPCPipeTransport_reset__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v11 = *MEMORY[0x1E69E9840];
  if (a4 == 2)
  {
    inputStreamInternal = self->_inputStreamInternal;
    if (inputStreamInternal == a3)
    {
      v6 = [(NSInputStream *)inputStreamInternal read:v10 maxLength:35840];
      if (v6)
      {
        v7 = [MEMORY[0x1E695DEF0] dataWithBytes:v10 length:v6];
        v8 = [(NSXPCConnection *)self->_pipeConnection remoteObjectProxy];
        [v8 sendData:v7];
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)sendData:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  runLoop = self->_runLoop;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__MRAVXPCPipeTransport_sendData___block_invoke;
  v7[3] = &unk_1E769B150;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [(NSRunLoop *)runLoop performBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __33__MRAVXPCPipeTransport_sendData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[11] write:objc_msgSend(*(a1 + 32) maxLength:{"bytes"), objc_msgSend(*(a1 + 32), "length")}];
    WeakRetained = v3;
  }
}

- (void)_onQueue_resetStreams
{
  objc_initWeak(&location, self);
  runLoop = self->_runLoop;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__MRAVXPCPipeTransport__onQueue_resetStreams__block_invoke;
  v4[3] = &unk_1E769B178;
  objc_copyWeak(&v5, &location);
  [(NSRunLoop *)runLoop performBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __45__MRAVXPCPipeTransport__onQueue_resetStreams__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained[9] close];
    [v7[11] close];
    v2 = *MEMORY[0x1E695DA28];
    [v7[9] removeFromRunLoop:v7[14] forMode:*MEMORY[0x1E695DA28]];
    [v7[11] removeFromRunLoop:v7[14] forMode:v2];
    v3 = v7[8];
    v7[8] = 0;

    v4 = v7[10];
    v7[10] = 0;

    v5 = v7[9];
    v7[9] = 0;

    v6 = v7[11];
    v7[11] = 0;

    WeakRetained = v7;
  }
}

- (void)initWithOutputDevice:(uint64_t)a1 pipeEndpoint:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRAVXPCPipeTransport.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"outputDevice"}];
}

- (void)initWithOutputDevice:(uint64_t)a1 pipeEndpoint:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRAVXPCPipeTransport.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"pipeEndpoint"}];
}

@end