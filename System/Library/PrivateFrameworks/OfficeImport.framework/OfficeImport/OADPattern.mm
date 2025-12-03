@interface OADPattern
- (BOOL)isEqual:(id)equal;
@end

@implementation OADPattern

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = objc_opt_class();
  LOBYTE(v4) = v4 == objc_opt_class();

  return v4;
}

@end