@interface ContactAwareSliderPositionDriver
- (double)velocity;
- (void)contactBeganWithAction:(id)a3;
- (void)contactEndedWithAction:(id)a3;
- (void)contactUpdatedWithAction:(id)a3;
@end

@implementation ContactAwareSliderPositionDriver

- (double)velocity
{
  v2 = self;
  sub_1B7ECEB44();
  v4 = v3;

  return v4;
}

- (void)contactBeganWithAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B7ECE1A0(v4);
}

- (void)contactUpdatedWithAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B7ECE358(v4);
}

- (void)contactEndedWithAction:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B7ECE734(a3);
}

@end