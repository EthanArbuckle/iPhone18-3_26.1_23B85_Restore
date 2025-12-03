@interface NFVoid
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NFVoid

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return [v3 init];
}

@end