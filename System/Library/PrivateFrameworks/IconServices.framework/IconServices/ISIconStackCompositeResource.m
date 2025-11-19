@interface ISIconStackCompositeResource
- (ISIconStackCompositeResource)initWithResource:(id)a3;
- (ISIconStackCompositeResource)initWithResource:(id)a3 platform:(unint64_t)a4;
- (id)_fallbackImageForSize:(CGSize)a3 scale:(double)a4;
- (id)_finalizedIconForSize:(CGSize)a3 scale:(double)a4;
- (id)iconStackForSize:(CGSize)a3 scale:(double)a4;
- (id)imageForSize:(CGSize)a3 scale:(double)a4;
- (id)layerDataForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation ISIconStackCompositeResource

- (ISIconStackCompositeResource)initWithResource:(id)a3
{
  v4 = a3;
  v5 = +[ISPlatformInfo sharedInstance];
  v6 = -[ISIconStackCompositeResource initWithResource:platform:](self, "initWithResource:platform:", v4, [v5 nativePlatform]);

  return v6;
}

- (ISIconStackCompositeResource)initWithResource:(id)a3 platform:(unint64_t)a4
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = ISIconStackCompositeResource;
  v8 = [(ISIconStackCompositeResource *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_wrappedResource, a3);
    v9->_platform = a4;
    v10 = objc_alloc_init(ISCompositingDescriptor);
    [(ISCompositingDescriptor *)v10 setPlatform:v9->_platform];
    compositingDescriptor = v9->_compositingDescriptor;
    v9->_compositingDescriptor = v10;
    v12 = v10;

    v13 = objc_opt_new();
    finalizedIcons = v9->_finalizedIcons;
    v9->_finalizedIcons = v13;
  }

  return v9;
}

- (id)iconStackForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [(ISIconStackCompositeResource *)self wrappedResource];
  v9 = [v8 imageForSize:width scale:{height, a4}];

  v10 = -[ISIconStackComposer initWithLegacyAsset:assetAppearance:platform:]([ISIconStackComposer alloc], "initWithLegacyAsset:assetAppearance:platform:", [v9 CGImage], -[ISIconStackCompositeResource assetAppearance](self, "assetAppearance"), -[ISIconStackCompositeResource platform](self, "platform"));
  v14 = 0;
  v11 = [(ISIconStackComposer *)v10 iconStackForSize:0 scale:&v14 desiredAssetAppearance:width returningGenerationReport:height, a4];
  v12 = v14;
  [(ISIconStackCompositeResource *)self setGenerationReport:v12];

  return v11;
}

- (id)_finalizedIconForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v26 = *MEMORY[0x1E69E9840];
  v8 = [ISIconStackCompositeResource _keyForSize:"_keyForSize:scale:" scale:?];
  v9 = [(ISIconStackCompositeResource *)self finalizedIcons];
  v10 = [v9 objectForKey:v8];

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v12 = [(ISIconStackCompositeResource *)self iconStackForSize:width scale:height, a4];
    if (v12)
    {
      v13 = [(ISIconStackCompositeResource *)self compositingDescriptor];
      v14 = [v13 copy];

      [v14 setSize:{width, height}];
      [v14 setScale:a4];
      v11 = [v12 _IS_finalizedIconWithCompositingDescriptor:v14];
      if (v11)
      {
        v15 = [(ISIconStackCompositeResource *)self finalizedIcons];
        [v15 setObject:v11 forKey:v8];

        v16 = v11;
      }
    }

    else
    {
      v17 = _ISDefaultLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134218496;
        v21 = width;
        v22 = 2048;
        v23 = width;
        v24 = 2048;
        v25 = a4;
        _os_log_impl(&dword_1A77B8000, v17, OS_LOG_TYPE_DEFAULT, "Failed to generate icon stack for composite resource for size: (%f,%f) scale:(%lf)", &v20, 0x20u);
      }

      v11 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)imageForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v24 = *MEMORY[0x1E69E9840];
  v8 = [ISIconStackCompositeResource _finalizedIconForSize:"_finalizedIconForSize:scale:" scale:?];
  if (v8)
  {
    v9 = [(ISIconStackCompositeResource *)self compositingDescriptor];
    v10 = [v9 copy];

    [v10 setSize:{width, height}];
    [v10 setScale:a4];
    v11 = [v8 _IS_imageWithCompositingDescriptor:v10];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v15 = _ISDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 134218496;
        v19 = width;
        v20 = 2048;
        v21 = width;
        v22 = 2048;
        v23 = a4;
        _os_log_impl(&dword_1A77B8000, v15, OS_LOG_TYPE_DEFAULT, "Failed to generate flatten representation for composite icon stack size: (%f,%f) scale:(%lf)", &v18, 0x20u);
      }

      v13 = [(ISIconStackCompositeResource *)self _fallbackImageForSize:width scale:height, a4];
    }

    v14 = v13;
  }

  else
  {
    v14 = [(ISIconStackCompositeResource *)self _fallbackImageForSize:width scale:height, a4];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)layerDataForSize:(CGSize)a3 scale:(double)a4
{
  width = a3.width;
  v21 = *MEMORY[0x1E69E9840];
  v6 = [(ISIconStackCompositeResource *)self _finalizedIconForSize:a3.width scale:a3.height];
  v12 = 0;
  v7 = [v6 serializedDataWithError:&v12];
  v8 = v12;
  if (!v7 || ![v7 length])
  {
    v9 = _ISDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      v14 = width;
      v15 = 2048;
      v16 = width;
      v17 = 2048;
      v18 = a4;
      v19 = 2112;
      v20 = v8;
      _os_log_error_impl(&dword_1A77B8000, v9, OS_LOG_TYPE_ERROR, "Failed to serialize finalized composite icon for size: (%f,%f) scale:(%lf). Error:%@", buf, 0x2Au);
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_fallbackImageForSize:(CGSize)a3 scale:(double)a4
{
  v4 = [[ISImageDescriptor alloc] initWithSize:a3.width scale:a3.height, a4];
  v5 = MEMORY[0x1E69A8988];
  v6 = [*MEMORY[0x1E6982CA8] identifier];
  v7 = [v5 _placeholderImageWithImageDescriptor:v4 markAsPlaceholder:1 fallbackTypeID:v6 referenceIcon:0];

  return v7;
}

@end