@interface _MPCQueueControllerBehaviorEmpty
+ (BOOL)canLoadQueue:(id)queue reason:(id *)reason;
- (BOOL)canJumpToContentItemID:(id)d reason:(id *)reason;
- (BOOL)canNextItemFromContentItemID:(id)d reason:(id *)reason;
- (BOOL)canPreviousItemFromContentItemID:(id)d reason:(id *)reason;
- (MPCQueueControllerBehaviorHost)host;
- (_MPCQueueControllerBehaviorEmpty)initWithSessionID:(id)d;
@end

@implementation _MPCQueueControllerBehaviorEmpty

- (MPCQueueControllerBehaviorHost)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (BOOL)canNextItemFromContentItemID:(id)d reason:(id *)reason
{
  if (reason)
  {
    *reason = @"Empty Queue Behavior";
  }

  return 0;
}

- (BOOL)canPreviousItemFromContentItemID:(id)d reason:(id *)reason
{
  if (reason)
  {
    *reason = @"Empty Queue Behavior";
  }

  return 0;
}

- (BOOL)canJumpToContentItemID:(id)d reason:(id *)reason
{
  if (reason)
  {
    *reason = @"Empty Queue Behavior";
  }

  return 0;
}

- (_MPCQueueControllerBehaviorEmpty)initWithSessionID:(id)d
{
  v4.receiver = self;
  v4.super_class = _MPCQueueControllerBehaviorEmpty;
  return [(_MPCQueueControllerBehaviorEmpty *)&v4 init];
}

+ (BOOL)canLoadQueue:(id)queue reason:(id *)reason
{
  queueCopy = queue;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = isKindOfClass;
  if (reason && (isKindOfClass & 1) == 0)
  {
    *reason = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot populate empty behavior with %@", queueCopy];
  }

  return v7 & 1;
}

@end