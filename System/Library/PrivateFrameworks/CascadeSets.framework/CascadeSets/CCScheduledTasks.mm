@interface CCScheduledTasks
- (CCSetBookkeeping)setBookkeeping;
- (void)performNightlyDatabaseMaintenanceWithCompletionHandler:(id)handler;
- (void)register;
@end

@implementation CCScheduledTasks

- (CCSetBookkeeping)setBookkeeping
{
  v2 = sub_1B6DFF59C();

  return v2;
}

- (void)register
{
  selfCopy = self;
  ScheduledTasks.register()();
}

- (void)performNightlyDatabaseMaintenanceWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1B6DFF460(&unk_1B6E0EC78, v5);
}

@end