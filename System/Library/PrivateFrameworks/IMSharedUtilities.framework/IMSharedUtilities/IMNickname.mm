@interface IMNickname
+ (id)nameHashWithFirstName:(id)name lastName:(id)lastName;
+ (id)processSetOfUnknownSenderRecords:(id)records;
+ (id)uniqueFilePathForWritingImageData;
+ (id)uniqueFilePathForWritingWallpaperData;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUpdateFromNickname:(id)nickname withOptions:(unint64_t)options;
- (IMNickname)init;
- (IMNickname)initWithCoder:(id)coder;
- (IMNickname)initWithDictionaryRepresentation:(id)representation;
- (IMNickname)initWithFirstName:(id)name lastName:(id)lastName avatar:(id)avatar pronouns:(id)pronouns wallpaper:(id)wallpaper avatarRecipe:(id)recipe;
- (IMNickname)initWithMeContact:(id)contact;
- (IMNickname)initWithPublicDictionaryRepresentationWithoutAvatar:(id)avatar;
- (NSData)imageHash;
- (NSData)wallpaperImageHash;
- (NSData)wallpaperLowResImageHash;
- (NSString)concatenatedImageHash;
- (NSString)nameHash;
- (id)_imageHashCreatedInChunks:(id)chunks;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataRepresentation;
- (id)dictionaryRepresentation;
- (id)persistedDictionaryRepresentation;
- (id)publicDictionaryRepresentation;
- (id)publicDictionaryRepresentationWithoutAvatar;
- (void)encodeWithCoder:(id)coder;
- (void)setAvatar:(id)avatar;
- (void)setFirstName:(id)name;
- (void)setLastName:(id)name;
- (void)setWallpaper:(id)wallpaper;
- (void)updateNameFromContact:(id)contact;
@end

@implementation IMNickname

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  firstName = [(IMNickname *)self firstName];
  firstName2 = [equalCopy firstName];
  if ([firstName isEqual:firstName2])
  {
    v47 = 0;
  }

  else
  {
    firstName3 = [(IMNickname *)self firstName];
    if (firstName3)
    {
      v47 = 1;
    }

    else
    {
      firstName4 = [equalCopy firstName];
      v47 = firstName4 != 0;
    }
  }

  lastName = [(IMNickname *)self lastName];
  lastName2 = [equalCopy lastName];
  if ([lastName isEqual:lastName2])
  {
    v46 = 0;
  }

  else
  {
    lastName3 = [(IMNickname *)self lastName];
    if (lastName3)
    {
      v46 = 1;
    }

    else
    {
      lastName4 = [equalCopy lastName];
      v46 = lastName4 != 0;
    }
  }

  avatar = [(IMNickname *)self avatar];
  imageFilePath = [avatar imageFilePath];
  avatar2 = [equalCopy avatar];
  imageFilePath2 = [avatar2 imageFilePath];
  if ([imageFilePath isEqual:imageFilePath2])
  {
    v17 = 0;
  }

  else
  {
    avatar3 = [(IMNickname *)self avatar];
    imageFilePath3 = [avatar3 imageFilePath];
    if (imageFilePath3)
    {
      v17 = 1;
    }

    else
    {
      avatar4 = [equalCopy avatar];
      imageFilePath4 = [avatar4 imageFilePath];
      v17 = imageFilePath4 != 0;
    }
  }

  handle = [(IMNickname *)self handle];
  handle2 = [equalCopy handle];
  if ([handle isEqual:handle2])
  {
    v24 = 0;
  }

  else
  {
    handle3 = [(IMNickname *)self handle];
    if (handle3)
    {
      v24 = 1;
    }

    else
    {
      handle4 = [equalCopy handle];
      v24 = handle4 != 0;
    }
  }

  recordID = [(IMNickname *)self recordID];
  recordID2 = [equalCopy recordID];
  if ([recordID isEqual:recordID2])
  {
    v29 = 0;
  }

  else
  {
    recordID3 = [(IMNickname *)self recordID];
    if (recordID3)
    {
      v29 = 1;
    }

    else
    {
      recordID4 = [equalCopy recordID];
      v29 = recordID4 != 0;
    }
  }

  wallpaper = [(IMNickname *)self wallpaper];
  wallpaper2 = [equalCopy wallpaper];
  if ([wallpaper isEqual:wallpaper2])
  {
    v34 = 0;
  }

  else
  {
    wallpaper3 = [(IMNickname *)self wallpaper];
    if (wallpaper3)
    {
      v34 = 1;
    }

    else
    {
      wallpaper4 = [equalCopy wallpaper];
      v34 = wallpaper4 != 0;
    }
  }

  pronouns = [(IMNickname *)self pronouns];
  pronouns2 = [equalCopy pronouns];
  if ([pronouns isEqual:pronouns2])
  {
    v39 = 1;
  }

  else
  {
    pronouns3 = [(IMNickname *)self pronouns];
    if (pronouns3)
    {
      v39 = 0;
    }

    else
    {
      pronouns4 = [equalCopy pronouns];
      v39 = pronouns4 == 0;
    }
  }

  avatarRecipe = [(IMNickname *)self avatarRecipe];
  avatarRecipe2 = [equalCopy avatarRecipe];
  v44 = IMAreObjectsLogicallySame();

  return v39 & ~(v47 || v46 || v17 || v24 || v29 || v34) & v44 & 1;
}

