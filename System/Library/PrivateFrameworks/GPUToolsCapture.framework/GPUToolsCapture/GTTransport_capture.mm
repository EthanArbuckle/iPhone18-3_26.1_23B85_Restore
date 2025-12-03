@interface GTTransport_capture
- (BOOL)_activateSource:(id)source;
- (BOOL)relayMessage:(id)message error:(id *)error;
- (BOOL)send:(id)send inReplyTo:(id)to error:(id *)error replyQueue:(id)queue timeout:(unint64_t)timeout handler:(id)handler;
- (GTTransport_capture)init;
- (NSURL)url;
- (id)debugDescription;
- (id)newSourceWithQueue:(id)queue;
- (void)_cancelSource:(id)source;
- (void)_dispatchMessage:(id)message;
- (void)_handleReplyTimeout:(unsigned int)timeout count:(unsigned int)count;
- (void)_invalidate;
- (void)_scheduleInvalidation:(id)invalidation;
- (void)dealloc;
- (void)invalidate;
- (void)setSynchronous:(BOOL)synchronous;
@end

@implementation GTTransport_capture

- (BOOL)relayMessage:(id)message error:(id *)error
{
  if ([message transport] == self)
  {
    if (!error)
    {
      goto LABEL_16;
    }

    v11 = 40;
LABEL_15:
    v12 = [GTError_capture errorWithDomain:@"DYErrorDomain" code:v11 userInfo:0];
    LOBYTE(v7) = 0;
    *error = v12;
    return v7;
  }

  if (![(GTTransport_capture *)self connected])
  {
    if (!error)
    {
      goto LABEL_16;
    }

    v11 = 33;
    goto LABEL_15;
  }

  if (LOBYTE(self->_interposerVersion) == 1)
  {
    if (error)
    {
      v11 = 32;
      goto LABEL_15;
    }

LABEL_16:
    LOBYTE(v7) = 0;
    return v7;
  }

  v7 = [(GTTransport_capture *)self _packMessage:message error:error];
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
    v14[5] = message;
    (isa)(sendQueue, v14);
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)send:(id)send inReplyTo:(id)to error:(id *)error replyQueue:(id)queue timeout:(unint64_t)timeout handler:(id)handler
{
  if ([send hasBeenSent])
  {
    if (!error)
    {
      goto LABEL_31;
    }

    v25 = 34;
LABEL_30:
    v26 = [GTError_capture errorWithDomain:@"DYErrorDomain" code:v25 userInfo:0];
    LOBYTE(v15) = 0;
    *error = v26;
    return v15;
  }

  if (to && ([to hasBeenSent] & 1) == 0)
  {
    if (error)
    {
      v25 = 35;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (![(GTTransport_capture *)self connected])
  {
    if (!error)
    {
      goto LABEL_31;
    }

    v25 = 33;
    goto LABEL_30;
  }

  if (LOBYTE(self->_interposerVersion) == 1)
  {
    if (error)
    {
      v25 = 32;
      goto LABEL_30;
    }

LABEL_31:
    LOBYTE(v15) = 0;
    return v15;
  }

  v15 = [(GTTransport_capture *)self _packMessage:send error:error];
  if (v15)
  {
    _nextMessageSerial = [(GTTransport_capture *)self _nextMessageSerial];
    if (to)
    {
      serial = [to serial];
    }

    else
    {
      serial = 0xFFFFFFFFLL;
    }

    [send _setSerial:_nextMessageSerial replySerial:serial transport:self];
    if (handler)
    {
      v18 = [(GTContinuation_capture *)[GTTransportMessageReplyContinuation_capture alloc] initWithQueue:queue block:handler];
      handler = v18;
      atomic_fetch_add(&self->_invalid, 1u);
      isa = self[1].super.isa;
      v20 = BYTE1(self->_interposerVersion);
      if (v18)
      {
        if (timeout)
        {
          v18->timeout = timeout;
          v21 = dispatch_time(0, timeout);
          queue = self->_queue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = __63__GTTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke;
          block[3] = &unk_2F1510;
          block[4] = self;
          v34 = _nextMessageSerial;
          dispatch_after(v21, queue, block);
        }

        v23 = self->_queue;
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = __63__GTTransport_send_inReplyTo_error_replyQueue_timeout_handler___block_invoke_2;
        v31[3] = &unk_2F1588;
        v31[4] = self;
        v31[5] = handler;
        v32 = _nextMessageSerial;
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
    v28[5] = handler;
    v28[6] = send;
    v29 = _nextMessageSerial;
    (isa)(sendQueue, v28);

    LOBYTE(v15) = 1;
  }

  return v15;
}

- (void)setSynchronous:(BOOL)synchronous
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __30__GTTransport_setSynchronous___block_invoke;
  v4[3] = &unk_2F1560;
  synchronousCopy = synchronous;
  v4[4] = self;
  dispatch_async(queue, v4);
}

- (void)_scheduleInvalidation:(id)invalidation
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
    v4[5] = invalidation;
    dispatch_barrier_async(rootQueue, v4);
  }
}

- (void)invalidate
{
  v3 = [GTError_capture errorWithDomain:@"DYErrorDomain" code:6 userInfo:0];

  [(GTTransport_capture *)self _scheduleInvalidation:v3];
}

- (void)_dispatchMessage:(id)message
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

          [*(*(&v18 + 1) + 8 * i) _dispatch:message];
        }

        v7 = [(GTIntKeyedDictionary_capture *)replyHandlersMap countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v7);
    }

    replySerial = [message replySerial];
    if (replySerial != -1)
    {
      v11 = replySerial;
      v12 = [(NSError *)self->_error objectForIntKey:replySerial];
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
        v15[5] = message;
        v15[6] = self;
        v16 = v11;
        v17 = v13;
        dispatch_async(v14, v15);
      }
    }
  }
}

- (void)_handleReplyTimeout:(unsigned int)timeout count:(unsigned int)count
{
  timeoutCopy = timeout;
  v7 = [(NSError *)self->_error objectForIntKey:timeout];
  if (v7 && v7[10] <= count)
  {
    v9 = v7;
    v8 = v7;
    [(NSError *)self->_error removeObjectForIntKey:timeoutCopy];
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

- (void)_cancelSource:(id)source
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __29__GTTransport__cancelSource___block_invoke;
  v4[3] = &unk_2F2550;
  v4[4] = self;
  v4[5] = source;
  dispatch_sync(queue, v4);
}

- (BOOL)_activateSource:(id)source
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
  block[5] = source;
  block[6] = &v7;
  dispatch_sync(queue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)newSourceWithQueue:(id)queue
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
  block[5] = queue;
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
  connected = [(GTTransport_capture *)self connected];
  invalid = [(GTTransport_capture *)self invalid];
  error = [(GTTransport_capture *)self error];
  v8 = atomic_load(&self->_messageCounter.__a_.__a_value);
  v9 = atomic_load(&self->_invalid);
  return [NSString stringWithFormat:@"%@: url=%@, connected=%d, invalid=%d, error=%@, messageCounter=%u, messageSendQueueDepth=%u, sources=%@", v3, v4, connected, invalid, error, v8, v9, self->_replyHandlersMap];
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