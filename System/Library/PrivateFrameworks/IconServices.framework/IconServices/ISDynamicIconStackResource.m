@interface ISDynamicIconStackResource
- (ISDynamicIconStackResource)initWithTypeIdentifier:(id)a3 layerGroups:(id)a4;
- (id)_compositingDescriptorWithSize:(CGSize)a3 scale:(double)a4;
- (id)baseIconStackForSize:(CGSize)a3 scale:(double)a4;
- (id)iconStackForSize:(CGSize)a3 scale:(double)a4;
- (id)imageForSize:(CGSize)a3 scale:(double)a4;
- (id)layerDataForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation ISDynamicIconStackResource

- (ISDynamicIconStackResource)initWithTypeIdentifier:(id)a3 layerGroups:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = ISDynamicIconStackResource;
  v9 = [(ISDynamicIconStackResource *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_typeIdentifier, a3);
    objc_storeStrong(&v10->_layerGroups, a4);
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

- (id)baseIconStackForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v38 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69636B0];
  v9 = [(ISDynamicIconStackResource *)self typeIdentifier];
  v10 = [v8 typeRecordWithIdentifier:v9];

  if (!v10)
  {
    v14 = _ISDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v29 = [(ISDynamicIconStackResource *)self typeIdentifier];
      v36 = 138412290;
      v37 = v29;
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
      v29 = [(ISDynamicIconStackResource *)self typeIdentifier];
      v36 = 138412290;
      v37 = v29;
      v30 = "'%@' cannot provide icon resources";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v11 = [v10 declaringBundleRecord];
  v12 = [v11 URL];
  v13 = [v10 iconDictionary];
  v14 = [ISResourceProvider resourceWithBundleURL:v12 iconDictionary:v13 options:4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
    v16 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setAppearance:](v15, "setAppearance:", [v16 appearance]);

    v17 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setAppearanceVariant:](v15, "setAppearanceVariant:", [v17 appearanceVariant]);

    v18 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    v19 = [v18 tintColor];
    [v15 setTintColor:v19];

    v20 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setBackground:](v15, "setBackground:", [v20 background]);

    v21 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setShouldApplyMask:](v15, "setShouldApplyMask:", [v21 shouldApplyMask]);

    v22 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setLanguageDirection:](v15, "setLanguageDirection:", [v22 languageDirection]);

    v23 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setPlatformStyle:](v15, "setPlatformStyle:", [v23 platformStyle]);

    v24 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    -[NSObject setShape:](v15, "setShape:", [v24 shape]);

    v25 = [v15 iconStackForSize:width scale:height, a4];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
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
        v33 = [(ISDynamicIconStackResource *)self typeIdentifier];
        v36 = 138412290;
        v37 = v33;
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
      v31 = [(ISDynamicIconStackResource *)self typeIdentifier];
      v36 = 138412290;
      v37 = v31;
      _os_log_impl(&dword_1A77B8000, v15, OS_LOG_TYPE_INFO, "Failed to find base icon stack resource for '%@'", &v36, 0xCu);
    }

    v27 = 0;
  }

LABEL_21:
  v34 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)iconStackForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v47 = *MEMORY[0x1E69E9840];
  v8 = [ISDynamicIconStackResource baseIconStackForSize:"baseIconStackForSize:scale:" scale:?];
  v9 = v8;
  if (v8)
  {
    [v8 size];
    v11 = v10;
    [v9 size];
    v13 = v12;
    v14 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    if ([v14 appearanceVariant] == 2)
    {
    }

    else
    {
      v16 = [(ISDynamicIconStackResource *)self compositingDescriptor];
      v17 = [v16 appearanceVariant];

      if (v17 != 3)
      {
        v33 = [(ISDynamicIconStackResource *)self compositingDescriptor];
        if ([v33 appearanceVariant])
        {

          v18 = 0;
        }

        else
        {
          v34 = [(ISDynamicIconStackResource *)self compositingDescriptor];
          v18 = [v34 appearance] == 1;
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
          v24 = [v22 layers];
          v25 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
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
                  objc_enumerationMutation(v24);
                }

                v29 = [*(*(&v37 + 1) + 8 * j) cuiLayerImageForAppearance:v18 size:width scale:height frame:{a4, 0.0, 0.0, v11, v13}];
                if (v29)
                {
                  [v23 addLayer:v29];
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
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

- (id)_compositingDescriptorWithSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [(ISDynamicIconStackResource *)self compositingDescriptor];

  if (v8)
  {
    v9 = [(ISDynamicIconStackResource *)self compositingDescriptor];
    v10 = [v9 copy];
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
  [(ISCompositingDescriptor *)v10 setScale:a4];

  return v10;
}

- (id)imageForSize:(CGSize)a3 scale:(double)a4
{
  v5 = [(ISDynamicIconStackResource *)self _compositingDescriptorWithSize:a3.width scale:a3.height, a4];
  v6 = [(ISDynamicIconStackResource *)self icrCompositor];
  v7 = [v6 imageForCompositingDescriptor:v5];

  return v7;
}

- (id)layerDataForSize:(CGSize)a3 scale:(double)a4
{
  v5 = [(ISDynamicIconStackResource *)self _compositingDescriptorWithSize:a3.width scale:a3.height, a4];
  v6 = [(ISDynamicIconStackResource *)self icrCompositor];
  v7 = [v6 layerDataForCompositingDescriptor:v5];

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