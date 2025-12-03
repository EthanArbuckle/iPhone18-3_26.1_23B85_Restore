@interface FBWorkspaceEventQueue
+ (id)sharedInstance;
- (BOOL)_shouldProcessEvent:(id)event enqueuedDuringExecutionOfEvent:(id)ofEvent;
- (void)_noteQueueDidLock;
- (void)_noteQueueDidUnlock;
- (void)_noteWillCancelEventsWithName:(id)name count:(unint64_t)count;
- (void)_noteWillExecuteEvent:(id)event;
- (void)_noteWillPendEvents:(id)events atPosition:(int)position;
- (void)executeOrAppendEvent:(id)event;
- (void)executeOrPrependEvent:(id)event;
@end

@implementation FBWorkspaceEventQueue

- (void)_noteQueueDidLock
{
  v2 = FBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [(FBWorkspaceEventQueue *)v2 _noteQueueDidLock];
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[FBWorkspaceEventQueue sharedInstance];
  }

  v3 = sharedInstance___instance_1;

  return v3;
}

- (void)_noteQueueDidUnlock
{
  v2 = FBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [(FBWorkspaceEventQueue *)v2 _noteQueueDidUnlock];
  }
}

void __39__FBWorkspaceEventQueue_sharedInstance__block_invoke()
{
  v0 = [FBWorkspaceEventQueue alloc];
  v1 = [(BSEventQueue *)v0 initWithName:@"FBWorkspaceEventQueue" onQueue:MEMORY[0x1E69E96A0]];
  v2 = sharedInstance___instance_1;
  sharedInstance___instance_1 = v1;
}

- (void)executeOrAppendEvent:(id)event
{
  v9 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v4 = MEMORY[0x1E695DEC8];
  eventCopy2 = event;
  v6 = [v4 arrayWithObjects:&eventCopy count:1];

  [(BSEventQueue *)self executeOrInsertEvents:v6 atPosition:1, eventCopy, v9];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)executeOrPrependEvent:(id)event
{
  v9 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v4 = MEMORY[0x1E695DEC8];
  eventCopy2 = event;
  v6 = [v4 arrayWithObjects:&eventCopy count:1];

  [(FBWorkspaceEventQueue *)self executeOrPrependEvents:v6, eventCopy, v9];
  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)_shouldProcessEvent:(id)event enqueuedDuringExecutionOfEvent:(id)ofEvent
{
  eventCopy = event;
  ofEventCopy = ofEvent;
  v7 = ofEventCopy;
  if (ofEventCopy && ([ofEventCopy name], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(eventCopy, "name"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, v10))
  {
    v11 = FBLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FBWorkspaceEventQueue _shouldProcessEvent:v7 enqueuedDuringExecutionOfEvent:v11];
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)_noteWillPendEvents:(id)events atPosition:(int)position
{
  eventsCopy = events;
  v6 = FBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(FBWorkspaceEventQueue *)eventsCopy _noteWillPendEvents:position atPosition:v6];
  }
}

- (void)_noteWillCancelEventsWithName:(id)name count:(unint64_t)count
{
  nameCopy = name;
  v6 = FBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(FBWorkspaceEventQueue *)nameCopy _noteWillCancelEventsWithName:count count:v6];
  }
}

- (void)_noteWillExecuteEvent:(id)event
{
  eventCopy = event;
  v4 = FBLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(FBWorkspaceEventQueue *)eventCopy _noteWillExecuteEvent:v4];
  }
}

- (void)_shouldProcessEvent:(void *)a1 enqueuedDuringExecutionOfEvent:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 name];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_1A89DD000, a2, OS_LOG_TYPE_ERROR, "Event %{public}@ queued an identically named event while still executing. Dropping it.", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_noteWillPendEvents:(NSObject *)a3 atPosition:.cold.1(void *a1, int a2, NSObject *a3)
{
  v5 = a1;
  v13 = *MEMORY[0x1E69E9840];
  v6 = [a1 count];
  if (v6 == 1)
  {
    v5 = [v5 lastObject];
  }

  v7 = @"front";
  if (a2 == 1)
  {
    v7 = @"back";
  }

  v9 = 138543618;
  v10 = v5;
  v11 = 2112;
  v12 = v7;
  _os_log_debug_impl(&dword_1A89DD000, a3, OS_LOG_TYPE_DEBUG, "Pending: %{public}@; queue position: %@", &v9, 0x16u);
  if (v6 == 1)
  {
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_noteWillCancelEventsWithName:(os_log_t)log count:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a2;
  v6 = 2114;
  v7 = a1;
  _os_log_debug_impl(&dword_1A89DD000, log, OS_LOG_TYPE_DEBUG, "Removing %lu event(s) named %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_noteWillExecuteEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1A89DD000, a2, OS_LOG_TYPE_DEBUG, "Executing: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end