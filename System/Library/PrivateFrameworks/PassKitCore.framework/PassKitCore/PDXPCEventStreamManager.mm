@interface PDXPCEventStreamManager
- (PDXPCEventStreamManager)initWithEventStream:(id)stream startedPaused:(BOOL)paused;
- (void)_deliverEvent:(id)event toObservers:(id)observers withTransaction:(id)transaction;
- (void)_deliverEvents:(id)events eventsWerePreviouslyDeferred:(BOOL)deferred;
- (void)beginEventDelivery;
- (void)registerObserver:(id)observer withReplyQueue:(id)queue;
- (void)unregisterObserver:(id)observer;
@end

@implementation PDXPCEventStreamManager

- (PDXPCEventStreamManager)initWithEventStream:(id)stream startedPaused:(BOOL)paused
{
  pausedCopy = paused;
  streamCopy = stream;
  v26.receiver = self;
  v26.super_class = PDXPCEventStreamManager;
  v7 = [(PDXPCEventStreamManager *)&v26 init];
  if (v7)
  {
    v8 = [streamCopy copy];
    eventStream = v7->_eventStream;
    v7->_eventStream = v8;

    v7->_observersLock._os_unfair_lock_opaque = 0;
    v10 = objc_alloc_init(NSMutableArray);
    observers = v7->_observers;
    v7->_observers = v10;

    if (pausedCopy)
    {
      v12 = objc_alloc_init(NSMutableArray);
      pendingEvents = v7->_pendingEvents;
      v7->_pendingEvents = v12;
    }

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.passd.xpcEventStreamManager.event", v14);
    eventQueue = v7->_eventQueue;
    v7->_eventQueue = v15;

    v17 = dispatch_queue_create("com.apple.passd.xpcEventStreamManager.reply", v14);
    replyQueue = v7->_replyQueue;
    v7->_replyQueue = v17;

    v19 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v7->_eventStream;
      *buf = 138543362;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "PDXPCEventStreamManager: Registering for stream %{public}@.", buf, 0xCu);
    }

    uTF8String = [(NSString *)v7->_eventStream UTF8String];
    v22 = v7->_eventQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100050C78;
    handler[3] = &unk_10083F148;
    v25 = v7;
    xpc_set_event_stream_handler(uTF8String, v22, handler);
  }

  return v7;
}

- (void)beginEventDelivery
{
  os_unfair_lock_lock(&self->_observersLock);
  v3 = self->_pendingEvents;
  v4 = self->_pendingEventsTransaction;
  pendingEvents = self->_pendingEvents;
  self->_pendingEvents = 0;

  pendingEventsTransaction = self->_pendingEventsTransaction;
  self->_pendingEventsTransaction = 0;

  os_unfair_lock_unlock(&self->_observersLock);
  if ([(NSMutableArray *)v3 count])
  {
    eventQueue = self->_eventQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100050E3C;
    block[3] = &unk_10083C4C0;
    v9 = v4;
    selfCopy = self;
    v11 = v3;
    dispatch_async(eventQueue, block);
  }
}

