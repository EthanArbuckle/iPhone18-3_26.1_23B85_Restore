@interface HUControlCenterModulePreview
+ (id)emptyPreviewForGridSize:(HUGridSize)a3;
+ (id)previewWithPackage:(id)a3 forGridSize:(HUGridSize)a4;
+ (id)previewWithSystemIcon:(id)a3 forGridSize:(HUGridSize)a4;
+ (id)previewWithTemplate:(id)a3 tintColor:(id)a4 title:(id)a5 subtitle:(id)a6 forGridSize:(HUGridSize)a7;
- (HUControlCenterModulePreview)init;
@end

@implementation HUControlCenterModulePreview

+ (id)previewWithPackage:(id)a3 forGridSize:(HUGridSize)a4
{
  columnsAcross = a4.columnsAcross;
  rowsDown = a4.rowsDown;
  swift_getObjCClassMetadata();
  v7 = a3;
  v8 = static HUControlCenterModulePreview.preview(package:size:)(v7, rowsDown, columnsAcross);

  return v8;
}

+ (id)previewWithSystemIcon:(id)a3 forGridSize:(HUGridSize)a4
{
  columnsAcross = a4.columnsAcross;
  rowsDown = a4.rowsDown;
  v6 = sub_20D567838();
  v8 = v7;
  swift_getObjCClassMetadata();
  v9 = static HUControlCenterModulePreview.preview(systemIcon:size:)(v6, v8, rowsDown, columnsAcross);

  return v9;
}

+ (id)previewWithTemplate:(id)a3 tintColor:(id)a4 title:(id)a5 subtitle:(id)a6 forGridSize:(HUGridSize)a7
{
  columnsAcross = a7.columnsAcross;
  rowsDown = a7.rowsDown;
  v12 = sub_20D567838();
  v14 = v13;
  if (a6)
  {
    v15 = sub_20D567838();
    a6 = v16;
  }

  else
  {
    v15 = 0;
  }

  swift_getObjCClassMetadata();
  v17 = a3;
  v18 = a4;
  v19 = static HUControlCenterModulePreview.preview(templateIcon:tint:title:subtitle:size:)(v17, v18, v12, v14, v15, a6, rowsDown, columnsAcross);

  return v19;
}

+ (id)emptyPreviewForGridSize:(HUGridSize)a3
{
  columnsAcross = a3.columnsAcross;
  rowsDown = a3.rowsDown;
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