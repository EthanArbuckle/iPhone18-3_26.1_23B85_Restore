@interface ControlCenterModuleLayoutManager
- (HUGridSize)gridSizeForItem:(id)item;
- (_TtC6HomeUI32ControlCenterModuleLayoutManager)init;
@end

@implementation ControlCenterModuleLayoutManager

- (HUGridSize)gridSizeForItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  v6 = sub_20CF74E80();
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.columnsAcross = v10;
  result.rowsDown = v9;
  return result;
}

- (_TtC6HomeUI32ControlCenterModuleLayoutManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end