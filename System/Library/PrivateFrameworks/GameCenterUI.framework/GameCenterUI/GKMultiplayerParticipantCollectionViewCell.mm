@interface GKMultiplayerParticipantCollectionViewCell
+ (NSString)reuseIdentifier;
- (BOOL)removeButtonHidden;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilityNameLabel;
- (_TtC12GameCenterUI16DynamicTypeLabel)accessibilitySubtitleLabel;
- (_TtC12GameCenterUI23GKMultiplayerStatusView)accessibilityStatusAccessoryView;
- (id)tapHandler;
- (void)applyWithParticipant:(id)a3 number:(int64_t)a4 isRemovingEnabled:(BOOL)a5 isInvitingEnabled:(BOOL)a6 layoutMode:(int64_t)a7;
- (void)didTapRemoveButton:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setRemoveButtonHidden:(BOOL)a3;
- (void)setSharePlayEnabled:(BOOL)a3;
- (void)setTapHandler:(id)a3;
@end

@implementation GKMultiplayerParticipantCollectionViewCell

+ (NSString)reuseIdentifier
{
  static GKMultiplayerParticipantCollectionViewCell.reuseIdentifier.getter();
  v2 = sub_24E347CB8();

  return v2;
}

- (void)setSharePlayEnabled:(BOOL)a3
{
  v4 = self;
  GKMultiplayerParticipantCollectionViewCell.sharePlayEnabled.setter(a3);
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

- (void)setTapHandler:(id)a3
{
  v4 = _Block_copy(a3);
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

  v6 = self;
  GKMultiplayerParticipantCollectionViewCell.tapHandler.setter(v4, v5);
}

- (BOOL)removeButtonHidden
{
  v2 = self;
  v3 = GKMultiplayerParticipantCollectionViewCell.removeButtonHidden.getter();

  return v3 & 1;
}

- (void)setRemoveButtonHidden:(BOOL)a3
{
  v4 = self;
  GKMultiplayerParticipantCollectionViewCell.removeButtonHidden.setter(a3);
}

- (void)applyWithParticipant:(id)a3 number:(int64_t)a4 isRemovingEnabled:(BOOL)a5 isInvitingEnabled:(BOOL)a6 layoutMode:(int64_t)a7
{
  v10 = a3;
  v11 = self;
  GKMultiplayerParticipantCollectionViewCell.apply(participant:number:isRemovingEnabled:isInvitingEnabled:layoutMode:)(v10, a4, 0, 0, a7);
}

- (void)layoutSubviews
{
  v2 = self;
  GKMultiplayerParticipantCollectionViewCell.layoutSubviews()();
}

- (void)prepareForReuse
{
  v2 = self;
  GKMultiplayerParticipantCollectionViewCell.prepareForReuse()();
}

- (void)didTapRemoveButton:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_24E3487A8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
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