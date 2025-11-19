@interface IMStickerPack
- (IMStickerPack)initWithDictionary:(id)a3;
- (IMStickerPack)initWithGUID:(id)a3 name:(id)a4 displayAssetURL:(id)a5 fileURL:(id)a6 appBundleIdentifier:(id)a7 appVersion:(id)a8;
- (IMStickerPack)initWithStickerPackProperties:(id)a3 stickerPackBundleURL:(id)a4 appBundleIdentifier:(id)a5 appVersion:(id)a6;
- (NSDictionary)dictionaryRepresentation;
- (NSSet)stickers;
- (void)addSticker:(id)a3;
@end

@implementation IMStickerPack

- (IMStickerPack)initWithGUID:(id)a3 name:(id)a4 displayAssetURL:(id)a5 fileURL:(id)a6 appBundleIdentifier:(id)a7 appVersion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v36.receiver = self;
  v36.super_class = IMStickerPack;
  v20 = [(IMStickerPack *)&v36 init];
  if (v20)
  {
    v21 = [v14 copy];
    GUID = v20->_GUID;
    v20->_GUID = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    stickers = v20->_stickers;
    v20->_stickers = v23;

    v25 = [v15 copy];
    name = v20->_name;
    v20->_name = v25;

    v27 = [v16 copy];
    displayAssetURL = v20->_displayAssetURL;
    v20->_displayAssetURL = v27;

    v29 = [v17 copy];
    fileURL = v20->_fileURL;
    v20->_fileURL = v29;

    v31 = [v18 copy];
    appBundleIdentifier = v20->_appBundleIdentifier;
    v20->_appBundleIdentifier = v31;

    v33 = [v19 copy];
    appVersion = v20->_appVersion;
    v20->_appVersion = v33;
  }

  return v20;
}

- (NSSet)stickers
{
  v2 = [(NSMutableSet *)self->_stickers copy];

  return v2;
}

- (void)addSticker:(id)a3
{
  if (a3)
  {
    stickers = self->_stickers;

    [(NSMutableSet *)stickers addObject:?];
  }

  else
  {
    v5 = IMLogHandleForCategory("IMStickerPack");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C26FC(v5);
    }
  }
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = MEMORY[0x1E695DF20];
  v4 = &stru_1F1BB91F0;
  if (self->_GUID)
  {
    GUID = self->_GUID;
  }

  else
  {
    GUID = &stru_1F1BB91F0;
  }

  if (self->_name)
  {
    name = self->_name;
  }

  else
  {
    name = &stru_1F1BB91F0;
  }

  displayAssetURL = self->_displayAssetURL;
  if (displayAssetURL)
  {
    v4 = [(NSURL *)self->_displayAssetURL path];
  }

  fileURL = self->_fileURL;
  if (fileURL)
  {
    v9 = [(NSURL *)self->_fileURL path];
  }

  else
  {
    v9 = &stru_1F1BB91F0;
  }

  v10 = [v3 dictionaryWithObjectsAndKeys:{GUID, @"s", name, @"n", v4, @"a", v9, @"f", self->_appVersion, @"appversion", self->_appBundleIdentifier, @"appid", 0}];
  if (fileURL)
  {
  }

  if (displayAssetURL)
  {
  }

  return v10;
}

- (IMStickerPack)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"a"];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 objectForKey:@"f"];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 objectForKey:@"s"];
  v10 = [v4 objectForKey:@"n"];
  v11 = [v4 objectForKey:@"appid"];
  v12 = [v4 objectForKey:@"appversion"];
  v13 = [(IMStickerPack *)self initWithGUID:v9 name:v10 displayAssetURL:v6 fileURL:v8 appBundleIdentifier:v11 appVersion:v12];

  return v13;
}

- (IMStickerPack)initWithStickerPackProperties:(id)a3 stickerPackBundleURL:(id)a4 appBundleIdentifier:(id)a5 appVersion:(id)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10 && v11 && v12)
  {
    v14 = [v10 objectForKey:@"CFBundleIconFile"];
    if (v14)
    {
      v15 = [v11 path];
      v16 = [v15 stringByAppendingPathComponent:v14];

      v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v16];
    }

    else
    {
      v16 = 0;
    }

    v18 = [v10 objectForKey:@"CFBundleIdentifier"];

    if (v18)
    {
      v19 = [v10 objectForKey:@"CFBundleIdentifier"];
      v20 = [(IMStickerPack *)self _generatePackGUIDWithPackID:v19 appBundleID:v12 appVersion:v13];
      v21 = [v20 copy];

      v22 = [v10 objectForKey:@"CFBundleName"];
      self = [(IMStickerPack *)self initWithGUID:v21 name:v22 displayAssetURL:v14 fileURL:v11 appBundleIdentifier:v12 appVersion:v13];

      v17 = self;
    }

    else
    {
      v23 = IMLogHandleForCategory("IMStickerPack");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C2740(v23);
      }

      v17 = 0;
    }
  }

  else
  {
    v16 = IMLogHandleForCategory("IMStickerPack");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v25 = 138413058;
      v26 = v10;
      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v11;
      v31 = 2112;
      v32 = v13;
      _os_log_error_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_ERROR, "IMStickerPack invalid parameters passed to initializer stickerProperties %@, appBundlerID %@, bundleURL %@, appVersion %@", &v25, 0x2Au);
    }

    v17 = 0;
  }

  return v17;
}

@end