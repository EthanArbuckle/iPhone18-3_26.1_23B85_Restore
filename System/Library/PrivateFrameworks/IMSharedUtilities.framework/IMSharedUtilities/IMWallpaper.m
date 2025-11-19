@interface IMWallpaper
- (BOOL)isEqual:(id)a3;
- (IMWallpaper)initWithCoder:(id)a3;
- (IMWallpaper)initWithDictionaryRepresentation:(id)a3;
- (IMWallpaper)initWithFileName:(id)a3 filePath:(id)a4 data:(id)a5 lowResFileName:(id)a6 lowResFilePath:(id)a7 lowResData:(id)a8 metadata:(id)a9 contentIsSensitive:(BOOL)a10 error:(id *)a11;
- (IMWallpaper)initWithFileName:(id)a3 filePath:(id)a4 lowResFileName:(id)a5 lowResFilePath:(id)a6 metadata:(id)a7 contentIsSensitive:(BOOL)a8;
- (id)lowResWallpaperData;
- (id)wallpaperData;
@end

@implementation IMWallpaper

- (IMWallpaper)initWithFileName:(id)a3 filePath:(id)a4 lowResFileName:(id)a5 lowResFilePath:(id)a6 metadata:(id)a7 contentIsSensitive:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v23.receiver = self;
  v23.super_class = IMWallpaper;
  v19 = [(IMWallpaper *)&v23 init];
  if (v19)
  {
    v20 = [[IMWallpaper_SwiftImpl alloc] initWithFileName:v14 filePath:v15 lowResFileName:v16 lowResFilePath:v17 metadata:v18 contentIsSensitive:v8];
    swiftImpl = v19->swiftImpl;
    v19->swiftImpl = v20;
  }

  return v19;
}

- (IMWallpaper)initWithFileName:(id)a3 filePath:(id)a4 data:(id)a5 lowResFileName:(id)a6 lowResFilePath:(id)a7 lowResData:(id)a8 metadata:(id)a9 contentIsSensitive:(BOOL)a10 error:(id *)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v29.receiver = self;
  v29.super_class = IMWallpaper;
  v24 = [(IMWallpaper *)&v29 init];
  if (v24)
  {
    LOBYTE(v28) = a10;
    v25 = [[IMWallpaper_SwiftImpl alloc] initWithFileName:v17 filePath:v18 data:v19 lowResFileName:v20 lowResFilePath:v21 lowResData:v22 metadata:v23 contentIsSensitive:v28 error:a11];
    swiftImpl = v24->swiftImpl;
    v24->swiftImpl = v25;
  }

  return v24;
}

- (IMWallpaper)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
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
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (IMWallpaper)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = IMWallpaper;
  v5 = [(IMWallpaper *)&v10 init];
  if (v5 && (v6 = [[IMWallpaper_SwiftImpl alloc] initWithCoder:v4], swiftImpl = v5->swiftImpl, v5->swiftImpl = v6, swiftImpl, !v5->swiftImpl))
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(IMWallpaper *)self fileName];
      v7 = [(IMWallpaper *)v5 fileName];
      if ([v6 isEqualToString:v7])
      {
        v34 = 0;
      }

      else
      {
        v9 = [(IMWallpaper *)self fileName];
        if (v9)
        {
          v34 = 1;
        }

        else
        {
          v10 = [(IMWallpaper *)v5 fileName];
          v34 = v10 != 0;
        }
      }

      v11 = [(IMWallpaper *)self filePath];
      v12 = [(IMWallpaper *)v5 filePath];
      if ([v11 isEqualToString:v12])
      {
        v33 = 0;
      }

      else
      {
        v13 = [(IMWallpaper *)self filePath];
        if (v13)
        {
          v33 = 1;
        }

        else
        {
          v14 = [(IMWallpaper *)v5 filePath];
          v33 = v14 != 0;
        }
      }

      v15 = [(IMWallpaper *)self lowResFileName];
      v16 = [(IMWallpaper *)v5 lowResFileName];
      if ([v15 isEqualToString:v16])
      {
        v17 = 0;
      }

      else
      {
        v18 = [(IMWallpaper *)self lowResFileName];
        if (v18)
        {
          v17 = 1;
        }

        else
        {
          v19 = [(IMWallpaper *)v5 lowResFileName];
          v17 = v19 != 0;
        }
      }

      v20 = [(IMWallpaper *)self lowResFilePath];
      v21 = [(IMWallpaper *)v5 lowResFilePath];
      if ([v20 isEqualToString:v21])
      {
        v22 = 0;
      }

      else
      {
        v23 = [(IMWallpaper *)self lowResFilePath];
        if (v23)
        {
          v22 = 1;
        }

        else
        {
          v24 = [(IMWallpaper *)v5 lowResFilePath];
          v22 = v24 != 0;
        }
      }

      v25 = [(IMWallpaper *)self dataVersion];
      v26 = [(IMWallpaper *)v5 dataVersion];
      v27 = [(IMWallpaper *)self metadata];
      v28 = [(IMWallpaper *)v5 metadata];
      v29 = [v27 isEqual:v28];

      v30 = [(IMWallpaper *)self contentIsSensitive];
      v31 = [(IMWallpaper *)v5 contentIsSensitive];
      v8 = 0;
      if (!v34 && !v33 && !v17 && !v22 && v25 == v26)
      {
        v8 = v29 & (v30 ^ v31 ^ 1);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [(IMWallpaper_SwiftImpl *)self->swiftImpl isEqual:v4];
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