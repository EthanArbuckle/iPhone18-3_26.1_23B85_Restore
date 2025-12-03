@interface HUControlCenterModulePreview
+ (id)emptyPreviewForGridSize:(HUGridSize)size;
+ (id)previewWithPackage:(id)package forGridSize:(HUGridSize)size;
+ (id)previewWithSystemIcon:(id)icon forGridSize:(HUGridSize)size;
+ (id)previewWithTemplate:(id)template tintColor:(id)color title:(id)title subtitle:(id)subtitle forGridSize:(HUGridSize)size;
- (HUControlCenterModulePreview)init;
@end

@implementation HUControlCenterModulePreview

+ (id)previewWithPackage:(id)package forGridSize:(HUGridSize)size
{
  columnsAcross = size.columnsAcross;
  rowsDown = size.rowsDown;
  swift_getObjCClassMetadata();
  packageCopy = package;
  v8 = static HUControlCenterModulePreview.preview(package:size:)(packageCopy, rowsDown, columnsAcross);

  return v8;
}

+ (id)previewWithSystemIcon:(id)icon forGridSize:(HUGridSize)size
{
  columnsAcross = size.columnsAcross;
  rowsDown = size.rowsDown;
  v6 = sub_20D567838();
  v8 = v7;
  swift_getObjCClassMetadata();
  v9 = static HUControlCenterModulePreview.preview(systemIcon:size:)(v6, v8, rowsDown, columnsAcross);

  return v9;
}

+ (id)previewWithTemplate:(id)template tintColor:(id)color title:(id)title subtitle:(id)subtitle forGridSize:(HUGridSize)size
{
  columnsAcross = size.columnsAcross;
  rowsDown = size.rowsDown;
  v12 = sub_20D567838();
  v14 = v13;
  if (subtitle)
  {
    v15 = sub_20D567838();
    subtitle = v16;
  }

  else
  {
    v15 = 0;
  }

  swift_getObjCClassMetadata();
  templateCopy = template;
  colorCopy = color;
  v19 = static HUControlCenterModulePreview.preview(templateIcon:tint:title:subtitle:size:)(templateCopy, colorCopy, v12, v14, v15, subtitle, rowsDown, columnsAcross);

  return v19;
}

+ (id)emptyPreviewForGridSize:(HUGridSize)size
{
  columnsAcross = size.columnsAcross;
  rowsDown = size.rowsDown;
  swift_getObjCClassMetadata();
  v5 = static HUControlCenterModulePreview.empty(size:)(rowsDown, columnsAcross);

  return v5;
}

- (HUControlCenterModulePreview)init
{
  v2 = self + OBJC_IVAR___HUControlCenterModulePreview_configuration;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 6) = 255;
  *(v2 + 7) = 0;
  *(v2 + 8) = 0;
  v4.receiver = self;
  v4.super_class = HUControlCenterModulePreview;
  return [(HUControlCenterModulePreview *)&v4 init];
}

@end