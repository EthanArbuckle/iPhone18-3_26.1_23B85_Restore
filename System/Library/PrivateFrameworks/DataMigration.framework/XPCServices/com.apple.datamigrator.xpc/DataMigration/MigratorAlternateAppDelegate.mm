@interface MigratorAlternateAppDelegate
- (MigratorAlternateAppDelegate)init;
- (void)alternateSystemAppDidLaunch:(id)launch;
- (void)waitUntilPreboardDidFinishUnlock;
@end

@implementation MigratorAlternateAppDelegate

- (MigratorAlternateAppDelegate)init
{
  v6.receiver = self;
  v6.super_class = MigratorAlternateAppDelegate;
  v2 = [(MigratorAlternateAppDelegate *)&v6 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    sema = v2->_sema;
    v2->_sema = v3;
  }

  return v2;
}

- (void)waitUntilPreboardDidFinishUnlock
{
  sema = [(MigratorAlternateAppDelegate *)self sema];
  dispatch_semaphore_wait(sema, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)alternateSystemAppDidLaunch:(id)launch
{
  _DMLogFunc();

  +[PUIProgressWindow setUsesPreBoardAppearance];
}

@end