@interface CKDSystemAvailabilityMonitor
+ (void)initialize;
- (BOOL)registerWatcher:(id)watcher;
- (id)availabilityDescription;
- (id)initInternal;
- (unint64_t)currentAvailabilityState;
- (void)_clearVanishedWatchers;
- (void)_logAvailabilityDescription;
- (void)_systemMayNowBeReady;
- (void)assertAvailability:(unint64_t)availability;
- (void)dealloc;
- (void)removeNotifications;
- (void)resetToUnavailableForUnitTests;
- (void)simulateBuddyCompletedForUnitTests;
- (void)simulateFirstUnlockForUnitTests;
@end

@implementation CKDSystemAvailabilityMonitor

+ (void)initialize
{
  if (!qword_280D586D0)
  {
    v2 = [CKDSystemAvailabilityMonitor alloc];
    qword_280D586D0 = objc_msgSend_initInternal(v2, v3, v4);

    MEMORY[0x2821F96F8]();
  }
}

- (id)initInternal
{
  v15.receiver = self;
  v15.super_class = CKDSystemAvailabilityMonitor;
  v2 = [(CKDSystemAvailabilityMonitor *)&v15 init];
  v5 = v2;
  if (!v2)
  {
    return v5;
  }

  availabilityState = objc_msgSend_currentAvailabilityState(v2, v3, v4);
  v5->_availabilityState = availabilityState;
  if (availabilityState != 3)
  {
    if ((availabilityState & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, sub_22540C418, @"com.apple.mobile.keybagd.lock_status", 0, 1025);
    availabilityState = v5->_availabilityState;
    if (availabilityState)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  CKOncePerBoot();
  availabilityState = v5->_availabilityState;
  if ((availabilityState & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((availabilityState & 1) == 0)
  {
LABEL_5:
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v9, v5, sub_22540C418, *MEMORY[0x277D4D9E8], 0, 1025);
    availabilityState = v5->_availabilityState;
  }

LABEL_6:
  if (availabilityState != 3)
  {
    v10 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22540C5D4;
    block[3] = &unk_278545A00;
    v14 = v5;
    dispatch_async(v10, block);
  }

  objc_msgSend__logAvailabilityDescription(v5, v7, v8);
  return v5;
}

- (void)removeNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobile.keybagd.lock_status", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = *MEMORY[0x277D4D9E8];

  CFNotificationCenterRemoveObserver(v4, self, v5, 0);
}

- (void)dealloc
{
  objc_msgSend_removeNotifications(self, a2, v2);
  v4.receiver = self;
  v4.super_class = CKDSystemAvailabilityMonitor;
  [(CKDSystemAvailabilityMonitor *)&v4 dealloc];
}

- (void)assertAvailability:(unint64_t)availability
{
  if ((objc_msgSend_availabilityState(self, a2, availability) & availability) == 0)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v8, a2, self, @"CKDSystemAvailabilityMonitor.m", 206, @"System does not have availability %lx", availability);
  }
}

- (unint64_t)currentAvailabilityState
{
  v3 = objc_msgSend_simulatedAvailabilityState(self, a2, v2);
  v4 = v3;
  if ((v3 & 4) != 0)
  {
    return v3 & 0xFFFFFFFFFFFFFFFBLL;
  }

  v5 = MKBDeviceUnlockedSinceBoot();
  v6 = BYSetupAssistantNeedsToRun();
  v7 = MEMORY[0x277CBC880];
  v8 = MEMORY[0x277CBC830];
  if (v5 != 1)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Can't start yet, device is still locked", buf, 2u);
    }
  }

  if (v6)
  {
    if (*v7 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Can't start yet, device is still in buddy", v13, 2u);
    }
  }

  v11 = v4 | 2;
  if (v5 != 1)
  {
    v11 = v4;
  }

  return v11 | v6 ^ 1u;
}

- (id)availabilityDescription
{
  v4 = objc_msgSend_availabilityState(self, a2, v2);
  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) >= 4)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = objc_msgSend_availabilityState(self, v5, v6);
    v7 = objc_msgSend_stringWithFormat_(v8, v10, @"no description for status value %ld", v9);
  }

  else
  {
    v7 = off_27854E1D0[v4 & 0xFFFFFFFFFFFFFFFBLL];
  }

  return v7;
}

