@interface CSMicUsageReporter
- (CSMicUsageReporter)init;
@end

@implementation CSMicUsageReporter

- (CSMicUsageReporter)init
{
  v7.receiver = self;
  v7.super_class = CSMicUsageReporter;
  v2 = [(CSMicUsageReporter *)&v7 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(33, 0);
    v4 = dispatch_queue_create_with_target_V2("CSMicUsageReporter", 0, v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

@end