- (IMNickname)init
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "IMNickname. Calling init directly is not supported", v5, 2u);
    }
  }

  return 0;
}

- (IMNickname)initWithFirstName:(id)name lastName:(id)lastName avatar:(id)avatar pronouns:(id)pronouns wallpaper:(id)wallpaper avatarRecipe:(id)recipe
{
  nameCopy = name;
  lastNameCopy = lastName;
  avatarCopy = avatar;
  pronounsCopy = pronouns;
  wallpaperCopy = wallpaper;
  recipeCopy = recipe;
  v28.receiver = self;
  v28.super_class = IMNickname;
  v19 = [(IMNickname *)&v28 init];
  if (v19)
  {
    v20 = [nameCopy copy];
    firstName = v19->_firstName;
    v19->_firstName = v20;

    objc_storeStrong(&v19->_avatar, avatar);
    v22 = [lastNameCopy copy];
    lastName = v19->_lastName;
    v19->_lastName = v22;

    objc_storeStrong(&v19->_pronouns, pronouns);
    if ([(NSString *)v19->_firstName length]&& [(NSString *)v19->_lastName length])
    {
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@", v19->_firstName, v19->_lastName];
    }

    else
    {
      if (![(NSString *)v19->_firstName length])
      {
LABEL_8:
        objc_storeStrong(&v19->_wallpaper, wallpaper);
        objc_storeStrong(&v19->_avatarRecipe, recipe);
        goto LABEL_9;
      }

      v24 = [nameCopy copy];
    }

    displayName = v19->_displayName;
    v19->_displayName = v24;

    goto LABEL_8;
  }

LABEL_9:

  return v19;
}

- (IMNickname)initWithMeContact:(id)contact
{
  v47 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  imageData = [contactCopy imageData];
  if (imageData)
  {
    uniqueFilePathForWritingImageData = [objc_opt_class() uniqueFilePathForWritingImageData];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v44 = uniqueFilePathForWritingImageData;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Writing nickname image to path: %@", buf, 0xCu);
      }
    }

    v39 = [[IMNicknameAvatarImage alloc] initWithImageName:@"NickNameImage" imageData:imageData imageFilePath:uniqueFilePathForWritingImageData contentIsSensitive:0];
  }

  else
  {
    v39 = 0;
  }

  v6 = +[IMFeatureFlags sharedFeatureFlags];
  isSwiftUIAvatarRenderingEnabled = [v6 isSwiftUIAvatarRenderingEnabled];

  if (isSwiftUIAvatarRenderingEnabled && (objc_opt_respondsToSelector() & 1) != 0)
  {
    avatarRecipeData = [contactCopy avatarRecipeData];
    if (avatarRecipeData)
    {
      v38 = [[IMNicknameAvatarRecipe alloc] initWithData:avatarRecipeData];
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
  }

  wallpaper = [contactCopy wallpaper];
  if (wallpaper)
  {
    uniqueFilePathForWritingWallpaperData = [objc_opt_class() uniqueFilePathForWritingWallpaperData];
    uniqueFilePathForWritingWallpaperData2 = [objc_opt_class() uniqueFilePathForWritingWallpaperData];
    posterArchiveData = [wallpaper posterArchiveData];
    watchWallpaperImageData = [contactCopy watchWallpaperImageData];
    if (objc_opt_respondsToSelector())
    {
      v31 = [IMWallpaperMetadata alloc];
      fontDescription = [wallpaper fontDescription];
      v32 = [fontDescription objectForKeyedSubscript:@"name"];
      fontDescription2 = [wallpaper fontDescription];
      v11 = [fontDescription2 objectForKeyedSubscript:@"point-size"];
      [v11 floatValue];
      v13 = v12;
      fontDescription3 = [wallpaper fontDescription];
      v15 = [fontDescription3 objectForKeyedSubscript:@"weight"];
      [v15 floatValue];
      v17 = v16;
      fontColorDescription = [wallpaper fontColorDescription];
      isVertical = [wallpaper isVertical];
      extensionBundleID = [wallpaper extensionBundleID];
      backgroundColorDescription = [wallpaper backgroundColorDescription];
      v22 = [(IMWallpaperMetadata *)v31 initWithFontName:v32 fontSize:fontColorDescription fontWeight:isVertical fontColor:extensionBundleID isVertical:backgroundColorDescription type:v13 backgroundColor:v17];
    }

    else
    {
      v22 = 0;
    }

    v42 = 0;
    LOBYTE(v30) = 0;
    v23 = [[IMWallpaper alloc] initWithFileName:@"Wallpaper" filePath:uniqueFilePathForWritingWallpaperData data:posterArchiveData lowResFileName:@"Wallpaper" lowResFilePath:uniqueFilePathForWritingWallpaperData2 lowResData:watchWallpaperImageData metadata:v22 contentIsSensitive:v30 error:&v42];
    v24 = v42;
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v44 = v23;
        v45 = 2112;
        v46 = v24;
        _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Created wallpaper %@ with error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v23 = 0;
  }

  givenName = [contactCopy givenName];
  familyName = [contactCopy familyName];
  v28 = [(IMNickname *)self initWithFirstName:givenName lastName:familyName avatar:v39 pronouns:0 wallpaper:v23 avatarRecipe:v38];

  return v28;
}

