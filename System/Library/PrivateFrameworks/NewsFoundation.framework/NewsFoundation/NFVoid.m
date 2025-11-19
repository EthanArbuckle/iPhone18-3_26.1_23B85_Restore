@interface NFVoid
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation NFVoid

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_opt_class();

  return [v3 init];
}

@end