@interface HKCoordinateTransform
- (BOOL)isEqual:(id)equal;
@end

@implementation HKCoordinateTransform

- (BOOL)isEqual:(id)equal
{
  v4 = objc_opt_class();

  return [(HKCoordinateTransform *)self isMemberOfClass:v4];
}

@end