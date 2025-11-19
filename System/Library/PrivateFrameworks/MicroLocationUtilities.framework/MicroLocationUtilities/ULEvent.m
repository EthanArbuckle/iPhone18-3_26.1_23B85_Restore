@interface ULEvent
- (NSString)name;
- (ULEvent)init;
@end

@implementation ULEvent

- (ULEvent)init
{
  v3.receiver = self;
  v3.super_class = ULEvent;
  return [(ULEvent *)&v3 init];
}

- (NSString)name
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end