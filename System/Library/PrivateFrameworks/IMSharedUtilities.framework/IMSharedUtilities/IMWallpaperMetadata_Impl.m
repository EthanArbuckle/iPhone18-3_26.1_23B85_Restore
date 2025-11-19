@interface IMWallpaperMetadata_Impl
- (IMWallpaperMetadataColor_Impl)backgroundColor;
- (IMWallpaperMetadataColor_Impl)fontColor;
- (IMWallpaperMetadata_Impl)init;
- (IMWallpaperMetadata_Impl)initWithFontName:(id)a3 fontSize:(double)a4 fontWeight:(double)a5 fontColor:(id)a6 isVertical:(BOOL)a7 type:(id)a8 backgroundColor:(id)a9;
- (void)encodeWithCoder:(id)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setFontColor:(id)a3;
@end

@implementation IMWallpaperMetadata_Impl

- (IMWallpaperMetadataColor_Impl)fontColor
{
  v3 = OBJC_IVAR___IMWallpaperMetadata_Impl_fontColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFontColor:(id)a3
{
  v5 = OBJC_IVAR___IMWallpaperMetadata_Impl_fontColor;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (IMWallpaperMetadataColor_Impl)backgroundColor
{
  v3 = OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBackgroundColor:(id)a3
{
  v5 = OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A88B54AC(v4);
}

- (IMWallpaperMetadata_Impl)initWithFontName:(id)a3 fontSize:(double)a4 fontWeight:(double)a5 fontColor:(id)a6 isVertical:(BOOL)a7 type:(id)a8 backgroundColor:(id)a9
{
  v13 = sub_1A88C82E8();
  v15 = v14;
  sub_1A85E9718(0, &qword_1ED8C9450);
  v16 = sub_1A88C81A8();
  v17 = sub_1A88C82E8();
  v19 = v18;
  if (a9)
  {
    v20 = sub_1A88C81A8();
  }

  else
  {
    v20 = 0;
  }

  return WallpaperMetadata.init(fontName:fontSize:fontWeight:fontColor:isVertical:type:backgroundColor:)(v13, v15, v16, a7, v17, v19, v20, a4, a5);
}

- (IMWallpaperMetadata_Impl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end