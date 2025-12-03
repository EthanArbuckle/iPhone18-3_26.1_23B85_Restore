@interface WeakTapUI
- (void)vasReadSuccessWithMerchantNames:(id)names;
@end

@implementation WeakTapUI

- (void)vasReadSuccessWithMerchantNames:(id)names
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    namesCopy = names;
    [v5 vasReadSuccessWithMerchantNames_];

    swift_unknownObjectRelease();
  }
}

@end