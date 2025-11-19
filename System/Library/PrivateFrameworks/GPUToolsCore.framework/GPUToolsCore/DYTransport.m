@interface DYTransport
- (BOOL)_activateSource:(id)a3;
- (BOOL)relayMessage:(id)a3 error:(id *)a4;
- (BOOL)send:(id)a3 inReplyTo:(id)a4 error:(id *)a5 replyQueue:(id)a6 timeout:(unint64_t)a7 handler:(id)a8;
- (DYTransport)init;
- (NSURL)url;
- (id)debugDescription;
- (id)newSourceWithQueue:(id)a3;
- (void)_cancelSource:(id)a3;
- (void)_dispatchMessage:(id)a3;
- (void)_handleReplyTimeout:(unsigned int)a3 count:(unsigned int)a4;
- (void)_invalidate;
- (void)_scheduleInvalidation:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setSynchronous:(BOOL)a3;
@end

@implementation DYTransport

- (DYTransport)init
{
  v11.receiver = self;
  v11.super_class = DYTransport;
  v2 = [(DYTransport *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    *(v2 + 12) = [v3 initWithFormat:@"<%@ %p>", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", object_getClassName(v2)), v2];
    v4 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"gputools.%@.%p", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", object_getClassName(v2)), v2), "UTF8String"];
    v5 = dispatch_queue_attr_make_with_overcommit();
    *(v2 + 2) = dispatch_queue_create(v4, v5);
    v6 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"gputools.%@.%p.%@", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", object_getClassName(v2)), v2, @"default", "UTF8String"];
    *(v2 + 3) = dispatch_queue_create_with_target_V2(v6, 0, *(v2 + 2));
    v7 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithFormat:@"gputools.%@.%p.%@", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", object_getClassName(v2)), v2, @"send", "UTF8String"];
    *(v2 + 4) = dispatch_queue_create_with_target_V2(v7, 0, *(v2 + 2));
    *(v2 + 10) = objc_opt_new();
    v8 = objc_opt_new();
    v9 = MEMORY[0x277D85D58];
    *(v2 + 8) = v8;
    *(v2 + 9) = v9;
    *(v2 + 52) = 0;
  }

  return v2;
}

- (void)dealloc
{
  sendQueue = self->_sendQueue;
  if (sendQueue)
  {
    dispatch_release(sendQueue);
    self->_sendQueue = 0;
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  rootQueue = self->_rootQueue;
  if (rootQueue)
  {
    dispatch_release(rootQueue);
    self->_rootQueue = 0;
  }

  v6.receiver = self;
  v6.super_class = DYTransport;
  [(DYTransport *)&v6 dealloc];
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DYTransport *)self description];
  v5 = [(DYTransport *)self url];
  v6 = [(DYTransport *)self connected];
  v7 = [(DYTransport *)self invalid];
  v8 = [(DYTransport *)self error];
  v9 = atomic_load(&self->_messageCounter);
  v10 = atomic_load(&self->_invalid);
  return [v3 stringWithFormat:@"%@: url=%@, connected=%d, invalid=%d, error=%@, messageCounter=%u, messageSendQueueDepth=%u, sources=%@", v4, v5, v6, v7, v8, v9, v10, self->_error];
}

- (NSURL)url
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __18__DYTransport_url__block_invoke;
  v5[3] = &unk_27930CA10;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __18__DYTransport_url__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)newSourceWithQueue:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__DYTransport_newSourceWithQueue___block_invoke;
  block[3] = &unk_27930CA38;
  block[5] = a3;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)_activateSource:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__DYTransport__activateSource___block_invoke;
  block[3] = &unk_27930CA60;
  block[4] = self;
  block[5] = a3;
  block[6] = &v7;
  dispatch_sync(queue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)_cancelSource:(id)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__DYTransport__cancelSource___block_invoke;
  v4[3] = &unk_27930C170;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(queue, v4);
}

- (void)_invalidate
{
  [(NSError *)self->_error makeObjectsPerformSelector:sel_cancel];
  dispatch_send = self->_dispatch_send;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __26__DYTransport__invalidate__block_invoke;
  v4[3] = &unk_27930CA88;
  v4[4] = self;
  [dispatch_send enumerateKeysAndObjectsUsingBlock:v4];
  [(NSError *)self->_error removeAllObjects];
  [self->_dispatch_send removeAllObjects];
}

