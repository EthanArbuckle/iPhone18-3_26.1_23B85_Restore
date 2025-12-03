@interface ParticipantMonogramView
- (UIButton)ringButton;
- (_TtC15ConversationKit33ParticipantViewLabelContainerView)subtitleLabelContainer;
- (_TtC15ConversationKit33ParticipantViewLabelContainerView)titleLabelContainer;
- (void)didTapRingButton;
- (void)layoutSubviews;
- (void)setRingButton:(id)button;
@end

@implementation ParticipantMonogramView

- (UIButton)ringButton
{
  v2 = ParticipantMonogramView.ringButton.getter();

  return v2;
}

- (void)setRingButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ParticipantMonogramView.ringButton.setter(buttonCopy);
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
  selfCopy = self;
  ParticipantMonogramView.layoutSubviews()();
}

- (void)didTapRingButton
{
  selfCopy = self;
  ParticipantMonogramView.didTapRingButton()();
}

@end