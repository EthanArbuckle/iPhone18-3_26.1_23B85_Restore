@interface HKBarSeriesFillStyleBezierPaths
- (HKBarSeriesFillStyleBezierPaths)init;
@end

@implementation HKBarSeriesFillStyleBezierPaths

- (HKBarSeriesFillStyleBezierPaths)init
{
  v8.receiver = self;
  v8.super_class = HKBarSeriesFillStyleBezierPaths;
  v2 = [(HKBarSeriesFillStyleBezierPaths *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    selectedBezierPath = v2->_selectedBezierPath;
    v2->_selectedBezierPath = v3;

    v5 = objc_opt_new();
    unselectedBezierPath = v2->_unselectedBezierPath;
    v2->_unselectedBezierPath = v5;
  }

  return v2;
}

@end