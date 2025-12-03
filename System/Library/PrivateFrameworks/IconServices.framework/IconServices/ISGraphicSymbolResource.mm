@interface ISGraphicSymbolResource
+ (id)defaultResource;
+ (id)graphicSymbolResourceWithConfiguration:(id)configuration symbolName:(id)name url:(id)url;
+ (id)graphicSymbolResourceWithRecipe:(id)recipe url:(id)url;
- (ISGraphicSymbolResource)initWithGraphicSymbolDescriptor:(id)descriptor symbolName:(id)name url:(id)url;
- (id)imageForSize:(CGSize)size scale:(double)scale;
- (void)updateDescriptorWithImageDescriptor:(id)descriptor;
@end

@implementation ISGraphicSymbolResource

+ (id)graphicSymbolResourceWithRecipe:(id)recipe url:(id)url
{
  v23 = *MEMORY[0x1E69E9840];
  recipeCopy = recipe;
  urlCopy = url;
  v7 = [ISGraphicSymbolDescriptor descriptorFromGraphicSymbolRecipe:recipeCopy];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69A89B0]);
    name = [v7 name];
    v10 = [v8 initWithSymbolName:name bundleURL:urlCopy];

    v11 = [v10 imageForDescriptor:v7];
    if (v11)
    {
      v12 = [ISGraphicSymbolResource alloc];
      name2 = [v7 name];
      v14 = [(ISGraphicSymbolResource *)v12 initWithGraphicSymbolDescriptor:v7 symbolName:name2 url:urlCopy];
    }

    else
    {
      v15 = _ISDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        name3 = [v7 name];
        v19 = 138412546;
        v20 = name3;
        v21 = 2112;
        v22 = urlCopy;
      }

      v14 = 0;
    }
  }

  else
  {
    v10 = _ISDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ISGraphicSymbolResource *)recipeCopy graphicSymbolResourceWithRecipe:urlCopy url:v10];
    }

    v14 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)graphicSymbolResourceWithConfiguration:(id)configuration symbolName:(id)name url:(id)url
{
  v29 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  nameCopy = name;
  urlCopy = url;
  v10 = [ISGraphicSymbolDescriptor descriptorFromGraphicIconConfiguration:configurationCopy];
  v11 = v10;
  if (v10)
  {
    [v10 setName:nameCopy];
    v12 = objc_alloc(MEMORY[0x1E69A89B0]);
    name = [v11 name];
    v14 = [v12 initWithSymbolName:name bundleURL:urlCopy];

    v15 = [v14 imageForDescriptor:v11];
    if (v15)
    {
      v16 = [ISGraphicSymbolResource alloc];
      name2 = [v11 name];
      v18 = [(ISGraphicSymbolResource *)v16 initWithGraphicSymbolDescriptor:v11 symbolName:name2 url:urlCopy];
    }

    else
    {
      v19 = _ISDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        name3 = [v11 name];
        v23 = 138412802;
        v24 = name3;
        v25 = 2112;
        v26 = urlCopy;
        v27 = 2112;
        v28 = configurationCopy;
      }

      v18 = 0;
    }
  }

  else
  {
    v14 = _ISDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v23 = 138412802;
      v24 = configurationCopy;
      v25 = 2112;
      v26 = nameCopy;
      v27 = 2112;
      v28 = urlCopy;
      _os_log_error_impl(&dword_1A77B8000, v14, OS_LOG_TYPE_ERROR, "Failed to read config %@ - %@ - %@.", &v23, 0x20u);
    }

    v18 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (id)defaultResource
{
  v2 = [ISGraphicSymbolDescriptor descriptorFromGraphicSymbolRecipe:MEMORY[0x1E695E0F8]];
  v3 = [ISGraphicSymbolResource alloc];
  name = [v2 name];
  _url = [v2 _url];
  v6 = [(ISGraphicSymbolResource *)v3 initWithGraphicSymbolDescriptor:v2 symbolName:name url:_url];

  return v6;
}

