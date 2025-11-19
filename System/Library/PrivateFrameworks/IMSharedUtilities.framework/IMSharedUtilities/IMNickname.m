@interface IMNickname
+ (id)nameHashWithFirstName:(id)a3 lastName:(id)a4;
+ (id)processSetOfUnknownSenderRecords:(id)a3;
+ (id)uniqueFilePathForWritingImageData;
+ (id)uniqueFilePathForWritingWallpaperData;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUpdateFromNickname:(id)a3 withOptions:(unint64_t)a4;
- (IMNickname)init;
- (IMNickname)initWithCoder:(id)a3;
- (IMNickname)initWithDictionaryRepresentation:(id)a3;
- (IMNickname)initWithFirstName:(id)a3 lastName:(id)a4 avatar:(id)a5 pronouns:(id)a6 wallpaper:(id)a7 avatarRecipe:(id)a8;
- (IMNickname)initWithMeContact:(id)a3;
- (IMNickname)initWithPublicDictionaryRepresentationWithoutAvatar:(id)a3;
- (NSData)imageHash;
- (NSData)wallpaperImageHash;
- (NSData)wallpaperLowResImageHash;
- (NSString)concatenatedImageHash;
- (NSString)nameHash;
- (id)_imageHashCreatedInChunks:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataRepresentation;
- (id)dictionaryRepresentation;
- (id)persistedDictionaryRepresentation;
- (id)publicDictionaryRepresentation;
- (id)publicDictionaryRepresentationWithoutAvatar;
- (void)encodeWithCoder:(id)a3;
- (void)setAvatar:(id)a3;
- (void)setFirstName:(id)a3;
- (void)setLastName:(id)a3;
- (void)setWallpaper:(id)a3;
- (void)updateNameFromContact:(id)a3;
@end

@implementation IMNickname

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(IMNickname *)self firstName];
  v6 = [v4 firstName];
  if ([v5 isEqual:v6])
  {
    v47 = 0;
  }

  else
  {
    v7 = [(IMNickname *)self firstName];
    if (v7)
    {
      v47 = 1;
    }

    else
    {
      v8 = [v4 firstName];
      v47 = v8 != 0;
    }
  }

  v9 = [(IMNickname *)self lastName];
  v10 = [v4 lastName];
  if ([v9 isEqual:v10])
  {
    v46 = 0;
  }

  else
  {
    v11 = [(IMNickname *)self lastName];
    if (v11)
    {
      v46 = 1;
    }

    else
    {
      v12 = [v4 lastName];
      v46 = v12 != 0;
    }
  }

  v13 = [(IMNickname *)self avatar];
  v14 = [v13 imageFilePath];
  v15 = [v4 avatar];
  v16 = [v15 imageFilePath];
  if ([v14 isEqual:v16])
  {
    v17 = 0;
  }

  else
  {
    v18 = [(IMNickname *)self avatar];
    v19 = [v18 imageFilePath];
    if (v19)
    {
      v17 = 1;
    }

    else
    {
      v20 = [v4 avatar];
      v21 = [v20 imageFilePath];
      v17 = v21 != 0;
    }
  }

  v22 = [(IMNickname *)self handle];
  v23 = [v4 handle];
  if ([v22 isEqual:v23])
  {
    v24 = 0;
  }

  else
  {
    v25 = [(IMNickname *)self handle];
    if (v25)
    {
      v24 = 1;
    }

    else
    {
      v26 = [v4 handle];
      v24 = v26 != 0;
    }
  }

  v27 = [(IMNickname *)self recordID];
  v28 = [v4 recordID];
  if ([v27 isEqual:v28])
  {
    v29 = 0;
  }

  else
  {
    v30 = [(IMNickname *)self recordID];
    if (v30)
    {
      v29 = 1;
    }

    else
    {
      v31 = [v4 recordID];
      v29 = v31 != 0;
    }
  }

  v32 = [(IMNickname *)self wallpaper];
  v33 = [v4 wallpaper];
  if ([v32 isEqual:v33])
  {
    v34 = 0;
  }

  else
  {
    v35 = [(IMNickname *)self wallpaper];
    if (v35)
    {
      v34 = 1;
    }

    else
    {
      v36 = [v4 wallpaper];
      v34 = v36 != 0;
    }
  }

  v37 = [(IMNickname *)self pronouns];
  v38 = [v4 pronouns];
  if ([v37 isEqual:v38])
  {
    v39 = 1;
  }

  else
  {
    v40 = [(IMNickname *)self pronouns];
    if (v40)
    {
      v39 = 0;
    }

    else
    {
      v41 = [v4 pronouns];
      v39 = v41 == 0;
    }
  }

  v42 = [(IMNickname *)self avatarRecipe];
  v43 = [v4 avatarRecipe];
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

