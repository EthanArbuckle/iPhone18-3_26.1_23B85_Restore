@interface _MPCQueueControllerBehaviorEmpty
+ (BOOL)canLoadQueue:(id)a3 reason:(id *)a4;
- (BOOL)canJumpToContentItemID:(id)a3 reason:(id *)a4;
- (BOOL)canNextItemFromContentItemID:(id)a3 reason:(id *)a4;
- (BOOL)canPreviousItemFromContentItemID:(id)a3 reason:(id *)a4;
- (MPCQueueControllerBehaviorHost)host;
- (_MPCQueueControllerBehaviorEmpty)initWithSessionID:(id)a3;
@end

@implementation _MPCQueueControllerBehaviorEmpty

- (MPCQueueControllerBehaviorHost)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

- (BOOL)canNextItemFromContentItemID:(id)a3 reason:(id *)a4
{
  if (a4)
  {
    *a4 = @"Empty Queue Behavior";
  }

  return 0;
}

- (BOOL)canPreviousItemFromContentItemID:(id)a3 reason:(id *)a4
{
  if (a4)
  {
    *a4 = @"Empty Queue Behavior";
  }

  return 0;
}

- (BOOL)canJumpToContentItemID:(id)a3 reason:(id *)a4
{
  if (a4)
  {
    *a4 = @"Empty Queue Behavior";
  }

  return 0;
}

- (_MPCQueueControllerBehaviorEmpty)initWithSessionID:(id)a3
{
  v4.receiver = self;
  v4.super_class = _MPCQueueControllerBehaviorEmpty;
  return [(_MPCQueueControllerBehaviorEmpty *)&v4 init];
}

+ (BOOL)canLoadQueue:(id)a3 reason:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = isKindOfClass;
  if (a4 && (isKindOfClass & 1) == 0)
  {
    *a4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot populate empty behavior with %@", v5];
  }

  return v7 & 1;
}

@end