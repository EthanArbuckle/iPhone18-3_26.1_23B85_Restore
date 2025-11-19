@interface ISDarkBackgroundResource
- (ISDarkBackgroundResource)init;
@end

@implementation ISDarkBackgroundResource

- (ISDarkBackgroundResource)init
{
  v3 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:0.1922 green:0.1922 blue:0.1922 alpha:1.0];
  v4 = [objc_alloc(MEMORY[0x1E69A8968]) initWithRed:0.0784 green:0.0784 blue:0.0784 alpha:1.0];
  v7.receiver = self;
  v7.super_class = ISDarkBackgroundResource;
  v5 = [(ISCubicInterpolationLinearGradientResource *)&v7 initWithStartingColor:v4 endingColor:v3];

  return v5;
}

@end