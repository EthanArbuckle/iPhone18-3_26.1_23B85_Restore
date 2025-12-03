@interface FBWorkspaceEvent
- (void)execute;
@end

@implementation FBWorkspaceEvent

- (void)execute
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = FBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1A89DD000, v3, OS_LOG_TYPE_DEFAULT, "[FBWorkspaceEvent] Executing: %{public}@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = FBWorkspaceEvent;
  [(BSEventQueueEvent *)&v5 execute];
  v4 = *MEMORY[0x1E69E9840];
}

@end