+ (id)uniqueFilePathForWritingImageData
{
  v2 = IMSafeTemporaryDirectory();
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.messages"];
  path = [v3 path];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v7 = [defaultManager createUniqueDirectoryWithName:stringGUID atPath:path ofType:0];

  v8 = [v7 stringByAppendingPathComponent:@"NickNameImage"];

  return v8;
}

+ (id)uniqueFilePathForWritingWallpaperData
{
  v2 = IMSafeTemporaryDirectory();
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.messages"];
  path = [v3 path];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v7 = [defaultManager createUniqueDirectoryWithName:stringGUID atPath:path ofType:0];

  v8 = [v7 stringByAppendingPathComponent:@"Wallpaper"];

  return v8;
}

- (IMNickname)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  if (![representationCopy count])
  {

    self = 0;
    goto LABEL_17;
  }

  v5 = [IMNicknameAvatarImage alloc];
  v6 = [representationCopy objectForKey:@"ai"];
  v35 = [(IMNicknameAvatarImage *)v5 initWithDictionaryRepresentation:v6];

  v7 = [representationCopy objectForKey:@"rid"];
  v8 = [representationCopy objectForKey:@"hid"];
  v9 = [representationCopy objectForKey:@"fn"];
  v10 = [representationCopy objectForKey:@"ln"];
  v11 = [representationCopy objectForKey:@"pb"];
  v12 = [representationCopy objectForKey:@"wp"];
  v33 = v12;
  if (v12)
  {
    v13 = [[IMWallpaper alloc] initWithDictionaryRepresentation:v12];
  }

  else
  {
    v13 = 0;
  }

  v32 = [representationCopy objectForKey:@"ad"];
  v14 = [representationCopy objectForKey:@"ard"];
  v15 = v8;
  v31 = v14;
  if (v14)
  {
    v30 = [[IMNicknameAvatarRecipe alloc] initWithDictionaryRepresentation:v14];
  }

  else
  {
    v30 = 0;
  }

  v16 = [representationCopy objectForKey:@"pn"];

  v34 = v7;
  if (!v16)
  {
    goto LABEL_15;
  }

  v28 = v9;
  v17 = objc_alloc(MEMORY[0x1E696B0E8]);
  v18 = [representationCopy objectForKey:@"pn"];
  v36 = 0;
  v16 = [v17 initWithExternalRepresentationDictionary:v18 error:&v36];
  v19 = v36;

  if (!v19)
  {
    v7 = v34;
    v9 = v28;
LABEL_15:
    self = [(IMNickname *)self initWithFirstName:v9 lastName:v10 avatar:v35 pronouns:v16];
    [(IMNickname *)self setRecordID:v7];
    [(IMNickname *)self setHandle:v15];
    [(IMNickname *)self setWallpaper:v13];
    v23 = v32;
    [(IMNickname *)self setArchivedDate:v32];
    v22 = v11;
    [(IMNickname *)self setPreBlastDoorPayloadData:v11];
    v21 = v13;
    v24 = v30;
    [(IMNickname *)self setAvatarRecipe:v30];
    v29 = 1;
    goto LABEL_16;
  }

  v27 = v11;
  v20 = IMLogHandleForCategory("Nicknames");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_1A88C0C84(v20);
  }

  v29 = 0;
  v9 = v28;
  v21 = v13;
  v22 = v27;
  v23 = v32;
  v24 = v30;
LABEL_16:

  if ((v29 & 1) == 0)
  {
    selfCopy = 0;
    goto LABEL_19;
  }

LABEL_17:
  self = self;
  selfCopy = self;
LABEL_19:

  return selfCopy;
}

