@interface HGHeadGestureResult
- (HGHeadGestureResult)init;
@end

@implementation HGHeadGestureResult

- (HGHeadGestureResult)init
{
  v5.receiver = self;
  v5.super_class = HGHeadGestureResult;
  v2 = [(HGHeadGestureResult *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(HGHeadGestureResult *)v2 setUuid:v3];
  }

  return v2;
}

@end