@interface ParticipantInfoView
- (_TtC15ConversationKit33ParticipantViewLabelContainerView)nameLabel;
- (void)didTapExpandButton;
- (void)didTapShutterButton;
- (void)layoutSubviews;
- (void)setIsMomentsAvailable:(BOOL)a3;
@end

@implementation ParticipantInfoView

- (_TtC15ConversationKit33ParticipantViewLabelContainerView)nameLabel
{
  v2 = ParticipantInfoView.nameLabel.getter();

  return v2;
}

- (void)setIsMomentsAvailable:(BOOL)a3
{
  v4 = self;
  ParticipantInfoView.isMomentsAvailable.setter(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  ParticipantInfoView.layoutSubviews()();
}

- (void)didTapExpandButton
{
  v2 = self;
  ParticipantInfoView.didTapExpandButton()();
}

- (void)didTapShutterButton
{
  v2 = self;
  ParticipantInfoView.didTapShutterButton()();
}

@end