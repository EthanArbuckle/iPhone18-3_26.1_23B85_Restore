@interface DBBuddyMonitor
- (DBBuddyMonitor)init;
- (void)_updateBuddyFinished;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
- (void)setBuddyFinished:(BOOL)a3;
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

- (void)setBuddyFinished:(BOOL)a3
{
  if (self->_buddyFinished != a3)
  {
    self->_buddyFinished = a3;
    v5 = [(DBBuddyMonitor *)self observers];
    [v5 buddyMonitorDidChangeFinished:self];
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBBuddyMonitor *)self observers];
  [v5 addObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBBuddyMonitor *)self observers];
  [v5 removeObserver:v4];
}

- (void)_updateBuddyFinished
{
  v3 = BYSetupAssistantNeedsToRun() ^ 1;

  [(DBBuddyMonitor *)self setBuddyFinished:v3];
}

@end