@interface FAImageMarqueeViewControllerWrapper
- (FAImageMarqueeViewControllerWrapper)initWithFamilyCircle:(id)a3;
- (FAImageMarqueeViewControllerWrapper)initWithMembersToRender:(id)a3 familyCircle:(id)a4;
@end

@implementation FAImageMarqueeViewControllerWrapper

- (FAImageMarqueeViewControllerWrapper)initWithFamilyCircle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FAImageMarqueeViewControllerWrapper;
  v5 = [(FAImageMarqueeViewControllerWrapper *)&v9 init];
  if (v5)
  {
    v6 = [[_TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl alloc] initWithFamilyCircle:v4];
    impl = v5->_impl;
    v5->_impl = v6;
  }

  return v5;
}

- (FAImageMarqueeViewControllerWrapper)initWithMembersToRender:(id)a3 familyCircle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = FAImageMarqueeViewControllerWrapper;
  v8 = [(FAImageMarqueeViewControllerWrapper *)&v12 init];
  if (v8)
  {
    v9 = [[_TtC14FamilyCircleUI29FAImageMarqueeViewWrapperImpl alloc] initWithMembersToRender:v6 familyCircle:v7];
    impl = v8->_impl;
    v8->_impl = v9;
  }

  return v8;
}

@end