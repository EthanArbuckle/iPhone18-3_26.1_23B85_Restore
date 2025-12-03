@interface IMEventNotificationQueue
- (BOOL)containsNotificationTarget:(id)target;
- (BOOL)isBusy;
- (BOOL)isPaused;
- (BOOL)isScheduled;
- (IMEventNotificationQueue)init;
- (IMEventNotificationQueueDelegate)delegate;
- (int64_t)count;
- (void)_didChangePausedState:(BOOL)state;
- (void)_dispatchProcessQueue;
- (void)_invokeEvent:(id)event;
- (void)_invokeNotifications;
- (void)_processQueue;
- (void)_scheduleIfNeeded:(BOOL)needed;
- (void)_setBusy:(BOOL)busy;
- (void)appendEventNotification:(id)notification;
- (void)appendEventTarget:(id)target eventNotificationBlock:(id)block;
- (void)appendEventTarget:(id)target sender:(id)sender eventNotificationBlock:(id)block;
- (void)cancelAllEventNotifications;
- (void)cancelEventNotificationsForNotificationTarget:(id)target;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)pushEventNotification:(id)notification;
- (void)pushEventTarget:(id)target eventNotificationBlock:(id)block;
- (void)pushEventTarget:(id)target sender:(id)sender eventNotificationBlock:(id)block;
- (void)setPaused:(BOOL)paused;
@end

@implementation IMEventNotificationQueue

- (IMEventNotificationQueue)init
{
  v6.receiver = self;
  v6.super_class = IMEventNotificationQueue;
  v2 = [(IMEventNotificationQueue *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69A60C8]);
    eventNotificationList = v2->_eventNotificationList;
    v2->_eventNotificationList = v3;
  }

  return v2;
}

- (void)_dispatchProcessQueue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8664484;
  block[3] = &unk_1E7828050;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_scheduleIfNeeded:(BOOL)needed
{
  if (!self->_scheduled || needed)
  {
    self->_scheduled = 1;
    if (!self->_paused)
    {
      MEMORY[0x1EEE66B58](self, sel__dispatchProcessQueue);
    }
  }
}

- (void)_invokeEvent:(id)event
{
  if (event)
  {
    [event invoke];
  }
}

- (BOOL)isBusy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  busy = selfCopy->_busy;
  objc_sync_exit(selfCopy);

  return busy;
}

- (void)_setBusy:(BOOL)busy
{
  if (self->_busy != busy)
  {
    self->_busy = busy;
    delegate = [(IMEventNotificationQueue *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(IMEventNotificationQueue *)self delegate];
      [delegate2 eventNotificationQueue:self didChangeBusyState:self->_busy];
    }

    MEMORY[0x1EEE66B58](self, sel__didChangeBusyState_);
  }
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v8 = 0;
    first = [(IMDoubleLinkedList *)self->_eventNotificationList first];
    do
    {
      if (!first)
      {
        break;
      }

      v6 = first;
      first = [v6 next];

      if ([v6 wasCancelled])
      {
        [(IMDoubleLinkedList *)self->_eventNotificationList removeLinkedListNode:v6];
        [v6 cache];
      }

      else
      {
        blockCopy[2](blockCopy, v6, &v8);
      }

      v7 = v8;
    }

    while (v7 != 1);
  }
}

- (void)_invokeNotifications
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1A86646DC;
  v2[3] = &unk_1E7828078;
  v2[4] = self;
  [(IMEventNotificationQueue *)self enumerateObjectsUsingBlock:v2];
}

- (void)_processQueue
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (!obj->_paused)
  {
    delegate = [(IMEventNotificationQueue *)obj delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      delegate2 = [(IMEventNotificationQueue *)obj delegate];
      [delegate2 eventNotificationQueueWillSendNotifications:obj];
    }

    [(IMEventNotificationQueue *)obj _willProcessQueue];
    [(IMEventNotificationQueue *)obj _invokeNotifications];
    [(IMEventNotificationQueue *)obj _didProcessQueue];
    delegate3 = [(IMEventNotificationQueue *)obj delegate];
    v7 = objc_opt_respondsToSelector();

    v2 = obj;
    if (v7)
    {
      delegate4 = [(IMEventNotificationQueue *)obj delegate];
      [delegate4 eventNotificationQueueDidSendNotifications:obj];

      v2 = obj;
    }
  }

  v2->_scheduled = 0;
  objc_sync_exit(v2);
}

