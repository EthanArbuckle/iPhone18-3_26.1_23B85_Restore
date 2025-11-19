@interface LACKeyBagMKBAdapter
- (LACKeyBagMKBAdapter)initWithKeyBagStateProvider:(id)a3 notificationCenter:(id)a4;
- (void)_updateKeybagState;
- (void)dealloc;
- (void)notificationCenter:(id)a3 didReceiveNotification:(__CFString *)a4;
@end

@implementation LACKeyBagMKBAdapter

- (void)_updateKeybagState
{
  v3 = [(LACKeyBagStateProviderMKBAdapter *)self->_keyBagStateProvider state];
  self->_state = v3;
  observers = self->_observers;

  [(LACKeyBagObserverCollection *)observers publishKeybagStateUpdate:self state:v3];
}

- (LACKeyBagMKBAdapter)initWithKeyBagStateProvider:(id)a3 notificationCenter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = LACKeyBagMKBAdapter;
  v9 = [(LACKeyBagMKBAdapter *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyBagStateProvider, a3);
    v10->_state = [(LACKeyBagStateProviderMKBAdapter *)v10->_keyBagStateProvider state];
    v11 = [[LACKeyBagObserverCollection alloc] initWithState:v10->_state];
    observers = v10->_observers;
    v10->_observers = v11;

    objc_storeStrong(&v10->_notificationCenter, a4);
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

- (void)notificationCenter:(id)a3 didReceiveNotification:(__CFString *)a4
{
  if (LACDarwinNotificationsEqual(a4, @"com.apple.mobile.keybagd.lock_status"))
  {

    [(LACKeyBagMKBAdapter *)self _updateKeybagState];
  }
}

@end