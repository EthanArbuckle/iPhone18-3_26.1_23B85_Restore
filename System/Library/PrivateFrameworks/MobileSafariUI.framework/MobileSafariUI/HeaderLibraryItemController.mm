@interface HeaderLibraryItemController
- (BOOL)isEqual:(id)equal;
- (HeaderLibraryItemController)initWithConfiguration:(id)configuration;
- (HeaderLibraryItemController)initWithConfiguration:(id)configuration headerType:(unint64_t)type;
- (NSArray)accessories;
- (NSString)accessibilityIdentifier;
- (NSString)title;
- (int64_t)hash;
- (void)updateListContentConfiguration:(id)configuration;
- (void)willToggleExpansionState;
@end

@implementation HeaderLibraryItemController

- (HeaderLibraryItemController)initWithConfiguration:(id)configuration headerType:(unint64_t)type
{
  *(&self->super.super.isa + OBJC_IVAR___HeaderLibraryItemController__isExpanded) = 1;
  *(&self->super.super.isa + OBJC_IVAR___HeaderLibraryItemController_headerType) = type;
  v5.receiver = self;
  v5.super_class = HeaderLibraryItemController;
  return [(LibraryItemController *)&v5 initWithConfiguration:configuration];
}

- (int64_t)hash
{
  selfCopy = self;
  accessibilityIdentifier = [(HeaderLibraryItemController *)selfCopy accessibilityIdentifier];
  v4 = sub_215A70540();
  v6 = v5;

  v7 = MEMORY[0x216073090](v4, v6);

  return v7;
}

- (NSString)accessibilityIdentifier
{
  selfCopy = self;
  headerType = [(HeaderLibraryItemController *)selfCopy headerType];
  if (!headerType || headerType == 2 || headerType == 1)
  {

    v4 = sub_215A70500();

    return v4;
  }

  else
  {
    type metadata accessor for LibraryHeaderType(0);
    result = sub_215A70DB0();
    __break(1u);
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = HeaderLibraryItemController.isEqual(_:)(v8);

  sub_21583FDA0(v8);
  return v6;
}

- (NSString)title
{
  selfCopy = self;
  sub_215A41BA0();

  v3 = sub_215A70500();

  return v3;
}

- (void)willToggleExpansionState
{
  selfCopy = self;
  [(HeaderLibraryItemController *)selfCopy set_isExpanded:[(HeaderLibraryItemController *)selfCopy _isExpanded]^ 1];
}

- (void)updateListContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  [configurationCopy setImage_];
  title = [(HeaderLibraryItemController *)selfCopy title];
  [configurationCopy setText_];
}

- (NSArray)accessories
{
  _sSo27HeaderLibraryItemControllerC14MobileSafariUIE11accessoriesSaySo15UICellAccessoryCGvg_0();
  sub_2159F7DA8(0, &qword_27CA7E310);
  v2 = sub_215A705D0();

  return v2;
}

- (HeaderLibraryItemController)initWithConfiguration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end