- (void)registerObserver:(id)observer withReplyQueue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  if (observerCopy)
  {
    v8 = objc_alloc_init(NSMutableArray);
    os_unfair_lock_lock(&self->_observersLock);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = self->_observers;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          observer = [v14 observer];
          if (observer)
          {
            [v8 addObject:observer];
            if (observer == observerCopy)
            {
              [v14 setReplyQueue:queueCopy];

              goto LABEL_13;
            }
          }
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v9 = objc_alloc_init(PDXPCEventStreamObserverEntry);
    [(NSMutableArray *)v9 setObserver:observerCopy];
    [(NSMutableArray *)v9 setReplyQueue:queueCopy];
    [(NSMutableArray *)self->_observers addObject:v9];
LABEL_13:

    os_unfair_lock_unlock(&self->_observersLock);
  }
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  v4 = objc_alloc_init(NSMutableArray);
  os_unfair_lock_lock(&self->_observersLock);
  v5 = [(NSMutableArray *)self->_observers count];
  v6 = objc_alloc_init(NSMutableIndexSet);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [(NSMutableArray *)self->_observers objectAtIndexedSubscript:i];
      observer = [v8 observer];

      if (!observer || ([v4 addObject:observer], observerCopy) && observer == observerCopy)
      {
        [v6 addIndex:i];
      }
    }
  }

  [(NSMutableArray *)self->_observers removeObjectsAtIndexes:v6];
  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)_deliverEvents:(id)events eventsWerePreviouslyDeferred:(BOOL)deferred
{
  deferredCopy = deferred;
  eventsCopy = events;
  os_unfair_lock_lock(&self->_observersLock);
  pendingEvents = self->_pendingEvents;
  if (!pendingEvents)
  {
    v19 = [(NSMutableArray *)self->_observers copy];
    os_unfair_lock_unlock(&self->_observersLock);
    if (!v19)
    {
      goto LABEL_32;
    }

    v10 = PDOSTransactionCreate("PDXPCEventStreamManager");
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v33 = eventsCopy;
    obj = eventsCopy;
    v20 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (!v20)
    {
      goto LABEL_28;
    }

    v21 = v20;
    v22 = *v40;
LABEL_17:
    v23 = 0;
    while (1)
    {
      if (*v40 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(*(&v39 + 1) + 8 * v23);
      v25 = PKLogFacilityTypeGetObject();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
      if (deferredCopy)
      {
        if (v26)
        {
          eventStream = self->_eventStream;
          string = xpc_dictionary_get_string(v24, _xpc_event_key_name);
          *buf = 138543618;
          v45 = eventStream;
          v46 = 2080;
          v47 = string;
          v29 = v25;
          v30 = "PDXPCEventStreamManager (%{public}@): (deferred delivery) XPC wake for %s.";
LABEL_25:
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 0x16u);
        }
      }

      else if (v26)
      {
        v31 = self->_eventStream;
        v32 = xpc_dictionary_get_string(v24, _xpc_event_key_name);
        *buf = 138543618;
        v45 = v31;
        v46 = 2080;
        v47 = v32;
        v29 = v25;
        v30 = "PDXPCEventStreamManager (%{public}@): XPC wake for %s.";
        goto LABEL_25;
      }

      [(PDXPCEventStreamManager *)self _deliverEvent:v24 toObservers:v19 withTransaction:v10];
      if (v21 == ++v23)
      {
        v21 = [obj countByEnumeratingWithState:&v39 objects:v48 count:16];
        if (!v21)
        {
LABEL_28:

          goto LABEL_29;
        }

        goto LABEL_17;
      }
    }
  }

  [(NSMutableArray *)pendingEvents addObjectsFromArray:eventsCopy];
  if (!self->_pendingEventsTransaction)
  {
    v8 = PDOSTransactionCreate("PDXPCEventStreamManager.deferred");
    pendingEventsTransaction = self->_pendingEventsTransaction;
    self->_pendingEventsTransaction = v8;
  }

  os_unfair_lock_unlock(&self->_observersLock);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = eventsCopy;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v33 = eventsCopy;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        v16 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = self->_eventStream;
          v18 = xpc_dictionary_get_string(v15, _xpc_event_key_name);
          *buf = 138543618;
          v45 = v17;
          v46 = 2080;
          v47 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "PDXPCEventStreamManager (%{public}@): (deferred) XPC wake for %s.", buf, 0x16u);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v12);
    v19 = 0;
LABEL_29:
    eventsCopy = v33;
  }

  else
  {
    v19 = 0;
  }

LABEL_32:
}

- (void)_deliverEvent:(id)event toObservers:(id)observers withTransaction:(id)transaction
{
  eventCopy = event;
  observersCopy = observers;
  transactionCopy = transaction;
  if ([observersCopy count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = observersCopy;
    v10 = observersCopy;
    v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v28;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v27 + 1) + 8 * i);
          observer = [v15 observer];
          if (observer)
          {
            replyQueue = [v15 replyQueue];
            replyQueue = replyQueue;
            if (!replyQueue)
            {
              replyQueue = self->_replyQueue;
            }

            v19 = replyQueue;

            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000516C0;
            block[3] = &unk_10083E088;
            v23 = transactionCopy;
            v24 = observer;
            v25 = eventCopy;
            selfCopy = self;
            dispatch_async(v19, block);
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v12);
    }

    observersCopy = v20;
  }
}

@end