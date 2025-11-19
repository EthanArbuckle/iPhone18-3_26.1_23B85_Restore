@interface MADServiceTaskInformation
- (MADServiceTaskInformation)initWithTask:(id)a3 requestID:(unint64_t)a4 schedulingErrorHandler:(id)a5;
@end

@implementation MADServiceTaskInformation

- (MADServiceTaskInformation)initWithTask:(id)a3 requestID:(unint64_t)a4 schedulingErrorHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = MADServiceTaskInformation;
  v11 = [(MADServiceTaskInformation *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_task, a3);
    v12->_requestID = a4;
    v13 = objc_retainBlock(v10);
    schedulingErrorHandler = v12->_schedulingErrorHandler;
    v12->_schedulingErrorHandler = v13;

    scheduledTaskID = v12->_scheduledTaskID;
    v12->_scheduledTaskID = 0;
  }

  return v12;
}

@end