- (IMNickname)initWithPublicDictionaryRepresentationWithoutAvatar:(id)avatar
{
  avatarCopy = avatar;
  v5 = [avatarCopy objectForKey:@"fn"];
  v6 = [avatarCopy objectForKey:@"ln"];
  v7 = [avatarCopy objectForKey:@"pn"];

  if (v7 && (v8 = objc_alloc(MEMORY[0x1E696B0E8]), [avatarCopy objectForKey:@"pn"], v9 = objc_claimAutoreleasedReturnValue(), v12 = 0, v7 = objc_msgSend(v8, "initWithExternalRepresentationDictionary:error:", v9, &v12), v9, !v7))
  {
    v7 = IMLogHandleForCategory("Nicknames");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C0C84(v7);
    }

    selfCopy = 0;
  }

  else
  {
    self = [(IMNickname *)self initWithFirstName:v5 lastName:v6 avatar:0 pronouns:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)persistedDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  displayName = [(IMNickname *)self displayName];
  if (displayName)
  {
    CFDictionarySetValue(v3, @"dn", displayName);
  }

  dictionaryRepresentation = [(IMNicknameAvatarImage *)self->_avatar dictionaryRepresentation];
  if (dictionaryRepresentation)
  {
    CFDictionarySetValue(v3, @"ai", dictionaryRepresentation);
  }

  recordID = [(IMNickname *)self recordID];
  if (recordID)
  {
    CFDictionarySetValue(v3, @"rid", recordID);
  }

  handle = [(IMNickname *)self handle];
  if (handle)
  {
    CFDictionarySetValue(v3, @"hid", handle);
  }

  firstName = [(IMNickname *)self firstName];
  if (firstName)
  {
    CFDictionarySetValue(v3, @"fn", firstName);
  }

  lastName = [(IMNickname *)self lastName];
  if (lastName)
  {
    CFDictionarySetValue(v3, @"ln", lastName);
  }

  wallpaper = [(IMNickname *)self wallpaper];
  dictionaryRepresentation2 = [wallpaper dictionaryRepresentation];

  if (dictionaryRepresentation2)
  {
    CFDictionarySetValue(v3, @"wp", dictionaryRepresentation2);
  }

  externalRepresentationDictionary = [(_NSAttributedStringGrammarInflection *)self->_pronouns externalRepresentationDictionary];
  if (externalRepresentationDictionary)
  {
    CFDictionarySetValue(v3, @"pn", externalRepresentationDictionary);
  }

  archivedDate = self->_archivedDate;
  if (archivedDate)
  {
    CFDictionarySetValue(v3, @"ad", archivedDate);
  }

  avatarRecipe = [(IMNickname *)self avatarRecipe];
  dictionaryRepresentation3 = [avatarRecipe dictionaryRepresentation];

  if (dictionaryRepresentation3)
  {
    CFDictionarySetValue(v3, @"ard", dictionaryRepresentation3);
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  persistedDictionaryRepresentation = [(IMNickname *)self persistedDictionaryRepresentation];
  v4 = [persistedDictionaryRepresentation mutableCopy];

  preBlastDoorPayloadData = [(IMNickname *)self preBlastDoorPayloadData];
  if (preBlastDoorPayloadData)
  {
    CFDictionarySetValue(v4, @"pb", preBlastDoorPayloadData);
  }

  return v4;
}

- (id)publicDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  displayName = self->_displayName;
  if (displayName)
  {
    CFDictionarySetValue(v3, @"dn", displayName);
  }

  publicDictionaryRepresentation = [(IMNicknameAvatarImage *)self->_avatar publicDictionaryRepresentation];
  if (publicDictionaryRepresentation)
  {
    CFDictionarySetValue(v4, @"ai", publicDictionaryRepresentation);
  }

  firstName = self->_firstName;
  if (firstName)
  {
    CFDictionarySetValue(v4, @"fn", firstName);
  }

  lastName = self->_lastName;
  if (lastName)
  {
    CFDictionarySetValue(v4, @"ln", lastName);
  }

  publicDictionaryRepresentation2 = [(IMWallpaper *)self->_wallpaper publicDictionaryRepresentation];
  if (publicDictionaryRepresentation2)
  {
    CFDictionarySetValue(v4, @"wp", publicDictionaryRepresentation2);
  }

  externalRepresentationDictionary = [(_NSAttributedStringGrammarInflection *)self->_pronouns externalRepresentationDictionary];
  if (externalRepresentationDictionary)
  {
    CFDictionarySetValue(v4, @"pn", externalRepresentationDictionary);
  }

  archivedDate = self->_archivedDate;
  if (archivedDate)
  {
    CFDictionarySetValue(v4, @"ad", archivedDate);
  }

  avatarRecipe = [(IMNickname *)self avatarRecipe];
  dictionaryRepresentation = [avatarRecipe dictionaryRepresentation];

  if (dictionaryRepresentation)
  {
    CFDictionarySetValue(v4, @"ard", dictionaryRepresentation);
  }

  return v4;
}

- (id)publicDictionaryRepresentationWithoutAvatar
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  displayName = self->_displayName;
  if (displayName)
  {
    CFDictionarySetValue(v3, @"dn", displayName);
  }

  firstName = self->_firstName;
  if (firstName)
  {
    CFDictionarySetValue(v4, @"fn", firstName);
  }

  lastName = self->_lastName;
  if (lastName)
  {
    CFDictionarySetValue(v4, @"ln", lastName);
  }

  externalRepresentationDictionary = [(_NSAttributedStringGrammarInflection *)self->_pronouns externalRepresentationDictionary];
  if (externalRepresentationDictionary)
  {
    CFDictionarySetValue(v4, @"pn", externalRepresentationDictionary);
  }

  archivedDate = self->_archivedDate;
  if (archivedDate)
  {
    CFDictionarySetValue(v4, @"ad", archivedDate);
  }

  return v4;
}

