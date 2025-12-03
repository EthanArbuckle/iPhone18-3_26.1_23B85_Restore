@interface IFPlistParser
+ (id)catalogAssetExcerptForAssetName:(id)name style:(unint64_t)style;
+ (id)fileAssetsExcerptForFilenames:(id)filenames style:(unint64_t)style;
+ (id)grahpicIconExcerptForConfigDictionary:(id)dictionary;
+ (id)topLevelAppBundleIconKeys;
- (BOOL)hasGraphicIconReturningPlistExcerpt:(id *)excerpt;
- (IFPlistParser)initWithInfoDictionary:(id)dictionary;
- (NSDictionary)iconContent;
- (NSDictionary)iconDictionary;
- (NSString)catalogAssetName;
- (id)catalogAssetNamesReturningPlistExcerpt:(id *)excerpt;
- (id)looseFilesNamesReturningPlistExcerpt:(id *)excerpt;
- (id)subDictionaryForAlternateIconName:(id)name variants:(id)variants;
- (unint64_t)iconPlatform;
- (unint64_t)supportedPlatform;
- (unint64_t)uiDeviceFamily;
@end

@implementation IFPlistParser

+ (id)topLevelAppBundleIconKeys
{
  if (topLevelAppBundleIconKeys_onceToken != -1)
  {
    +[IFPlistParser topLevelAppBundleIconKeys];
  }

  v3 = topLevelAppBundleIconKeys_keys;

  return v3;
}

void __42__IFPlistParser_topLevelAppBundleIconKeys__block_invoke()
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = @"CFBundleIcons";
  v2[1] = @"CFBundleIconFile";
  v2[2] = @"CFBundleIconFiles";
  v2[3] = @"CFBundleIconName";
  v2[4] = @"CFBundleIcons~ipad";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:5];
  v1 = topLevelAppBundleIconKeys_keys;
  topLevelAppBundleIconKeys_keys = v0;
}

- (IFPlistParser)initWithInfoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = IFPlistParser;
  v5 = [(IFPlistParser *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    infoDictionary = v5->_infoDictionary;
    v5->_infoDictionary = v6;

    v5->_captureAccentColorInfo = 0;
  }

  return v5;
}

- (NSDictionary)iconContent
{
  infoDictionary = [(IFPlistParser *)self infoDictionary];
  v3 = +[IFPlistParser topLevelAppBundleIconKeys];
  v4 = [infoDictionary _IF_dictionarySubsetForKeys:v3];

  return v4;
}

- (NSDictionary)iconDictionary
{
  infoDictionary = [(IFPlistParser *)self infoDictionary];
  v3 = objc_opt_new();
  v4 = [infoDictionary _IF_dictionaryForKey:@"CFBundleIcons"];
  v5 = [v4 _IF_dictionaryForKey:@"CFBundlePrimaryIcon"];

  if (v5)
  {
    [v3 addEntriesFromDictionary:v5];
  }

  if (![v3 count])
  {
    v6 = [infoDictionary _IF_dictionaryForKey:@"CFBundleIcons"];
    v7 = [v6 _IF_stringForKey:@"CFBundlePrimaryIcon"];

    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"CFBundleIconName"];
    }
  }

  if (![v3 count])
  {
    v8 = [infoDictionary _IF_stringForKey:@"CFBundleIconFile"];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"CFBundleIconFile"];
    }

    v9 = [infoDictionary _IF_arrayForKey:@"CFBundleIconFiles"];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"CFBundleIconFiles"];
    }

    v10 = [infoDictionary _IF_stringForKey:@"CFBundleIconName"];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"CFBundleIconName"];
    }
  }

  v11 = [infoDictionary _IF_dictionaryForKey:@"CFBundleIcons"];
  v12 = [v11 _IF_dictionaryForKey:@"ISGraphicIconConfiguration"];

  if (v12)
  {
    [v3 setObject:v12 forKeyedSubscript:@"ISGraphicIconConfiguration"];
  }

  v13 = [infoDictionary _IF_dictionaryForKey:@"ISFolderIconConfiguration"];
  if (v13)
  {
    [v3 setObject:v13 forKeyedSubscript:@"ISFolderIconConfiguration"];
  }

  return v3;
}

- (NSString)catalogAssetName
{
  iconDictionary = [(IFPlistParser *)self iconDictionary];
  v3 = [iconDictionary _IF_stringForKey:@"CFBundleIconName"];

  return v3;
}