- (ISGraphicSymbolResource)initWithGraphicSymbolDescriptor:(id)descriptor symbolName:(id)name url:(id)url
{
  descriptorCopy = descriptor;
  nameCopy = name;
  urlCopy = url;
  v19.receiver = self;
  v19.super_class = ISGraphicSymbolResource;
  v11 = [(ISGraphicSymbolResource *)&v19 init];
  if (v11)
  {
    v12 = [descriptorCopy copy];
    descriptor = v11->_descriptor;
    v11->_descriptor = v12;

    v14 = [nameCopy copy];
    symbolName = v11->_symbolName;
    v11->_symbolName = v14;

    v16 = [urlCopy copy];
    url = v11->_url;
    v11->_url = v16;
  }

  return v11;
}

- (id)imageForSize:(CGSize)size scale:(double)scale
{
  height = size.height;
  width = size.width;
  v24 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc(MEMORY[0x1E69A89B0]);
  symbolName = [(ISGraphicSymbolResource *)self symbolName];
  v10 = [(ISGraphicSymbolResource *)self url];
  v11 = [v8 initWithSymbolName:symbolName bundleURL:v10];

  if (v11)
  {
    descriptor = [(ISGraphicSymbolResource *)self descriptor];
    [descriptor setSize:{width, height}];

    descriptor2 = [(ISGraphicSymbolResource *)self descriptor];
    [descriptor2 setScale:scale];

    descriptor3 = [(ISGraphicSymbolResource *)self descriptor];
    v15 = [v11 imageForGraphicSymbolDescriptor:descriptor3];

    if (v15)
    {
      v16 = [objc_alloc(MEMORY[0x1E69A8988]) initWithCGImage:-[NSObject CGImage](v15 scale:{"CGImage"), scale}];
      goto LABEL_10;
    }

    v18 = _ISDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      symbolName2 = [(ISGraphicSymbolResource *)self symbolName];
      v22 = 138412290;
      v23 = symbolName2;
    }
  }

  else
  {
    v15 = _ISDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      symbolName3 = [(ISGraphicSymbolResource *)self symbolName];
      v22 = 138412290;
      v23 = symbolName3;
    }
  }

  v16 = 0;
LABEL_10:

  v20 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)updateDescriptorWithImageDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  appearance = [descriptorCopy appearance];
  descriptor = [(ISGraphicSymbolResource *)self descriptor];
  [descriptor setAppearance:appearance];

  contrast = [descriptorCopy contrast];
  descriptor2 = [(ISGraphicSymbolResource *)self descriptor];
  [descriptor2 setContrast:contrast];

  vibrancy = [descriptorCopy vibrancy];
  descriptor3 = [(ISGraphicSymbolResource *)self descriptor];
  [descriptor3 setVibrancy:vibrancy];

  layoutDirection = [descriptorCopy layoutDirection];
  descriptor4 = [(ISGraphicSymbolResource *)self descriptor];
  [descriptor4 setLayoutDirection:layoutDirection];

  tintColor = [descriptorCopy tintColor];
  descriptor5 = [(ISGraphicSymbolResource *)self descriptor];
  [descriptor5 setTintColor:tintColor];

  appearanceVariant = [descriptorCopy appearanceVariant];
  descriptor6 = [(ISGraphicSymbolResource *)self descriptor];
  [descriptor6 setAppearanceVariant:appearanceVariant];

  if ([descriptorCopy platformStyle] == 1)
  {
    descriptor7 = [(ISGraphicSymbolResource *)self descriptor];
    [descriptor7 setPlatform:4];
  }

  else
  {
    descriptor7 = +[ISPlatformInfo sharedInstance];
    nativePlatform = [descriptor7 nativePlatform];
    descriptor8 = [(ISGraphicSymbolResource *)self descriptor];
    [descriptor8 setPlatform:nativePlatform];
  }

  shape = [descriptorCopy shape];
  if (shape == 2)
  {
    v20 = 2;
  }

  else
  {
    v20 = shape == 1;
  }

  descriptor9 = [(ISGraphicSymbolResource *)self descriptor];
  [descriptor9 setShape:v20];
}

+ (void)graphicSymbolResourceWithRecipe:(os_log_t)log url:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1A77B8000, log, OS_LOG_TYPE_ERROR, "Failed to read recipe %@ - %@.", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end