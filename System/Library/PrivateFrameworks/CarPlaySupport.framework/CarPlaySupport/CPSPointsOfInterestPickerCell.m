@interface CPSPointsOfInterestPickerCell
+ (NSString)identifier;
- (_TtC14CarPlaySupport29CPSPointsOfInterestPickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setChosen:(BOOL)a3;
@end

@implementation CPSPointsOfInterestPickerCell

+ (NSString)identifier
{
  swift_getObjCClassMetadata();
  v2 = static CPSPointsOfInterestPickerCell.identifier.getter();
  v3 = MEMORY[0x245D29B10](v2);

  return v3;
}

- (void)setChosen:(BOOL)a3
{
  v4 = self;
  CPSPointsOfInterestPickerCell.chosen.setter(a3);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CPSPointsOfInterestPickerCell.didUpdateFocus(in:with:)(v6, v7);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  CPSPointsOfInterestPickerCell.updateConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (_TtC14CarPlaySupport29CPSPointsOfInterestPickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return CPSPointsOfInterestPickerCell.init(style:reuseIdentifier:)(a3);
}

@end