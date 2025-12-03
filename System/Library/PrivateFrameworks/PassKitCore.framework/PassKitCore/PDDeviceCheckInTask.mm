@interface PDDeviceCheckInTask
- (BOOL)isEqual:(id)equal;
- (PDDeviceCheckInTask)init;
@end

@implementation PDDeviceCheckInTask

- (PDDeviceCheckInTask)init
{
  v8.receiver = self;
  v8.super_class = PDDeviceCheckInTask;
  v2 = [(PDDeviceCheckInTask *)&v8 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    identifier = v2->_identifier;
    v2->_identifier = v3;

    v5 = objc_alloc_init(NSMutableArray);
    completionHandlers = v2->_completionHandlers;
    v2->_completionHandlers = v5;
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = PKEqualObjects();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end