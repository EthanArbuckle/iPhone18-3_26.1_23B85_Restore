@interface AVSystemController(InternalUse)
- (void)releaseSharedInstance;
@end

@implementation AVSystemController(InternalUse)

- (void)releaseSharedInstance
{
  [gSharedInstanceLock lock];
  if (gSharedInstance == self)
  {
    v3 = gSharedInstance;
    gSharedInstance = 0;
  }

  v4 = gSharedInstanceLock;

  [v4 unlock];
}

@end