- (unint64_t)supportedPlatform
{
  infoDictionary = [(IFPlistParser *)self infoDictionary];
  v3 = [infoDictionary _IF_arrayForKey:@"CFBundleSupportedPlatforms"];

  v4 = +[IFPlatformInfo sharedInstance];
  v5 = [v4 platformFromPlatformStrings:v3];

  return v5;
}

- (unint64_t)iconPlatform
{
  v8[1] = *MEMORY[0x1E69E9840];
  infoDictionary = [(IFPlistParser *)self infoDictionary];
  v3 = [infoDictionary _IF_stringForKey:@"ISIconPlatform"];

  if (v3)
  {
    v4 = +[IFPlatformInfo sharedInstance];
    v8[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v6 = [v4 platformFromPlatformStrings:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)uiDeviceFamily
{
  infoDictionary = [(IFPlistParser *)self infoDictionary];
  v3 = [infoDictionary _IF_arrayForKey:@"UIDeviceFamily"];

  v4 = +[IFPlatformInfo sharedInstance];
  v5 = [v4 platformFromUIDeviceFamily:v3];

  return v5;
}

+ (id)catalogAssetExcerptForAssetName:(id)name style:(unint64_t)style
{
  v36[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v6 = nameCopy;
  if (!nameCopy)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_17;
  }

  if (style <= 1)
  {
    if (style)
    {
      if (style == 1)
      {
        v22 = nameCopy;
        v23 = @"CFBundleIcons";
        v21 = @"CFBundlePrimaryIcon";
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v24 = v7;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
LABEL_15:

        goto LABEL_17;
      }

      goto LABEL_9;
    }

    v35 = @"CFBundleIcons";
    v32 = nameCopy;
    v33 = @"CFBundlePrimaryIcon";
    v31 = @"CFBundleIconName";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v34 = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v36[0] = v9;
    v10 = MEMORY[0x1E695DF20];
    v11 = v36;
    v12 = &v35;
    goto LABEL_14;
  }

  if (style != 2)
  {
    if (style != 3)
    {
LABEL_9:
      v13 = IFDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134218242;
        styleCopy = style;
        v17 = 2112;
        v18 = v6;
      }

      goto LABEL_12;
    }

    v29 = @"CFBundleIcons~ipad";
    v26 = nameCopy;
    v27 = @"CFBundlePrimaryIcon";
    v25 = @"CFBundleIconName";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v28 = v7;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v30 = v9;
    v10 = MEMORY[0x1E695DF20];
    v11 = &v30;
    v12 = &v29;
LABEL_14:
    v8 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];

    goto LABEL_15;
  }

  v19 = @"CFBundleIconName";
  v20 = nameCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
LABEL_17:

  return v8;
}

+ (id)fileAssetsExcerptForFilenames:(id)filenames style:(unint64_t)style
{
  v36[1] = *MEMORY[0x1E69E9840];
  filenamesCopy = filenames;
  v6 = filenamesCopy;
  if (!filenamesCopy || ![filenamesCopy count])
  {
    v11 = 0;
    goto LABEL_20;
  }

  if (style <= 2)
  {
    if (style)
    {
      if (style != 2)
      {
        goto LABEL_16;
      }

LABEL_11:
      v23 = @"CFBundleIconFile";
      firstObject = [v6 firstObject];
      v24 = firstObject;
      v8 = MEMORY[0x1E695DF20];
      v9 = &v24;
      v10 = &v23;
      goto LABEL_12;
    }

    v35 = @"CFBundleIcons";
    v32 = v6;
    v33 = @"CFBundlePrimaryIcon";
    v31 = @"CFBundleIconFiles";
    firstObject = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v34 = firstObject;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v36[0] = v12;
    v13 = MEMORY[0x1E695DF20];
    v14 = v36;
    v15 = &v35;
LABEL_15:
    v11 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];

    goto LABEL_19;
  }

  if (style == 3)
  {
    v29 = @"CFBundleIcons~ipad";
    v26 = v6;
    v27 = @"CFBundlePrimaryIcon";
    v25 = @"CFBundleIconFiles";
    firstObject = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v28 = firstObject;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v30 = v12;
    v13 = MEMORY[0x1E695DF20];
    v14 = &v30;
    v15 = &v29;
    goto LABEL_15;
  }

  if (style == 4)
  {
    goto LABEL_11;
  }

  if (style != 5)
  {
LABEL_16:
    firstObject = IFDefaultLog();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218242;
      styleCopy = style;
      v19 = 2112;
      v20 = v6;
    }

    v11 = 0;
    goto LABEL_19;
  }

  v21 = @"CFBundleIconFile~ipad";
  firstObject = [v6 firstObject];
  v22 = firstObject;
  v8 = MEMORY[0x1E695DF20];
  v9 = &v22;
  v10 = &v21;
