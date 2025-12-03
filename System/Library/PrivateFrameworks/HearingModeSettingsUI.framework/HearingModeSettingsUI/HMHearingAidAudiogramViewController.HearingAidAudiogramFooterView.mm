@interface HMHearingAidAudiogramViewController.HearingAidAudiogramFooterView
- (CGSize)intrinsicContentSize;
- (_TtCE21HearingModeSettingsUICSo35HMHearingAidAudiogramViewController29HearingAidAudiogramFooterView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation HMHearingAidAudiogramViewController.HearingAidAudiogramFooterView

- (CGSize)intrinsicContentSize
{
  v11.receiver = self;
  v11.super_class = _s29HearingAidAudiogramFooterViewCMa();
  v2 = v11.receiver;
  [(HMHearingAidAudiogramViewController.HearingAidAudiogramFooterView *)&v11 intrinsicContentSize];
  v4 = v3;
  [*&v2[OBJC_IVAR____TtCE21HearingModeSettingsUICSo35HMHearingAidAudiogramViewController29HearingAidAudiogramFooterView_inLabel] intrinsicContentSize];
  v6 = v5;
  [*&v2[OBJC_IVAR____TtCE21HearingModeSettingsUICSo35HMHearingAidAudiogramViewController29HearingAidAudiogramFooterView_button] intrinsicContentSize];
  v8 = v7;

  v9 = v6 + v8;
  v10 = v4;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = _s29HearingAidAudiogramFooterViewCMa();
  v2 = v10.receiver;
  [(HMHearingAidAudiogramViewController.HearingAidAudiogramFooterView *)&v10 layoutSubviews];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  [v2 frame];
  v8 = v7;
  [v2 intrinsicContentSize];
  [v2 setFrame_];
}

- (_TtCE21HearingModeSettingsUICSo35HMHearingAidAudiogramViewController29HearingAidAudiogramFooterView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end