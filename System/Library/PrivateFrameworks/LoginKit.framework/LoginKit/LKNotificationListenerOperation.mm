@interface LKNotificationListenerOperation
- (LKNotificationListenerOperation)initWithNotificationType:(unint64_t)type timeOutPeriod:(double)period completionBlock:(id)block;
- (id)_errorForNotificationType:(unint64_t)type;
- (id)_notificationForNotificationType:(unint64_t)type;
- (void)_endOperation;
- (void)cancel;
- (void)setOperationCancelled:(BOOL)cancelled;
- (void)setOperationExecuting:(BOOL)executing;
- (void)setOperationFinished:(BOOL)finished;
- (void)setOperationReady:(BOOL)ready;
- (void)start;
@end

@implementation LKNotificationListenerOperation

- (LKNotificationListenerOperation)initWithNotificationType:(unint64_t)type timeOutPeriod:(double)period completionBlock:(id)block
{
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = LKNotificationListenerOperation;
  v9 = [(LKNotificationListenerOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_notificationType = type;
    v9->_timeOutPeriod = period;
    v11 = MEMORY[0x259C5D090](blockCopy);
    notificationListenerCompletionBlock = v10->_notificationListenerCompletionBlock;
    v10->_notificationListenerCompletionBlock = v11;

    v10->_notifyToken = -1;
  }

  return v10;
}

- (void)setOperationReady:(BOOL)ready
{
  if (self->_operationReady != ready)
  {
    [(LKNotificationListenerOperation *)self willChangeValueForKey:@"ready"];
    self->_operationReady = ready;

    [(LKNotificationListenerOperation *)self didChangeValueForKey:@"ready"];
  }
}

- (void)setOperationExecuting:(BOOL)executing
{
  if (self->_operationExecuting != executing)
  {
    [(LKNotificationListenerOperation *)self willChangeValueForKey:@"executing"];
    self->_operationExecuting = executing;

    [(LKNotificationListenerOperation *)self didChangeValueForKey:@"executing"];
  }
}

- (void)setOperationFinished:(BOOL)finished
{
  if (self->_operationFinished != finished)
  {
    [(LKNotificationListenerOperation *)self willChangeValueForKey:@"finished"];
    self->_operationFinished = finished;

    [(LKNotificationListenerOperation *)self didChangeValueForKey:@"finished"];
  }
}

- (void)setOperationCancelled:(BOOL)cancelled
{
  if (self->_operationCancelled != cancelled)
  {
    [(LKNotificationListenerOperation *)self willChangeValueForKey:@"cancelled"];
    self->_operationCancelled = cancelled;

    [(LKNotificationListenerOperation *)self didChangeValueForKey:@"cancelled"];
  }
}

- (void)start
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_25618F000, v3, OS_LOG_TYPE_DEFAULT, "%@ starting...", buf, 0xCu);
  }

  [(LKNotificationListenerOperation *)self setOperationExecuting:1];
  if (![(LKNotificationListenerOperation *)self isCancelled])
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __40__LKNotificationListenerOperation_start__block_invoke;
    v25[3] = &unk_2798263D0;
    v25[4] = self;
    v4 = MEMORY[0x259C5D090](v25);
    [(LKNotificationListenerOperation *)self timeOutPeriod];
    v6 = dispatch_time(0, (v5 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__LKNotificationListenerOperation_start__block_invoke_2;
    block[3] = &unk_279826428;
    block[4] = self;
    v7 = v4;
    v24 = v7;
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
    v8 = [(LKNotificationListenerOperation *)self _notificationForNotificationType:[(LKNotificationListenerOperation *)self notificationType]];
    uTF8String = [v8 UTF8String];
    v10 = dispatch_get_global_queue(0, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __40__LKNotificationListenerOperation_start__block_invoke_12;
    handler[3] = &unk_279826450;
    v11 = v8;
    v21 = v11;
    v12 = v7;
    v22 = v12;
    v13 = notify_register_dispatch(uTF8String, &self->_notifyToken, v10, handler);

    listenerStartedBlock = [(LKNotificationListenerOperation *)self listenerStartedBlock];

    if (listenerStartedBlock)
    {
      listenerStartedBlock2 = [(LKNotificationListenerOperation *)self listenerStartedBlock];
      listenerStartedBlock2[2]();

      [(LKNotificationListenerOperation *)self setListenerStartedBlock:0];
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v16 = LKLogDefault;
      if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_ERROR))
      {
        [(LKNotificationListenerOperation *)v16 start];
        if (!v13)
        {
          goto LABEL_13;
        }
      }

      else if (!v13)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    v17 = LKLogDefault;
    if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = v11;
      v28 = 1026;
      v29 = v13;
      _os_log_impl(&dword_25618F000, v17, OS_LOG_TYPE_DEFAULT, "Could not register for %@ notification error %{public}d", buf, 0x12u);
    }

    v18 = [LKError errorWithCode:27];
    (*(v12 + 2))(v12, v18);

    goto LABEL_13;
  }

  [(LKNotificationListenerOperation *)self _endOperation];
