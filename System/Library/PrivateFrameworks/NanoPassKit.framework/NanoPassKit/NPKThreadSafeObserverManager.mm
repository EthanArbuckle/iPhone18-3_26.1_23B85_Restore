@interface NPKThreadSafeObserverManager
- (BOOL)_hasObservers;
- (NPKThreadSafeObserverManager)init;
- (void)enumerateObserversUsingBlock:(id)a3;
- (void)registerObserver:(id)a3;
- (void)registerObserver:(id)a3 withRelativePriority:(unint64_t)a4;
- (void)unregisterObserver:(id)a3;
@end

@implementation NPKThreadSafeObserverManager

- (NPKThreadSafeObserverManager)init
{
  v3.receiver = self;
  v3.super_class = NPKThreadSafeObserverManager;
  result = [(NPKObserverManager *)&v3 init];
  if (result)
  {
    result->_internalLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__NPKThreadSafeObserverManager_registerObserver___block_invoke;
  v6[3] = &unk_2799454E0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  os_unfair_lock_lock(&self->_internalLock);
  __49__NPKThreadSafeObserverManager_registerObserver___block_invoke(v6);
  os_unfair_lock_unlock(&self->_internalLock);
}

id __49__NPKThreadSafeObserverManager_registerObserver___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = NPKThreadSafeObserverManager;
  return objc_msgSendSuper2(&v3, sel_registerObserver_, v1);
}

- (void)registerObserver:(id)a3 withRelativePriority:(unint64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__NPKThreadSafeObserverManager_registerObserver_withRelativePriority___block_invoke;
  v8[3] = &unk_279945F18;
  v10 = self;
  v11 = a4;
  v9 = v6;
  v7 = v6;
  os_unfair_lock_lock(&self->_internalLock);
  __70__NPKThreadSafeObserverManager_registerObserver_withRelativePriority___block_invoke(v8);
  os_unfair_lock_unlock(&self->_internalLock);
}

id __70__NPKThreadSafeObserverManager_registerObserver_withRelativePriority___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v4.receiver = *(a1 + 40);
  v4.super_class = NPKThreadSafeObserverManager;
  return objc_msgSendSuper2(&v4, sel_registerObserver_withRelativePriority_, v1, v2);
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__NPKThreadSafeObserverManager_unregisterObserver___block_invoke;
  v6[3] = &unk_2799454E0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  os_unfair_lock_lock(&self->_internalLock);
  __51__NPKThreadSafeObserverManager_unregisterObserver___block_invoke(v6);
  os_unfair_lock_unlock(&self->_internalLock);
}

id __51__NPKThreadSafeObserverManager_unregisterObserver___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3.receiver = *(a1 + 40);
  v3.super_class = NPKThreadSafeObserverManager;
  return objc_msgSendSuper2(&v3, sel_unregisterObserver_, v1);
}

- (void)enumerateObserversUsingBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__NPKThreadSafeObserverManager_enumerateObserversUsingBlock___block_invoke;
  v6[3] = &unk_279946670;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  os_unfair_lock_lock(&self->_internalLock);
  __61__NPKThreadSafeObserverManager_enumerateObserversUsingBlock___block_invoke(v6);
  os_unfair_lock_unlock(&self->_internalLock);
}

id __61__NPKThreadSafeObserverManager_enumerateObserversUsingBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = NPKThreadSafeObserverManager;
  return objc_msgSendSuper2(&v3, sel_enumerateObserversUsingBlock_, v1);
}

- (BOOL)_hasObservers
{
  v2 = self;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v6 = __45__NPKThreadSafeObserverManager__hasObservers__block_invoke;
  v7 = &unk_279944FE8;
  v8 = self;
  v9 = &v10;
  v3 = v5;
  os_unfair_lock_lock(&v2->_internalLock);
  v6(v3);

  os_unfair_lock_unlock(&v2->_internalLock);
  LOBYTE(v2) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v2;
}

id __45__NPKThreadSafeObserverManager__hasObservers__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = NPKThreadSafeObserverManager;
  result = objc_msgSendSuper2(&v3, sel_hasObservers);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end