@interface HKCoordinateTransform
- (BOOL)isEqual:(id)a3;
@end

@implementation HKCoordinateTransform

- (BOOL)isEqual:(id)a3
{
  v4 = objc_opt_class();

  return [(HKCoordinateTransform *)self isMemberOfClass:v4];
}

@end