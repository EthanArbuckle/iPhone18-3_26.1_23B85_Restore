@interface FLPreferencesTapActionResult
- (FLPreferencesTapActionResult)initWithViewControllerToPresent:(id)present presentationStyle:(unint64_t)style;
@end

@implementation FLPreferencesTapActionResult

- (FLPreferencesTapActionResult)initWithViewControllerToPresent:(id)present presentationStyle:(unint64_t)style
{
  presentCopy = present;
  v11.receiver = self;
  v11.super_class = FLPreferencesTapActionResult;
  v8 = [(FLPreferencesTapActionResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_viewControllerToPresent, present);
    v9->_presentationStyle = style;
  }

  return v9;
}

@end