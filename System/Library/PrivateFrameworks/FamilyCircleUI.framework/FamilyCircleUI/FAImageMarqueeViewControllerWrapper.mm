@interface FAImageMarqueeViewControllerWrapper
- (FAImageMarqueeViewControllerWrapper)initWithFamilyCircle:(id)circle;
- (FAImageMarqueeViewControllerWrapper)initWithMembersToRender:(id)render familyCircle:(id)circle;
@end

@implementation FAImageMarqueeViewControllerWrapper

- (FAImageMarqueeViewControllerWrapper)initWithFamilyCircle:(id)circle
{
  circleCopy = circle;
  v9.receiver = self;
  v9.super_class = FAImageMarqueeViewControllerWrapper;
  v5 = [(FAImageMarqueeViewControllerWrapper *)&v9 init];
  if (v5)
  {
    v6 = [[_TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl alloc] initWithFamilyCircle:circleCopy];
    impl = v5->_impl;
    v5->_impl = v6;
  }

  return v5;
}

- (FAImageMarqueeViewControllerWrapper)initWithMembersToRender:(id)render familyCircle:(id)circle
{
  renderCopy = render;
  circleCopy = circle;
  v12.receiver = self;
  v12.super_class = FAImageMarqueeViewControllerWrapper;
  v8 = [(FAImageMarqueeViewControllerWrapper *)&v12 init];
  if (v8)
  {
    v9 = [[_TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl alloc] initWithMembersToRender:renderCopy familyCircle:circleCopy];
    impl = v8->_impl;
    v8->_impl = v9;
  }

  return v8;
}

@end