- (void)_handleReplyTimeout:(unsigned int)a3 count:(unsigned int)a4
{
  v6 = a3;
  v7 = [self->_dispatch_send objectForIntKey:a3];
  if (v7 && v7[10] <= a4)
  {
    v9 = v7;
    v8 = v7;
    [self->_dispatch_send removeObjectForIntKey:v6];
    [v9 dispatchError:{+[DYError errorWithDomain:code:userInfo:](DYError, "errorWithDomain:code:userInfo:", @"DYErrorDomain", 5, 0)}];
  }
}

void __32__DYTransport__dispatchMessage___block_invoke(void *a1)
{
  v1 = a1[4];
  if ((*(v1 + 24) & 1) == 0)
  {
    v3 = a1[5];
    v4 = (*(*(v1 + 16) + 16))();
    v5 = a1[4];
    if (v4)
    {
      v6 = *(v5 + 32);
      if (v6)
      {
        v7 = dispatch_time(0, v6);
        v8 = a1[6];
        v9 = *(v8 + 24);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __32__DYTransport__dispatchMessage___block_invoke_3;
        v12[3] = &unk_27930CAB0;
        v12[4] = v8;
        v12[5] = a1[7];
        dispatch_after(v7, v9, v12);
      }
    }

    else
    {
      *(v5 + 24) = 1;
      v10 = a1[6];
      v11 = *(v10 + 24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __32__DYTransport__dispatchMessage___block_invoke_2;
      block[3] = &unk_27930C9B8;
      block[4] = v10;
      v14 = *(a1 + 14);
      dispatch_async(v11, block);
    }
  }
}

- (void)invalidate
{
  v3 = [DYError errorWithDomain:@"DYErrorDomain" code:6 userInfo:0];

  [(DYTransport *)self _scheduleInvalidation:v3];
}

uint64_t __37__DYTransport__scheduleInvalidation___block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 88))
  {
    v2 = result;
    *(*(result + 32) + 88) = *(result + 40);
    v3 = *(v2 + 32);

    return [v3 _invalidate];
  }

  return result;
}

- (void)setSynchronous:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__DYTransport_setSynchronous___block_invoke;
  v4[3] = &unk_27930C710;
  v5 = a3;
  v4[4] = self;
  dispatch_async(queue, v4);
}

uint64_t __30__DYTransport_setSynchronous___block_invoke(uint64_t result)
{
  v1 = MEMORY[0x277D85D58];
  if (*(result + 40))
  {
    v1 = MEMORY[0x277D85DA0];
  }

  *(*(result + 32) + 72) = v1;
  return result;
}

