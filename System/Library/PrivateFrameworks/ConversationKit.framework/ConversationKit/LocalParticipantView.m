@interface LocalParticipantView
- (_TtC15ConversationKit28LocalParticipantControlsView)controlsView;
- (void)handleLongPress:(id)a3;
- (void)layoutSubviews;
- (void)updateCountdownWith:(int64_t)a3;
@end

@implementation LocalParticipantView

- (_TtC15ConversationKit28LocalParticipantControlsView)controlsView
{
  v2 = LocalParticipantView.controlsView.getter();

  return v2;
}

- (void)handleLongPress:(id)a3
{
  v4 = a3;
  v5 = self;
  LocalParticipantView.handleLongPress(_:)(v4);
}

- (void)layoutSubviews
{
  v2 = self;
  LocalParticipantView.layoutSubviews()();
}

- (void)updateCountdownWith:(int64_t)a3
{
  v4 = self;
  LocalParticipantView.updateCountdownWith(_:)(a3);
}

@end