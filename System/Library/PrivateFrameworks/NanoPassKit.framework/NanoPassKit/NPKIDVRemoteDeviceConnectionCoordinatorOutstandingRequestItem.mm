@interface NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem
- (NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem)initWithtimeoutQueue:(id)queue;
- (void)dealloc;
- (void)invalidateCleanupTimer;
- (void)setOrResetCleanupTimer;
@end

@implementation NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem

- (NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem)initWithtimeoutQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem;
  v6 = [(NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_timeoutQueue, queue);
  }

  return v7;
}

- (void)dealloc
{
  [(NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem *)self invalidateCleanupTimer];
  v3.receiver = self;
  v3.super_class = NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem;
  [(NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem *)&v3 dealloc];
}

- (void)setOrResetCleanupTimer
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      messageIdentifier = self->_messageIdentifier;
      *buf = 138412290;
      v15 = messageIdentifier;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKIDVRemoteDeviceService: Setting or resetting cleanup timer for message with identifier %@", buf, 0xCu);
    }
  }

  [(NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem *)self invalidateCleanupTimer];
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_timeoutQueue);
  v8 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  objc_initWeak(buf, self);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __87__NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem_setOrResetCleanupTimer__block_invoke;
  handler[3] = &unk_279945030;
  objc_copyWeak(&v13, buf);
  dispatch_source_set_event_handler(v7, handler);
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v7;
  v10 = v7;

  dispatch_resume(v10);
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  v11 = *MEMORY[0x277D85DE8];
}

void __87__NPKIDVRemoteDeviceConnectionCoordinatorOutstandingRequestItem_setOrResetCleanupTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 6);
    if (v3)
    {
      v4 = v2;
      (*(v3 + 16))();
      v2 = v4;
    }
  }
}

- (void)invalidateCleanupTimer
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
    v4 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }
}

@end