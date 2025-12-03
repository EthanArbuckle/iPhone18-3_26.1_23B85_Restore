@interface MADServiceTaskInformation
- (MADServiceTaskInformation)initWithTask:(id)task requestID:(unint64_t)d schedulingErrorHandler:(id)handler;
@end

@implementation MADServiceTaskInformation

- (MADServiceTaskInformation)initWithTask:(id)task requestID:(unint64_t)d schedulingErrorHandler:(id)handler
{
  taskCopy = task;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = MADServiceTaskInformation;
  v11 = [(MADServiceTaskInformation *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_task, task);
    v12->_requestID = d;
    v13 = objc_retainBlock(handlerCopy);
    schedulingErrorHandler = v12->_schedulingErrorHandler;
    v12->_schedulingErrorHandler = v13;

    scheduledTaskID = v12->_scheduledTaskID;
    v12->_scheduledTaskID = 0;
  }

  return v12;
}

@end