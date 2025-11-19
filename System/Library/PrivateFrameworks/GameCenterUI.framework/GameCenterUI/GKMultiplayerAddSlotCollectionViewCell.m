@interface GKMultiplayerAddSlotCollectionViewCell
+ (NSString)reuseIdentifier;
- (CGSize)sizeThatFits:(CGSize)a3;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (UIButton)accessibilityAddSlotButton;
- (id)addSlotActionHandler;
- (void)layoutSubviews;
- (void)setAddSlotActionHandler:(id)a3;
- (void)setMaximumAdditionalPlayers:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)setAddSlotActionHandler:(id)a3
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
  GKMultiplayerAddSlotCollectionViewCell.addSlotActionHandler.setter(v4, v5);
}

- (void)setMaximumAdditionalPlayers:(int64_t)a3
{
  v4 = self;
  GKMultiplayerAddSlotCollectionViewCell.maximumAdditionalPlayers.setter(a3);
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_24E257AD4(a4, v6);
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = GKMultiplayerAddSlotCollectionViewCell.sizeThatFits(_:)(__PAIR128__(*&height, *&width));

  v7 = v6.width;
  v8 = v6.height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  GKMultiplayerAddSlotCollectionViewCell.layoutSubviews()();
}

- (UIButton)accessibilityAddSlotButton
{
  v2 = sub_24E256DF8();

  return v2;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v7.value.super.isa = self;
  isa = v7.value.super.isa;
  GKMultiplayerAddSlotCollectionViewCell.traitCollectionDidChange(_:)(v7);
}

@end