@interface LocalParticipantView
- (_TtC15ConversationKit28LocalParticipantControlsView)controlsView;
- (void)handleLongPress:(id)press;
- (void)layoutSubviews;
- (void)updateCountdownWith:(int64_t)with;
@end

@implementation LocalParticipantView

- (_TtC15ConversationKit28LocalParticipantControlsView)controlsView
{
  v2 = LocalParticipantView.controlsView.getter();

  return v2;
}

- (void)handleLongPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  LocalParticipantView.handleLongPress(_:)(pressCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  LocalParticipantView.layoutSubviews()();
}

- (void)updateCountdownWith:(int64_t)with
{
  selfCopy = self;
  LocalParticipantView.updateCountdownWith(_:)(with);
}

@end