- (void)setFirstName:(id)name
{
  if (self->_firstName != name)
  {
    v5 = [name copy];
    firstName = self->_firstName;
    self->_firstName = v5;

    nameHash = self->_nameHash;
    self->_nameHash = 0;
  }
}

- (void)setLastName:(id)name
{
  if (self->_lastName != name)
  {
    v5 = [name copy];
    lastName = self->_lastName;
    self->_lastName = v5;

    nameHash = self->_nameHash;
    self->_nameHash = 0;
  }
}

- (void)setAvatar:(id)avatar
{
  avatarCopy = avatar;
  p_avatar = &self->_avatar;
  if (self->_avatar != avatarCopy)
  {
    objc_storeStrong(p_avatar, avatar);
    imageHash = self->_imageHash;
    self->_imageHash = 0;

    concatenatedImageHash = self->_concatenatedImageHash;
    self->_concatenatedImageHash = 0;
  }

  MEMORY[0x1EEE66BB8](p_avatar);
}

- (void)setWallpaper:(id)wallpaper
{
  wallpaperCopy = wallpaper;
  p_wallpaper = &self->_wallpaper;
  if (self->_wallpaper != wallpaperCopy)
  {
    objc_storeStrong(p_wallpaper, wallpaper);
    wallpaperImageHash = self->_wallpaperImageHash;
    self->_wallpaperImageHash = 0;

    wallpaperLowResImageHash = self->_wallpaperLowResImageHash;
    self->_wallpaperLowResImageHash = 0;

    concatenatedImageHash = self->_concatenatedImageHash;
    self->_concatenatedImageHash = 0;
  }

  MEMORY[0x1EEE66BB8](p_wallpaper);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [IMNickname alloc];
  firstName = [(IMNickname *)self firstName];
  lastName = [(IMNickname *)self lastName];
  avatar = [(IMNickname *)self avatar];
  pronouns = [(IMNickname *)self pronouns];
  v9 = [(IMNickname *)v4 initWithFirstName:firstName lastName:lastName avatar:avatar pronouns:pronouns];

  recordID = [(IMNickname *)self recordID];
  [(IMNickname *)v9 setRecordID:recordID];

  handle = [(IMNickname *)self handle];
  [(IMNickname *)v9 setHandle:handle];

  wallpaper = [(IMNickname *)self wallpaper];
  [(IMNickname *)v9 setWallpaper:wallpaper];

  archivedDate = [(IMNickname *)self archivedDate];
  [(IMNickname *)v9 setArchivedDate:archivedDate];

  preBlastDoorPayloadData = [(IMNickname *)self preBlastDoorPayloadData];
  [(IMNickname *)v9 setPreBlastDoorPayloadData:preBlastDoorPayloadData];

  avatarRecipe = [(IMNickname *)self avatarRecipe];
  [(IMNickname *)v9 setAvatarRecipe:avatarRecipe];

  return v9;
}

- (IMNickname)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"avatar"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recordID"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handleID"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"avatarRecipeData"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"preBlastdoorData"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wallpaper"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"archivedDate"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pronouns"];

  v16 = [(IMNickname *)self initWithFirstName:v5 lastName:v6 avatar:v4 pronouns:v15];
  v17 = v16;
  if (v19)
  {
    [(IMNickname *)v16 setRecordID:v19];
  }

  if (v21)
  {
    [(IMNickname *)v17 setHandle:?];
  }

  if (v13)
  {
    [(IMNickname *)v17 setWallpaper:v13];
  }

  if (v14)
  {
    [(IMNickname *)v17 setArchivedDate:v14];
  }

  if (v12)
  {
    [(IMNickname *)v17 setPreBlastDoorPayloadData:v12];
  }

  if (v7)
  {
    [(IMNickname *)v17 setAvatarRecipe:v7];
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  displayName = [(IMNickname *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  avatar = [(IMNickname *)self avatar];
  [coderCopy encodeObject:avatar forKey:@"avatar"];

  recordID = [(IMNickname *)self recordID];
  [coderCopy encodeObject:recordID forKey:@"recordID"];

  handle = [(IMNickname *)self handle];
  [coderCopy encodeObject:handle forKey:@"handleID"];

  firstName = [(IMNickname *)self firstName];
  [coderCopy encodeObject:firstName forKey:@"firstName"];

  lastName = [(IMNickname *)self lastName];
  [coderCopy encodeObject:lastName forKey:@"lastName"];

  wallpaper = [(IMNickname *)self wallpaper];
  [coderCopy encodeObject:wallpaper forKey:@"wallpaper"];

  pronouns = [(IMNickname *)self pronouns];
  [coderCopy encodeObject:pronouns forKey:@"pronouns"];

  archivedDate = [(IMNickname *)self archivedDate];
  [coderCopy encodeObject:archivedDate forKey:@"archivedDate"];

  preBlastDoorPayloadData = [(IMNickname *)self preBlastDoorPayloadData];
  [coderCopy encodeObject:preBlastDoorPayloadData forKey:@"preBlastdoorData"];

  avatarRecipe = [(IMNickname *)self avatarRecipe];
  [coderCopy encodeObject:avatarRecipe forKey:@"avatarRecipeData"];
}

- (id)dataRepresentation
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v6];
  v3 = v6;
  if (v3 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1A85E5000, v4, OS_LOG_TYPE_INFO, "Error creating nickname archive: %@", buf, 0xCu);
    }
  }

  return v2;
}