- (BOOL)send:(id)a3 inReplyTo:(id)a4 error:(id *)a5 replyQueue:(id)a6 timeout:(unint64_t)a7 handler:(id)a8
{
  if ([a3 hasBeenSent])
  {
    [DYTransport send:a5 inReplyTo:&v33 error:? replyQueue:? timeout:? handler:?];
LABEL_26:
    LOBYTE(v15) = v33;
    return v15;
  }

  if (a4 && ([a4 hasBeenSent] & 1) == 0)
  {
    [DYTransport send:a5 inReplyTo:&v33 error:? replyQueue:? timeout:? handler:?];
    goto LABEL_26;
  }

  if (![(DYTransport *)self connected])
  {
    [DYTransport send:a5 inReplyTo:&v33 error:? replyQueue:? timeout:? handler:?];
    goto LABEL_26;
  }

  if (LOBYTE(self->_interposerVersion) == 1)
  {
    [DYTransport send:a5 inReplyTo:&v33 error:? replyQueue:? timeout:? handler:?];
    goto LABEL_26;
  }

  v15 = [(DYTransport *)self _packMessage:a3 error:a5];
  if (v15)
  {
    v16 = [(DYTransport *)self _nextMessageSerial];
    if (a4)
    {
      v17 = [a4 serial];
    }

    else
    {
      v17 = 0xFFFFFFFFLL;
    }

    [a3 _setSerial:v16 replySerial:v17 transport:self];
    if (a8)
    {
      v18 = [(DYContinuation *)[DYTransportMessageReplyContinuation alloc] initWithQueue:a6 block:a8];
      a8 = v18;
      atomic_fetch_add(&self->_invalid, 1u);
      sources = self->_sources;
      v20 = BYTE1(self->_interposerVersion);
      if (v18)
      {
        if (a7)
        {
          v18->timeout = a7;
          v21 = dispatch_time(0, a7);
          queue = self->_queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __63__DYTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke;
          block[3] = &unk_27930C9B8;
          block[4] = self;
          v32 = v16;
          dispatch_after(v21, queue, block);
        }

        v23 = self->_queue;
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __63__DYTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke_2;
        v29[3] = &unk_27930C198;
        v29[4] = self;
        v29[5] = a8;
        v30 = v16;
        dispatch_sync(v23, v29);
        if ((v20 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (!BYTE1(self->_interposerVersion))
      {
        goto LABEL_16;
      }
    }

    else
    {
      atomic_fetch_add(&self->_invalid, 1u);
      sources = self->_sources;
      v20 = BYTE1(self->_interposerVersion);
      if ((v20 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    dispatch_suspend(self->_queue);
LABEL_16:
    sendQueue = self->_sendQueue;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __63__DYTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke_3;
    v26[3] = &unk_27930CB28;
    v28 = v20;
    v26[4] = self;
    v26[5] = a8;
    v26[6] = a3;
    v27 = v16;
    (sources)(sendQueue, v26);

    LOBYTE(v15) = 1;
  }

  return v15;
}

void __63__DYTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 60) == 1)
  {
    dispatch_resume(*(*(a1 + 32) + 24));
  }

  if (*(*(a1 + 32) + 52) == 1)
  {
    __63__DYTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke_3_cold_1(a1, a1 + 32);
  }

  else
  {
    v11 = 0;
    v2 = objc_autoreleasePoolPush();
    if (*(a1 + 40))
    {
      v3 = &v11;
    }

    else
    {
      v3 = 0;
    }

    v4 = [*(a1 + 32) _sendMessage:*(a1 + 48) error:v3];
    v5 = v11;
    objc_autoreleasePoolPop(v2);
    atomic_fetch_add((*(a1 + 32) + 48), 0xFFFFFFFF);
    if (v4 == -1)
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        v7 = *(a1 + 32);
        v8 = *(v7 + 24);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __63__DYTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke_4;
        block[3] = &unk_27930CB00;
        v10 = *(a1 + 56);
        block[4] = v7;
        block[5] = v6;
        block[6] = v11;
        dispatch_async(v8, block);
      }
    }
  }
}

uint64_t __63__DYTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke_4(uint64_t a1)
{
  [*(*(a1 + 32) + 64) removeObjectForIntKey:*(a1 + 56)];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 dispatchError:v3];
}

- (BOOL)relayMessage:(id)a3 error:(id *)a4
{
  if ([a3 transport] == self)
  {
    [DYTransport relayMessage:a4 error:&v14];
LABEL_12:
    LOBYTE(v7) = v14;
    return v7;
  }

  if (![(DYTransport *)self connected])
  {
    [DYTransport send:a4 inReplyTo:&v14 error:? replyQueue:? timeout:? handler:?];
    goto LABEL_12;
  }

  if (LOBYTE(self->_interposerVersion) == 1)
  {
    [DYTransport send:a4 inReplyTo:&v14 error:? replyQueue:? timeout:? handler:?];
    goto LABEL_12;
  }

  v7 = [(DYTransport *)self _packMessage:a3 error:a4];
  if (v7)
  {
    sources = self->_sources;
    v9 = BYTE1(self->_interposerVersion);
    if (v9 == 1)
    {
      dispatch_suspend(self->_queue);
    }

    sendQueue = self->_sendQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __34__DYTransport_relayMessage_error___block_invoke;
    v12[3] = &unk_27930CB50;
    v13 = v9;
    v12[4] = self;
    v12[5] = a3;
    (sources)(sendQueue, v12);
    LOBYTE(v7) = 1;
  }

  return v7;
}

void *__34__DYTransport_newSourceWithQueue___block_invoke(void *result)
{
  if ((*(result[4] + 52) & 1) == 0)
  {
    v1 = result;
    result = [[DYTransportSource alloc] _initWithQueue:v1[5] transport:v1[4]];
    *(*(v1[6] + 8) + 40) = result;
  }

  return result;
}

