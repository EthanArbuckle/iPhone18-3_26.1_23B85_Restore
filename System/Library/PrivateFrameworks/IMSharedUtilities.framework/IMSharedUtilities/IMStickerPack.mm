@interface IMStickerPack
- (IMStickerPack)initWithDictionary:(id)dictionary;
- (IMStickerPack)initWithGUID:(id)d name:(id)name displayAssetURL:(id)l fileURL:(id)rL appBundleIdentifier:(id)identifier appVersion:(id)version;
- (IMStickerPack)initWithStickerPackProperties:(id)properties stickerPackBundleURL:(id)l appBundleIdentifier:(id)identifier appVersion:(id)version;
- (NSDictionary)dictionaryRepresentation;
- (NSSet)stickers;
- (void)addSticker:(id)sticker;
@end

@implementation IMStickerPack

- (IMStickerPack)initWithGUID:(id)d name:(id)name displayAssetURL:(id)l fileURL:(id)rL appBundleIdentifier:(id)identifier appVersion:(id)version
{
  dCopy = d;
  nameCopy = name;
  lCopy = l;
  rLCopy = rL;
  identifierCopy = identifier;
  versionCopy = version;
  v36.receiver = self;
  v36.super_class = IMStickerPack;
  v20 = [(IMStickerPack *)&v36 init];
  if (v20)
  {
    v21 = [dCopy copy];
    GUID = v20->_GUID;
    v20->_GUID = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    stickers = v20->_stickers;
    v20->_stickers = v23;

    v25 = [nameCopy copy];
    name = v20->_name;
    v20->_name = v25;

    v27 = [lCopy copy];
    displayAssetURL = v20->_displayAssetURL;
    v20->_displayAssetURL = v27;

    v29 = [rLCopy copy];
    fileURL = v20->_fileURL;
    v20->_fileURL = v29;

    v31 = [identifierCopy copy];
    appBundleIdentifier = v20->_appBundleIdentifier;
    v20->_appBundleIdentifier = v31;

    v33 = [versionCopy copy];
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

- (void)addSticker:(id)sticker
{
  if (sticker)
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
  path = &stru_1F1BB91F0;
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
    path = [(NSURL *)self->_displayAssetURL path];
  }

  fileURL = self->_fileURL;
  if (fileURL)
  {
    path2 = [(NSURL *)self->_fileURL path];
  }

  else
  {
    path2 = &stru_1F1BB91F0;
  }

  v10 = [v3 dictionaryWithObjectsAndKeys:{GUID, @"s", name, @"n", path, @"a", path2, @"f", self->_appVersion, @"appversion", self->_appBundleIdentifier, @"appid", 0}];
  if (fileURL)
  {
  }

  if (displayAssetURL)
  {
  }

  return v10;
}

- (IMStickerPack)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"a"];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [dictionaryCopy objectForKey:@"f"];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKey:@"s"];
  v10 = [dictionaryCopy objectForKey:@"n"];
  v11 = [dictionaryCopy objectForKey:@"appid"];
  v12 = [dictionaryCopy objectForKey:@"appversion"];
  v13 = [(IMStickerPack *)self initWithGUID:v9 name:v10 displayAssetURL:v6 fileURL:v8 appBundleIdentifier:v11 appVersion:v12];

  return v13;
}

- (IMStickerPack)initWithStickerPackProperties:(id)properties stickerPackBundleURL:(id)l appBundleIdentifier:(id)identifier appVersion:(id)version
{
  v33 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  lCopy = l;
  identifierCopy = identifier;
  versionCopy = version;
  if (propertiesCopy && lCopy && identifierCopy)
  {
    v14 = [propertiesCopy objectForKey:@"CFBundleIconFile"];
    if (v14)
    {
      path = [lCopy path];
      v16 = [path stringByAppendingPathComponent:v14];

      v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v16];
    }

    else
    {
      v16 = 0;
    }

    v18 = [propertiesCopy objectForKey:@"CFBundleIdentifier"];

    if (v18)
    {
      v19 = [propertiesCopy objectForKey:@"CFBundleIdentifier"];
      v20 = [(IMStickerPack *)self _generatePackGUIDWithPackID:v19 appBundleID:identifierCopy appVersion:versionCopy];
      v21 = [v20 copy];

      v22 = [propertiesCopy objectForKey:@"CFBundleName"];
      self = [(IMStickerPack *)self initWithGUID:v21 name:v22 displayAssetURL:v14 fileURL:lCopy appBundleIdentifier:identifierCopy appVersion:versionCopy];

      selfCopy = self;
    }

    else
    {
      v23 = IMLogHandleForCategory("IMStickerPack");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C2740(v23);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v16 = IMLogHandleForCategory("IMStickerPack");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v25 = 138413058;
      v26 = propertiesCopy;
      v27 = 2112;
      v28 = identifierCopy;
      v29 = 2112;
      v30 = lCopy;
      v31 = 2112;
      v32 = versionCopy;
      _os_log_error_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_ERROR, "IMStickerPack invalid parameters passed to initializer stickerProperties %@, appBundlerID %@, bundleURL %@, appVersion %@", &v25, 0x2Au);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end