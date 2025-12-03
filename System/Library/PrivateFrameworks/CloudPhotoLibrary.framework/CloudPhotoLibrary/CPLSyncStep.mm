@interface CPLSyncStep
- (BOOL)containsTask:(id)task;
- (BOOL)didFinishTask:(id)task withError:(id)error shouldStop:(BOOL *)stop;
- (BOOL)hasTasks;
- (BOOL)launchNecessaryTasks;
- (BOOL)prepareAndLaunchSyncTask:(id *)task;
- (CPLEngineStore)engineStore;
- (CPLSyncStep)initWithSyncManager:(id)manager syncSession:(id)session;
- (NSString)descriptionForTasks;
- (void)moveTasksToBackground;
@end

@implementation CPLSyncStep

- (BOOL)containsTask:(id)task
{
  taskCopy = task;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncStep.m"];
  [currentHandler handleFailureInMethod:a2 object:self file:v7 lineNumber:98 description:@"This should be implemented by subclasses"];

  abort();
}

- (BOOL)hasTasks
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncStep.m"];
  [currentHandler handleFailureInMethod:a2 object:self file:v5 lineNumber:94 description:@"This should be implemented by subclasses"];

  abort();
}

- (BOOL)prepareAndLaunchSyncTask:(id *)task
{
  if (*task)
  {
    if ([(CPLEngineSyncManager *)self->_syncManager prepareAndLaunchSyncTaskUnlocked:?])
    {
      return 1;
    }

    v5 = *task;
    *task = 0;
  }

  return 0;
}

- (void)moveTasksToBackground
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncStep.m"];
  [currentHandler handleFailureInMethod:a2 object:self file:v5 lineNumber:63 description:@"This should be implemented by subclasses"];

  abort();
}

- (BOOL)didFinishTask:(id)task withError:(id)error shouldStop:(BOOL *)stop
{
  taskCopy = task;
  errorCopy = error;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncStep.m"];
  [currentHandler handleFailureInMethod:a2 object:self file:v11 lineNumber:59 description:@"This should be implemented by subclasses"];

  abort();
}

- (BOOL)launchNecessaryTasks
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncStep.m"];
  [currentHandler handleFailureInMethod:a2 object:self file:v5 lineNumber:50 description:@"This should be implemented by subclasses"];

  abort();
}

- (NSString)descriptionForTasks
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncStep.m"];
  [currentHandler handleFailureInMethod:a2 object:self file:v5 lineNumber:41 description:@"This should be implemented by subclasses"];

  abort();
}

- (CPLEngineStore)engineStore
{
  engineLibrary = [(CPLEngineSyncManager *)self->_syncManager engineLibrary];
  store = [engineLibrary store];

  return store;
}

- (CPLSyncStep)initWithSyncManager:(id)manager syncSession:(id)session
{
  managerCopy = manager;
  sessionCopy = session;
  v12.receiver = self;
  v12.super_class = CPLSyncStep;
  v9 = [(CPLSyncStep *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_syncManager, manager);
    objc_storeStrong(&v10->_syncSession, session);
  }

  return v10;
}

@end