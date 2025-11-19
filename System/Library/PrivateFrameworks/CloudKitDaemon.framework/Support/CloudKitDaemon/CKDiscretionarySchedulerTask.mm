@interface CKDiscretionarySchedulerTask
- (CKDiscretionarySchedulerTask)init;
@end

@implementation CKDiscretionarySchedulerTask

- (CKDiscretionarySchedulerTask)init
{
  v3.receiver = self;
  v3.super_class = CKDiscretionarySchedulerTask;
  result = [(CKDiscretionarySchedulerTask *)&v3 init];
  if (result)
  {
    result->_state = 0;
  }

  return result;
}

@end