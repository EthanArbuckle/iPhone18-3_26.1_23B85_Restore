@interface CPLSimpleTaskSyncStep
- (BOOL)didFinishTask:(id)a3 withError:(id)a4 shouldStop:(BOOL *)a5;
- (BOOL)launchNecessaryTasks;
- (CPLSimpleTaskSyncStep)initWithSyncManager:(id)a3 syncSession:(id)a4 taskClass:(Class)a5;
- (id)descriptionForTasks;
- (id)newTask;
@end

@implementation CPLSimpleTaskSyncStep

- (id)newTask
{
  v3 = objc_alloc(self->_taskClass);
  v4 = [(CPLSyncStep *)self engineLibrary];
  v5 = [(CPLSyncStep *)self syncSession];
  v6 = [v3 initWithEngineLibrary:v4 session:v5];

  return v6;
}

- (BOOL)launchNecessaryTasks
{
  if (self->_currentTask)
  {
    return 0;
  }

  v4 = [(CPLSimpleTaskSyncStep *)self newTask];
  currentTask = self->_currentTask;
  self->_currentTask = v4;

  return [(CPLSyncStep *)self prepareAndLaunchSyncTask:&self->_currentTask];
}

- (BOOL)didFinishTask:(id)a3 withError:(id)a4 shouldStop:(BOOL *)a5
{
  v9 = a3;
  v10 = a4;
  currentTask = self->_currentTask;
  if (currentTask != v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncStep.m"];
    [v16 handleFailureInMethod:a2 object:self file:v17 lineNumber:146 description:{@"Task %@ did finish for %@ but no task has been dispatched", objc_opt_class(), self->_taskClass}];

    abort();
  }

  v12 = v10;
  self->_currentTask = 0;

  if (v12)
  {
    [(CPLSyncStep *)self setErrorForSyncSession:v12];
  }

  v13 = [(CPLSyncStep *)self lastError];

  if (v13)
  {
    *a5 = 1;
  }

  v14 = self->_currentTask == 0;

  return v14;
}

- (id)descriptionForTasks
{
  v3 = [(CPLEngineSyncTask *)self->_currentTask description];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ not launched>", self->_taskClass];
  }

  v6 = v5;

  return v6;
}

- (CPLSimpleTaskSyncStep)initWithSyncManager:(id)a3 syncSession:(id)a4 taskClass:(Class)a5
{
  v9.receiver = self;
  v9.super_class = CPLSimpleTaskSyncStep;
  v6 = [(CPLSyncStep *)&v9 initWithSyncManager:a3 syncSession:a4];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskClass, a5);
  }

  return v7;
}

@end