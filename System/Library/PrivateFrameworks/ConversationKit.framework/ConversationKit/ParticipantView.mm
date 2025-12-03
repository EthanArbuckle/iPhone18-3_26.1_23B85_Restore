@interface ParticipantView
- (CGAffineTransform)transform;
- (_TtC15ConversationKit19ParticipantInfoView)infoView;
- (_TtC15ConversationKit21ParticipantViewButton)kickMemberButton;
- (_TtC15ConversationKit23ParticipantMonogramView)monogramView;
- (void)didTapKickMember;
- (void)layoutSubviews;
- (void)setInfoView:(id)view;
- (void)setIsExpanded:(BOOL)expanded;
- (void)setIsInRoster:(BOOL)roster;
- (void)setMonogramView:(id)view;
- (void)setShouldOverrideShadowHidden:(BOOL)hidden;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation ParticipantView

- (CGAffineTransform)transform
{
  selfCopy = self;
  ParticipantView.transform.getter(v8);

  v6 = v8[1];
  v7 = v8[2];
  *&retstr->a = v8[0];
  *&retstr->c = v6;
  *&retstr->tx = v7;
  return result;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->c;
  v5[0] = *&transform->a;
  v5[1] = v3;
  v5[2] = *&transform->tx;
  selfCopy = self;
  ParticipantView.transform.setter(v5);
}

- (_TtC15ConversationKit23ParticipantMonogramView)monogramView
{
  selfCopy = self;
  v3 = ParticipantView.monogramView.getter();

  return v3;
}

- (void)setMonogramView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  ParticipantView.monogramView.setter(viewCopy);
}

- (_TtC15ConversationKit19ParticipantInfoView)infoView
{
  selfCopy = self;
  v3 = ParticipantView.videoOverlayView.getter(&OBJC_IVAR____TtC15ConversationKit15ParticipantView____lazy_storage___infoView, type metadata accessor for ParticipantInfoView, ParticipantInfoView.init(localParticipant:));

  return v3;
}

- (void)setInfoView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  ParticipantView.infoView.setter(viewCopy);
}

- (_TtC15ConversationKit21ParticipantViewButton)kickMemberButton
{
  v2 = ParticipantView.kickMemberButton.getter();

  return v2;
}

- (void)setIsInRoster:(BOOL)roster
{
  selfCopy = self;
  ParticipantView.isInRoster.setter(roster);
}

- (void)setShouldOverrideShadowHidden:(BOOL)hidden
{
  selfCopy = self;
  ParticipantView.shouldOverrideShadowHidden.setter(hidden);
}

- (void)setIsExpanded:(BOOL)expanded
{
  selfCopy = self;
  ParticipantView.isExpanded.setter(expanded);
}

- (void)layoutSubviews
{
  selfCopy = self;
  ParticipantView.layoutSubviews()();
}

- (void)didTapKickMember
{
  selfCopy = self;
  ParticipantView.didTapKickMember()();
}

@end