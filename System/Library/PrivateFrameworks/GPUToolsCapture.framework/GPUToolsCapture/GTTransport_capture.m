@interface GTTransport_capture
- (BOOL)_activateSource:(id)a3;
- (BOOL)relayMessage:(id)a3 error:(id *)a4;
- (BOOL)send:(id)a3 inReplyTo:(id)a4 error:(id *)a5 replyQueue:(id)a6 timeout:(unint64_t)a7 handler:(id)a8;
- (GTTransport_capture)init;
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

@implementation GTTransport_capture

- (BOOL)relayMessage:(id)a3 error:(id *)a4
{
  if ([a3 transport] == self)
  {
    if (!a4)
    {
      goto LABEL_16;
    }

    v11 = 40;
LABEL_15:
    v12 = [GTError_capture errorWithDomain:@"DYErrorDomain" code:v11 userInfo:0];
    LOBYTE(v7) = 0;
    *a4 = v12;
    return v7;
  }

  if (![(GTTransport_capture *)self connected])
  {
    if (!a4)
    {
      goto LABEL_16;
    }

    v11 = 33;
    goto LABEL_15;
  }

  if (LOBYTE(self->_interposerVersion) == 1)
  {
    if (a4)
    {
      v11 = 32;
      goto LABEL_15;
    }

LABEL_16:
    LOBYTE(v7) = 0;
    return v7;
  }

  v7 = [(GTTransport_capture *)self _packMessage:a3 error:a4];
  if (v7)
  {
    isa = self[1].super.isa;
    v9 = BYTE1(self->_interposerVersion);
    if (v9 == 1)
    {
      dispatch_suspend(self->_queue);
    }

    sendQueue = self->_sendQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __34__GTTransport_relayMessage_error___block_invoke;
    v14[3] = &unk_2F1600;
    v15 = v9;
    v14[4] = self;
    v14[5] = a3;
    (isa)(sendQueue, v14);
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)send:(id)a3 inReplyTo:(id)a4 error:(id *)a5 replyQueue:(id)a6 timeout:(unint64_t)a7 handler:(id)a8
{
  if ([a3 hasBeenSent])
  {
    if (!a5)
    {
      goto LABEL_31;
    }

    v25 = 34;
LABEL_30:
    v26 = [GTError_capture errorWithDomain:@"DYErrorDomain" code:v25 userInfo:0];
    LOBYTE(v15) = 0;
    *a5 = v26;
    return v15;
  }

  if (a4 && ([a4 hasBeenSent] & 1) == 0)
  {
    if (a5)
    {
      v25 = 35;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (![(GTTransport_capture *)self connected])
  {
    if (!a5)
    {
      goto LABEL_31;
    }

    v25 = 33;
    goto LABEL_30;
  }

  if (LOBYTE(self->_interposerVersion) == 1)
  {
    if (a5)
    {
      v25 = 32;
      goto LABEL_30;
    }

LABEL_31:
    LOBYTE(v15) = 0;
    return v15;
  }

  v15 = [(GTTransport_capture *)self _packMessage:a3 error:a5];
  if (v15)
  {
    v16 = [(GTTransport_capture *)self _nextMessageSerial];
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
      v18 = [(GTContinuation_capture *)[GTTransportMessageReplyContinuation_capture alloc] initWithQueue:a6 block:a8];
      a8 = v18;
      atomic_fetch_add(&self->_invalid, 1u);
      isa = self[1].super.isa;
      v20 = BYTE1(self->_interposerVersion);
      if (v18)
      {
        if (a7)
        {
          v18->timeout = a7;
          v21 = dispatch_time(0, a7);
          queue = self->_queue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = __63__GTTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke;
          block[3] = &unk_2F1510;
          block[4] = self;
          v34 = v16;
          dispatch_after(v21, queue, block);
        }

        v23 = self->_queue;
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = __63__GTTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke_2;
        v31[3] = &unk_2F1588;
        v31[4] = self;
        v31[5] = a8;
        v32 = v16;
        dispatch_sync(v23, v31);
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
      isa = self[1].super.isa;
      v20 = BYTE1(self->_interposerVersion);
      if ((v20 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    dispatch_suspend(self->_queue);
LABEL_16:
    sendQueue = self->_sendQueue;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __63__GTTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke_3;
    v28[3] = &unk_2F15D8;
    v30 = v20;
    v28[4] = self;
    v28[5] = a8;
    v28[6] = a3;
    v29 = v16;
    (isa)(sendQueue, v28);

    LOBYTE(v15) = 1;
  }

  return v15;
}

- (void)setSynchronous:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __30__GTTransport_setSynchronous___block_invoke;
  v4[3] = &unk_2F1560;
  v5 = a3;
  v4[4] = self;
  dispatch_async(queue, v4);
}

- (void)_scheduleInvalidation:(id)a3
{
  if ((self->_interposerVersion & 1) == 0)
  {
    LOBYTE(self->_interposerVersion) = 1;
    rootQueue = self->_rootQueue;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = __37__GTTransport__scheduleInvalidation___block_invoke;
    v4[3] = &unk_2F2550;
    v4[4] = self;
    v4[5] = a3;
    dispatch_barrier_async(rootQueue, v4);
  }
}

- (void)invalidate
{
  v3 = [GTError_capture errorWithDomain:@"DYErrorDomain" code:6 userInfo:0];

  [(GTTransport_capture *)self _scheduleInvalidation:v3];
}

- (void)_dispatchMessage:(id)a3
{
  if ((self->_interposerVersion & 1) == 0)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    replyHandlersMap = self->_replyHandlersMap;
    v6 = [(GTIntKeyedDictionary_capture *)replyHandlersMap countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(replyHandlersMap);
          }

          [*(*(&v18 + 1) + 8 * i) _dispatch:a3];
        }

        v7 = [(GTIntKeyedDictionary_capture *)replyHandlersMap countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    v10 = [a3 replySerial];
    if (v10 != -1)
    {
      v11 = v10;
      v12 = [(NSError *)self->_error objectForIntKey:v10];
      if (v12)
      {
        v13 = *(v12 + 10) + 1;
        *(v12 + 10) = v13;
        v14 = *(v12 + 1);
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = __32__GTTransport__dispatchMessage___block_invoke;
        v15[3] = &unk_2F1538;
        v15[4] = v12;
        v15[5] = a3;
        v15[6] = self;
        v16 = v11;
        v17 = v13;
        dispatch_async(v14, v15);
      }
    }
  }
}

- (void)_handleReplyTimeout:(unsigned int)a3 count:(unsigned int)a4
{
  v6 = a3;
  v7 = [(NSError *)self->_error objectForIntKey:a3];
  if (v7 && v7[10] <= a4)
  {
    v9 = v7;
    v8 = v7;
    [(NSError *)self->_error removeObjectForIntKey:v6];
    [v9 dispatchError:{+[GTError_capture errorWithDomain:code:userInfo:](GTError_capture, "errorWithDomain:code:userInfo:", @"DYErrorDomain", 5, 0)}];
  }
}

- (void)_invalidate
{
  [(GTIntKeyedDictionary_capture *)self->_replyHandlersMap makeObjectsPerformSelector:"cancel"];
  error = self->_error;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __26__GTTransport__invalidate__block_invoke;
  v4[3] = &unk_2F1428;
  v4[4] = self;
  [(NSError *)error enumerateKeysAndObjectsUsingBlock:v4];
  [(GTIntKeyedDictionary_capture *)self->_replyHandlersMap removeAllObjects];
  [(NSError *)self->_error removeAllObjects];
}

- (void)_cancelSource:(id)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __29__GTTransport__cancelSource___block_invoke;
  v4[3] = &unk_2F2550;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(queue, v4);
}

- (BOOL)_activateSource:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __31__GTTransport__activateSource___block_invoke;
  block[3] = &unk_2F1C58;
  block[4] = self;
  block[5] = a3;
  block[6] = &v7;
  dispatch_sync(queue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)newSourceWithQueue:(id)a3
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __34__GTTransport_newSourceWithQueue___block_invoke;
  block[3] = &unk_2F1C58;
  block[5] = a3;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (NSURL)url
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __18__GTTransport_url__block_invoke;
  v5[3] = &unk_2F25C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)debugDescription
{
  v3 = [(GTTransport_capture *)self description];
  v4 = [(GTTransport_capture *)self url];
  v5 = [(GTTransport_capture *)self connected];
  v6 = [(GTTransport_capture *)self invalid];
  v7 = [(GTTransport_capture *)self error];
  v8 = atomic_load(&self->_messageCounter.__a_.__a_value);
  v9 = atomic_load(&self->_invalid);
  return [NSString stringWithFormat:@"%@: url=%@, connected=%d, invalid=%d, error=%@, messageCounter=%u, messageSendQueueDepth=%u, sources=%@", v3, v4, v5, v6, v7, v8, v9, self->_replyHandlersMap];
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
  v6.super_class = GTTransport_capture;
  [(GTTransport_capture *)&v6 dealloc];
}

- (GTTransport_capture)init
{
  v8.receiver = self;
  v8.super_class = GTTransport_capture;
  v2 = [(GTTransport_capture *)&v8 init];
  if (v2)
  {
    *(v2 + 11) = [[NSString alloc] initWithFormat:@"<%@ %p>", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", object_getClassName(v2)), v2];
    v3 = [+[NSString stringWithFormat:](NSString UTF8String:@"gputools.%@.%p"];
    v4 = dispatch_queue_attr_make_with_overcommit();
    *(v2 + 2) = dispatch_queue_create(v3, v4);
    v5 = [+[NSString stringWithFormat:](NSString UTF8String:@"gputools.%@.%p.%@"];
    *(v2 + 3) = dispatch_queue_create_with_target_V2(v5, 0, *(v2 + 2));
    v6 = [+[NSString stringWithFormat:](NSString UTF8String:@"gputools.%@.%p.%@"];
    *(v2 + 4) = dispatch_queue_create_with_target_V2(v6, 0, *(v2 + 2));
    *(v2 + 8) = objc_opt_new();
    *(v2 + 9) = objc_opt_new();
    *(v2 + 12) = &_dispatch_async;
    *(v2 + 52) = 0;
  }

  return v2;
}

@end