@interface FBWorkspaceEventQueueLock
- (FBWorkspaceEventQueueLock)initWithReason:(id)reason;
@end

@implementation FBWorkspaceEventQueueLock

- (FBWorkspaceEventQueueLock)initWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = +[FBWorkspaceEventQueue sharedInstance];
  v6 = [(BSEventQueueLock *)self initWithEventQueue:v5 reason:reasonCopy];

  return v6;
}

@end