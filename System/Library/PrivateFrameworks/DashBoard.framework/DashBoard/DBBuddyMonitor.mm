@interface DBBuddyMonitor
- (DBBuddyMonitor)init;
- (void)_updateBuddyFinished;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)setBuddyFinished:(BOOL)finished;
@end

@implementation DBBuddyMonitor

- (DBBuddyMonitor)init
{
  v7.receiver = self;
  v7.super_class = DBBuddyMonitor;
  v2 = [(DBBuddyMonitor *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285B0B368];
    observers = v2->_observers;
    v2->_observers = v3;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, SetupAssistantFinished, *MEMORY[0x277D4D9E8], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(DBBuddyMonitor *)v2 _updateBuddyFinished];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = DBBuddyMonitor;
  [(DBBuddyMonitor *)&v4 dealloc];
}

- (void)setBuddyFinished:(BOOL)finished
{
  if (self->_buddyFinished != finished)
  {
    self->_buddyFinished = finished;
    observers = [(DBBuddyMonitor *)self observers];
    [observers buddyMonitorDidChangeFinished:self];
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBBuddyMonitor *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBBuddyMonitor *)self observers];
  [observers removeObserver:observerCopy];
}

- (void)_updateBuddyFinished
{
  v3 = BYSetupAssistantNeedsToRun() ^ 1;

  [(DBBuddyMonitor *)self setBuddyFinished:v3];
}

@end