- (IMNickname)initWithFirstName:(id)a3 lastName:(id)a4 avatar:(id)a5 pronouns:(id)a6 wallpaper:(id)a7 avatarRecipe:(id)a8
{
  v14 = a3;
  v15 = a4;
  v27 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v28.receiver = self;
  v28.super_class = IMNickname;
  v19 = [(IMNickname *)&v28 init];
  if (v19)
  {
    v20 = [v14 copy];
    firstName = v19->_firstName;
    v19->_firstName = v20;

    objc_storeStrong(&v19->_avatar, a5);
    v22 = [v15 copy];
    lastName = v19->_lastName;
    v19->_lastName = v22;

    objc_storeStrong(&v19->_pronouns, a6);
    if ([(NSString *)v19->_firstName length]&& [(NSString *)v19->_lastName length])
    {
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ %@", v19->_firstName, v19->_lastName];
    }

    else
    {
      if (![(NSString *)v19->_firstName length])
      {
LABEL_8:
        objc_storeStrong(&v19->_wallpaper, a7);
        objc_storeStrong(&v19->_avatarRecipe, a8);
        goto LABEL_9;
      }

      v24 = [v14 copy];
    }

    displayName = v19->_displayName;
    v19->_displayName = v24;

    goto LABEL_8;
  }

LABEL_9:

  return v19;
}

