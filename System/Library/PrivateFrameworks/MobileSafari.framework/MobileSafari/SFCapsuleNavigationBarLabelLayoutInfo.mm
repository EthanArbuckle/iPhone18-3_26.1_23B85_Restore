@interface SFCapsuleNavigationBarLabelLayoutInfo
- (SFCapsuleNavigationBarLabelLayoutInfo)initWithView:(id)view;
@end

@implementation SFCapsuleNavigationBarLabelLayoutInfo

- (SFCapsuleNavigationBarLabelLayoutInfo)initWithView:(id)view
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = SFCapsuleNavigationBarLabelLayoutInfo;
  v6 = [(SFCapsuleNavigationBarLabelLayoutInfo *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, view);
    v8 = v7;
  }

  return v7;
}

@end