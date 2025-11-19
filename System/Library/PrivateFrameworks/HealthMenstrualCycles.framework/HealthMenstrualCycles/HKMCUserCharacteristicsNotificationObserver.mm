@interface HKMCUserCharacteristicsNotificationObserver
- (HKMCUserCharacteristicsNotificationObserver)initWithQueue:(id)a3 completion:(id)a4;
- (void)dealloc;
@end

@implementation HKMCUserCharacteristicsNotificationObserver

- (HKMCUserCharacteristicsNotificationObserver)initWithQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HKMCUserCharacteristicsNotificationObserver;
  v8 = [(HKMCUserCharacteristicsNotificationObserver *)&v13 init];
  if (v8)
  {
    v9 = *MEMORY[0x277CCE580];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __72__HKMCUserCharacteristicsNotificationObserver_initWithQueue_completion___block_invoke;
    handler[3] = &unk_2796D4910;
    v12 = v7;
    notify_register_dispatch(v9, &v8->_characteristicUpdateToken, v6, handler);
  }

  return v8;
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_characteristicUpdateToken))
  {
    notify_cancel(self->_characteristicUpdateToken);
  }

  v3.receiver = self;
  v3.super_class = HKMCUserCharacteristicsNotificationObserver;
  [(HKMCUserCharacteristicsNotificationObserver *)&v3 dealloc];
}

@end