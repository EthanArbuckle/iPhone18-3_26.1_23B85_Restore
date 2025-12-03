@interface GKMultiplayerParticipantCollectionViewCell
+ (NSString)reuseIdentifier;
- (BOOL)removeButtonHidden;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityNameLabel;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilitySubtitleLabel;
- (_TtC12GameCenterUI23GKMultiplayerStatusView)accessibilityStatusAccessoryView;
- (id)tapHandler;
- (void)applyWithParticipant:(id)participant number:(int64_t)number isRemovingEnabled:(BOOL)enabled isInvitingEnabled:(BOOL)invitingEnabled layoutMode:(int64_t)mode;
- (void)didTapRemoveButton:(id)button;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setRemoveButtonHidden:(BOOL)hidden;
- (void)setSharePlayEnabled:(BOOL)enabled;
- (void)setTapHandler:(id)handler;
@end

@implementation GKMultiplayerParticipantCollectionViewCell

+ (NSString)reuseIdentifier
{
  static GKMultiplayerParticipantCollectionViewCell.reuseIdentifier.getter();
  v2 = sub_24E347CB8();

  return v2;
}

- (void)setSharePlayEnabled:(BOOL)enabled
{
  selfCopy = self;
  GKMultiplayerParticipantCollectionViewCell.sharePlayEnabled.setter(enabled);
}

- (id)tapHandler
{
  v2 = GKMultiplayerParticipantCollectionViewCell.tapHandler.getter();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_24DF86DA0;
    v6[3] = &block_descriptor;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setTapHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24DF889E4;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  GKMultiplayerParticipantCollectionViewCell.tapHandler.setter(v4, v5);
}

- (BOOL)removeButtonHidden
{
  selfCopy = self;
  v3 = GKMultiplayerParticipantCollectionViewCell.removeButtonHidden.getter();

  return v3 & 1;
}

- (void)setRemoveButtonHidden:(BOOL)hidden
{
  selfCopy = self;
  GKMultiplayerParticipantCollectionViewCell.removeButtonHidden.setter(hidden);
}

- (void)applyWithParticipant:(id)participant number:(int64_t)number isRemovingEnabled:(BOOL)enabled isInvitingEnabled:(BOOL)invitingEnabled layoutMode:(int64_t)mode
{
  participantCopy = participant;
  selfCopy = self;
  GKMultiplayerParticipantCollectionViewCell.apply(participant:number:isRemovingEnabled:isInvitingEnabled:layoutMode:)(participantCopy, number, 0, 0, mode);
}

- (void)layoutSubviews
{
  selfCopy = self;
  GKMultiplayerParticipantCollectionViewCell.layoutSubviews()();
}

- (void)prepareForReuse
{
  selfCopy = self;
  GKMultiplayerParticipantCollectionViewCell.prepareForReuse()();
}

- (void)didTapRemoveButton:(id)button
{
  if (button)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_24DF88240();

  sub_24DF8894C(v6);
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityNameLabel
{
  v2 = sub_24DF88584();

  return v2;
}

- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilitySubtitleLabel
{
  v2 = sub_24DF885C4();

  return v2;
}

- (_TtC12GameCenterUI23GKMultiplayerStatusView)accessibilityStatusAccessoryView
{
  v2 = sub_24DF88604();

  return v2;
}

@end