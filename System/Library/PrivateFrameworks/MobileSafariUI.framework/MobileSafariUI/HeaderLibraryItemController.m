@interface HeaderLibraryItemController
- (BOOL)isEqual:(id)a3;
- (HeaderLibraryItemController)initWithConfiguration:(id)a3;
- (HeaderLibraryItemController)initWithConfiguration:(id)a3 headerType:(unint64_t)a4;
- (NSArray)accessories;
- (NSString)accessibilityIdentifier;
- (NSString)title;
- (int64_t)hash;
- (void)updateListContentConfiguration:(id)a3;
- (void)willToggleExpansionState;
@end

@implementation HeaderLibraryItemController

- (HeaderLibraryItemController)initWithConfiguration:(id)a3 headerType:(unint64_t)a4
{
  *(&self->super.super.isa + OBJC_IVAR___HeaderLibraryItemController__isExpanded) = 1;
  *(&self->super.super.isa + OBJC_IVAR___HeaderLibraryItemController_headerType) = a4;
  v5.receiver = self;
  v5.super_class = HeaderLibraryItemController;
  return [(LibraryItemController *)&v5 initWithConfiguration:a3];
}

- (int64_t)hash
{
  v2 = self;
  v3 = [(HeaderLibraryItemController *)v2 accessibilityIdentifier];
  v4 = sub_215A70540();
  v6 = v5;

  v7 = MEMORY[0x216073090](v4, v6);

  return v7;
}

- (NSString)accessibilityIdentifier
{
  v2 = self;
  v3 = [(HeaderLibraryItemController *)v2 headerType];
  if (!v3 || v3 == 2 || v3 == 1)
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

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_215A70B70();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = HeaderLibraryItemController.isEqual(_:)(v8);

  sub_21583FDA0(v8);
  return v6;
}

- (NSString)title
{
  v2 = self;
  sub_215A41BA0();

  v3 = sub_215A70500();

  return v3;
}

- (void)willToggleExpansionState
{
  v2 = self;
  [(HeaderLibraryItemController *)v2 set_isExpanded:[(HeaderLibraryItemController *)v2 _isExpanded]^ 1];
}

- (void)updateListContentConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  [v4 setImage_];
  v6 = [(HeaderLibraryItemController *)v5 title];
  [v4 setText_];
}

- (NSArray)accessories
{
  _sSo27HeaderLibraryItemControllerC14MobileSafariUIE11accessoriesSaySo15UICellAccessoryCGvg_0();
  sub_2159F7DA8(0, &qword_27CA7E310);
  v2 = sub_215A705D0();

  return v2;
}

- (HeaderLibraryItemController)initWithConfiguration:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end