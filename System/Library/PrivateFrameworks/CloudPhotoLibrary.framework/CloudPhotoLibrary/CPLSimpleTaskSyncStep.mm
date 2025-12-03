@interface CPLSimpleTaskSyncStep
- (BOOL)didFinishTask:(id)task withError:(id)error shouldStop:(BOOL *)stop;
- (BOOL)launchNecessaryTasks;
- (CPLSimpleTaskSyncStep)initWithSyncManager:(id)manager syncSession:(id)session taskClass:(Class)class;
- (id)descriptionForTasks;
- (id)newTask;
@end

@implementation CPLSimpleTaskSyncStep

- (id)newTask
{
  v3 = objc_alloc(self->_taskClass);
  engineLibrary = [(CPLSyncStep *)self engineLibrary];
  syncSession = [(CPLSyncStep *)self syncSession];
  v6 = [v3 initWithEngineLibrary:engineLibrary session:syncSession];

  return v6;
}

- (BOOL)launchNecessaryTasks
{
  if (self->_currentTask)
  {
    return 0;
  }

  newTask = [(CPLSimpleTaskSyncStep *)self newTask];
  currentTask = self->_currentTask;
  self->_currentTask = newTask;

  return [(CPLSyncStep *)self prepareAndLaunchSyncTask:&self->_currentTask];
}

- (BOOL)didFinishTask:(id)task withError:(id)error shouldStop:(BOOL *)stop
{
  taskCopy = task;
  errorCopy = error;
  currentTask = self->_currentTask;
  if (currentTask != taskCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/CPLSyncStep.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v17 lineNumber:146 description:{@"Task %@ did finish for %@ but no task has been dispatched", objc_opt_class(), self->_taskClass}];

    abort();
  }

  v12 = errorCopy;
  self->_currentTask = 0;

  if (v12)
  {
    [(CPLSyncStep *)self setErrorForSyncSession:v12];
  }

  lastError = [(CPLSyncStep *)self lastError];

  if (lastError)
  {
    *stop = 1;
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

- (CPLSimpleTaskSyncStep)initWithSyncManager:(id)manager syncSession:(id)session taskClass:(Class)class
{
  v9.receiver = self;
  v9.super_class = CPLSimpleTaskSyncStep;
  v6 = [(CPLSyncStep *)&v9 initWithSyncManager:manager syncSession:session];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskClass, class);
  }

  return v7;
}

@end