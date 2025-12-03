@interface InCallControlsParticipantCell
- (UILabel)nameLabel;
- (UILabel)subtitleLabel;
- (_TtC15ConversationKit19InCallControlButton)actionButton;
- (_TtC15ConversationKit19InCallControlButton)kickMemberButton;
- (_TtC15ConversationKit19InCallControlButton)lmiApproveButton;
- (_TtC15ConversationKit19InCallControlButton)lmiRejectButton;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setKickMemberButton:(id)button;
- (void)setLmiApproveButton:(id)button;
- (void)setLmiRejectButton:(id)button;
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
  selfCopy = self;
  v3 = InCallControlsParticipantCell.lmiApproveButton.getter(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiApproveButton, closure #1 in InCallControlsParticipantCell.lmiApproveButton.getter);

  return v3;
}

- (void)setLmiApproveButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  InCallControlsParticipantCell.lmiApproveButton.setter(buttonCopy);
}

- (_TtC15ConversationKit19InCallControlButton)lmiRejectButton
{
  selfCopy = self;
  v3 = InCallControlsParticipantCell.lmiApproveButton.getter(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___lmiRejectButton, closure #1 in InCallControlsParticipantCell.lmiRejectButton.getter);

  return v3;
}

- (void)setLmiRejectButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  InCallControlsParticipantCell.lmiRejectButton.setter(buttonCopy);
}

- (_TtC15ConversationKit19InCallControlButton)kickMemberButton
{
  selfCopy = self;
  v3 = InCallControlsParticipantCell.lmiApproveButton.getter(&OBJC_IVAR____TtC15ConversationKit29InCallControlsParticipantCell____lazy_storage___kickMemberButton, closure #1 in InCallControlsParticipantCell.kickMemberButton.getter);

  return v3;
}

- (void)setKickMemberButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  InCallControlsParticipantCell.kickMemberButton.setter(buttonCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  InCallControlsParticipantCell.layoutSubviews()();
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  v6.super.isa = InCallControlsParticipantCell.preferredLayoutAttributesFitting(_:)(attributesCopy).super.isa;

  return v6.super.isa;
}

@end