@interface IconListLayout
- (CGSize)iconSpacingForOrientation:(int64_t)orientation;
- (SBHIconGridSizeClassSet)supportedIconGridSizeClasses;
- (SBHIconGridSizeClassSizeMap)iconGridSizeClassSizes;
- (SBIconImageInfo)iconImageInfo;
- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)class;
- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)class orientation:(id)orientation;
- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)orientation;
- (_TtC15ControlCenterUI14IconListLayout)init;
- (id)iconGridSizeClassSizesForOrientation:(int64_t)orientation;
- (int64_t)numberOfColumnsForOrientation:(int64_t)orientation;
- (int64_t)numberOfRowsForOrientation:(int64_t)orientation;
- (void)setIconGridSizeClassSizes:(id)sizes;
@end

@implementation IconListLayout

- (SBIconImageInfo)iconImageInfo
{
  v3 = sub_21EAA9120();
  v4 = CCUIGridSizeClassForSBHIconGridSizeClass();
  CCUIPortraitMainListGridGeometryInfo();
  v6 = v5;
  v8 = v7;
  CCUIBoundsSizeForGridSizeClassWithGeometry();
  MEMORY[0x223D675B0](v4, v6, v8);
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];

  return result;
}

- (int64_t)numberOfColumnsForOrientation:(int64_t)orientation
{
  IsLandscape = UIInterfaceOrientationIsLandscape(orientation);
  selfCopy = self;
  v6 = 8;
  if (!IsLandscape)
  {
    v6 = 0;
  }

  v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout_portraitGridDimensions + v6);

  return v7;
}

- (int64_t)numberOfRowsForOrientation:(int64_t)orientation
{
  IsLandscape = UIInterfaceOrientationIsLandscape(orientation);
  selfCopy = self;
  v6 = 8;
  if (IsLandscape)
  {
    v6 = 0;
  }

  v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout_portraitGridDimensions + v6);

  return v7;
}

- (UIEdgeInsets)layoutInsetsForOrientation:(int64_t)orientation
{
  v3 = CCUILayoutEdgeInsetsForInterfaceOrientation(orientation);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGSize)iconSpacingForOrientation:(int64_t)orientation
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout_fixedIconSpacing);
  v4 = *&self->$__lazy_storage_$_iconGridSizeClassSizes[OBJC_IVAR____TtC15ControlCenterUI14IconListLayout_fixedIconSpacing];
  result.height = v4;
  result.width = v3;
  return result;
}

- (SBHIconGridSizeClassSizeMap)iconGridSizeClassSizes
{
  selfCopy = self;
  v3 = sub_21EA94B54();

  return v3;
}

- (void)setIconGridSizeClassSizes:(id)sizes
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout____lazy_storage___iconGridSizeClassSizes);
  *(&self->super.isa + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout____lazy_storage___iconGridSizeClassSizes) = sizes;
  sizesCopy = sizes;
}

- (id)iconGridSizeClassSizesForOrientation:(int64_t)orientation
{
  v3 = sub_21EA94FD8(orientation);

  return v3;
}

- (SBHIconGridSizeClassSet)supportedIconGridSizeClasses
{
  controlCenterDomain = [objc_opt_self() controlCenterDomain];
  allNonDefaultGridSizeClasses = [controlCenterDomain allNonDefaultGridSizeClasses];

  return allNonDefaultGridSizeClasses;
}

- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)class
{
  v4 = a4;
  v5 = CCUIGridSizeClassForSBHIconGridSizeClass();
  CCUIPortraitMainListGridGeometryInfo();
  v7 = v6;
  v9 = v8;
  CCUIBoundsSizeForGridSizeClassWithGeometry();
  MEMORY[0x223D675B0](v5, v7, v9);
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];

  return result;
}

- (SBIconImageInfo)iconImageInfoForGridSizeClass:(SEL)class orientation:(id)orientation
{
  orientationCopy = orientation;
  v6 = CCUIGridSizeClassForSBHIconGridSizeClass();
  CCUIPortraitMainListGridGeometryInfo();
  v8 = v7;
  v10 = v9;
  CCUIBoundsSizeForGridSizeClassWithGeometry();
  MEMORY[0x223D675B0](v6, v8, v10);
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];

  return result;
}

- (_TtC15ControlCenterUI14IconListLayout)init
{
  *(&self->super.isa + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout____lazy_storage___iconGridSizeClassSizes) = 0;
  v3 = (self + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout_portraitGridDimensions);
  v4 = CCUICompactModuleColumns();
  v5 = CCUICompactModuleRows();
  *v3 = v4;
  v3[1] = v5;
  v6 = (&self->super.isa + OBJC_IVAR____TtC15ControlCenterUI14IconListLayout_fixedIconSpacing);
  CCUIPortraitMainListGridGeometryInfo();
  *v6 = v7;
  v6[1] = v7;
  v9.receiver = self;
  v9.super_class = type metadata accessor for IconListLayout();
  return [(IconListLayout *)&v9 init];
}

@end