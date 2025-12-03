@interface CPSPointsOfInterestPickerCell
+ (NSString)identifier;
- (_TtC14CarPlaySupport29CPSPointsOfInterestPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setChosen:(BOOL)chosen;
@end

@implementation CPSPointsOfInterestPickerCell

+ (NSString)identifier
{
  swift_getObjCClassMetadata();
  v2 = static CPSPointsOfInterestPickerCell.identifier.getter();
  v3 = MEMORY[0x245D29B10](v2);

  return v3;
}

- (void)setChosen:(BOOL)chosen
{
  selfCopy = self;
  CPSPointsOfInterestPickerCell.chosen.setter(chosen);
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  CPSPointsOfInterestPickerCell.didUpdateFocus(in:with:)(contextCopy, coordinatorCopy);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  CPSPointsOfInterestPickerCell.updateConfiguration(using:)();

  (*(v5 + 8))(v7, v4);
}

- (_TtC14CarPlaySupport29CPSPointsOfInterestPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return CPSPointsOfInterestPickerCell.init(style:reuseIdentifier:)(style);
}

@end