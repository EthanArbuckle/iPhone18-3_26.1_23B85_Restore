@interface IDSIDStatusDependencyProvider
- (id)currentDate;
@end

@implementation IDSIDStatusDependencyProvider

- (id)currentDate
{
  v2 = objc_alloc_init(NSDate);

  return v2;
}

@end