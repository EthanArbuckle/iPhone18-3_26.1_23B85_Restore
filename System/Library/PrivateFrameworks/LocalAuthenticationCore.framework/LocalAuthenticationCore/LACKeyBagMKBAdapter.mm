@interface LACKeyBagMKBAdapter
- (LACKeyBagMKBAdapter)initWithKeyBagStateProvider:(id)provider notificationCenter:(id)center;
- (void)_updateKeybagState;
- (void)dealloc;
- (void)notificationCenter:(id)center didReceiveNotification:(__CFString *)notification;
@end

@implementation LACKeyBagMKBAdapter

- (void)_updateKeybagState
{
  state = [(LACKeyBagStateProviderMKBAdapter *)self->_keyBagStateProvider state];
  self->_state = state;
  observers = self->_observers;

  [(LACKeyBagObserverCollection *)observers publishKeybagStateUpdate:self state:state];
}

- (LACKeyBagMKBAdapter)initWithKeyBagStateProvider:(id)provider notificationCenter:(id)center
{
  providerCopy = provider;
  centerCopy = center;
  v14.receiver = self;
  v14.super_class = LACKeyBagMKBAdapter;
  v9 = [(LACKeyBagMKBAdapter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyBagStateProvider, provider);
    v10->_state = [(LACKeyBagStateProviderMKBAdapter *)v10->_keyBagStateProvider state];
    v11 = [[LACKeyBagObserverCollection alloc] initWithState:v10->_state];
    observers = v10->_observers;
    v10->_observers = v11;

    objc_storeStrong(&v10->_notificationCenter, center);
    [(LACKeyBagMKBAdapter *)v10 _addKeybagStatusObserver];
  }

  return v10;
}

- (void)dealloc
{
  [(LACKeyBagMKBAdapter *)self _removeKeybagStatusObserver];
  v3.receiver = self;
  v3.super_class = LACKeyBagMKBAdapter;
  [(LACKeyBagMKBAdapter *)&v3 dealloc];
}

- (void)notificationCenter:(id)center didReceiveNotification:(__CFString *)notification
{
  if (LACDarwinNotificationsEqual(notification, @"com.apple.mobile.keybagd.lock_status"))
  {

    [(LACKeyBagMKBAdapter *)self _updateKeybagState];
  }
}

@end