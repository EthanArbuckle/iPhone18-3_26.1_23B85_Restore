@interface GKMultiplayerPickerPlayerCell
+ (CGSize)preferredSizeFitting:(CGSize)fitting inTraitEnvironment:(id)environment;
+ (NSString)reuseIdentifier;
- (void)applyWithPlayer:(id)player isCoreRecent:(BOOL)recent;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
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
  selfCopy = self;
  GKMultiplayerPickerPlayerCell.layoutSubviews()();
}

- (void)applyWithPlayer:(id)player isCoreRecent:(BOOL)recent
{
  playerCopy = player;
  selfCopy = self;
  GKMultiplayerPickerPlayerCell.apply(player:isCoreRecent:)(playerCopy, recent);
}

+ (CGSize)preferredSizeFitting:(CGSize)fitting inTraitEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  static GKMultiplayerPickerPlayerCell.preferredSize(fitting:in:)(environment);
  v6 = v5;
  v8 = v7;
  swift_unknownObjectRelease();
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  GKMultiplayerPickerPlayerCell.traitCollectionDidChange(_:)(v9);
}

@end