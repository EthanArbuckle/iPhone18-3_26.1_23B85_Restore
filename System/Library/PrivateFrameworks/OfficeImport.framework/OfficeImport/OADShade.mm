@interface OADShade
- (BOOL)isEqual:(id)a3;
@end

@implementation OADShade

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  LOBYTE(v4) = v4 == objc_opt_class();

  return v4;
}

@end