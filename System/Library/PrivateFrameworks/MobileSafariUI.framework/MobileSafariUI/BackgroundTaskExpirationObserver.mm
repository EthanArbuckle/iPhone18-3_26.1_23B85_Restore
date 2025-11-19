@interface BackgroundTaskExpirationObserver
- (BackgroundTaskExpirationObserverDelegate)delegate;
- (void)backgroundTaskWillExpire;
- (void)didEnterBackground;
- (void)willEnterForeground;
@end

@implementation BackgroundTaskExpirationObserver

- (void)willEnterForeground
{
  v3 = OBJC_IVAR___BackgroundTaskExpirationObserver_shouldPrepareBackgroundTaskExpiration;
  *(self + OBJC_IVAR___BackgroundTaskExpirationObserver_shouldPrepareBackgroundTaskExpiration) = 0;
  v5 = self;
  v4 = [(BackgroundTaskExpirationObserver *)v5 delegate];
  if (v4)
  {
    [(BackgroundTaskExpirationObserverDelegate *)v4 didChangeBackgroundTaskExpirationPreparation:*(self + v3)];
    swift_unknownObjectRelease();
  }
}

- (BackgroundTaskExpirationObserverDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didEnterBackground
{
  v3 = sub_215A6F910();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  sub_215A6F8F0();
  sub_215A6F8A0();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  *(v7 + OBJC_IVAR___BackgroundTaskExpirationObserver_startTime) = v9;
}

- (void)backgroundTaskWillExpire
{
  v2 = self;
  sub_215A08B5C();
}

@end