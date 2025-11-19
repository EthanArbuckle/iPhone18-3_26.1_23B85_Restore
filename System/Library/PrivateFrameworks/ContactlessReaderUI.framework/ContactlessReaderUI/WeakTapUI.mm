@interface WeakTapUI
- (void)vasReadSuccessWithMerchantNames:(id)a3;
@end

@implementation WeakTapUI

- (void)vasReadSuccessWithMerchantNames:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = a3;
    [v5 vasReadSuccessWithMerchantNames_];

    swift_unknownObjectRelease();
  }
}

@end