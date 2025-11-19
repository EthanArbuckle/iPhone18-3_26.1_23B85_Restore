@interface OU3DObjectRefinedBox
- (OU3DObjectRefinedBox)init;
@end

@implementation OU3DObjectRefinedBox

- (OU3DObjectRefinedBox)init
{
  v8.receiver = self;
  v8.super_class = OU3DObjectRefinedBox;
  v2 = [(OU3DObjectRefinedBox *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    preRefinedBox = v2->_preRefinedBox;
    v2->_preRefinedBox = v3;

    v5 = objc_opt_new();
    refinedBox = v2->_refinedBox;
    v2->_refinedBox = v5;
  }

  v2->isOutlier = 0;
  v2->frameIndex = 0;
  return v2;
}

@end