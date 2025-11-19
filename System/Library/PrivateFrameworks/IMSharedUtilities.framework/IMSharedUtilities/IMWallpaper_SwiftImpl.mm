@interface IMWallpaper_SwiftImpl
- (BOOL)isEqual:(id)a3;
- (BOOL)lowResWallpaperExists;
- (BOOL)wallpaperExists;
- (IMWallpaper_SwiftImpl)init;
- (IMWallpaper_SwiftImpl)initWithFileName:(id)a3 filePath:(id)a4 data:(id)a5 lowResFileName:(id)a6 lowResFilePath:(id)a7 lowResData:(id)a8 metadata:(id)a9 contentIsSensitive:(BOOL)a10 error:(id *)a11;
- (IMWallpaper_SwiftImpl)initWithFileName:(id)a3 filePath:(id)a4 lowResFileName:(id)a5 lowResFilePath:(id)a6 metadata:(id)a7 contentIsSensitive:(BOOL)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMWallpaper_SwiftImpl

- (IMWallpaper_SwiftImpl)initWithFileName:(id)a3 filePath:(id)a4 lowResFileName:(id)a5 lowResFilePath:(id)a6 metadata:(id)a7 contentIsSensitive:(BOOL)a8
{
  v11 = a4;
  if (a3)
  {
    v12 = sub_1A88C82E8();
    v14 = v13;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v12 = 0;
  v14 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = sub_1A88C82E8();
  v16 = v15;
  if (a5)
  {
LABEL_4:
    a5 = sub_1A88C82E8();
    v18 = v17;
    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:
  v19 = a6;
  v20 = a7;
  if (v19)
  {
    v21 = sub_1A88C82E8();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  return Wallpaper.init(fileName:filePath:lowResFileName:lowResFilePath:metadata:contentIsSensitive:)(v12, v14, v11, v16, a5, v18, v21, v23, v20, a8);
}

- (IMWallpaper_SwiftImpl)initWithFileName:(id)a3 filePath:(id)a4 data:(id)a5 lowResFileName:(id)a6 lowResFilePath:(id)a7 lowResData:(id)a8 metadata:(id)a9 contentIsSensitive:(BOOL)a10 error:(id *)a11
{
  if (a3)
  {
    v16 = sub_1A88C82E8();
    v42 = v17;
    v43 = v16;
    v18 = a9;
    if (a4)
    {
LABEL_3:
      v19 = sub_1A88C82E8();
      v40 = v20;
      v41 = v19;
      goto LABEL_6;
    }
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v18 = a9;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v40 = 0;
  v41 = 0;
LABEL_6:
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = v18;
  if (a5)
  {
    v25 = a5;
    v39 = sub_1A88C7358();
    v27 = v26;

    if (v21)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v39 = 0;
    v27 = 0xF000000000000000;
    if (v21)
    {
LABEL_8:
      v28 = sub_1A88C82E8();
      v30 = v29;

      if (v22)
      {
        goto LABEL_9;
      }

LABEL_13:
      v31 = 0;
      v33 = 0;
      v34 = a10;
      if (v23)
      {
        goto LABEL_10;
      }

LABEL_14:
      v35 = 0;
      v37 = 0xF000000000000000;
      return Wallpaper.init(fileName:filePath:data:lowResFileName:lowResFilePath:lowResData:metadata:contentIsSensitive:)(v43, v42, v41, v40, v39, v27, v28, v30, v31, v33, v35, v37, v18, v34);
    }
  }

  v28 = 0;
  v30 = 0;
  if (!v22)
  {
    goto LABEL_13;
  }

LABEL_9:
  v31 = sub_1A88C82E8();
  v33 = v32;

  v34 = a10;
  if (!v23)
  {
    goto LABEL_14;
  }

LABEL_10:
  v35 = sub_1A88C7358();
  v37 = v36;

  return Wallpaper.init(fileName:filePath:data:lowResFileName:lowResFilePath:lowResData:metadata:contentIsSensitive:)(v43, v42, v41, v40, v39, v27, v28, v30, v31, v33, v35, v37, v18, v34);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A888AF48(v4);
}

- (BOOL)wallpaperExists
{
  v2 = self;
  v3 = sub_1A888B7D4();

  return v3 & 1;
}

- (BOOL)lowResWallpaperExists
{
  v2 = self;
  v3 = sub_1A888B814();

  return v3 & 1;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1A888BC88(v8);

  sub_1A85EF638(v8, &qword_1EB3057B0);
  return v6 & 1;
}

- (IMWallpaper_SwiftImpl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end