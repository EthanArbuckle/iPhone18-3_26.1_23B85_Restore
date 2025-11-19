@interface ParticipantView
- (CGAffineTransform)transform;
- (_TtC15ConversationKit19ParticipantInfoView)infoView;
- (_TtC15ConversationKit21ParticipantViewButton)kickMemberButton;
- (_TtC15ConversationKit23ParticipantMonogramView)monogramView;
- (void)didTapKickMember;
- (void)layoutSubviews;
- (void)setInfoView:(id)a3;
- (void)setIsExpanded:(BOOL)a3;
- (void)setIsInRoster:(BOOL)a3;
- (void)setMonogramView:(id)a3;
- (void)setShouldOverrideShadowHidden:(BOOL)a3;
- (void)setTransform:(CGAffineTransform *)a3;
@end

@implementation ParticipantView

- (CGAffineTransform)transform
{
  v4 = self;
  ParticipantView.transform.getter(v8);

  v6 = v8[1];
  v7 = v8[2];
  *&retstr->a = v8[0];
  *&retstr->c = v6;
  *&retstr->tx = v7;
  return result;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->c;
  v5[0] = *&a3->a;
  v5[1] = v3;
  v5[2] = *&a3->tx;
  v4 = self;
  ParticipantView.transform.setter(v5);
}

- (_TtC15ConversationKit23ParticipantMonogramView)monogramView
{
  v2 = self;
  v3 = ParticipantView.monogramView.getter();

  return v3;
}

- (void)setMonogramView:(id)a3
{
  v4 = a3;
  v5 = self;
  ParticipantView.monogramView.setter(v4);
}

- (_TtC15ConversationKit19ParticipantInfoView)infoView
{
  v2 = self;
  v3 = ParticipantView.videoOverlayView.getter(&OBJC_IVAR____TtC15ConversationKit15ParticipantView____lazy_storage___infoView, type metadata accessor for ParticipantInfoView, ParticipantInfoView.init(localParticipant:));

  return v3;
}

- (void)setInfoView:(id)a3
{
  v4 = a3;
  v5 = self;
  ParticipantView.infoView.setter(v4);
}

- (_TtC15ConversationKit21ParticipantViewButton)kickMemberButton
{
  v2 = ParticipantView.kickMemberButton.getter();

  return v2;
}

- (void)setIsInRoster:(BOOL)a3
{
  v4 = self;
  ParticipantView.isInRoster.setter(a3);
}

- (void)setShouldOverrideShadowHidden:(BOOL)a3
{
  v4 = self;
  ParticipantView.shouldOverrideShadowHidden.setter(a3);
}

- (void)setIsExpanded:(BOOL)a3
{
  v4 = self;
  ParticipantView.isExpanded.setter(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  ParticipantView.layoutSubviews()();
}

- (void)didTapKickMember
{
  v2 = self;
  ParticipantView.didTapKickMember()();
}

@end