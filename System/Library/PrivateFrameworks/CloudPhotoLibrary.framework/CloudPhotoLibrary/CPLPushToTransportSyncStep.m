@interface CPLPushToTransportSyncStep
- (CPLPushToTransportSyncStep)initWithSyncManager:(id)a3 syncSession:(id)a4 highPriority:(BOOL)a5;
- (id)newTask;
@end

@implementation CPLPushToTransportSyncStep

- (id)newTask
{
  v5.receiver = self;
  v5.super_class = CPLPushToTransportSyncStep;
  v3 = [(CPLSimpleTaskSyncStep *)&v5 newTask];
  [v3 setHighPriority:self->_highPriority];
  return v3;
}

- (CPLPushToTransportSyncStep)initWithSyncManager:(id)a3 syncSession:(id)a4 highPriority:(BOOL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_class();
  v13.receiver = self;
  v13.super_class = CPLPushToTransportSyncStep;
  v11 = [(CPLSimpleTaskSyncStep *)&v13 initWithSyncManager:v9 syncSession:v8 taskClass:v10];

  if (v11)
  {
    v11->_highPriority = a5;
  }

  return v11;
}

@end