uint64_t __31__DYTransport__activateSource___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 52) & 1) == 0)
  {
    v2 = result;
    result = [*(v1 + 80) addObject:*(result + 40)];
    *(*(*(v2 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (void)_dispatchMessage:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  if ((self->_interposerVersion & 1) == 0)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    error = self->_error;
    v11 = OUTLINED_FUNCTION_1_0(self, a2, a3, v3, v4, v5, v6, v7, v29, v30, v31, v32, v33, v34, v35, v36, 0, 0, 0, 0, 0, 0, 0, 0, v41, v42);
    if (v11)
    {
      v12 = v11;
      v13 = *v38;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(error);
          }

          v15 = [*(*(&v37 + 1) + 8 * i) _dispatch:a3];
        }

        v12 = OUTLINED_FUNCTION_1_0(v15, v16, v17, v18, v19, v20, v21, v22, v29, v30, v31, v32, v33, v34, v35, v36, v37, *(&v37 + 1), v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), v41, v42);
      }

      while (v12);
    }

    v23 = [a3 replySerial];
    if (v23 != -1)
    {
      v24 = v23;
      v25 = [self->_dispatch_send objectForIntKey:v23];
      if (v25)
      {
        v26 = *(v25 + 40) + 1;
        *(v25 + 40) = v26;
        v27 = *(v25 + 8);
        v29 = MEMORY[0x277D85DD0];
        v30 = 3221225472;
        v31 = __32__DYTransport__dispatchMessage___block_invoke;
        v32 = &unk_27930CAD8;
        v33 = v25;
        v34 = a3;
        v35 = self;
        v36 = __PAIR64__(v26, v24);
        dispatch_async(v27, &v29);
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleInvalidation:(id)a3
{
  if ((self->_interposerVersion & 1) == 0)
  {
    if (a3)
    {
      [objc_msgSend(a3 "localizedDescription")];
    }

    DYLog(5, "schedule invalidation <DYTransport %p, error: %s>", a3, v3, v4, v5, v6, v7, self);
    LOBYTE(self->_interposerVersion) = 1;
    rootQueue = self->_rootQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__DYTransport__scheduleInvalidation___block_invoke;
    block[3] = &unk_27930C170;
    block[4] = self;
    block[5] = a3;
    dispatch_barrier_async(rootQueue, block);
  }
}

void __34__DYTransport_relayMessage_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    dispatch_resume(*(*(a1 + 32) + 24));
  }

  if ((*(*(a1 + 32) + 52) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    [*(a1 + 32) _sendMessage:*(a1 + 40) error:0];

    objc_autoreleasePoolPop(v2);
  }
}

- (DYError)send:(DYError *)result inReplyTo:(_BYTE *)a2 error:replyQueue:timeout:handler:.cold.1(DYError *result, _BYTE *a2)
{
  if (result)
  {
    p_isa = &result->super.super.isa;
    result = [DYError errorWithDomain:@"DYErrorDomain" code:35 userInfo:0];
    *p_isa = result;
  }

  *a2 = 0;
  return result;
}

- (DYError)send:(DYError *)result inReplyTo:(_BYTE *)a2 error:replyQueue:timeout:handler:.cold.2(DYError *result, _BYTE *a2)
{
  if (result)
  {
    p_isa = &result->super.super.isa;
    result = [DYError errorWithDomain:@"DYErrorDomain" code:33 userInfo:0];
    *p_isa = result;
  }

  *a2 = 0;
  return result;
}

- (DYError)send:(DYError *)result inReplyTo:(_BYTE *)a2 error:replyQueue:timeout:handler:.cold.3(DYError *result, _BYTE *a2)
{
  if (result)
  {
    p_isa = &result->super.super.isa;
    result = [DYError errorWithDomain:@"DYErrorDomain" code:32 userInfo:0];
    *p_isa = result;
  }

  *a2 = 0;
  return result;
}

- (DYError)send:(DYError *)result inReplyTo:(_BYTE *)a2 error:replyQueue:timeout:handler:.cold.4(DYError *result, _BYTE *a2)
{
  if (result)
  {
    p_isa = &result->super.super.isa;
    result = [DYError errorWithDomain:@"DYErrorDomain" code:34 userInfo:0];
    *p_isa = result;
  }

  *a2 = 0;
  return result;
}

uint64_t __63__DYTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke_3_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  [*(a1 + 40) dispatchError:{+[DYError errorWithDomain:code:userInfo:](DYError, "errorWithDomain:code:userInfo:", @"DYErrorDomain", 32, 0)}];
  objc_autoreleasePoolPop(v4);
  atomic_fetch_add((*a2 + 48), 0xFFFFFFFF);
  v5 = *(a1 + 48);

  return [v5 setEncodedAttributes:0];
}

- (DYError)relayMessage:(DYError *)result error:(_BYTE *)a2 .cold.3(DYError *result, _BYTE *a2)
{
  if (result)
  {
    p_isa = &result->super.super.isa;
    result = [DYError errorWithDomain:@"DYErrorDomain" code:40 userInfo:0];
    *p_isa = result;
  }

  *a2 = 0;
  return result;
}

@end