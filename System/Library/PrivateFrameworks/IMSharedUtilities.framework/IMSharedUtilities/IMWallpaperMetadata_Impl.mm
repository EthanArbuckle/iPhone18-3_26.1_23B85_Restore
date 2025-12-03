@interface IMWallpaperMetadata_Impl
- (IMWallpaperMetadataColor_Impl)backgroundColor;
- (IMWallpaperMetadataColor_Impl)fontColor;
- (IMWallpaperMetadata_Impl)init;
- (IMWallpaperMetadata_Impl)initWithFontName:(id)name fontSize:(double)size fontWeight:(double)weight fontColor:(id)color isVertical:(BOOL)vertical type:(id)type backgroundColor:(id)backgroundColor;
- (void)encodeWithCoder:(id)coder;
- (void)setBackgroundColor:(id)color;
- (void)setFontColor:(id)color;
@end

@implementation IMWallpaperMetadata_Impl

- (IMWallpaperMetadataColor_Impl)fontColor
{
  v3 = OBJC_IVAR___IMWallpaperMetadata_Impl_fontColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setFontColor:(id)color
{
  v5 = OBJC_IVAR___IMWallpaperMetadata_Impl_fontColor;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = color;
  colorCopy = color;
}

- (IMWallpaperMetadataColor_Impl)backgroundColor
{
  v3 = OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBackgroundColor:(id)color
{
  v5 = OBJC_IVAR___IMWallpaperMetadata_Impl_backgroundColor;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = color;
  colorCopy = color;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1A88B54AC(coderCopy);
}

- (IMWallpaperMetadata_Impl)initWithFontName:(id)name fontSize:(double)size fontWeight:(double)weight fontColor:(id)color isVertical:(BOOL)vertical type:(id)type backgroundColor:(id)backgroundColor
{
  v13 = sub_1A88C82E8();
  v15 = v14;
  sub_1A85E9718(0, &qword_1ED8C9450);
  v16 = sub_1A88C81A8();
  v17 = sub_1A88C82E8();
  v19 = v18;
  if (backgroundColor)
  {
    v20 = sub_1A88C81A8();
  }

  else
  {
    v20 = 0;
  }

  return WallpaperMetadata.init(fontName:fontSize:fontWeight:fontColor:isVertical:type:backgroundColor:)(v13, v15, v16, vertical, v17, v19, v20, size, weight);
}

- (IMWallpaperMetadata_Impl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end