LABEL_12:
  v11 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
LABEL_19:

LABEL_20:

  return v11;
}

+ (id)grahpicIconExcerptForConfigDictionary:(id)dictionary
{
  v11[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = dictionaryCopy;
  if (dictionaryCopy && [dictionaryCopy count])
  {
    v9 = v4;
    v10 = @"CFBundleIcons";
    v8 = @"ISGraphicIconConfiguration";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v11[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)catalogAssetNamesReturningPlistExcerpt:(id *)excerpt
{
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  infoDictionary = [(IFPlistParser *)self infoDictionary];
  v8 = [infoDictionary _IF_dictionaryForKey:@"CFBundleIcons"];
  v9 = [v8 _IF_dictionaryForKey:@"CFBundlePrimaryIcon"];
  v10 = [v9 _IF_stringForKey:@"CFBundleIconName"];

  if (v10)
  {
    [v6 addObject:v10];
    v11 = [IFPlistParser catalogAssetExcerptForAssetName:v10 style:0];
    [v5 addEntriesFromDictionary:v11];
  }

  infoDictionary2 = [(IFPlistParser *)self infoDictionary];
  v13 = [infoDictionary2 _IF_dictionaryForKey:@"CFBundleIcons~ipad"];
  v14 = [v13 _IF_dictionaryForKey:@"CFBundlePrimaryIcon"];
  v15 = [v14 _IF_stringForKey:@"CFBundleIconName"];

  if (v15)
  {
    [v6 addObject:v15];
    v16 = [IFPlistParser catalogAssetExcerptForAssetName:v15 style:3];
    [v5 addEntriesFromDictionary:v16];
  }

  infoDictionary3 = [(IFPlistParser *)self infoDictionary];
  v18 = [infoDictionary3 _IF_dictionaryForKey:@"CFBundleIcons"];
  v19 = [v18 _IF_stringForKey:@"CFBundlePrimaryIcon"];

  if (v19)
  {
    [v6 addObject:v19];
    v20 = [IFPlistParser catalogAssetExcerptForAssetName:v19 style:1];
    [v5 addEntriesFromDictionary:v20];
  }

  infoDictionary4 = [(IFPlistParser *)self infoDictionary];
  v22 = [infoDictionary4 _IF_stringForKey:@"CFBundleIconName"];

  if (v22)
  {
    [v6 addObject:v22];
    v23 = [IFPlistParser catalogAssetExcerptForAssetName:v22 style:2];
    [v5 addEntriesFromDictionary:v23];
  }

  if ([(IFPlistParser *)self captureAccentColorInfo])
  {
    infoDictionary5 = [(IFPlistParser *)self infoDictionary];
    v35[0] = @"NSAccentColorName";
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    v26 = [infoDictionary5 _IF_dictionarySubsetForKeys:v25];

    if ([v26 count])
    {
      [v5 addEntriesFromDictionary:v26];
      v27 = [v26 _IF_stringForKey:@"NSAccentColorName"];
      [v6 addObject:v27];
    }
  }

  if ([v6 count])
  {
    v28 = [v5 objectForKey:@"CFBundleIcons~ipad"];
    if (v28)
    {
      v29 = v28;
      v30 = [v5 objectForKey:@"CFBundleIcons"];

      if (!v30)
      {
        v31 = [v5 objectForKeyedSubscript:@"CFBundleIcons~ipad"];
        v32 = [v31 copy];
        [v5 setObject:v32 forKeyedSubscript:@"CFBundleIcons"];

        [v5 removeObjectForKey:@"CFBundleIcons~ipad"];
      }
    }

    if (excerpt)
    {
      *excerpt = [v5 copy];
    }

    v33 = v6;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)looseFilesNamesReturningPlistExcerpt:(id *)excerpt
{
  v34[1] = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  infoDictionary = [(IFPlistParser *)self infoDictionary];
  v8 = [infoDictionary _IF_dictionaryForKey:@"CFBundleIcons"];
  v9 = [v8 _IF_dictionaryForKey:@"CFBundlePrimaryIcon"];
  v10 = [v9 _IF_arrayForKey:@"CFBundleIconFiles"];

  if (v10 && [v10 count])
  {
    [v6 addObjectsFromArray:v10];
    v11 = [IFPlistParser fileAssetsExcerptForFilenames:v10 style:0];
    [v5 addEntriesFromDictionary:v11];
  }

  infoDictionary2 = [(IFPlistParser *)self infoDictionary];
  v13 = [infoDictionary2 _IF_dictionaryForKey:@"CFBundleIcons~ipad"];
  v14 = [v13 _IF_dictionaryForKey:@"CFBundlePrimaryIcon"];
  v15 = [v14 _IF_arrayForKey:@"CFBundleIconFiles"];

  if (v15 && [v15 count])
  {
    [v6 addObjectsFromArray:v15];
    v16 = [IFPlistParser fileAssetsExcerptForFilenames:v15 style:3];
    [v5 addEntriesFromDictionary:v16];
  }

  infoDictionary3 = [(IFPlistParser *)self infoDictionary];
  v18 = [infoDictionary3 _IF_arrayForKey:@"CFBundleIconFiles"];

  if (v18 && [v18 count])
  {
    [v6 addObjectsFromArray:v18];
    v19 = [IFPlistParser fileAssetsExcerptForFilenames:v18 style:0];
    [v5 addEntriesFromDictionary:v19];
  }

  infoDictionary4 = [(IFPlistParser *)self infoDictionary];
  v21 = [infoDictionary4 _IF_arrayForKey:@"CFBundleIconFiles~ipad"];

  if (v21 && [v21 count])
  {
    [v6 addObjectsFromArray:v21];
    v22 = [IFPlistParser fileAssetsExcerptForFilenames:v21 style:3];
    [v5 addEntriesFromDictionary:v22];
  }

  infoDictionary5 = [(IFPlistParser *)self infoDictionary];
  v24 = [infoDictionary5 _IF_stringForKey:@"CFBundleIconFile"];

  if (v24)
  {
    [v6 addObject:v24];
    v34[0] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    v26 = [IFPlistParser fileAssetsExcerptForFilenames:v25 style:4];
    [v5 addEntriesFromDictionary:v26];
  }

  infoDictionary6 = [(IFPlistParser *)self infoDictionary];
  v28 = [infoDictionary6 _IF_stringForKey:@"CFBundleIconFile~ipad"];

  if (v28)
  {
    [v6 addObject:v28];
    v33 = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    v30 = [IFPlistParser fileAssetsExcerptForFilenames:v29 style:5];
    [v5 addEntriesFromDictionary:v30];
  }

  if ([v6 count])
  {
    if (excerpt)
    {
      *excerpt = [v5 copy];
    }

    v31 = v6;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (BOOL)hasGraphicIconReturningPlistExcerpt:(id *)excerpt
{
  infoDictionary = [(IFPlistParser *)self infoDictionary];
  v5 = [infoDictionary _IF_dictionaryForKey:@"CFBundleIcons"];
  v6 = [v5 _IF_dictionaryForKey:@"ISGraphicIconConfiguration"];

  if (excerpt)
  {
    *excerpt = [IFPlistParser grahpicIconExcerptForConfigDictionary:v6];
  }

  return v6 != 0;
}

- (id)subDictionaryForAlternateIconName:(id)name variants:(id)variants
{
  v49 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  variantsCopy = variants;
  v7 = objc_opt_new();
  [v7 addObject:@"CFBundleIcons"];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = variantsCopy;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [@"CFBundleIcons" stringByAppendingString:*(*(&v38 + 1) + 8 * i)];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v10);
  }

  v30 = v8;

  v32 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v7;
  v14 = [obj countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v34 + 1) + 8 * j);
        selfCopy = self;
        infoDictionary = [(IFPlistParser *)self infoDictionary];
        v21 = [infoDictionary _IF_dictionaryForKey:v18];
        v22 = [v21 _IF_dictionaryForKey:@"CFBundleAlternateIcons"];
        v23 = [v22 _IF_dictionaryForKey:nameCopy];

        if (v23)
        {
          v44 = v23;
          v45 = v18;
          v43 = @"CFBundlePrimaryIcon";
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          v46 = v24;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];

          [v32 addEntriesFromDictionary:v25];
        }

        self = selfCopy;
      }

      v15 = [obj countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v15);
  }

  if ([(IFPlistParser *)self captureAccentColorInfo])
  {
    infoDictionary2 = [(IFPlistParser *)self infoDictionary];
    v42 = @"NSAccentColorName";
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    v28 = [infoDictionary2 _IF_dictionarySubsetForKeys:v27];

    if ([v28 count])
    {
      [v32 addEntriesFromDictionary:v28];
    }
  }

  return v32;
}

@end