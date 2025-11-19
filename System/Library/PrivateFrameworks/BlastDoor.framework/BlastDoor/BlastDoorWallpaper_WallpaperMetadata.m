@interface BlastDoorWallpaper_WallpaperMetadata
- (BlastDoorColor)backgroundColor;
- (BlastDoorColor)fontColor;
- (BlastDoorWallpaper_WallpaperMetadata)init;
- (NSString)description;
- (double)fontSize;
- (double)fontWeight;
@end

@implementation BlastDoorWallpaper_WallpaperMetadata

- (NSString)description
{
  v2 = *&self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 104];
  v3 = *&self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 72];
  v19 = *&self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 88];
  v20 = v2;
  v4 = *&self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 104];
  v21[0] = *&self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 120];
  *(v21 + 9) = *&self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 129];
  v5 = *&self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 40];
  v6 = *&self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 8];
  v15 = *&self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 24];
  v16 = v5;
  v7 = *&self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 40];
  v8 = *&self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 72];
  v17 = *&self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 56];
  v18 = v8;
  v9 = *&self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 8];
  v14[0] = *(&self->super.isa + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata);
  v14[1] = v9;
  v12[16] = v19;
  v12[17] = v4;
  v13[0] = *&self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 120];
  *(v13 + 9) = *&self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 129];
  v12[12] = v15;
  v12[13] = v7;
  v12[14] = v17;
  v12[15] = v3;
  v12[10] = v14[0];
  v12[11] = v6;
  sub_21430E4C0(v14, v12);
  sub_2146D9608();
  v10 = sub_2146D9588();

  return v10;
}

- (double)fontSize
{
  if ((self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 32] & 1) == 0)
  {
    return *&self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 24];
  }

  sub_2146DA018();
  __break(1u);
  return result;
}

- (double)fontWeight
{
  if ((self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 64] & 1) == 0)
  {
    return *&self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 56];
  }

  sub_2146DA018();
  __break(1u);
  return result;
}

- (BlastDoorColor)fontColor
{
  v2 = self + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata;
  v3 = type metadata accessor for _ObjCColorWrapper();
  v8 = *(v2 + 6);
  v9 = *(v2 + 5);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___BlastDoorColor_color];
  *v5 = v9;
  *(v5 + 1) = v8;
  v10.receiver = v4;
  v10.super_class = v3;
  v6 = [(BlastDoorWallpaper_WallpaperMetadata *)&v10 init];

  return v6;
}

- (BlastDoorColor)backgroundColor
{
  v2 = self + OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata;
  if (self->wallpaper_WallpaperMetadata[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata + 144])
  {
    v3 = 0;
  }

  else
  {
    v4 = type metadata accessor for _ObjCColorWrapper();
    v8 = *(v2 + 136);
    v9 = *(v2 + 120);
    v5 = objc_allocWithZone(v4);
    v6 = &v5[OBJC_IVAR___BlastDoorColor_color];
    *v6 = v9;
    *(v6 + 1) = v8;
    v10.receiver = v5;
    v10.super_class = v4;
    v3 = [(BlastDoorWallpaper_WallpaperMetadata *)&v10 init];
  }

  return v3;
}

- (BlastDoorWallpaper_WallpaperMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end