- (IMNickname)initWithMeContact:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v40 = [v3 imageData];
  if (v40)
  {
    v4 = [objc_opt_class() uniqueFilePathForWritingImageData];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v44 = v4;
        _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Writing nickname image to path: %@", buf, 0xCu);
      }
    }

    v39 = [[IMNicknameAvatarImage alloc] initWithImageName:@"NickNameImage" imageData:v40 imageFilePath:v4 contentIsSensitive:0];
  }

  else
  {
    v39 = 0;
  }

  v6 = +[IMFeatureFlags sharedFeatureFlags];
  v7 = [v6 isSwiftUIAvatarRenderingEnabled];

  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = [v3 avatarRecipeData];
    if (v8)
    {
      v38 = [[IMNicknameAvatarRecipe alloc] initWithData:v8];
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

  v9 = [v3 wallpaper];
  if (v9)
  {
    v37 = [objc_opt_class() uniqueFilePathForWritingWallpaperData];
    v35 = [objc_opt_class() uniqueFilePathForWritingWallpaperData];
    v36 = [v9 posterArchiveData];
    v34 = [v3 watchWallpaperImageData];
    if (objc_opt_respondsToSelector())
    {
      v31 = [IMWallpaperMetadata alloc];
      v33 = [v9 fontDescription];
      v32 = [v33 objectForKeyedSubscript:@"name"];
      v10 = [v9 fontDescription];
      v11 = [v10 objectForKeyedSubscript:@"point-size"];
      [v11 floatValue];
      v13 = v12;
      v14 = [v9 fontDescription];
      v15 = [v14 objectForKeyedSubscript:@"weight"];
      [v15 floatValue];
      v17 = v16;
      v18 = [v9 fontColorDescription];
      v19 = [v9 isVertical];
      v20 = [v9 extensionBundleID];
      v21 = [v9 backgroundColorDescription];
      v22 = [(IMWallpaperMetadata *)v31 initWithFontName:v32 fontSize:v18 fontWeight:v19 fontColor:v20 isVertical:v21 type:v13 backgroundColor:v17];
    }

    else
    {
      v22 = 0;
    }

    v42 = 0;
    LOBYTE(v30) = 0;
    v23 = [[IMWallpaper alloc] initWithFileName:@"Wallpaper" filePath:v37 data:v36 lowResFileName:@"Wallpaper" lowResFilePath:v35 lowResData:v34 metadata:v22 contentIsSensitive:v30 error:&v42];
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

  v26 = [v3 givenName];
  v27 = [v3 familyName];
  v28 = [(IMNickname *)self initWithFirstName:v26 lastName:v27 avatar:v39 pronouns:0 wallpaper:v23 avatarRecipe:v38];

  return v28;
}

+ (id)uniqueFilePathForWritingImageData
{
  v2 = IMSafeTemporaryDirectory();
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.messages"];
  v4 = [v3 path];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [MEMORY[0x1E696AEC0] stringGUID];
  v7 = [v5 createUniqueDirectoryWithName:v6 atPath:v4 ofType:0];

  v8 = [v7 stringByAppendingPathComponent:@"NickNameImage"];

  return v8;
}

+ (id)uniqueFilePathForWritingWallpaperData
{
  v2 = IMSafeTemporaryDirectory();
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.messages"];
  v4 = [v3 path];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [MEMORY[0x1E696AEC0] stringGUID];
  v7 = [v5 createUniqueDirectoryWithName:v6 atPath:v4 ofType:0];

  v8 = [v7 stringByAppendingPathComponent:@"Wallpaper"];

  return v8;
}

- (IMNickname)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {

    self = 0;
    goto LABEL_17;
  }

  v5 = [IMNicknameAvatarImage alloc];
  v6 = [v4 objectForKey:@"ai"];
  v35 = [(IMNicknameAvatarImage *)v5 initWithDictionaryRepresentation:v6];

  v7 = [v4 objectForKey:@"rid"];
  v8 = [v4 objectForKey:@"hid"];
  v9 = [v4 objectForKey:@"fn"];
  v10 = [v4 objectForKey:@"ln"];
  v11 = [v4 objectForKey:@"pb"];
  v12 = [v4 objectForKey:@"wp"];
  v33 = v12;
  if (v12)
  {
    v13 = [[IMWallpaper alloc] initWithDictionaryRepresentation:v12];
  }

  else
  {
    v13 = 0;
  }

  v32 = [v4 objectForKey:@"ad"];
  v14 = [v4 objectForKey:@"ard"];
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

  v16 = [v4 objectForKey:@"pn"];

  v34 = v7;
  if (!v16)
  {
    goto LABEL_15;
  }

  v28 = v9;
  v17 = objc_alloc(MEMORY[0x1E696B0E8]);
  v18 = [v4 objectForKey:@"pn"];
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
    v25 = 0;
    goto LABEL_19;
  }

LABEL_17:
  self = self;
  v25 = self;
LABEL_19:

  return v25;
}

- (IMNickname)initWithPublicDictionaryRepresentationWithoutAvatar:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"fn"];
  v6 = [v4 objectForKey:@"ln"];
  v7 = [v4 objectForKey:@"pn"];

  if (v7 && (v8 = objc_alloc(MEMORY[0x1E696B0E8]), [v4 objectForKey:@"pn"], v9 = objc_claimAutoreleasedReturnValue(), v12 = 0, v7 = objc_msgSend(v8, "initWithExternalRepresentationDictionary:error:", v9, &v12), v9, !v7))
  {
    v7 = IMLogHandleForCategory("Nicknames");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C0C84(v7);
    }

    v10 = 0;
  }

  else
  {
    self = [(IMNickname *)self initWithFirstName:v5 lastName:v6 avatar:0 pronouns:v7];
    v10 = self;
  }

  return v10;
}

