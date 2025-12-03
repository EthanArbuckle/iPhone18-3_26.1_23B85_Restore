@interface IMWallpaper
- (BOOL)isEqual:(id)equal;
- (IMWallpaper)initWithCoder:(id)coder;
- (IMWallpaper)initWithDictionaryRepresentation:(id)representation;
- (IMWallpaper)initWithFileName:(id)name filePath:(id)path data:(id)data lowResFileName:(id)fileName lowResFilePath:(id)filePath lowResData:(id)resData metadata:(id)metadata contentIsSensitive:(BOOL)self0 error:(id *)self1;
- (IMWallpaper)initWithFileName:(id)name filePath:(id)path lowResFileName:(id)fileName lowResFilePath:(id)filePath metadata:(id)metadata contentIsSensitive:(BOOL)sensitive;
- (id)lowResWallpaperData;
- (id)wallpaperData;
@end

@implementation IMWallpaper

- (IMWallpaper)initWithFileName:(id)name filePath:(id)path lowResFileName:(id)fileName lowResFilePath:(id)filePath metadata:(id)metadata contentIsSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  nameCopy = name;
  pathCopy = path;
  fileNameCopy = fileName;
  filePathCopy = filePath;
  metadataCopy = metadata;
  v23.receiver = self;
  v23.super_class = IMWallpaper;
  v19 = [(IMWallpaper *)&v23 init];
  if (v19)
  {
    v20 = [[IMWallpaper_SwiftImpl alloc] initWithFileName:nameCopy filePath:pathCopy lowResFileName:fileNameCopy lowResFilePath:filePathCopy metadata:metadataCopy contentIsSensitive:sensitiveCopy];
    swiftImpl = v19->swiftImpl;
    v19->swiftImpl = v20;
  }

  return v19;
}

- (IMWallpaper)initWithFileName:(id)name filePath:(id)path data:(id)data lowResFileName:(id)fileName lowResFilePath:(id)filePath lowResData:(id)resData metadata:(id)metadata contentIsSensitive:(BOOL)self0 error:(id *)self1
{
  nameCopy = name;
  pathCopy = path;
  dataCopy = data;
  fileNameCopy = fileName;
  filePathCopy = filePath;
  resDataCopy = resData;
  metadataCopy = metadata;
  v29.receiver = self;
  v29.super_class = IMWallpaper;
  v24 = [(IMWallpaper *)&v29 init];
  if (v24)
  {
    LOBYTE(v28) = sensitive;
    v25 = [[IMWallpaper_SwiftImpl alloc] initWithFileName:nameCopy filePath:pathCopy data:dataCopy lowResFileName:fileNameCopy lowResFilePath:filePathCopy lowResData:resDataCopy metadata:metadataCopy contentIsSensitive:v28 error:error];
    swiftImpl = v24->swiftImpl;
    v24->swiftImpl = v25;
  }

  return v24;
}

- (IMWallpaper)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy && [representationCopy count])
  {
    v11.receiver = self;
    v11.super_class = IMWallpaper;
    v6 = [(IMWallpaper *)&v11 init];
    if (v6)
    {
      v7 = [[IMWallpaper_SwiftImpl alloc] initWithDictionaryRepresentation:v5];
      swiftImpl = v6->swiftImpl;
      v6->swiftImpl = v7;
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IMWallpaper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = IMWallpaper;
  v5 = [(IMWallpaper *)&v10 init];
  if (v5 && (v6 = [[IMWallpaper_SwiftImpl alloc] initWithCoder:coderCopy], swiftImpl = v5->swiftImpl, v5->swiftImpl = v6, swiftImpl, !v5->swiftImpl))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)wallpaperData
{
  v10 = *MEMORY[0x1E69E9840];
  swiftImpl = self->swiftImpl;
  v7 = 0;
  v3 = [(IMWallpaper_SwiftImpl *)swiftImpl fetchWallpaperDataAndReturnError:&v7];
  v4 = v7;
  if (!v3 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Error reading wallpaper data: %@", buf, 0xCu);
    }
  }

  return v3;
}

- (id)lowResWallpaperData
{
  v10 = *MEMORY[0x1E69E9840];
  swiftImpl = self->swiftImpl;
  v7 = 0;
  v3 = [(IMWallpaper_SwiftImpl *)swiftImpl fetchLowResWallpaperDataAndReturnError:&v7];
  v4 = v7;
  if (!v3 && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Error reading low res wallpaper data: %@", buf, 0xCu);
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      fileName = [(IMWallpaper *)self fileName];
      fileName2 = [(IMWallpaper *)v5 fileName];
      if ([fileName isEqualToString:fileName2])
      {
        v34 = 0;
      }

      else
      {
        fileName3 = [(IMWallpaper *)self fileName];
        if (fileName3)
        {
          v34 = 1;
        }

        else
        {
          fileName4 = [(IMWallpaper *)v5 fileName];
          v34 = fileName4 != 0;
        }
      }

      filePath = [(IMWallpaper *)self filePath];
      filePath2 = [(IMWallpaper *)v5 filePath];
      if ([filePath isEqualToString:filePath2])
      {
        v33 = 0;
      }

      else
      {
        filePath3 = [(IMWallpaper *)self filePath];
        if (filePath3)
        {
          v33 = 1;
        }

        else
        {
          filePath4 = [(IMWallpaper *)v5 filePath];
          v33 = filePath4 != 0;
        }
      }

      lowResFileName = [(IMWallpaper *)self lowResFileName];
      lowResFileName2 = [(IMWallpaper *)v5 lowResFileName];
      if ([lowResFileName isEqualToString:lowResFileName2])
      {
        v17 = 0;
      }

      else
      {
        lowResFileName3 = [(IMWallpaper *)self lowResFileName];
        if (lowResFileName3)
        {
          v17 = 1;
        }

        else
        {
          lowResFileName4 = [(IMWallpaper *)v5 lowResFileName];
          v17 = lowResFileName4 != 0;
        }
      }

      lowResFilePath = [(IMWallpaper *)self lowResFilePath];
      lowResFilePath2 = [(IMWallpaper *)v5 lowResFilePath];
      if ([lowResFilePath isEqualToString:lowResFilePath2])
      {
        v22 = 0;
      }

      else
      {
        lowResFilePath3 = [(IMWallpaper *)self lowResFilePath];
        if (lowResFilePath3)
        {
          v22 = 1;
        }

        else
        {
          lowResFilePath4 = [(IMWallpaper *)v5 lowResFilePath];
          v22 = lowResFilePath4 != 0;
        }
      }

      dataVersion = [(IMWallpaper *)self dataVersion];
      dataVersion2 = [(IMWallpaper *)v5 dataVersion];
      metadata = [(IMWallpaper *)self metadata];
      metadata2 = [(IMWallpaper *)v5 metadata];
      v29 = [metadata isEqual:metadata2];

      contentIsSensitive = [(IMWallpaper *)self contentIsSensitive];
      contentIsSensitive2 = [(IMWallpaper *)v5 contentIsSensitive];
      v8 = 0;
      if (!v34 && !v33 && !v17 && !v22 && dataVersion == dataVersion2)
      {
        v8 = v29 & (contentIsSensitive ^ contentIsSensitive2 ^ 1);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [(IMWallpaper_SwiftImpl *)self->swiftImpl isEqual:equalCopy];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

@end