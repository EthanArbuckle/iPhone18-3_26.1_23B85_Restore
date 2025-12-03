@interface ISDynamicIconStackResource
- (ISDynamicIconStackResource)initWithTypeIdentifier:(id)identifier layerGroups:(id)groups;
- (id)_compositingDescriptorWithSize:(CGSize)size scale:(double)scale;
- (id)baseIconStackForSize:(CGSize)size scale:(double)scale;
- (id)iconStackForSize:(CGSize)size scale:(double)scale;
- (id)imageForSize:(CGSize)size scale:(double)scale;
- (id)layerDataForSize:(CGSize)size scale:(double)scale;
@end

@implementation ISDynamicIconStackResource

- (ISDynamicIconStackResource)initWithTypeIdentifier:(id)identifier layerGroups:(id)groups
{
  identifierCopy = identifier;
  groupsCopy = groups;
  v18.receiver = self;
  v18.super_class = ISDynamicIconStackResource;
  v9 = [(ISDynamicIconStackResource *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_typeIdentifier, identifier);
    objc_storeStrong(&v10->_layerGroups, groups);
    objc_initWeak(&location, v10);
    v11 = [ISICRCompositor alloc];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __65__ISDynamicIconStackResource_initWithTypeIdentifier_layerGroups___block_invoke;
    v15[3] = &unk_1E77C6780;
    objc_copyWeak(&v16, &location);
    v12 = [(ISICRCompositor *)v11 initWithIconStackBlock:v15];
    icrCompositor = v10->_icrCompositor;
    v10->_icrCompositor = v12;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v10;
}

id __65__ISDynamicIconStackResource_initWithTypeIdentifier_layerGroups___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained iconStackForSize:a2 scale:{a3, a4}];

  return v8;
}

- (id)baseIconStackForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v38 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69636B0];
  typeIdentifier = [(ISDynamicIconStackResource *)self typeIdentifier];
  v10 = [v8 typeRecordWithIdentifier:typeIdentifier];

  if (!v10)
  {
    v14 = _ISDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      typeIdentifier2 = [(ISDynamicIconStackResource *)self typeIdentifier];
      v36 = 138412290;
      v37 = typeIdentifier2;
      v30 = "No record exists for type: '%@'";
LABEL_11:
      _os_log_impl(&dword_1A77B8000, v14, OS_LOG_TYPE_INFO, v30, &v36, 0xCu);
    }

LABEL_12:
    v27 = 0;
    goto LABEL_21;
  }

  if (([v10 _is_canProvideIconResources] & 1) == 0)
  {
    v14 = _ISDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      typeIdentifier2 = [(ISDynamicIconStackResource *)self typeIdentifier];
      v36 = 138412290;
      v37 = typeIdentifier2;
      v30 = "'%@' cannot provide icon resources";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  declaringBundleRecord = [v10 declaringBundleRecord];
  v12 = [declaringBundleRecord URL];
  iconDictionary = [v10 iconDictionary];
  v14 = [ISResourceProvider resourceWithBundleURL:v12 iconDictionary:iconDictionary options:4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
    compositingDescriptor = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setAppearance:](v15, "setAppearance:", [compositingDescriptor appearance]);

    compositingDescriptor2 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setAppearanceVariant:](v15, "setAppearanceVariant:", [compositingDescriptor2 appearanceVariant]);

    compositingDescriptor3 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    tintColor = [compositingDescriptor3 tintColor];
    [v15 setTintColor:tintColor];

    compositingDescriptor4 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setBackground:](v15, "setBackground:", [compositingDescriptor4 background]);

    compositingDescriptor5 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setShouldApplyMask:](v15, "setShouldApplyMask:", [compositingDescriptor5 shouldApplyMask]);

    compositingDescriptor6 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setLanguageDirection:](v15, "setLanguageDirection:", [compositingDescriptor6 languageDirection]);

    compositingDescriptor7 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setPlatformStyle:](v15, "setPlatformStyle:", [compositingDescriptor7 platformStyle]);

    compositingDescriptor8 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setShape:](v15, "setShape:", [compositingDescriptor8 shape]);

    scale = [v15 iconStackForSize:width scale:height, scale];
    v26 = scale;
    if (scale)
    {
      v27 = scale;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v28 = [v27 mutableCopy];

        v27 = v28;
      }
    }

    else
    {
      v32 = _ISDefaultLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        typeIdentifier3 = [(ISDynamicIconStackResource *)self typeIdentifier];
        v36 = 138412290;
        v37 = typeIdentifier3;
        _os_log_impl(&dword_1A77B8000, v32, OS_LOG_TYPE_INFO, "Failed to retrieve base icon stack resource for '%@'", &v36, 0xCu);
      }

      v27 = 0;
    }
  }

  else
  {
    v15 = _ISDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      typeIdentifier4 = [(ISDynamicIconStackResource *)self typeIdentifier];
      v36 = 138412290;
      v37 = typeIdentifier4;
      _os_log_impl(&dword_1A77B8000, v15, OS_LOG_TYPE_INFO, "Failed to find base icon stack resource for '%@'", &v36, 0xCu);
    }

    v27 = 0;
  }

