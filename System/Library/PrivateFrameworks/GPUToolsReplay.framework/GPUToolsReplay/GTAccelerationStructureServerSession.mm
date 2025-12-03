@interface GTAccelerationStructureServerSession
+ (void)sessionWithReplayClient:(GTMTLReplayClient *)client functionIndex:(unint64_t)index requestID:(id)d transport:(id)transport dataHandler:(id)handler accelerationStructureKey:(unint64_t)key completionHandler:(id)completionHandler;
- (void)dealloc;
- (void)nextSample:(unint64_t)sample;
- (void)receiveData:(id)data;
@end

@implementation GTAccelerationStructureServerSession

- (void)nextSample:(unint64_t)sample
{
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277CCA8C8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__GTAccelerationStructureServerSession_nextSample___block_invoke;
  v7[3] = &unk_279658B28;
  objc_copyWeak(v8, &location);
  v8[1] = sample;
  v6 = [v5 blockOperationWithBlock:v7];
  [self->_clientContext->var7.var0 addOperation:v6];

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __51__GTAccelerationStructureServerSession_nextSample___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 7))
  {
    GTMTLReplayController_debugSubCommandStop(*(*(WeakRetained + 1) + 8), *(WeakRetained + 4), 0);
    v4 = [*(*(v3[1] + 8) + 8) defaultCommandQueue];
    v5 = v3[7];
    v6 = v4;
    std::mutex::lock((v5 + 48));
    if (*(v5 + 17712) && !*(v5 + 17728))
    {
      v32 = [MEMORY[0x277CD6CE0] sharedCaptureManager];
      v7 = objc_alloc_init(MEMORY[0x277CD6CC8]);
      [v7 setDestination:2];
      v8 = MEMORY[0x277CBEBC0];
      v9 = NSTemporaryDirectory();
      v10 = [v8 fileURLWithPath:v9];
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CBEAA8] date];
      [v12 timeIntervalSince1970];
      v14 = [v11 stringWithFormat:@"ASVSRenderer-%lu.gputrace", v13];
      v15 = [v10 URLByAppendingPathComponent:v14];

      [v7 setOutputURL:v15];
      [v7 setCaptureObject:v6];
      NSLog(&cfstr_StartingCaptur.isa, *(v5 + 17712));
      v35 = 0;
      LOBYTE(v10) = [v32 startCaptureWithDescriptor:v7 error:&v35];
      v16 = v35;
      v17 = v16;
      if (v10)
      {
        objc_storeStrong((v5 + 17720), v15);
        v18 = v32;
      }

      else
      {
        v19 = [v16 localizedDescription];
        NSLog(&cfstr_UnableToCaptur.isa, v19);

        v20 = *(v5 + 17720);
        *(v5 + 17720) = 0;

        v18 = 0;
        *(v5 + 17712) = 0;
      }

      v21 = *(v5 + 17728);
      *(v5 + 17728) = v18;
    }

    std::mutex::unlock((v5 + 48));

    v22 = [v6 commandBufferWithDescriptor:v3[5]];
    [v22 setLabel:@"ASV Generate Sample"];
    v23 = *(a1 + 40);
    if ((*(*v3[7] + 96))(v3[7], v6))
    {
      v24 = 0;
    }

    else
    {
      v24 = (v23 + 30);
    }

    if (v24 <= 0x7530)
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __51__GTAccelerationStructureServerSession_nextSample___block_invoke_2;
      v33[3] = &unk_279658250;
      objc_copyWeak(v34, (a1 + 32));
      v34[1] = v24;
      v33[4] = v3;
      [v22 addCompletedHandler:v33];
      objc_destroyWeak(v34);
    }

    else
    {
      v25 = v3[8];
      v26 = ASVErrorWithCode(7u, @"Xcode isn't responding");
      (*(*v25 + 40))(v25, 0, v26);
    }

    GTMTLReplay_commitCommandBuffer(v22);
    v27 = v3[7];
    std::mutex::lock((v27 + 48));
    if (*(v27 + 17728))
    {
      v28 = *(v27 + 17712);
      if (v28)
      {
        v29 = v28 - 1;
        *(v27 + 17712) = v29;
        NSLog(&cfstr_CapturingLuRem.isa, v29);
        if (!*(v27 + 17712))
        {
          NSLog(&cfstr_StoppingCaptur.isa);
          [*(v27 + 17728) stopCapture];
          NSLog(&cfstr_CaptureComplet.isa);
          v30 = *(v27 + 17720);
          *(v27 + 17720) = 0;

          v31 = *(v27 + 17728);
          *(v27 + 17728) = 0;
        }
      }
    }

    std::mutex::unlock((v27 + 48));
  }
}

