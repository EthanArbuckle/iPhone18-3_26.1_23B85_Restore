@interface SGCuratedChangeNotificationsAddressBookListener
- (void)startListening;
- (void)stopListening;
@end

@implementation SGCuratedChangeNotificationsAddressBookListener

- (void)stopListening
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_notificationCenterToken];
}

- (void)startListening
{
  objc_initWeak(&location, self);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  uTF8String = [v4 UTF8String];
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v7 = dispatch_queue_create(uTF8String, v6);
  notificationQueue = self->_notificationQueue;
  self->_notificationQueue = v7;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = *MEMORY[0x277CBD140];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__SGCuratedChangeNotificationsAddressBookListener_startListening__block_invoke;
  v13[3] = &unk_27894EB18;
  objc_copyWeak(&v14, &location);
  v11 = [defaultCenter addObserverForName:v10 object:0 queue:0 usingBlock:v13];
  notificationCenterToken = self->_notificationCenterToken;
  self->_notificationCenterToken = v11;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __65__SGCuratedChangeNotificationsAddressBookListener_startListening__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__SGCuratedChangeNotificationsAddressBookListener_startListening__block_invoke_2;
    block[3] = &unk_278954A30;
    block[4] = v2;
    dispatch_async_and_wait(v3, block);
  }
}

@end