- (id)persistedDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(IMNickname *)self displayName];
  if (v4)
  {
    CFDictionarySetValue(v3, @"dn", v4);
  }

  v5 = [(IMNicknameAvatarImage *)self->_avatar dictionaryRepresentation];
  if (v5)
  {
    CFDictionarySetValue(v3, @"ai", v5);
  }

  v6 = [(IMNickname *)self recordID];
  if (v6)
  {
    CFDictionarySetValue(v3, @"rid", v6);
  }

  v7 = [(IMNickname *)self handle];
  if (v7)
  {
    CFDictionarySetValue(v3, @"hid", v7);
  }

  v8 = [(IMNickname *)self firstName];
  if (v8)
  {
    CFDictionarySetValue(v3, @"fn", v8);
  }

  v9 = [(IMNickname *)self lastName];
  if (v9)
  {
    CFDictionarySetValue(v3, @"ln", v9);
  }

  v10 = [(IMNickname *)self wallpaper];
  v11 = [v10 dictionaryRepresentation];

  if (v11)
  {
    CFDictionarySetValue(v3, @"wp", v11);
  }

  v12 = [(_NSAttributedStringGrammarInflection *)self->_pronouns externalRepresentationDictionary];
  if (v12)
  {
    CFDictionarySetValue(v3, @"pn", v12);
  }

  archivedDate = self->_archivedDate;
  if (archivedDate)
  {
    CFDictionarySetValue(v3, @"ad", archivedDate);
  }

  v14 = [(IMNickname *)self avatarRecipe];
  v15 = [v14 dictionaryRepresentation];

  if (v15)
  {
    CFDictionarySetValue(v3, @"ard", v15);
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [(IMNickname *)self persistedDictionaryRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(IMNickname *)self preBlastDoorPayloadData];
  if (v5)
  {
    CFDictionarySetValue(v4, @"pb", v5);
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

  v6 = [(IMNicknameAvatarImage *)self->_avatar publicDictionaryRepresentation];
  if (v6)
  {
    CFDictionarySetValue(v4, @"ai", v6);
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

  v9 = [(IMWallpaper *)self->_wallpaper publicDictionaryRepresentation];
  if (v9)
  {
    CFDictionarySetValue(v4, @"wp", v9);
  }

  v10 = [(_NSAttributedStringGrammarInflection *)self->_pronouns externalRepresentationDictionary];
  if (v10)
  {
    CFDictionarySetValue(v4, @"pn", v10);
  }

  archivedDate = self->_archivedDate;
  if (archivedDate)
  {
    CFDictionarySetValue(v4, @"ad", archivedDate);
  }

  v12 = [(IMNickname *)self avatarRecipe];
  v13 = [v12 dictionaryRepresentation];

  if (v13)
  {
    CFDictionarySetValue(v4, @"ard", v13);
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

  v8 = [(_NSAttributedStringGrammarInflection *)self->_pronouns externalRepresentationDictionary];
  if (v8)
  {
    CFDictionarySetValue(v4, @"pn", v8);
  }

  archivedDate = self->_archivedDate;
  if (archivedDate)
  {
    CFDictionarySetValue(v4, @"ad", archivedDate);
  }

  return v4;
}

- (void)setFirstName:(id)a3
{
  if (self->_firstName != a3)
  {
    v5 = [a3 copy];
    firstName = self->_firstName;
    self->_firstName = v5;

    nameHash = self->_nameHash;
    self->_nameHash = 0;
  }
}

- (void)setLastName:(id)a3
{
  if (self->_lastName != a3)
  {
    v5 = [a3 copy];
    lastName = self->_lastName;
    self->_lastName = v5;

    nameHash = self->_nameHash;
    self->_nameHash = 0;
  }
}

- (void)setAvatar:(id)a3
{
  v5 = a3;
  p_avatar = &self->_avatar;
  if (self->_avatar != v5)
  {
    objc_storeStrong(p_avatar, a3);
    imageHash = self->_imageHash;
    self->_imageHash = 0;

    concatenatedImageHash = self->_concatenatedImageHash;
    self->_concatenatedImageHash = 0;
  }

  MEMORY[0x1EEE66BB8](p_avatar);
}

- (void)setWallpaper:(id)a3
{
  v5 = a3;
  p_wallpaper = &self->_wallpaper;
  if (self->_wallpaper != v5)
  {
    objc_storeStrong(p_wallpaper, a3);
    wallpaperImageHash = self->_wallpaperImageHash;
    self->_wallpaperImageHash = 0;

    wallpaperLowResImageHash = self->_wallpaperLowResImageHash;
    self->_wallpaperLowResImageHash = 0;

    concatenatedImageHash = self->_concatenatedImageHash;
    self->_concatenatedImageHash = 0;
  }

  MEMORY[0x1EEE66BB8](p_wallpaper);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [IMNickname alloc];
  v5 = [(IMNickname *)self firstName];
  v6 = [(IMNickname *)self lastName];
  v7 = [(IMNickname *)self avatar];
  v8 = [(IMNickname *)self pronouns];
  v9 = [(IMNickname *)v4 initWithFirstName:v5 lastName:v6 avatar:v7 pronouns:v8];

  v10 = [(IMNickname *)self recordID];
  [(IMNickname *)v9 setRecordID:v10];

  v11 = [(IMNickname *)self handle];
  [(IMNickname *)v9 setHandle:v11];

  v12 = [(IMNickname *)self wallpaper];
  [(IMNickname *)v9 setWallpaper:v12];

  v13 = [(IMNickname *)self archivedDate];
  [(IMNickname *)v9 setArchivedDate:v13];

  v14 = [(IMNickname *)self preBlastDoorPayloadData];
  [(IMNickname *)v9 setPreBlastDoorPayloadData:v14];

  v15 = [(IMNickname *)self avatarRecipe];
  [(IMNickname *)v9 setAvatarRecipe:v15];

  return v9;
}

- (IMNickname)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"avatar"];
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"recordID"];
  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"handleID"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"avatarRecipeData"];
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  v12 = [v3 decodeObjectOfClasses:v11 forKey:@"preBlastdoorData"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"wallpaper"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"archivedDate"];
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"pronouns"];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IMNickname *)self displayName];
  [v4 encodeObject:v5 forKey:@"displayName"];

  v6 = [(IMNickname *)self avatar];
  [v4 encodeObject:v6 forKey:@"avatar"];

  v7 = [(IMNickname *)self recordID];
  [v4 encodeObject:v7 forKey:@"recordID"];

  v8 = [(IMNickname *)self handle];
  [v4 encodeObject:v8 forKey:@"handleID"];

  v9 = [(IMNickname *)self firstName];
  [v4 encodeObject:v9 forKey:@"firstName"];

  v10 = [(IMNickname *)self lastName];
  [v4 encodeObject:v10 forKey:@"lastName"];

  v11 = [(IMNickname *)self wallpaper];
  [v4 encodeObject:v11 forKey:@"wallpaper"];

  v12 = [(IMNickname *)self pronouns];
  [v4 encodeObject:v12 forKey:@"pronouns"];

  v13 = [(IMNickname *)self archivedDate];
  [v4 encodeObject:v13 forKey:@"archivedDate"];

  v14 = [(IMNickname *)self preBlastDoorPayloadData];
  [v4 encodeObject:v14 forKey:@"preBlastdoorData"];

  v15 = [(IMNickname *)self avatarRecipe];
  [v4 encodeObject:v15 forKey:@"avatarRecipeData"];
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

