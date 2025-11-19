@interface HIDPassthroughSliderPositionDriver
- (void)contactBeganWithAction:(id)a3;
- (void)contactEndedWithAction:(id)a3;
- (void)contactUpdatedWithAction:(id)a3;
@end

@implementation HIDPassthroughSliderPositionDriver

- (void)contactBeganWithAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B7EC7F30(v4);
}

- (void)contactUpdatedWithAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B7EC8054(v4);
}

- (void)contactEndedWithAction:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1B7EC822C(a3);
}

@end