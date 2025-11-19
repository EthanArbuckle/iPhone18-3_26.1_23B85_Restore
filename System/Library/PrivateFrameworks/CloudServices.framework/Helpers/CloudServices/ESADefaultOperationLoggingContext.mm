@interface ESADefaultOperationLoggingContext
- (ESADefaultOperationLoggingContext)init;
@end

@implementation ESADefaultOperationLoggingContext

- (ESADefaultOperationLoggingContext)init
{
  v9.receiver = self;
  v9.super_class = ESADefaultOperationLoggingContext;
  v2 = [(ESADefaultOperationLoggingContext *)&v9 init];
  if (v2)
  {
    v3 = +[NSDate date];
    currentTime = v2->_currentTime;
    v2->_currentTime = v3;

    v5 = sub_100002A24();
    currentBootId = v2->_currentBootId;
    v2->_currentBootId = v5;

    v2->_currentPID = getpid();
    v7 = v2;
  }

  return v2;
}

@end