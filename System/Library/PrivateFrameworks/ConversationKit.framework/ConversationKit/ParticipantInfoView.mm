@interface ParticipantInfoView
- (_TtC15ConversationKit33ParticipantViewLabelContainerView)nameLabel;
- (void)didTapExpandButton;
- (void)didTapShutterButton;
- (void)layoutSubviews;
- (void)setIsMomentsAvailable:(BOOL)available;
@end

@implementation ParticipantInfoView

- (_TtC15ConversationKit33ParticipantViewLabelContainerView)nameLabel
{
  v2 = ParticipantInfoView.nameLabel.getter();

  return v2;
}

- (void)setIsMomentsAvailable:(BOOL)available
{
  selfCopy = self;
  ParticipantInfoView.isMomentsAvailable.setter(available);
}

- (void)layoutSubviews
{
  selfCopy = self;
  ParticipantInfoView.layoutSubviews()();
}

- (void)didTapExpandButton
{
  selfCopy = self;
  ParticipantInfoView.didTapExpandButton()();
}

- (void)didTapShutterButton
{
  selfCopy = self;
  ParticipantInfoView.didTapShutterButton()();
}

@end