- (void)pushEventNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(IMDoubleLinkedList *)selfCopy->_eventNotificationList pushLinkedListNode:notificationCopy];
  [(IMEventNotificationQueue *)selfCopy _didAddNotification:notificationCopy];
  objc_sync_exit(selfCopy);
}

- (void)appendEventNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(IMDoubleLinkedList *)selfCopy->_eventNotificationList appendLinkedListNode:notificationCopy];
  [(IMEventNotificationQueue *)selfCopy _didAddNotification:notificationCopy];
  objc_sync_exit(selfCopy);
}

- (void)cancelEventNotificationsForNotificationTarget:(id)target
{
  targetCopy = target;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = sub_1A86649E0;
  v10 = &unk_1E78280A0;
  v6 = targetCopy;
  v11 = v6;
  v12 = selfCopy;
  [(IMEventNotificationQueue *)selfCopy enumerateObjectsUsingBlock:&v7];
  [(IMEventNotificationQueue *)selfCopy _didCancelNotifications:v7];

  objc_sync_exit(selfCopy);
}

- (void)cancelAllEventNotifications
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1A8664B14;
  v3[3] = &unk_1E7828078;
  v3[4] = selfCopy;
  [(IMEventNotificationQueue *)selfCopy enumerateObjectsUsingBlock:v3];
  [(IMEventNotificationQueue *)selfCopy _didCancelNotifications];
  objc_sync_exit(selfCopy);
}

- (void)appendEventTarget:(id)target eventNotificationBlock:(id)block
{
  v5 = [IMEventNotification eventNotification:target eventNotificationBlock:block];
  [(IMEventNotificationQueue *)self appendEventNotification:v5];
}

- (void)pushEventTarget:(id)target eventNotificationBlock:(id)block
{
  v5 = [IMEventNotification eventNotification:target eventNotificationBlock:block];
  [(IMEventNotificationQueue *)self pushEventNotification:v5];
}

- (void)appendEventTarget:(id)target sender:(id)sender eventNotificationBlock:(id)block
{
  v6 = [IMEventNotification eventNotification:target sender:sender eventNotificationBlock:block];
  [(IMEventNotificationQueue *)self appendEventNotification:v6];
}

- (void)pushEventTarget:(id)target sender:(id)sender eventNotificationBlock:(id)block
{
  v6 = [IMEventNotification eventNotification:target sender:sender eventNotificationBlock:block];
  [(IMEventNotificationQueue *)self pushEventNotification:v6];
}

- (void)_didChangePausedState:(BOOL)state
{
  if (!state)
  {
    [(IMEventNotificationQueue *)self _scheduleIfNeeded:self->_scheduled];
  }
}

- (void)setPaused:(BOOL)paused
{
  pausedCopy = paused;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_paused != pausedCopy)
  {
    obj->_paused = pausedCopy;
    delegate = [(IMEventNotificationQueue *)obj delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(IMEventNotificationQueue *)obj delegate];
      [delegate2 eventNotificationQueue:obj didChangePausedState:obj->_paused];
    }

    [(IMEventNotificationQueue *)obj _didChangePausedState:obj->_paused];
  }

  objc_sync_exit(obj);
}

- (BOOL)isScheduled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  scheduled = selfCopy->_scheduled;
  objc_sync_exit(selfCopy);

  return scheduled;
}

- (BOOL)isPaused
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  paused = selfCopy->_paused;
  objc_sync_exit(selfCopy);

  return paused;
}

- (int64_t)count
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(IMDoubleLinkedList *)selfCopy->_eventNotificationList count];
  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)containsNotificationTarget:(id)target
{
  targetCopy = target;
  if (targetCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1A8664FA4;
    v8[3] = &unk_1E78280C8;
    v9 = targetCopy;
    v10 = &v11;
    [(IMEventNotificationQueue *)selfCopy enumerateObjectsUsingBlock:v8];
    v6 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
    objc_sync_exit(selfCopy);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (IMEventNotificationQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end