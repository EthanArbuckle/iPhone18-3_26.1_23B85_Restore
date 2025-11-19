@interface DOCSBFolderManager
+ (DOCSBFolderManager)sharedManager;
- (NSDictionary)observers;
- (void)_handleDistributedNotification:(id)a3;
- (void)_startObservingDistributedNotificationCenterIfNeeded;
- (void)_stopObservingDistributedNotificationCenterIfNeeded;
- (void)setObservers:(id)a3;
- (void)setQueue:(id)a3;
- (void)startObservingDownloadsFolder;
- (void)stopObservingDownloadsFolder;
@end

@implementation DOCSBFolderManager

- (void)setQueue:(id)a3
{
  v4 = *(self + OBJC_IVAR___DOCSBFolderManager_queue);
  *(self + OBJC_IVAR___DOCSBFolderManager_queue) = a3;
  v3 = a3;
}

+ (DOCSBFolderManager)sharedManager
{
  if (qword_27EEE28C8 != -1)
  {
    swift_once();
  }

  v3 = qword_27EEE2AF8;

  return v3;
}

- (NSDictionary)observers
{
  v2 = *(self + OBJC_IVAR___DOCSBFolderManager_observers);
  sub_24938A2FC();

  v3 = sub_24938A3EC();

  return v3;
}

- (void)setObservers:(id)a3
{
  sub_24938A2FC();
  v4 = sub_24938A3FC();
  v5 = *(self + OBJC_IVAR___DOCSBFolderManager_observers);
  *(self + OBJC_IVAR___DOCSBFolderManager_observers) = v4;
}

- (void)startObservingDownloadsFolder
{
  v2 = self;
  sub_249373C4C();
}

- (void)stopObservingDownloadsFolder
{
  v2 = self;
  sub_249373DF4();
}

- (void)_handleDistributedNotification:(id)a3
{
  v4 = sub_24938A27C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24938A23C();
  v9 = self;
  sub_249373F9C(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)_startObservingDistributedNotificationCenterIfNeeded
{
  v2 = self;
  sub_249376E78();
}

- (void)_stopObservingDistributedNotificationCenterIfNeeded
{
  v2 = self;
  sub_2493772BC();
}

@end