LABEL_14:
  v19 = *MEMORY[0x277D85DE8];
}

void __40__LKNotificationListenerOperation_start__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) isCancelled];
  v4 = *(a1 + 32);
  if ((v3 & 1) == 0)
  {
    v5 = [v4 notificationListenerCompletionBlock];

    if (v5)
    {
      v6 = [*(a1 + 32) notificationListenerCompletionBlock];
      (v6)[2](v6, v7);
    }

    v4 = *(a1 + 32);
  }

  [v4 _endOperation];
}

void __40__LKNotificationListenerOperation_start__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    [v3 timeOutPeriod];
    v9 = 134217984;
    v10 = v5;
    _os_log_impl(&dword_25618F000, v4, OS_LOG_TYPE_DEFAULT, "Notification hasn't posted in the given period (%f seconds). Timing out.", &v9, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) _errorForNotificationType:{objc_msgSend(*(a1 + 32), "notificationType")}];
  (*(v6 + 16))(v6, v7);

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __40__LKNotificationListenerOperation_start__block_invoke_12(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = LKLogDefault;
  if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25618F000, v2, OS_LOG_TYPE_DEFAULT, "Notified with %@", &v6, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)cancel
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(LKNotificationListenerOperation *)self isExecuting]&& [(LKNotificationListenerOperation *)self notifyToken]!= -1)
  {
    v3 = LKLogDefault;
    if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(LKNotificationListenerOperation *)self _notificationForNotificationType:[(LKNotificationListenerOperation *)self notificationType]];
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&dword_25618F000, v4, OS_LOG_TYPE_DEFAULT, "Cancel listening the notification: %@", buf, 0xCu);
    }

    notify_cancel([(LKNotificationListenerOperation *)self notifyToken]);
  }

  [(LKNotificationListenerOperation *)self _endOperation];
  v7.receiver = self;
  v7.super_class = LKNotificationListenerOperation;
  [(LKNotificationListenerOperation *)&v7 cancel];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_endOperation
{
  [(LKNotificationListenerOperation *)self setOperationFinished:1];
  [(LKNotificationListenerOperation *)self setOperationExecuting:0];

  [(LKNotificationListenerOperation *)self setListenerStartedBlock:0];
}

- (id)_errorForNotificationType:(unint64_t)type
{
  if (type)
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    v5 = 25;
  }

  else
  {
    v5 = 26;
  }

  self = [LKError errorWithCode:v5, v3];
LABEL_6:

  return self;
}

- (id)_notificationForNotificationType:(unint64_t)type
{
  if (type)
  {
    if (type != 1)
    {
      goto LABEL_6;
    }

    v4 = LKLoggedInNotificationName;
  }

  else
  {
    v4 = LKReadyToLoginNotificationName;
  }

  self = *v4;
LABEL_6:

  return self;
}

@end