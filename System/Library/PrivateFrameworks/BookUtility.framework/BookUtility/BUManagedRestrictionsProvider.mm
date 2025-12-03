@interface BUManagedRestrictionsProvider
- (BOOL)isAccountModificationAllowed;
- (BOOL)isBookStoreAllowed;
- (BOOL)isExplicitContentAllowed;
- (BUManagedRestrictionsProvider)init;
- (id)_currentObserversCopy;
- (void)_uq_notifyObserversForAccountModificationRestrictionsChange;
- (void)_uq_notifyObserversForBookStoreRestrictionsChange;
- (void)_uq_notifyObserversForExplicitContentRestrictionsChange;
- (void)_uq_updateRestrictionsIfNeeded;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)removeObserver:(id)observer;
@end

@implementation BUManagedRestrictionsProvider

- (BUManagedRestrictionsProvider)init
{
  v16.receiver = self;
  v16.super_class = BUManagedRestrictionsProvider;
  v2 = [(BUManagedRestrictionsProvider *)&v16 init];
  v3 = v2;
  if (v2)
  {
    v2->_observersLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("BUManagedRestrictionsProvider.accessQueue", v5);
    accessQueue = v3->_accessQueue;
    v3->_accessQueue = v6;

    v10 = objc_msgSend_weakObjectsHashTable(MEMORY[0x277CCAA50], v8, v9);
    observers = v3->_observers;
    v3->_observers = v10;

    v12 = v3->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_241DA7B48;
    block[3] = &unk_278D1D148;
    v15 = v3;
    dispatch_async(v12, block);
  }

  return v3;
}

- (BOOL)isAccountModificationAllowed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_241DA9760;
  v5[3] = &unk_278D1CE00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isExplicitContentAllowed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_241DA9820;
  v5[3] = &unk_278D1CE00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isBookStoreAllowed
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_241DA98E0;
  v5[3] = &unk_278D1CE00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)dealloc
{
  v4 = objc_msgSend_sharedConnection(MEMORY[0x277D262A0], a2, v2);
  objc_msgSend_unregisterObserver_(v4, v5, self);

  v6.receiver = self;
  v6.super_class = BUManagedRestrictionsProvider;
  [(BUManagedRestrictionsProvider *)&v6 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241DC6C64;
  v6[3] = &unk_278D1D008;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  os_unfair_lock_lock(&self->_observersLock);
  (sub_241DC6C64)(v6);
  os_unfair_lock_unlock(&self->_observersLock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241DC6D1C;
  v6[3] = &unk_278D1D008;
  v6[4] = self;
  v7 = observerCopy;
  v5 = observerCopy;
  os_unfair_lock_lock(&self->_observersLock);
  (sub_241DC6D1C)(v6);
  os_unfair_lock_unlock(&self->_observersLock);
}

- (id)_currentObserversCopy
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_241DC6E54;
  v15 = sub_241DC6E64;
  v16 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v7 = sub_241DC6E6C;
  v8 = &unk_278D1CE00;
  selfCopy = self;
  v10 = &v11;
  v3 = v6;
  os_unfair_lock_lock(&self->_observersLock);
  (v7)(v3);
  os_unfair_lock_unlock(&self->_observersLock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

- (void)_uq_notifyObserversForBookStoreRestrictionsChange
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_accessQueue);
  isBookStoreAllowed = self->_isBookStoreAllowed;
  v6 = objc_msgSend__currentObserversCopy(self, v4, v5);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v17, v21, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = MEMORY[0x277D85CD0];
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = sub_241DC7064;
          v15[3] = &unk_278D1D280;
          v15[4] = v13;
          v16 = isBookStoreAllowed;
          dispatch_async(v11, v15);
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v14, &v17, v21, 16);
    }

    while (v9);
  }
}

- (void)_uq_notifyObserversForExplicitContentRestrictionsChange
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_accessQueue);
  isExplicitContentAllowed = self->_isExplicitContentAllowed;
  v6 = objc_msgSend__currentObserversCopy(self, v4, v5);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v17, v21, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = MEMORY[0x277D85CD0];
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = sub_241DC7204;
          v15[3] = &unk_278D1D280;
          v15[4] = v13;
          v16 = isExplicitContentAllowed;
          dispatch_async(v11, v15);
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v14, &v17, v21, 16);
    }

    while (v9);
  }
}

- (void)_uq_notifyObserversForAccountModificationRestrictionsChange
{
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_accessQueue);
  isAccountModificationAllowed = self->_isAccountModificationAllowed;
  v6 = objc_msgSend__currentObserversCopy(self, v4, v5);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v17, v21, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    v11 = MEMORY[0x277D85CD0];
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = sub_241DC73A4;
          v15[3] = &unk_278D1D280;
          v15[4] = v13;
          v16 = isAccountModificationAllowed;
          dispatch_async(v11, v15);
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v14, &v17, v21, 16);
    }

    while (v9);
  }
}

- (void)_uq_updateRestrictionsIfNeeded
{
  dispatch_assert_queue_V2(self->_accessQueue);
  v5 = objc_msgSend_sharedConnection(MEMORY[0x277D262A0], v3, v4);
  v7 = objc_msgSend_effectiveBoolValueForSetting_(v5, v6, *MEMORY[0x277D25DA8]) != 2;

  v10 = objc_msgSend_sharedConnection(MEMORY[0x277D262A0], v8, v9);
  v12 = objc_msgSend_effectiveBoolValueForSetting_(v10, v11, *MEMORY[0x277D25DB0]) != 2;

  v15 = objc_msgSend_sharedConnection(MEMORY[0x277D262A0], v13, v14);
  v17 = objc_msgSend_effectiveBoolValueForSetting_(v15, v16, *MEMORY[0x277D25CD0]) != 2;

  if (self->_isBookStoreAllowed != v7)
  {
    self->_isBookStoreAllowed = v7;
    objc_msgSend__uq_notifyObserversForBookStoreRestrictionsChange(self, v18, v19);
  }

  if (self->_isExplicitContentAllowed != v12)
  {
    self->_isExplicitContentAllowed = v12;
    objc_msgSend__uq_notifyObserversForExplicitContentRestrictionsChange(self, v18, v19);
  }

  if (self->_isAccountModificationAllowed != v17)
  {
    self->_isAccountModificationAllowed = v17;

    MEMORY[0x2821F9670](self, sel__uq_notifyObserversForAccountModificationRestrictionsChange, v19);
  }
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DC7550;
  block[3] = &unk_278D1D148;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

@end