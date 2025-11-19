@interface FBWorkspaceEventQueueLock
- (FBWorkspaceEventQueueLock)initWithReason:(id)a3;
@end

@implementation FBWorkspaceEventQueueLock

- (FBWorkspaceEventQueueLock)initWithReason:(id)a3
{
  v4 = a3;
  v5 = +[FBWorkspaceEventQueue sharedInstance];
  v6 = [(BSEventQueueLock *)self initWithEventQueue:v5 reason:v4];

  return v6;
}

@end