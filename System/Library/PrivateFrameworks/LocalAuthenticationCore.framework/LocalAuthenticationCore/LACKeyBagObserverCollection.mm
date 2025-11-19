@interface LACKeyBagObserverCollection
- (LACKeyBagObserverCollection)initWithState:(int64_t)a3;
- (void)publishKeybagStateUpdate:(id)a3 state:(int64_t)a4;
@end

@implementation LACKeyBagObserverCollection

- (LACKeyBagObserverCollection)initWithState:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = LACKeyBagObserverCollection;
  v4 = [(LACKeyBagObserverCollection *)&v8 init];
  if (v4)
  {
    v5 = +[LACThreadSafeCollection weakObjectsCollection];
    observers = v4->_observers;
    v4->_observers = v5;

    v4->_lastPublishedState = a3;
  }

  return v4;
}

- (void)publishKeybagStateUpdate:(id)a3 state:(int64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (self->_lastPublishedState != a4)
  {
    v7 = LACLogKeybag();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromLACKeyBagState(self->_lastPublishedState);
      v9 = NSStringFromLACKeyBagState(a4);
      *buf = 138412546;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_1B0233000, v7, OS_LOG_TYPE_DEFAULT, "Keybag state changed from %@ to %@", buf, 0x16u);
    }

    self->_lastPublishedState = a4;
    observers = self->_observers;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__LACKeyBagObserverCollection_publishKeybagStateUpdate_state___block_invoke;
    v12[3] = &unk_1E7A96038;
    v13 = v6;
    [(LACThreadSafeCollection *)observers forEach:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __62__LACKeyBagObserverCollection_publishKeybagStateUpdate_state___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 conformsToProtocol:&unk_1F269AAE8] & 1) == 0)
  {
    __62__LACKeyBagObserverCollection_publishKeybagStateUpdate_state___block_invoke_cold_1();
  }

  [v3 keybagStateDidChange:*(a1 + 32)];
}

@end