+ (id)nameHashWithFirstName:(id)name lastName:(id)lastName
{
  nameCopy = name;
  lastNameCopy = lastName;
  if ([nameCopy length] || objc_msgSend(lastNameCopy, "length"))
  {
    v7 = MEMORY[0x1E696AEC0];
    lowercaseString = [nameCopy lowercaseString];
    lowercaseString2 = [lastNameCopy lowercaseString];
    v10 = [v7 stringWithFormat:@"%@+%@", lowercaseString, lowercaseString2];

    v11 = [v10 dataUsingEncoding:10];
    v12 = IMSharedHelperMD5OfData(v11);
  }

  else
  {
    v12 = &stru_1F1BB91F0;
  }

  return v12;
}

- (NSString)nameHash
{
  nameHash = self->_nameHash;
  if (!nameHash)
  {
    v4 = objc_opt_class();
    firstName = [(IMNickname *)self firstName];
    lastName = [(IMNickname *)self lastName];
    v7 = [v4 nameHashWithFirstName:firstName lastName:lastName];
    v8 = self->_nameHash;
    self->_nameHash = v7;

    nameHash = self->_nameHash;
  }

  return nameHash;
}

- (NSData)imageHash
{
  imageHash = self->_imageHash;
  if (!imageHash)
  {
    avatar = [(IMNickname *)self avatar];
    imageFilePath = [avatar imageFilePath];
    v6 = [(IMNickname *)self _imageHashCreatedInChunks:imageFilePath];
    v7 = self->_imageHash;
    self->_imageHash = v6;

    imageHash = self->_imageHash;
  }

  return imageHash;
}

- (NSData)wallpaperImageHash
{
  wallpaperImageHash = self->_wallpaperImageHash;
  if (!wallpaperImageHash)
  {
    wallpaper = [(IMNickname *)self wallpaper];
    filePath = [wallpaper filePath];
    v6 = [(IMNickname *)self _imageHashCreatedInChunks:filePath];
    v7 = self->_wallpaperImageHash;
    self->_wallpaperImageHash = v6;

    wallpaperImageHash = self->_wallpaperImageHash;
  }

  return wallpaperImageHash;
}

- (NSData)wallpaperLowResImageHash
{
  wallpaperLowResImageHash = self->_wallpaperLowResImageHash;
  if (!wallpaperLowResImageHash)
  {
    wallpaper = [(IMNickname *)self wallpaper];
    lowResFilePath = [wallpaper lowResFilePath];
    v6 = [(IMNickname *)self _imageHashCreatedInChunks:lowResFilePath];
    v7 = self->_wallpaperLowResImageHash;
    self->_wallpaperLowResImageHash = v6;

    wallpaperLowResImageHash = self->_wallpaperLowResImageHash;
  }

  return wallpaperLowResImageHash;
}

- (NSString)concatenatedImageHash
{
  concatenatedImageHash = self->_concatenatedImageHash;
  if (!concatenatedImageHash)
  {
    imageHash = [(IMNickname *)self imageHash];

    if (imageHash)
    {
      imageHash2 = [(IMNickname *)self imageHash];
      v6 = IMSharedHelperMd5ToString([imageHash2 bytes]);
    }

    else
    {
      v6 = &stru_1F1BB91F0;
    }

    wallpaperImageHash = [(IMNickname *)self wallpaperImageHash];

    if (wallpaperImageHash)
    {
      wallpaperImageHash2 = [(IMNickname *)self wallpaperImageHash];
      v9 = IMSharedHelperMd5ToString([wallpaperImageHash2 bytes]);
    }

    else
    {
      v9 = &stru_1F1BB91F0;
    }

    v10 = [(__CFString *)v6 stringByAppendingString:v9];
    v11 = self->_concatenatedImageHash;
    self->_concatenatedImageHash = v10;

    concatenatedImageHash = self->_concatenatedImageHash;
  }

  return concatenatedImageHash;
}

