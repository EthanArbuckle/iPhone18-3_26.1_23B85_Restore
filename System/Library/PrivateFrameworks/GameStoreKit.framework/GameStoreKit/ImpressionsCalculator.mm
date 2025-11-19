@interface ImpressionsCalculator
- (void)applicationDidEnterBackgroundWithNote:(id)a3;
- (void)applicationWillEnterForegroundWithNote:(id)a3;
@end

@implementation ImpressionsCalculator

- (void)applicationDidEnterBackgroundWithNote:(id)a3
{
  if (*(*self->base + 16))
  {

    v4 = sub_24F929BA8();
  }

  else
  {

    v4 = 0;
  }

  *(&self->super.isa + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_wasVisibleBeforeGoingIntoBackground) = v4 & 1;
  ImpressionsCalculator.isVisible.setter();
}

- (void)applicationWillEnterForegroundWithNote:(id)a3
{
  if (*(&self->super.isa + OBJC_IVAR____TtC12GameStoreKit21ImpressionsCalculator_wasVisibleBeforeGoingIntoBackground) != 2)
  {

    ImpressionsCalculator.isVisible.setter();
  }
}

@end