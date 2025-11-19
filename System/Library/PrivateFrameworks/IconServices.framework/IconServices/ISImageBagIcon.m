@interface ISImageBagIcon
- (ISImageBagIcon)initWithImageBag:(id)a3;
- (ISImageBagIcon)initWithImages:(id)a3 decorations:(id)a4;
- (id)_generateImageWithDescriptor:(id)a3;
- (id)_remoteGenerateImageWithDescriptor:(id)a3;
- (id)imageForImageDescriptor:(id)a3;
- (id)makeResourceProvider;
- (void)_prepareImagesForImageDescriptors:(id)a3;
- (void)getImageForImageDescriptor:(id)a3 completion:(id)a4;
@end

@implementation ISImageBagIcon

- (ISImageBagIcon)initWithImages:(id)a3 decorations:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = ISImageBagIcon;
  v9 = [(ISIcon *)&v15 _init];
  if (v9)
  {
    v10 = objc_opt_new();
    imageCache = v9->_imageCache;
    v9->_imageCache = v10;

    objc_storeStrong(&v9->_images, a3);
    v12 = [v8 copy];
    decorations = v9->_decorations;
    v9->_decorations = v12;
  }

  return v9;
}

- (ISImageBagIcon)initWithImageBag:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ISImageBagIcon;
  v5 = [(ISIcon *)&v12 _init];
  if (v5)
  {
    v6 = objc_opt_new();
    imageCache = v5->_imageCache;
    v5->_imageCache = v6;

    v8 = [v4 images];
    images = v5->_images;
    v5->_images = v8;

    decorations = v5->_decorations;
    v5->_decorations = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)_generateImageWithDescriptor:(id)a3
{
  v41[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69A8990]);
  v6 = [(ISImageBagIcon *)self images];
  p_super = [v5 initWithImages:v6];

  v8 = [(ISImageBagIcon *)self images];
  v9 = [v8 count];

  if (v9)
  {
    if (p_super)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = _ISDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v39 = 0;
      _os_log_impl(&dword_1A77B8000, v15, OS_LOG_TYPE_DEFAULT, "No images provided. Attempting to fallback to default assets", v39, 2u);
    }

    v16 = +[ISStaticResources sharedInstance];
    v17 = [*MEMORY[0x1E6982CA8] identifier];
    v18 = [v16 fallbackResourceForHint:v17 descriptor:v4 referenceObj:self];

    p_super = v18;
    if (v18)
    {
LABEL_3:
      v10 = +[ISDefaults sharedInstance];
      if ([(ISCompositingDescriptor *)v10 iconStackAppIconsAllowed])
      {
        v11 = [v4 shape];

        if (v11 == 4)
        {
LABEL_7:
          v13 = [ISRecipeFactory factoryWithDescriptor:v4];
          v14 = v13;
          if (v9)
          {
            [v13 recipe];
          }

          else
          {
            [v13 genericTaggedRecipe];
          }
          v20 = ;
          v21 = objc_alloc_init(ISCompositor);
          if ([v4 shape] == 5 || objc_msgSend(v4, "shape") == 6)
          {
            [(ISCompositor *)v21 setRenderingMode:2];
          }

          v40 = @"kISPrimaryResourceKey";
          v41[0] = p_super;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
          [(ISCompositor *)v21 addElementWithRecipe:v20 resources:v22];

          [v4 size];
          v24 = v23;
          v26 = v25;
          [v4 scale];
          v19 = [(ISCompositor *)v21 imageForSize:v24 scale:v26, v27];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v4 size];
            v29 = v28;
            v31 = v30;
            [v4 scale];
            v33 = [p_super _finalizedIconForSize:v29 scale:v31, v32];
            v34 = objc_alloc(MEMORY[0x1E69A8988]);
            v35 = [v19 CGImage];
            [v4 scale];
            v36 = [v34 initWithCGImage:v35 scale:v33 finalizedIcon:?];

            v19 = v36;
          }

          goto LABEL_22;
        }

        v10 = [[ISCompositingDescriptor alloc] initWithImageDescriptor:v4];
        v12 = [[ISIconStackCompositeResource alloc] initWithResource:p_super platform:[(ISCompositingDescriptor *)v10 assetPlatform]];
        [(ISIconStackCompositeResource *)v12 setCompositingDescriptor:v10];

        p_super = &v12->super;
      }

      goto LABEL_7;
    }
  }

  p_super = _ISDefaultLog();
  if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
  {
    [(ISImageBagIcon *)self _generateImageWithDescriptor:?];
  }

  v19 = 0;
LABEL_22:

  v37 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)_remoteGenerateImageWithDescriptor:(id)a3
{
  v4 = MEMORY[0x1E69A8990];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(ISImageBagIcon *)self images];
  v8 = [v6 initWithImages:v7];

  [v5 size];
  v10 = v9;
  v12 = v11;
  [v5 scale];
  v14 = [v8 imageForSize:v10 scale:{v12, v13}];
  v15 = [[_ISImageIcon alloc] initImage:v14];
  v16 = [v15 prepareImageForDescriptor:v5];

  return v16;
}

- (void)_prepareImagesForImageDescriptors:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [(ISImageCache *)self->_imageCache imageForDescriptor:v8];
        v10 = v9;
        if (!v9 || (([v9 size], v12 = v11, v14 = v13, objc_msgSend(v8, "size"), v12 == v16) ? (v17 = v14 == v15) : (v17 = 0), !v17))
        {
          v18 = +[ISDefaults sharedInstance];
          v19 = [v18 prepareImageBagIconsOutOfProcess];

          if (v19)
          {
            [(ISImageBagIcon *)self _remoteGenerateImageWithDescriptor:v8];
          }

          else
          {
            [(ISImageBagIcon *)self _generateImageWithDescriptor:v8];
          }
          v20 = ;

          [(ISImageCache *)self->_imageCache setImage:v20 forDescriptor:v8];
          v10 = v20;
        }
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v5);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)makeResourceProvider
{
  v2 = [[ISResourceProvider alloc] initWithResource:self->_images templateResource:0];

  return v2;
}

- (id)imageForImageDescriptor:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ISImageCache *)self->_imageCache imageForDescriptor:v4];
  v6 = v5;
  if (!v5 || (([v5 size], v8 = v7, v10 = v9, objc_msgSend(v4, "size"), v8 == v12) ? (v13 = v10 == v11) : (v13 = 0), !v13))
  {
    v18[0] = v4;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [(ISIcon *)self prepareImagesForImageDescriptors:v14];

    v15 = [(ISImageCache *)self->_imageCache imageForDescriptor:v4];

    v6 = v15;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)getImageForImageDescriptor:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v12 count:1];
  [(ISIcon *)self prepareImagesForImageDescriptors:v9, v12, v13];

  v10 = [(ISImageBagIcon *)self imageForImageDescriptor:v8];

  v7[2](v7, v10);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_generateImageWithDescriptor:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_ERROR, "Unable to create icon! Failed to create resource for %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end