- (id)_imageHashCreatedInChunks:(id)chunks
{
  chunksCopy = chunks;
  if ([chunksCopy length])
  {
    v4 = IMSharedHelperMD5DataHashOfFileAtPath(chunksCopy);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isUpdateFromNickname:(id)nickname withOptions:(unint64_t)options
{
  optionsCopy = options;
  v90 = *MEMORY[0x1E69E9840];
  nicknameCopy = nickname;
  if (!nicknameCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v43, OS_LOG_TYPE_INFO, "No other nickname to compare to, bailing!", buf, 2u);
      }
    }

    goto LABEL_56;
  }

  if ((optionsCopy & 0xC) == 0)
  {
    goto LABEL_8;
  }

  nameHash = [(IMNickname *)self nameHash];
  nameHash2 = [nicknameCopy nameHash];
  v9 = [nameHash isEqualToString:nameHash2];

  firstName = [(IMNickname *)self firstName];
  firstName2 = [nicknameCopy firstName];
  v12 = [firstName isEqualToString:firstName2];

  lastName = [(IMNickname *)self lastName];
  lastName2 = [nicknameCopy lastName];
  v15 = [lastName isEqualToString:lastName2];

  firstName3 = [(IMNickname *)self firstName];
  v17 = [firstName3 length];

  lastName3 = [(IMNickname *)self lastName];
  v19 = [lastName3 length];

  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 67110144;
      *v85 = v9 ^ 1;
      *&v85[4] = 1024;
      *&v85[6] = v12;
      *v86 = 1024;
      *&v86[2] = v15;
      *&v86[6] = 1024;
      *&v86[8] = v17 == 0;
      *&v86[12] = 1024;
      *&v86[14] = v19 == 0;
      _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, "Name change detected: %d (FN: %d) (LN: %d) (FNE: %d) (LNE: %d)", buf, 0x20u);
    }
  }

  if (v9)
  {
LABEL_8:
    if ((optionsCopy & 0xA) == 0)
    {
      goto LABEL_17;
    }

    avatar = [(IMNickname *)self avatar];
    imageExists = [avatar imageExists];

    avatar2 = [nicknameCopy avatar];
    imageExists2 = [avatar2 imageExists];

    imageHash = [(IMNickname *)self imageHash];
    v25 = imageHash;
    v26 = IMSharedHelperMd5ToString([imageHash bytes]);

    imageHash2 = [nicknameCopy imageHash];
    v28 = imageHash2;
    v29 = IMSharedHelperMd5ToString([imageHash2 bytes]);

    avatarRecipe = [(IMNickname *)self avatarRecipe];
    avatarRecipe2 = [nicknameCopy avatarRecipe];
    v32 = IMAreObjectsLogicallySame();

    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        avatarRecipe3 = [(IMNickname *)self avatarRecipe];
        avatarRecipe4 = [nicknameCopy avatarRecipe];
        *buf = 67110658;
        *v85 = imageExists;
        *&v85[4] = 1024;
        *&v85[6] = imageExists2;
        *v86 = 2112;
        *&v86[2] = v26;
        *&v86[10] = 2112;
        *&v86[12] = v29;
        LOWORD(v87) = 1024;
        *(&v87 + 2) = v32 ^ 1;
        HIWORD(v87) = 2112;
        *v88 = avatarRecipe3;
        *&v88[8] = 2112;
        v89 = avatarRecipe4;
        _os_log_impl(&dword_1A85E5000, v33, OS_LOG_TYPE_INFO, "Photo (LE: %d) (OE: %d) (LH: %@) (OH: %@) (RecipeChanged: %d, OR: %@ NR: %@)", buf, 0x3Cu);
      }
    }

    if (imageExists && ([v26 isEqualToString:v29] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v85 = self;
          _os_log_impl(&dword_1A85E5000, v44, OS_LOG_TYPE_INFO, "Photo has changed for nickname: %@", buf, 0xCu);
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (v32)
      {

LABEL_17:
        if ((optionsCopy & 0x18) != 0)
        {
          pronouns = [(IMNickname *)self pronouns];
          pronouns2 = [nicknameCopy pronouns];
          v38 = pronouns2;
          if (pronouns == pronouns2)
          {
          }

          else
          {
            pronouns3 = [(IMNickname *)self pronouns];
            pronouns4 = [nicknameCopy pronouns];
            v41 = [pronouns3 isEqual:pronouns4];

            if ((v41 & 1) == 0)
            {
              if (IMOSLoggingEnabled())
              {
                v42 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  *v85 = self;
                  _os_log_impl(&dword_1A85E5000, v42, OS_LOG_TYPE_INFO, "Pronouns have changed for nickname: %@", buf, 0xCu);
                }
              }

              goto LABEL_56;
            }
          }
        }

        if ((optionsCopy & 0x28) != 0)
        {
          wallpaper = [(IMNickname *)self wallpaper];
          wallpaperExists = [wallpaper wallpaperExists];

          wallpaper2 = [nicknameCopy wallpaper];
          wallpaperExists2 = [wallpaper2 wallpaperExists];

          wallpaperImageHash = [(IMNickname *)self wallpaperImageHash];
          v48 = wallpaperImageHash;
          v82 = IMSharedHelperMd5ToString([wallpaperImageHash bytes]);

          wallpaperImageHash2 = [nicknameCopy wallpaperImageHash];
          v50 = wallpaperImageHash2;
          v51 = IMSharedHelperMd5ToString([wallpaperImageHash2 bytes]);

          wallpaper3 = [(IMNickname *)self wallpaper];
          lowResWallpaperExists = [wallpaper3 lowResWallpaperExists];

          wallpaper4 = [nicknameCopy wallpaper];
          lowResWallpaperExists2 = [wallpaper4 lowResWallpaperExists];

          wallpaperLowResImageHash = [(IMNickname *)self wallpaperLowResImageHash];
          v55 = wallpaperLowResImageHash;
          v80 = IMSharedHelperMd5ToString([wallpaperLowResImageHash bytes]);

          wallpaperLowResImageHash2 = [nicknameCopy wallpaperLowResImageHash];
          v57 = wallpaperLowResImageHash2;
          v58 = IMSharedHelperMd5ToString([wallpaperLowResImageHash2 bytes]);

          wallpaper5 = [(IMNickname *)self wallpaper];
          metadata = [wallpaper5 metadata];

          wallpaper6 = [(IMNickname *)self wallpaper];
          metadata2 = [wallpaper6 metadata];
          wallpaper7 = [nicknameCopy wallpaper];
          metadata3 = [wallpaper7 metadata];
          v65 = [metadata2 isEqual:metadata3];

          if (IMOSLoggingEnabled())
          {
            v66 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
            {
              *buf = 67109890;
              *v85 = wallpaperExists;
              *&v85[4] = 1024;
              *&v85[6] = wallpaperExists2;
              *v86 = 2112;
              *&v86[2] = v82;
              *&v86[10] = 2112;
              *&v86[12] = v51;
              _os_log_impl(&dword_1A85E5000, v66, OS_LOG_TYPE_INFO, "Wallpaper (LE: %d) (OE: %d) (LH: %@) (OH: %@)", buf, 0x22u);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v67 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              *buf = 67109890;
              *v85 = lowResWallpaperExists;
              *&v85[4] = 1024;
              *&v85[6] = lowResWallpaperExists2;
              *v86 = 2112;
              *&v86[2] = v82;
              *&v86[10] = 2112;
              *&v86[12] = v51;
              _os_log_impl(&dword_1A85E5000, v67, OS_LOG_TYPE_INFO, "Low Res Wallpaper (LE: %d) (OE: %d) (LH: %@) (OH: %@)", buf, 0x22u);
            }
          }

          if (wallpaperExists && ![v82 isEqualToString:v51])
          {
            goto LABEL_51;
          }

          if (lowResWallpaperExists)
          {
            if (([v80 isEqualToString:v58] & ((metadata == 0) | v65) & 1) == 0)
            {
LABEL_51:
              if (IMOSLoggingEnabled())
              {
                v68 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  *v85 = self;
                  _os_log_impl(&dword_1A85E5000, v68, OS_LOG_TYPE_INFO, "Wallpaper has changed for nickname: %@", buf, 0xCu);
                }
              }

              goto LABEL_56;
            }
          }

          else if (!((metadata == 0) | v65 & 1))
          {
            goto LABEL_51;
          }
        }

        v69 = 0;
        goto LABEL_72;
      }

      if (IMOSLoggingEnabled())
      {
        v44 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v85 = self;
          _os_log_impl(&dword_1A85E5000, v44, OS_LOG_TYPE_INFO, "AvatarRecipe changed for nickname: %@", buf, 0xCu);
        }

