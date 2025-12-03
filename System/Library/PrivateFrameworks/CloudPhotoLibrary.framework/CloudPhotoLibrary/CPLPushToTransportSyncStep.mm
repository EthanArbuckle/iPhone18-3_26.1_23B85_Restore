@interface CPLPushToTransportSyncStep
- (CPLPushToTransportSyncStep)initWithSyncManager:(id)manager syncSession:(id)session highPriority:(BOOL)priority;
- (id)newTask;
@end

@implementation CPLPushToTransportSyncStep

- (id)newTask
{
  v5.receiver = self;
  v5.super_class = CPLPushToTransportSyncStep;
  newTask = [(CPLSimpleTaskSyncStep *)&v5 newTask];
  [newTask setHighPriority:self->_highPriority];
  return newTask;
}

- (CPLPushToTransportSyncStep)initWithSyncManager:(id)manager syncSession:(id)session highPriority:(BOOL)priority
{
  sessionCopy = session;
  managerCopy = manager;
  v10 = objc_opt_class();
  v13.receiver = self;
  v13.super_class = CPLPushToTransportSyncStep;
  v11 = [(CPLSimpleTaskSyncStep *)&v13 initWithSyncManager:managerCopy syncSession:sessionCopy taskClass:v10];

  if (v11)
  {
    v11->_highPriority = priority;
  }

  return v11;
}

@end