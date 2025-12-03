@interface ControlsIconModelLoader
- (SBHIconGridSize)iconModel:(id)model listGridSizeForFolderClass:(Class)class;
- (_TtC15ControlCenterUI23ControlsIconModelLoader)init;
- (id)gridSizeClassSizesForIconModel:(id)model;
- (id)iconModel:(id)model allowedGridSizeClassesForFolderClass:(Class)class;
- (id)iconModel:(id)model iconDataSourceForArchiveRepresentation:(id)representation;
- (id)listRotatedLayoutClusterGridSizeClassForIconModel:(id)model;
- (id)rotatedGridSizeClassSizesForIconModel:(id)model;
- (id)versionForIconStateArchiver:;
- (int64_t)iconModel:(id)model maxColumnCountForListInRootFolderWithInterfaceOrientation:(int64_t)orientation;
- (int64_t)iconModel:(id)model maxRowCountForListInRootFolderWithInterfaceOrientation:(int64_t)orientation;
@end

@implementation ControlsIconModelLoader

- (id)versionForIconStateArchiver:
{
  initWithInteger_ = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];

  return initWithInteger_;
}

- (_TtC15ControlCenterUI23ControlsIconModelLoader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SBHIconGridSize)iconModel:(id)model listGridSizeForFolderClass:(Class)class
{
  v4 = sub_21EAA4DC4();
  v6 = v5;
  v8 = v7;

  return v4;
}

- (int64_t)iconModel:(id)model maxRowCountForListInRootFolderWithInterfaceOrientation:(int64_t)orientation
{
  IsPortrait = UIInterfaceOrientationIsPortrait(orientation);
  selfCopy = self;
  v7 = sub_21EAA4DC4();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (IsPortrait)
  {
    return HIWORD(v7);
  }

  else
  {
    return v7;
  }
}

- (int64_t)iconModel:(id)model maxColumnCountForListInRootFolderWithInterfaceOrientation:(int64_t)orientation
{
  IsPortrait = UIInterfaceOrientationIsPortrait(orientation);
  selfCopy = self;
  v7 = sub_21EAA4DC4();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (IsPortrait)
  {
    return v7;
  }

  else
  {
    return HIWORD(v7);
  }
}

- (id)gridSizeClassSizesForIconModel:(id)model
{
  sub_21EAA4DC4();
  v4 = v3;
  v6 = v5;

  return v4;
}

- (id)listRotatedLayoutClusterGridSizeClassForIconModel:(id)model
{
  v3 = SBHIconGridSizeClassForCCUIGridSizeClass();

  return v3;
}

- (id)rotatedGridSizeClassSizesForIconModel:(id)model
{
  sub_21EAA4DC4();
  v4 = v3;
  v6 = v5;

  return v4;
}

- (id)iconModel:(id)model allowedGridSizeClassesForFolderClass:(Class)class
{
  sub_21EAA4DC4();
  v5 = v4;
  v7 = v6;

  return v7;
}

- (id)iconModel:(id)model iconDataSourceForArchiveRepresentation:(id)representation
{
  v5 = sub_21EAA8DB0();
  selfCopy = self;
  v7 = sub_21EAA3198(v5);

  return v7;
}

@end