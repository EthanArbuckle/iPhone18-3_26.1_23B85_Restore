@interface GKMultiplayerPickerAddFriendsSupplementary
+ (NSString)reuseIdentifier;
+ (double)preferredHeightFitting:(CGSize)fitting inTraitEnvironment:(id)environment;
- (id)addFriendsHandler;
- (void)layoutSubviews;
- (void)setAddFriendsHandler:(id)handler;
@end

@implementation GKMultiplayerPickerAddFriendsSupplementary

+ (NSString)reuseIdentifier
{
  static GKMultiplayerPickerAddFriendsSupplementary.reuseIdentifier.getter();
  v2 = sub_24E347CB8();

  return v2;
}

- (id)addFriendsHandler
{
  v2 = GKMultiplayerPickerAddFriendsSupplementary.addFriendsHandler.getter();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_24E00B24C;
    v6[3] = &block_descriptor_9;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAddFriendsHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_24DFA0D08;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  GKMultiplayerPickerAddFriendsSupplementary.addFriendsHandler.setter(v4, v5);
}

- (void)layoutSubviews
{
  selfCopy = self;
  GKMultiplayerPickerAddFriendsSupplementary.layoutSubviews()();
}

+ (double)preferredHeightFitting:(CGSize)fitting inTraitEnvironment:(id)environment
{
  width = fitting.width;
  swift_unknownObjectRetain();
  static GKMultiplayerPickerAddFriendsSupplementary.preferredHeight(fitting:in:)(environment, width);
  v7 = v6;
  swift_unknownObjectRelease();
  return v7;
}

@end