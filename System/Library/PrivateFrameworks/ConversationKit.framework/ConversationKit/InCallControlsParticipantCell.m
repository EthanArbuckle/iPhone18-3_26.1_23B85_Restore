@interface InCallControlsParticipantCell
- (UILabel)nameLabel;
- (UILabel)subtitleLabel;
- (_TtC15ConversationKit19InCallControlButton)actionButton;
- (_TtC15ConversationKit19InCallControlButton)kickMemberButton;
- (_TtC15ConversationKit19InCallControlButton)lmiApproveButton;
- (_TtC15ConversationKit19InCallControlButton)lmiRejectButton;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setKickMemberButton:(id)a3;
- (void)setLmiApproveButton:(id)a3;
- (void)setLmiRejectButton:(id)a3;
@end

@implementation InCallControlsParticipantCell

- (UILabel)nameLabel
{
  v2 = InCallControlsParticipantCell.nameLabel.getter();

  return v2;
}

- (UILabel)subtitleLabel
{
  v2 = InCallControlsParticipantCell.subtitleLabel.getter();

  return v2;
}

- (_TtC15ConversationKit19InCallControlButton)actionButton
{
  v2 = InCallControlsParticipantCell.actionButton.getter();

  return v2;
}

- (_TtC15ConversationKit19InCallControlButton)lmiApproveButton
{
  v2 = self;
  v3 = InCallControlsParticipantCell.lmiApproveButton.getter(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiApproveButton, closure #1 in InCallControlsParticipantCell.lmiApproveButton.getter);

  return v3;
}

- (void)setLmiApproveButton:(id)a3
{
  v4 = a3;
  v5 = self;
  InCallControlsParticipantCell.lmiApproveButton.setter(v4);
}

- (_TtC15ConversationKit19InCallControlButton)lmiRejectButton
{
  v2 = self;
  v3 = InCallControlsParticipantCell.lmiApproveButton.getter(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton, closure #1 in InCallControlsParticipantCell.lmiRejectButton.getter);

  return v3;
}

- (void)setLmiRejectButton:(id)a3
{
  v4 = a3;
  v5 = self;
  InCallControlsParticipantCell.lmiRejectButton.setter(v4);
}

- (_TtC15ConversationKit19InCallControlButton)kickMemberButton
{
  v2 = self;
  v3 = InCallControlsParticipantCell.lmiApproveButton.getter(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___kickMemberButton, closure #1 in InCallControlsParticipantCell.kickMemberButton.getter);

  return v3;
}

- (void)setKickMemberButton:(id)a3
{
  v4 = a3;
  v5 = self;
  InCallControlsParticipantCell.kickMemberButton.setter(v4);
}

- (void)layoutSubviews
{
  v2 = self;
  InCallControlsParticipantCell.layoutSubviews()();
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6.super.isa = InCallControlsParticipantCell.preferredLayoutAttributesFitting(_:)(v4).super.isa;

  return v6.super.isa;
}

@end