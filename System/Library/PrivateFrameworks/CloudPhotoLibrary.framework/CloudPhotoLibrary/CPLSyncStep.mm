@interface CPLSyncStep
- (BOOL)containsTask:(id)a3;
- (BOOL)didFinishTask:(id)a3 withError:(id)a4 shouldStop:(BOOL *)a5;
- (BOOL)hasTasks;
- (BOOL)launchNecessaryTasks;
- (BOOL)prepareAndLaunchSyncTask:(id *)a3;
- (CPLEngineStore)engineStore;
- (CPLSyncStep)initWithSyncManager:(id)a3 syncSession:(id)a4;
- (NSString)descriptionForTasks;
- (void)moveTasksToBackground;
@end

@implementation CPLSyncStep

- (BOOL)containsTask:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncStep.m"];
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:98 description:@"This should be implemented by subclasses"];

  abort();
}

- (BOOL)hasTasks
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncStep.m"];
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:94 description:@"This should be implemented by subclasses"];

  abort();
}

- (BOOL)prepareAndLaunchSyncTask:(id *)a3
{
  if (*a3)
  {
    if ([(CPLEngineSyncManager *)self->_syncManager prepareAndLaunchSyncTaskUnlocked:?])
    {
      return 1;
    }

    v5 = *a3;
    *a3 = 0;
  }

  return 0;
}

- (void)moveTasksToBackground
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncStep.m"];
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:63 description:@"This should be implemented by subclasses"];

  abort();
}

- (BOOL)didFinishTask:(id)a3 withError:(id)a4 shouldStop:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncStep.m"];
  [v10 handleFailureInMethod:a2 object:self file:v11 lineNumber:59 description:@"This should be implemented by subclasses"];

  abort();
}

- (BOOL)launchNecessaryTasks
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncStep.m"];
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:50 description:@"This should be implemented by subclasses"];

  abort();
}

- (NSString)descriptionForTasks
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncStep.m"];
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:41 description:@"This should be implemented by subclasses"];

  abort();
}

- (CPLEngineStore)engineStore
{
  v2 = [(CPLEngineSyncManager *)self->_syncManager engineLibrary];
  v3 = [v2 store];

  return v3;
}

- (CPLSyncStep)initWithSyncManager:(id)a3 syncSession:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CPLSyncStep;
  v9 = [(CPLSyncStep *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_syncManager, a3);
    objc_storeStrong(&v10->_syncSession, a4);
  }

  return v10;
}

@end