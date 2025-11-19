@interface _HearingAidInternalViewController
- (_TtC21HearingModeSettingsUI33_HearingAidInternalViewController)init;
- (id)makeMediaAssistViewControllerWithAddress:(id)a3 audiogramSample:(id)a4;
@end

@implementation _HearingAidInternalViewController

- (id)makeMediaAssistViewControllerWithAddress:(id)a3 audiogramSample:(id)a4
{
  sub_2520046E0();
  v5 = objc_allocWithZone(sub_252003E10());
  v6 = a4;
  v7 = sub_252003E00();

  return v7;
}

- (_TtC21HearingModeSettingsUI33_HearingAidInternalViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _HearingAidInternalViewController();
  return [(_HearingAidInternalViewController *)&v3 init];
}

@end