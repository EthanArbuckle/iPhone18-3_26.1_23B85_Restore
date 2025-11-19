@interface PKLayoutAssetImage
+ (id)nameToAssetsMapFromDictionaries:(id)a3;
- (PKLayoutAssetImage)initWithName:(id)a3 remoteImage:(id)a4;
- (PKLayoutAssetImage)initWithName:(id)a3 subimages:(id)a4;
@end

@implementation PKLayoutAssetImage

+ (id)nameToAssetsMapFromDictionaries:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 count])
    {
      v5 = [MEMORY[0x1E695DF90] dictionary];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __54__PKLayoutAssetImage_nameToAssetsMapFromDictionaries___block_invoke;
      v16[3] = &unk_1E79DBD50;
      v17 = v5;
      v6 = v5;
      [v4 enumerateObjectsUsingBlock:v16];
      v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __54__PKLayoutAssetImage_nameToAssetsMapFromDictionaries___block_invoke_27;
      v14 = &unk_1E79E0230;
      v15 = v7;
      v8 = v7;
      [v6 enumerateKeysAndObjectsUsingBlock:&v11];
      v9 = [v8 copy];
    }

    else
    {
      v9 = [MEMORY[0x1E695DF20] dictionary];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __54__PKLayoutAssetImage_nameToAssetsMapFromDictionaries___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [v12 PKStringForKey:@"key"];
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [[PKRemoteImage alloc] initWithDictionary:v12];
    v6 = [*(a1 + 32) objectForKey:v4];
    if (!v6)
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
      [*(a1 + 32) setObject:v6 forKey:v4];
    }

    v7 = [v12 PKNumberForKey:@"index"];
    v8 = v7;
    v9 = &unk_1F23B5660;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = [v6 objectForKey:v10];
    if (!v11)
    {
      v11 = [MEMORY[0x1E695DF70] array];
      [v6 setObject:v11 forKey:v10];
    }

    [v11 safelyAddObject:v5];
  }
}

void __54__PKLayoutAssetImage_nameToAssetsMapFromDictionaries___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = [v5 count];
  if (v6 < 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  }

  v21 = v4;
  v7 = 0;
  if (![v5 count])
  {
LABEL_11:
    if (v6 < 2)
    {
      v9 = [[PKLayoutAssetImage alloc] initWithName:v4 remoteImage:v7];
      if (v9)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __54__PKLayoutAssetImage_nameToAssetsMapFromDictionaries___block_invoke_30;
      v23[3] = &unk_1E79E0208;
      v15 = v4;
      v24 = v15;
      v16 = [v22 pk_arrayBySafelyApplyingBlock:v23];
      v9 = [[PKLayoutAssetImage alloc] initWithName:v15 subimages:v16];

      if (v9)
      {
LABEL_13:
        v17 = *(a1 + 32);
        v25 = v9;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
        v19 = v17;
        v4 = v21;
        [v19 safelySetObject:v18 forKey:v21];
        goto LABEL_20;
      }
    }

    v18 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v4 = v21;
      v27 = v21;
      _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Error parsing image set %@", buf, 0xCu);
      v9 = 0;
    }

    else
    {
      v4 = v21;
    }

    goto LABEL_20;
  }

  v8 = 0;
  while (1)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    v10 = [v5 objectForKey:v9];
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v12 = [[PKRemoteImageSet alloc] initWithName:v4 images:v10];
    v13 = v12;
    if (v6 < 2)
    {
      v14 = v12;

      v7 = v14;
      v4 = v21;
    }

    else
    {
      [v22 safelyAddObject:v12];
    }

    if (++v8 >= [v5 count])
    {
      goto LABEL_11;
    }
  }

  v18 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v9;
    v28 = 2112;
    v29 = v4;
    _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Missing image for index %@ in image group %@", buf, 0x16u);
  }

LABEL_20:
}

PKLayoutAssetImage *__54__PKLayoutAssetImage_nameToAssetsMapFromDictionaries___block_invoke_30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PKLayoutAssetImage alloc] initWithName:*(a1 + 32) remoteImage:v3];

  return v4;
}

- (PKLayoutAssetImage)initWithName:(id)a3 remoteImage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PKLayoutAssetImage;
  v9 = [(PKLayoutAssetImage *)&v13 init];
  if (!v9)
  {
    goto LABEL_6;
  }

  if (!v7)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v10 = [v7 length];
  v11 = 0;
  if (v8 && v10)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v9->_remoteImage, a4);
LABEL_6:
    v11 = v9;
  }

LABEL_8:

  return v11;
}

- (PKLayoutAssetImage)initWithName:(id)a3 subimages:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = PKLayoutAssetImage;
  v9 = [(PKLayoutAssetImage *)&v13 init];
  if (!v9)
  {
    goto LABEL_6;
  }

  if (!v7)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v10 = [v7 length];
  v11 = 0;
  if (v8 && v10)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v9->_subimages, a4);
LABEL_6:
    v11 = v9;
  }

LABEL_8:

  return v11;
}

@end