+ (id)nameHashWithFirstName:(id)a3 lastName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] || objc_msgSend(v6, "length"))
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = [v5 lowercaseString];
    v9 = [v6 lowercaseString];
    v10 = [v7 stringWithFormat:@"%@+%@", v8, v9];

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
    v5 = [(IMNickname *)self firstName];
    v6 = [(IMNickname *)self lastName];
    v7 = [v4 nameHashWithFirstName:v5 lastName:v6];
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
    v4 = [(IMNickname *)self avatar];
    v5 = [v4 imageFilePath];
    v6 = [(IMNickname *)self _imageHashCreatedInChunks:v5];
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
    v4 = [(IMNickname *)self wallpaper];
    v5 = [v4 filePath];
    v6 = [(IMNickname *)self _imageHashCreatedInChunks:v5];
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
    v4 = [(IMNickname *)self wallpaper];
    v5 = [v4 lowResFilePath];
    v6 = [(IMNickname *)self _imageHashCreatedInChunks:v5];
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
    v4 = [(IMNickname *)self imageHash];

    if (v4)
    {
      v5 = [(IMNickname *)self imageHash];
      v6 = IMSharedHelperMd5ToString([v5 bytes]);
    }

    else
    {
      v6 = &stru_1F1BB91F0;
    }

    v7 = [(IMNickname *)self wallpaperImageHash];

    if (v7)
    {
      v8 = [(IMNickname *)self wallpaperImageHash];
      v9 = IMSharedHelperMd5ToString([v8 bytes]);
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

- (id)_imageHashCreatedInChunks:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = IMSharedHelperMD5DataHashOfFileAtPath(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isUpdateFromNickname:(id)a3 withOptions:(unint64_t)a4
{
  v4 = a4;
  v90 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
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

  if ((v4 & 0xC) == 0)
  {
    goto LABEL_8;
  }

  v7 = [(IMNickname *)self nameHash];
  v8 = [v6 nameHash];
  v9 = [v7 isEqualToString:v8];

  v10 = [(IMNickname *)self firstName];
  v11 = [v6 firstName];
  v12 = [v10 isEqualToString:v11];

  v13 = [(IMNickname *)self lastName];
  v14 = [v6 lastName];
  v15 = [v13 isEqualToString:v14];

  v16 = [(IMNickname *)self firstName];
  v17 = [v16 length];

  v18 = [(IMNickname *)self lastName];
  v19 = [v18 length];

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
    if ((v4 & 0xA) == 0)
    {
      goto LABEL_17;
    }

    v21 = [(IMNickname *)self avatar];
    v22 = [v21 imageExists];

    v23 = [v6 avatar];
    v81 = [v23 imageExists];

    v24 = [(IMNickname *)self imageHash];
    v25 = v24;
    v26 = IMSharedHelperMd5ToString([v24 bytes]);

    v27 = [v6 imageHash];
    v28 = v27;
    v29 = IMSharedHelperMd5ToString([v27 bytes]);

    v30 = [(IMNickname *)self avatarRecipe];
    v31 = [v6 avatarRecipe];
    v32 = IMAreObjectsLogicallySame();

    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = [(IMNickname *)self avatarRecipe];
        v35 = [v6 avatarRecipe];
        *buf = 67110658;
        *v85 = v22;
        *&v85[4] = 1024;
        *&v85[6] = v81;
        *v86 = 2112;
        *&v86[2] = v26;
        *&v86[10] = 2112;
        *&v86[12] = v29;
        LOWORD(v87) = 1024;
        *(&v87 + 2) = v32 ^ 1;
        HIWORD(v87) = 2112;
        *v88 = v34;
        *&v88[8] = 2112;
        v89 = v35;
        _os_log_impl(&dword_1A85E5000, v33, OS_LOG_TYPE_INFO, "Photo (LE: %d) (OE: %d) (LH: %@) (OH: %@) (RecipeChanged: %d, OR: %@ NR: %@)", buf, 0x3Cu);
      }
    }

    if (v22 && ([v26 isEqualToString:v29] & 1) == 0)
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
        if ((v4 & 0x18) != 0)
        {
          v36 = [(IMNickname *)self pronouns];
          v37 = [v6 pronouns];
          v38 = v37;
          if (v36 == v37)
          {
          }

          else
          {
            v39 = [(IMNickname *)self pronouns];
            v40 = [v6 pronouns];
            v41 = [v39 isEqual:v40];

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

        if ((v4 & 0x28) != 0)
        {
          v45 = [(IMNickname *)self wallpaper];
          v79 = [v45 wallpaperExists];

          v46 = [v6 wallpaper];
          v77 = [v46 wallpaperExists];

          v47 = [(IMNickname *)self wallpaperImageHash];
          v48 = v47;
          v82 = IMSharedHelperMd5ToString([v47 bytes]);

          v49 = [v6 wallpaperImageHash];
          v50 = v49;
          v51 = IMSharedHelperMd5ToString([v49 bytes]);

          v52 = [(IMNickname *)self wallpaper];
          v78 = [v52 lowResWallpaperExists];

          v53 = [v6 wallpaper];
          v76 = [v53 lowResWallpaperExists];

          v54 = [(IMNickname *)self wallpaperLowResImageHash];
          v55 = v54;
          v80 = IMSharedHelperMd5ToString([v54 bytes]);

          v56 = [v6 wallpaperLowResImageHash];
          v57 = v56;
          v58 = IMSharedHelperMd5ToString([v56 bytes]);

          v59 = [(IMNickname *)self wallpaper];
          v60 = [v59 metadata];

          v61 = [(IMNickname *)self wallpaper];
          v62 = [v61 metadata];
          v63 = [v6 wallpaper];
          v64 = [v63 metadata];
          v65 = [v62 isEqual:v64];

          if (IMOSLoggingEnabled())
          {
            v66 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
            {
              *buf = 67109890;
              *v85 = v79;
              *&v85[4] = 1024;
              *&v85[6] = v77;
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
              *v85 = v78;
              *&v85[4] = 1024;
              *&v85[6] = v76;
              *v86 = 2112;
              *&v86[2] = v82;
              *&v86[10] = 2112;
              *&v86[12] = v51;
              _os_log_impl(&dword_1A85E5000, v67, OS_LOG_TYPE_INFO, "Low Res Wallpaper (LE: %d) (OE: %d) (LH: %@) (OH: %@)", buf, 0x22u);
            }
          }

          if (v79 && ![v82 isEqualToString:v51])
          {
            goto LABEL_51;
          }

          if (v78)
          {
            if (([v80 isEqualToString:v58] & ((v60 == 0) | v65) & 1) == 0)
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

          else if (!((v60 == 0) | v65 & 1))
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
      v83 = [(IMNickname *)self firstName];
      v71 = [v6 firstName];
      v72 = [(IMNickname *)self lastName];
      v73 = [v6 lastName];
      *buf = 138413314;
      *v85 = self;
      *&v85[8] = 2112;
      *v86 = v83;
      *&v86[8] = 2112;
      *&v86[10] = v71;
      *&v86[18] = 2112;
      v87 = v72;
      *v88 = 2112;
      *&v88[2] = v73;
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

- (void)updateNameFromContact:(id)a3
{
  v10 = a3;
  v4 = [(IMNickname *)self firstName];
  v5 = [v4 length];

  if (!v5)
  {
    v6 = [v10 givenName];
    [(IMNickname *)self setFirstName:v6];
  }

  v7 = [(IMNickname *)self lastName];
  v8 = [v7 length];

  if (!v8)
  {
    v9 = [v10 familyName];
    [(IMNickname *)self setLastName:v9];
  }
}

+ (id)processSetOfUnknownSenderRecords:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
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