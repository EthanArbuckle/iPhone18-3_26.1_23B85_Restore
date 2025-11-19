@interface MTSessionFilterManager
- (MTSessionFilterManager)init;
- (NSDictionary)debug;
@end

@implementation MTSessionFilterManager

- (MTSessionFilterManager)init
{
  v6.receiver = self;
  v6.super_class = MTSessionFilterManager;
  v2 = [(MTSessionFilterManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    queue = v2->_queue;
    v2->_queue = 0;
  }

  return v3;
}

- (NSDictionary)debug
{
  v6 = @"Manager";
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

@end