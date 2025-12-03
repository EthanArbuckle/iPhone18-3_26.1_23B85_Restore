@interface GKMultiplayerPickerNoFriendsCell
+ (NSString)reuseIdentifier;
+ (double)itemHeightFitting:(CGSize)fitting inTraitEnvironment:(id)environment;
- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in;
- (id)addFriendsHandler;
- (void)layoutSubviews;
- (void)setAddFriendsHandler:(id)handler;
@end

@implementation GKMultiplayerPickerNoFriendsCell

+ (NSString)reuseIdentifier
{
  static GKMultiplayerPickerNoFriendsCell.reuseIdentifier.getter();
  v2 = sub_24E347CB8();

  return v2;
}

- (id)addFriendsHandler
{
  v2 = GKMultiplayerPickerNoFriendsCell.addFriendsHandler.getter();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_24E00B24C;
    v6[3] = &block_descriptor_27;
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
  GKMultiplayerPickerNoFriendsCell.addFriendsHandler.setter(v4, v5);
}

- (JUMeasurements)measurementsWithFitting:(CGSize)fitting in:(id)in
{
  swift_unknownObjectRetain();
  selfCopy = self;
  GKMultiplayerPickerNoFriendsCell.measurements(fitting:in:)();
  v7 = v6;
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

+ (double)itemHeightFitting:(CGSize)fitting inTraitEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  v5 = static GKMultiplayerPickerNoFriendsCell.itemHeight(fitting:in:)(environment);
  swift_unknownObjectRelease();
  return v5;
}

- (void)layoutSubviews
{
  selfCopy = self;
  GKMultiplayerPickerNoFriendsCell.layoutSubviews()();
}

@end