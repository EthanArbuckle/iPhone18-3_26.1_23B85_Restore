@interface ControlsIconModelLoader
- (SBHIconGridSize)iconModel:(id)a3 listGridSizeForFolderClass:(Class)a4;
- (_TtC15ControlCenterUI23ControlsIconModelLoader)init;
- (id)gridSizeClassSizesForIconModel:(id)a3;
- (id)iconModel:(id)a3 allowedGridSizeClassesForFolderClass:(Class)a4;
- (id)iconModel:(id)a3 iconDataSourceForArchiveRepresentation:(id)a4;
- (id)listRotatedLayoutClusterGridSizeClassForIconModel:(id)a3;
- (id)rotatedGridSizeClassSizesForIconModel:(id)a3;
- (id)versionForIconStateArchiver:;
- (int64_t)iconModel:(id)a3 maxColumnCountForListInRootFolderWithInterfaceOrientation:(int64_t)a4;
- (int64_t)iconModel:(id)a3 maxRowCountForListInRootFolderWithInterfaceOrientation:(int64_t)a4;
@end

@implementation ControlsIconModelLoader

- (id)versionForIconStateArchiver:
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];

  return v0;
}

- (_TtC15ControlCenterUI23ControlsIconModelLoader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (SBHIconGridSize)iconModel:(id)a3 listGridSizeForFolderClass:(Class)a4
{
  v4 = sub_21EAA4DC4();
  v6 = v5;
  v8 = v7;

  return v4;
}

- (int64_t)iconModel:(id)a3 maxRowCountForListInRootFolderWithInterfaceOrientation:(int64_t)a4
{
  IsPortrait = UIInterfaceOrientationIsPortrait(a4);
  v6 = self;
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

- (int64_t)iconModel:(id)a3 maxColumnCountForListInRootFolderWithInterfaceOrientation:(int64_t)a4
{
  IsPortrait = UIInterfaceOrientationIsPortrait(a4);
  v6 = self;
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

- (id)gridSizeClassSizesForIconModel:(id)a3
{
  sub_21EAA4DC4();
  v4 = v3;
  v6 = v5;

  return v4;
}

- (id)listRotatedLayoutClusterGridSizeClassForIconModel:(id)a3
{
  v3 = SBHIconGridSizeClassForCCUIGridSizeClass();

  return v3;
}

- (id)rotatedGridSizeClassSizesForIconModel:(id)a3
{
  sub_21EAA4DC4();
  v4 = v3;
  v6 = v5;

  return v4;
}

- (id)iconModel:(id)a3 allowedGridSizeClassesForFolderClass:(Class)a4
{
  sub_21EAA4DC4();
  v5 = v4;
  v7 = v6;

  return v7;
}

- (id)iconModel:(id)a3 iconDataSourceForArchiveRepresentation:(id)a4
{
  v5 = sub_21EAA8DB0();
  v6 = self;
  v7 = sub_21EAA3198(v5);

  return v7;
}

@end