@interface MADProcessingTask
- (MADProcessingTask)init;
@end

@implementation MADProcessingTask

- (MADProcessingTask)init
{
  v6.receiver = self;
  v6.super_class = MADProcessingTask;
  v2 = [(MADProcessingTask *)&v6 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    uuid = v2->_uuid;
    v2->_uuid = v3;
  }

  return v2;
}

@end