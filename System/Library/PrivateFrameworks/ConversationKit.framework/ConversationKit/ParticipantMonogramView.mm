@interface ParticipantMonogramView
- (UIButton)ringButton;
- (_TtC15ConversationKit33ParticipantViewLabelContainerView)subtitleLabelContainer;
- (_TtC15ConversationKit33ParticipantViewLabelContainerView)titleLabelContainer;
- (void)didTapRingButton;
- (void)layoutSubviews;
- (void)setRingButton:(id)a3;
@end

@implementation ParticipantMonogramView

- (UIButton)ringButton
{
  v2 = ParticipantMonogramView.ringButton.getter();

  return v2;
}

- (void)setRingButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ParticipantMonogramView.ringButton.setter(v4);
}

- (_TtC15ConversationKit33ParticipantViewLabelContainerView)titleLabelContainer
{
  v2 = ParticipantMonogramView.titleLabelContainer.getter();

  return v2;
}

- (_TtC15ConversationKit33ParticipantViewLabelContainerView)subtitleLabelContainer
{
  v2 = ParticipantMonogramView.subtitleLabelContainer.getter();

  return v2;
}

- (void)layoutSubviews
{
  v2 = self;
  ParticipantMonogramView.layoutSubviews()();
}

- (void)didTapRingButton
{
  v2 = self;
  ParticipantMonogramView.didTapRingButton()();
}

@end