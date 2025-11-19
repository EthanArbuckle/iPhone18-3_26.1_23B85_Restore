@interface CCScheduledTasks
- (CCSetBookkeeping)setBookkeeping;
- (void)performNightlyDatabaseMaintenanceWithCompletionHandler:(id)a3;
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
  v2 = self;
  ScheduledTasks.register()();
}

- (void)performNightlyDatabaseMaintenanceWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_1B6DFF460(&unk_1B6E0EC78, v5);
}

@end