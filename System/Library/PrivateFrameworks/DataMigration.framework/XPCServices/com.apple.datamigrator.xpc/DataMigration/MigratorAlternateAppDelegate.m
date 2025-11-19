@interface MigratorAlternateAppDelegate
- (MigratorAlternateAppDelegate)init;
- (void)alternateSystemAppDidLaunch:(id)a3;
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
  v2 = [(MigratorAlternateAppDelegate *)self sema];
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)alternateSystemAppDidLaunch:(id)a3
{
  _DMLogFunc();

  +[PUIProgressWindow setUsesPreBoardAppearance];
}

@end