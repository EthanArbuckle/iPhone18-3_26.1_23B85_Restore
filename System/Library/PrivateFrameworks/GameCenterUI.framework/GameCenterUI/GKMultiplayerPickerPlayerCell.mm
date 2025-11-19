@interface GKMultiplayerPickerPlayerCell
+ (CGSize)preferredSizeFitting:(CGSize)a3 inTraitEnvironment:(id)a4;
+ (NSString)reuseIdentifier;
- (void)applyWithPlayer:(id)a3 isCoreRecent:(BOOL)a4;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation GKMultiplayerPickerPlayerCell

+ (NSString)reuseIdentifier
{
  static GKMultiplayerPickerPlayerCell.reuseIdentifier.getter();
  v2 = sub_24E347CB8();

  return v2;
}

- (void)layoutSubviews
{
  v2 = self;
  GKMultiplayerPickerPlayerCell.layoutSubviews()();
}

- (void)applyWithPlayer:(id)a3 isCoreRecent:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  GKMultiplayerPickerPlayerCell.apply(player:isCoreRecent:)(v6, a4);
}

+ (CGSize)preferredSizeFitting:(CGSize)a3 inTraitEnvironment:(id)a4
{
  swift_unknownObjectRetain();
  static GKMultiplayerPickerPlayerCell.preferredSize(fitting:in:)(a4);
  v6 = v5;
  v8 = v7;
  swift_unknownObjectRelease();
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  GKMultiplayerPickerPlayerCell.traitCollectionDidChange(_:)(v9);
}

@end