LABEL_35:
      }
    }

LABEL_56:
    v69 = 1;
    goto LABEL_72;
  }

  if (IMOSLoggingEnabled())
  {
    v70 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
    {
      firstName4 = [(IMNickname *)self firstName];
      firstName5 = [nicknameCopy firstName];
      lastName4 = [(IMNickname *)self lastName];
      lastName5 = [nicknameCopy lastName];
      *buf = 138413314;
      *v85 = self;
      *&v85[8] = 2112;
      *v86 = firstName4;
      *&v86[8] = 2112;
      *&v86[10] = firstName5;
      *&v86[18] = 2112;
      v87 = lastName4;
      *v88 = 2112;
      *&v88[2] = lastName5;
      _os_log_impl(&dword_1A85E5000, v70, OS_LOG_TYPE_INFO, "Name has changed for nickname: %@. Self first name: %@, other first name name: %@, self last name: %@, other last name: %@", buf, 0x34u);
    }
  }

  if (v15)
  {
    v74 = v17 == 0;
  }

  else if (v12)
  {
    v74 = v19 == 0;
  }

  else
  {
    v74 = (v17 | v19) == 0;
  }

  v69 = !v74;
LABEL_72:

  return v69;
}

- (void)updateNameFromContact:(id)contact
{
  contactCopy = contact;
  firstName = [(IMNickname *)self firstName];
  v5 = [firstName length];

  if (!v5)
  {
    givenName = [contactCopy givenName];
    [(IMNickname *)self setFirstName:givenName];
  }

  lastName = [(IMNickname *)self lastName];
  v8 = [lastName length];

  if (!v8)
  {
    familyName = [contactCopy familyName];
    [(IMNickname *)self setLastName:familyName];
  }
}

+ (id)processSetOfUnknownSenderRecords:(id)records
{
  v21 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(recordsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = recordsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 mutableCopy];
        v12 = [v10 objectForKey:@"date"];
        v13 = MEMORY[0x1E696AD98];
        [v12 timeIntervalSince1970];
        v14 = [v13 numberWithDouble:?];
        [v11 setObject:v14 forKey:@"date"];

        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v4;
}

@end