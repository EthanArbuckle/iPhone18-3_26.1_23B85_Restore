@interface IMWallpaper_SwiftImpl
- (BOOL)isEqual:(id)equal;
- (BOOL)lowResWallpaperExists;
- (BOOL)wallpaperExists;
- (IMWallpaper_SwiftImpl)init;
- (IMWallpaper_SwiftImpl)initWithFileName:(id)name filePath:(id)path data:(id)data lowResFileName:(id)fileName lowResFilePath:(id)filePath lowResData:(id)resData metadata:(id)metadata contentIsSensitive:(BOOL)self0 error:(id *)self1;
- (IMWallpaper_SwiftImpl)initWithFileName:(id)name filePath:(id)path lowResFileName:(id)fileName lowResFilePath:(id)filePath metadata:(id)metadata contentIsSensitive:(BOOL)sensitive;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMWallpaper_SwiftImpl

- (IMWallpaper_SwiftImpl)initWithFileName:(id)name filePath:(id)path lowResFileName:(id)fileName lowResFilePath:(id)filePath metadata:(id)metadata contentIsSensitive:(BOOL)sensitive
{
  pathCopy = path;
  if (name)
  {
    v12 = sub_1A88C82E8();
    v14 = v13;
    if (pathCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    if (fileName)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v12 = 0;
  v14 = 0;
  if (!path)
  {
    goto LABEL_6;
  }

LABEL_3:
  pathCopy = sub_1A88C82E8();
  v16 = v15;
  if (fileName)
  {
LABEL_4:
    fileName = sub_1A88C82E8();
    v18 = v17;
    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:
  filePathCopy = filePath;
  metadataCopy = metadata;
  if (filePathCopy)
  {
    v21 = sub_1A88C82E8();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  return Wallpaper.init(fileName:filePath:lowResFileName:lowResFilePath:metadata:contentIsSensitive:)(v12, v14, pathCopy, v16, fileName, v18, v21, v23, metadataCopy, sensitive);
}

- (IMWallpaper_SwiftImpl)initWithFileName:(id)name filePath:(id)path data:(id)data lowResFileName:(id)fileName lowResFilePath:(id)filePath lowResData:(id)resData metadata:(id)metadata contentIsSensitive:(BOOL)self0 error:(id *)self1
{
  if (name)
  {
    v16 = sub_1A88C82E8();
    v42 = v17;
    v43 = v16;
    metadataCopy2 = metadata;
    if (path)
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
    metadataCopy2 = metadata;
    if (path)
    {
      goto LABEL_3;
    }
  }

  v40 = 0;
  v41 = 0;
LABEL_6:
  fileNameCopy = fileName;
  filePathCopy = filePath;
  resDataCopy = resData;
  v24 = metadataCopy2;
  if (data)
  {
    dataCopy = data;
    v39 = sub_1A88C7358();
    v27 = v26;

    if (fileNameCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v39 = 0;
    v27 = 0xF000000000000000;
    if (fileNameCopy)
    {
LABEL_8:
      v28 = sub_1A88C82E8();
      v30 = v29;

      if (filePathCopy)
      {
        goto LABEL_9;
      }

LABEL_13:
      v31 = 0;
      v33 = 0;
      sensitiveCopy2 = sensitive;
      if (resDataCopy)
      {
        goto LABEL_10;
      }

LABEL_14:
      v35 = 0;
      v37 = 0xF000000000000000;
      return Wallpaper.init(fileName:filePath:data:lowResFileName:lowResFilePath:lowResData:metadata:contentIsSensitive:)(v43, v42, v41, v40, v39, v27, v28, v30, v31, v33, v35, v37, metadataCopy2, sensitiveCopy2);
    }
  }

  v28 = 0;
  v30 = 0;
  if (!filePathCopy)
  {
    goto LABEL_13;
  }

LABEL_9:
  v31 = sub_1A88C82E8();
  v33 = v32;

  sensitiveCopy2 = sensitive;
  if (!resDataCopy)
  {
    goto LABEL_14;
  }

LABEL_10:
  v35 = sub_1A88C7358();
  v37 = v36;

  return Wallpaper.init(fileName:filePath:data:lowResFileName:lowResFilePath:lowResData:metadata:contentIsSensitive:)(v43, v42, v41, v40, v39, v27, v28, v30, v31, v33, v35, v37, metadataCopy2, sensitiveCopy2);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1A888AF48(coderCopy);
}

- (BOOL)wallpaperExists
{
  selfCopy = self;
  v3 = sub_1A888B7D4();

  return v3 & 1;
}

- (BOOL)lowResWallpaperExists
{
  selfCopy = self;
  v3 = sub_1A888B814();

  return v3 & 1;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1A88C8CB8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
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