- (void)_logAvailabilityDescription
{
  v11 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v5 = v3;
    v8 = objc_msgSend_availabilityDescription(self, v6, v7);
    v9 = 138543362;
    v10 = v8;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "System is %{public}@", &v9, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_clearVanishedWatchers
{
  obj = self;
  objc_sync_enter(obj);
  v6 = objc_msgSend_count(obj->_watcherWrappersInRegistrationOrder, v2, v3);
  if (v6 - 1 >= 0)
  {
    do
    {
      v7 = objc_msgSend_objectAtIndex_(obj->_watcherWrappersInRegistrationOrder, v4, --v6);
      v10 = objc_msgSend_delegate(v7, v8, v9);

      if (!v10)
      {
        objc_msgSend_removeObjectAtIndex_(obj->_watcherWrappersInRegistrationOrder, v11, v6);
      }
    }

    while (v6 > 0);
  }

  if (!objc_msgSend_count(obj->_watcherWrappersInRegistrationOrder, v4, v5))
  {
    watcherWrappersInRegistrationOrder = obj->_watcherWrappersInRegistrationOrder;
    obj->_watcherWrappersInRegistrationOrder = 0;
  }

  objc_sync_exit(obj);
}

- (void)_systemMayNowBeReady
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_currentAvailabilityState(self, a2, v2);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = objc_msgSend_availabilityState(selfCopy, v6, v7);
  v11 = objc_msgSend_availabilityState(selfCopy, v9, v10);
  objc_msgSend_setAvailabilityState_(selfCopy, v12, v11 | v4);
  if (v4 != v8)
  {
    objc_msgSend__logAvailabilityDescription(selfCopy, v13, v14);
    v19 = objc_msgSend_count(selfCopy->_watcherWrappersInRegistrationOrder, v15, v16);
    if (v19)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v20 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        watcherWrappersInRegistrationOrder = selfCopy->_watcherWrappersInRegistrationOrder;
        v33 = 138412290;
        v34 = watcherWrappersInRegistrationOrder;
        _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Notifying watchers of availability change. Watchers are %@", &v33, 0xCu);
      }

      for (i = 0; i != v19; ++i)
      {
        v22 = objc_msgSend_objectAtIndex_(selfCopy->_watcherWrappersInRegistrationOrder, v17, i);
        objc_msgSend_postSystemAvailabilityChanged_(v22, v23, v4);
      }
    }

    if (v4 == 3)
    {
      v24 = selfCopy->_watcherWrappersInRegistrationOrder;
      selfCopy->_watcherWrappersInRegistrationOrder = 0;

      objc_msgSend_removeNotifications(selfCopy, v25, v26);
    }

    else
    {
      objc_msgSend__clearVanishedWatchers(selfCopy, v17, v18);
    }

    v29 = objc_msgSend_sharedNotifier(CKDAccountNotifier, v27, v28);
    objc_msgSend_postAccountChangedNotificationWithAccountID_changeType_(v29, v30, 0, 0);
  }

  objc_sync_exit(selfCopy);

  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerWatcher:(id)watcher
{
  v26 = *MEMORY[0x277D85DE8];
  watcherCopy = watcher;
  if (watcherCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v8 = objc_msgSend_availabilityState(selfCopy, v6, v7);
    if ((v8 - 1) < 2)
    {
      v12 = objc_msgSend_availabilityState(selfCopy, v9, v10);
      if (!objc_msgSend_systemAvailabilityChanged_(watcherCopy, v13, v12))
      {
LABEL_17:
        v11 = 0;
LABEL_18:
        objc_sync_exit(selfCopy);

        goto LABEL_19;
      }
    }

    else if (v8)
    {
      if (v8 == 3)
      {
        objc_msgSend_systemAvailabilityChanged_(watcherCopy, v9, 3);
      }

      goto LABEL_17;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v24 = 138412290;
      v25 = watcherCopy;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Registering watcher %@", &v24, 0xCu);
    }

    if (!selfCopy->_watcherWrappersInRegistrationOrder)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      watcherWrappersInRegistrationOrder = selfCopy->_watcherWrappersInRegistrationOrder;
      selfCopy->_watcherWrappersInRegistrationOrder = v15;
    }

    v17 = [CKDSystemAvailabilityWatcherWrapper alloc];
    v19 = objc_msgSend_initWithDelegate_(v17, v18, watcherCopy);
    if ((objc_msgSend_containsObject_(selfCopy->_watcherWrappersInRegistrationOrder, v20, v19) & 1) == 0)
    {
      objc_msgSend_addObject_(selfCopy->_watcherWrappersInRegistrationOrder, v21, v19);
    }

    v11 = 1;
    goto LABEL_18;
  }

  v11 = 0;
LABEL_19:

  v22 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)resetToUnavailableForUnitTests
{
  objc_msgSend_setAvailabilityState_(self, a2, 0);

  objc_msgSend_setSimulatedAvailabilityState_(self, v3, 4);
}

- (void)simulateBuddyCompletedForUnitTests
{
  v4 = objc_msgSend_simulatedAvailabilityState(self, a2, v2);
  objc_msgSend_setSimulatedAvailabilityState_(self, v5, v4 | 1);

  objc_msgSend__systemMayNowBeReady(self, v6, v7);
}

- (void)simulateFirstUnlockForUnitTests
{
  v4 = objc_msgSend_simulatedAvailabilityState(self, a2, v2);
  objc_msgSend_setSimulatedAvailabilityState_(self, v5, v4 | 2);

  objc_msgSend__systemMayNowBeReady(self, v6, v7);
}

@end