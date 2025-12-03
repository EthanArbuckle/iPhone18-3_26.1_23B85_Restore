@interface GKMultiplayerAddSlotCollectionViewCell
+ (NSString)reuseIdentifier;
- (CGSize)sizeThatFits:(CGSize)fits;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (UIButton)accessibilityAddSlotButton;
- (id)addSlotActionHandler;
- (void)layoutSubviews;
- (void)setAddSlotActionHandler:(id)handler;
- (void)setMaximumAdditionalPlayers:(int64_t)players;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation GKMultiplayerAddSlotCollectionViewCell

+ (NSString)reuseIdentifier
{
  static GKMultiplayerAddSlotCollectionViewCell.reuseIdentifier.getter();
  v2 = sub_24E347CB8();

  return v2;
}

- (id)addSlotActionHandler
{
  v2 = GKMultiplayerAddSlotCollectionViewCell.addSlotActionHandler.getter();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_24E256030;
    v6[3] = &block_descriptor_84;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAddSlotActionHandler:(id)handler
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
  GKMultiplayerAddSlotCollectionViewCell.addSlotActionHandler.setter(v4, v5);
}

- (void)setMaximumAdditionalPlayers:(int64_t)players
{
  selfCopy = self;
  GKMultiplayerAddSlotCollectionViewCell.maximumAdditionalPlayers.setter(players);
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_24E257AD4(in, selfCopy);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v17;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = GKMultiplayerAddSlotCollectionViewCell.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  GKMultiplayerAddSlotCollectionViewCell.layoutSubviews()();
}

- (UIButton)accessibilityAddSlotButton
{
  v2 = sub_24E256DF8();

  return v2;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v7.value.super.isa = self;
  isa = v7.value.super.isa;
  GKMultiplayerAddSlotCollectionViewCell.traitCollectionDidChange(_:)(v7);
}

@end