LABEL_21:
  v34 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)iconStackForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v47 = *MEMORY[0x1E69E9840];
  v8 = [ISDynamicIconStackResource baseIconStackForSize:"baseIconStackForSize:scale:" scale:?];
  v9 = v8;
  if (v8)
  {
    [v8 size];
    v11 = v10;
    [v9 size];
    v13 = v12;
    compositingDescriptor = [(ISDynamicIconStackResource *)self compositingDescriptor];
    if ([compositingDescriptor appearanceVariant] == 2)
    {
    }

    else
    {
      compositingDescriptor2 = [(ISDynamicIconStackResource *)self compositingDescriptor];
      appearanceVariant = [compositingDescriptor2 appearanceVariant];

      if (appearanceVariant != 3)
      {
        compositingDescriptor3 = [(ISDynamicIconStackResource *)self compositingDescriptor];
        if ([compositingDescriptor3 appearanceVariant])
        {

          v18 = 0;
        }

        else
        {
          compositingDescriptor4 = [(ISDynamicIconStackResource *)self compositingDescriptor];
          v18 = [compositingDescriptor4 appearance] == 1;
        }

        goto LABEL_9;
      }
    }

    v18 = 2;
LABEL_9:
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [(ISDynamicIconStackResource *)self layerGroups];
    v19 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v19)
    {
      v20 = v19;
      v36 = *v42;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v42 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v41 + 1) + 8 * i);
          v23 = [v22 cuiGroupForAppearance:v18];
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          layers = [v22 layers];
          v25 = [layers countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v38;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v38 != v27)
                {
                  objc_enumerationMutation(layers);
                }

                v29 = [*(*(&v37 + 1) + 8 * j) cuiLayerImageForAppearance:v18 size:width scale:height frame:{scale, 0.0, 0.0, v11, v13}];
                if (v29)
                {
                  [v23 addLayer:v29];
                }
              }

              v26 = [layers countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v26);
          }

          [v9 addLayer:v23];
        }

        v20 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v20);
    }

    v30 = v9;
    goto LABEL_26;
  }

  v15 = _ISDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ISDynamicIconStackResource iconStackForSize:v15 scale:?];
  }

LABEL_26:
  v31 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_compositingDescriptorWithSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  compositingDescriptor = [(ISDynamicIconStackResource *)self compositingDescriptor];

  if (compositingDescriptor)
  {
    compositingDescriptor2 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    v10 = [compositingDescriptor2 copy];
  }

  else
  {
    v11 = _ISDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ISDynamicIconStackResource _compositingDescriptorWithSize:v11 scale:?];
    }

    v10 = objc_alloc_init(ISCompositingDescriptor);
  }

  [(ISCompositingDescriptor *)v10 setSize:width, height];
  [(ISCompositingDescriptor *)v10 setScale:scale];

  return v10;
}

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  scale = [(ISDynamicIconStackResource *)self _compositingDescriptorWithSize:size.width scale:size.height, scale];
  icrCompositor = [(ISDynamicIconStackResource *)self icrCompositor];
  v7 = [icrCompositor imageForCompositingDescriptor:scale];

  return v7;
}

- (id)layerDataForSize:(CGSize)size scale:(double)scale
{
  scale = [(ISDynamicIconStackResource *)self _compositingDescriptorWithSize:size.width scale:size.height, scale];
  icrCompositor = [(ISDynamicIconStackResource *)self icrCompositor];
  v7 = [icrCompositor layerDataForCompositingDescriptor:scale];

  return v7;
}

- (void)iconStackForSize:(void *)a1 scale:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 typeIdentifier];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_DEBUG, "No base icon stack for '%@'", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end