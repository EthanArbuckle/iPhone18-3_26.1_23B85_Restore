@interface __HMFSetupAssistantDataSource
- (BOOL)isMigrating;
- (HMFSystemInfoMigrationDataSourceDelegate)delegate;
- (__HMFSetupAssistantDataSource)init;
- (void)dealloc;
@end

@implementation __HMFSetupAssistantDataSource

- (__HMFSetupAssistantDataSource)init
{
  v8.receiver = self;
  v8.super_class = __HMFSetupAssistantDataSource;
  v2 = [(__HMFSetupAssistantDataSource *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    if (SetupAssistantLibraryCore())
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      BYSetupAssistantFinishedDarwinNotification = getBYSetupAssistantFinishedDarwinNotification();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v4, __migrationFinishedCallback, BYSetupAssistantFinishedDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  return v3;
}

- (void)dealloc
{
  v2 = self;
  if (SetupAssistantLibraryCore())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    BYSetupAssistantFinishedDarwinNotification = getBYSetupAssistantFinishedDarwinNotification();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v2, BYSetupAssistantFinishedDarwinNotification, 0);
  }

  v5.receiver = v2;
  v5.super_class = __HMFSetupAssistantDataSource;
  [(__HMFSetupAssistantDataSource *)&v5 dealloc];
}

- (BOOL)isMigrating
{
  v2 = SetupAssistantLibraryCore();
  if (v2)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v3 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
    v10 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
    if (!getBYSetupAssistantNeedsToRunSymbolLoc_ptr)
    {
      v4 = SetupAssistantLibrary();
      v8[3] = dlsym(v4, "BYSetupAssistantNeedsToRun");
      getBYSetupAssistantNeedsToRunSymbolLoc_ptr = v8[3];
      v3 = v8[3];
    }

    _Block_object_dispose(&v7, 8);
    if (!v3)
    {
      dlerror();
      v5 = abort_report_np();
      _Block_object_dispose(&v7, 8);
      _Unwind_Resume(v5);
    }

    LOBYTE(v2) = v3();
  }

  return v2;
}

- (HMFSystemInfoMigrationDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end