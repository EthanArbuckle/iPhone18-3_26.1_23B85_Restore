@interface FLPreferencesTapActionResult
- (FLPreferencesTapActionResult)initWithViewControllerToPresent:(id)a3 presentationStyle:(unint64_t)a4;
@end

@implementation FLPreferencesTapActionResult

- (FLPreferencesTapActionResult)initWithViewControllerToPresent:(id)a3 presentationStyle:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = FLPreferencesTapActionResult;
  v8 = [(FLPreferencesTapActionResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewControllerToPresent, a3);
    v9->_presentationStyle = a4;
  }

  return v9;
}

@end