void __51__GTAccelerationStructureServerSession_nextSample___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__GTAccelerationStructureServerSession_nextSample___block_invoke_3;
  v7[3] = &unk_279658228;
  v8 = v3;
  v5 = v3;
  objc_copyWeak(v10, (a1 + 40));
  v6 = *(a1 + 32);
  v10[1] = *(a1 + 48);
  v9 = v6;
  dispatch_async(v4, v7);

  objc_destroyWeak(v10);
}

void __51__GTAccelerationStructureServerSession_nextSample___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) status];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 56);
    if (v3 > 0x64)
    {
      v4 = dispatch_time(0, 1000000 * v3);
      v5 = dispatch_get_global_queue(0, 0);
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __51__GTAccelerationStructureServerSession_nextSample___block_invoke_4;
      v6[3] = &unk_279658B28;
      objc_copyWeak(v7, (a1 + 48));
      v7[1] = *(a1 + 56);
      dispatch_after(v4, v5, v6);

      objc_destroyWeak(v7);
    }

    else
    {
      [*(a1 + 40) nextSample:?];
    }
  }
}

void __51__GTAccelerationStructureServerSession_nextSample___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[7])
  {
    [WeakRetained nextSample:*(a1 + 40)];
  }
}

- (void)receiveData:(id)data
{
  dataCopy = data;
  server = self->_server;
  if (server)
  {
    (*(server->var0 + 4))(server, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
  }
}

- (void)dealloc
{
  NSLog(&cfstr_SessionIsDeall.isa, a2);
  server = self->_server;
  if (server)
  {
    (*(server->var0 + 15))(server, self->_sampler, 0);
  }

  htransport = self->_htransport;
  if (htransport)
  {
    (*(htransport->var0 + 1))(htransport);
  }

  self->_htransport = 0;
  sampler = self->_sampler;
  if (sampler)
  {
    (*(sampler->var0 + 1))(sampler);
  }

  self->_sampler = 0;
  v6 = self->_server;
  if (v6)
  {
    (*(v6->var0 + 1))(v6);
  }

  self->_server = 0;
  dataSource = self->_dataSource;
  if (dataSource)
  {
    (*(*dataSource + 8))(dataSource);
  }

  self->_dataSource = 0;
  NSLog(&cfstr_SessionIsDeall_0.isa);
  v8.receiver = self;
  v8.super_class = GTAccelerationStructureServerSession;
  [(GTAccelerationStructureServerSession *)&v8 dealloc];
}

+ (void)sessionWithReplayClient:(GTMTLReplayClient *)client functionIndex:(unint64_t)index requestID:(id)d transport:(id)transport dataHandler:(id)handler accelerationStructureKey:(unint64_t)key completionHandler:(id)completionHandler
{
  dCopy = d;
  transportCopy = transport;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  var1 = client->var1;
  v16 = objc_alloc_init(GTAccelerationStructureServerSession);
  v17 = v16;
  if (v16)
  {
    if (dCopy)
    {
      v16->requestID = [dCopy unsignedLongValue];
    }

    v17->_clientContext = client;
    v17->_functionIndex = index;
    objc_storeStrong(&v17->_transport, transport);
    v18 = MEMORY[0x253033CF0](handlerCopy);
    dataHandler = v17->_dataHandler;
    v17->_dataHandler = v18;

    operator new();
  }
}

void __153__GTAccelerationStructureServerSession_sessionWithReplayClient_functionIndex_requestID_transport_dataHandler_accelerationStructureKey_completionHandler___block_invoke(uint64_t a1)
{
  NSLog(&cfstr_SessionAddcomp.isa);
  v2 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) nextSample:0];
  NSLog(&cfstr_SessionAddcomp_0.isa);
}

@end