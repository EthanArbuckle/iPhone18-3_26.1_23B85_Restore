@interface BlastDoorWallpaper
- (BlastDoorWallpaper)init;
- (BlastDoorWallpaper_WallpaperImage)highResImage;
- (BlastDoorWallpaper_WallpaperImage)lowResImage;
- (BlastDoorWallpaper_WallpaperMetadata)metadata;
- (NSData)posterArchive;
- (NSString)highResFileName;
@end

@implementation BlastDoorWallpaper

- (NSData)posterArchive
{
  v2 = self;
  v3 = sub_21456A288();

  return v3;
}

- (NSString)highResFileName
{
  v3 = type metadata accessor for Wallpaper(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorWallpaper_wallpaper, v7, type metadata accessor for Wallpaper);
  v8 = &v7[*(v4 + 28)];
  v9 = *(v8 + 3);
  if (v9 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v10 = *(v8 + 2);
    v11 = *(v8 + 3);

    sub_213FB5844(v7, type metadata accessor for Wallpaper);
    if (v9)
    {
      v12 = sub_2146D9588();
      sub_213FDC6D0(v10, v9);
    }

    else
    {
      v12 = 0;
    }

    return v12;
  }

  return result;
}

- (BlastDoorWallpaper_WallpaperImage)highResImage
{
  v2 = self;
  v3 = sub_21456A700();

  return v3;
}

- (BlastDoorWallpaper_WallpaperImage)lowResImage
{
  v2 = self;
  v3 = sub_21456ABA8();

  return v3;
}

- (BlastDoorWallpaper_WallpaperMetadata)metadata
{
  v2 = self + OBJC_IVAR___BlastDoorWallpaper_wallpaper;
  v3 = &v2[*(type metadata accessor for Wallpaper(0) + 40)];
  v4 = *(v3 + 7);
  v5 = *(v3 + 5);
  v35 = *(v3 + 6);
  v36 = v4;
  v6 = *(v3 + 7);
  v37[0] = *(v3 + 8);
  *(v37 + 9) = *(v3 + 137);
  v7 = *(v3 + 3);
  v8 = *(v3 + 1);
  v31 = *(v3 + 2);
  v32 = v7;
  v9 = *(v3 + 3);
  v10 = *(v3 + 5);
  v33 = *(v3 + 4);
  v34 = v10;
  v11 = *(v3 + 1);
  v29 = *v3;
  v30 = v11;
  v44 = v35;
  v45 = v6;
  v46[0] = *(v3 + 8);
  *(v46 + 9) = *(v3 + 137);
  v40 = v31;
  v41 = v9;
  v42 = v33;
  v43 = v5;
  v38 = v29;
  v39 = v8;
  enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0 = get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v38);
  v13 = 0;
  if (enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0 != 1)
  {
    v14 = type metadata accessor for _ObjCWallpaper_WallpaperMetadataWrapper();
    v15 = objc_allocWithZone(v14);
    v16 = &v15[OBJC_IVAR___BlastDoorWallpaper_WallpaperMetadata_wallpaper_WallpaperMetadata];
    v17 = v39;
    *v16 = v38;
    *(v16 + 1) = v17;
    v18 = v43;
    v20 = v40;
    v19 = v41;
    *(v16 + 4) = v42;
    *(v16 + 5) = v18;
    *(v16 + 2) = v20;
    *(v16 + 3) = v19;
    v22 = v45;
    v21 = v46[0];
    v23 = v44;
    *(v16 + 137) = *(v46 + 9);
    *(v16 + 7) = v22;
    *(v16 + 8) = v21;
    *(v16 + 6) = v23;
    v27[0] = v29;
    v27[1] = v30;
    v27[4] = v33;
    v27[5] = v34;
    v27[2] = v31;
    v27[3] = v32;
    *(v28 + 9) = *(v37 + 9);
    v27[7] = v36;
    v28[0] = v37[0];
    v27[6] = v35;
    sub_21430E4C0(v27, v26);
    v25.receiver = v15;
    v25.super_class = v14;
    v13 = [(BlastDoorWallpaper *)&v25 init];
  }

  return v13;
}

- (BlastDoorWallpaper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end