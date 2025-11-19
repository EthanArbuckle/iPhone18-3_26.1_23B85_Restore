@interface ISGraphicSymbolResource
+ (id)defaultResource;
+ (id)graphicSymbolResourceWithConfiguration:(id)a3 symbolName:(id)a4 url:(id)a5;
+ (id)graphicSymbolResourceWithRecipe:(id)a3 url:(id)a4;
- (ISGraphicSymbolResource)initWithGraphicSymbolDescriptor:(id)a3 symbolName:(id)a4 url:(id)a5;
- (id)imageForSize:(CGSize)a3 scale:(double)a4;
- (void)updateDescriptorWithImageDescriptor:(id)a3;
@end

@implementation ISGraphicSymbolResource

+ (id)graphicSymbolResourceWithRecipe:(id)a3 url:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [ISGraphicSymbolDescriptor descriptorFromGraphicSymbolRecipe:v5];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69A89B0]);
    v9 = [v7 name];
    v10 = [v8 initWithSymbolName:v9 bundleURL:v6];

    v11 = [v10 imageForDescriptor:v7];
    if (v11)
    {
      v12 = [ISGraphicSymbolResource alloc];
      v13 = [v7 name];
      v14 = [(ISGraphicSymbolResource *)v12 initWithGraphicSymbolDescriptor:v7 symbolName:v13 url:v6];
    }

    else
    {
      v15 = _ISDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [v7 name];
        v19 = 138412546;
        v20 = v16;
        v21 = 2112;
        v22 = v6;
      }

      v14 = 0;
    }
  }

  else
  {
    v10 = _ISDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(ISGraphicSymbolResource *)v5 graphicSymbolResourceWithRecipe:v6 url:v10];
    }

    v14 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)graphicSymbolResourceWithConfiguration:(id)a3 symbolName:(id)a4 url:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [ISGraphicSymbolDescriptor descriptorFromGraphicIconConfiguration:v7];
  v11 = v10;
  if (v10)
  {
    [v10 setName:v8];
    v12 = objc_alloc(MEMORY[0x1E69A89B0]);
    v13 = [v11 name];
    v14 = [v12 initWithSymbolName:v13 bundleURL:v9];

    v15 = [v14 imageForDescriptor:v11];
    if (v15)
    {
      v16 = [ISGraphicSymbolResource alloc];
      v17 = [v11 name];
      v18 = [(ISGraphicSymbolResource *)v16 initWithGraphicSymbolDescriptor:v11 symbolName:v17 url:v9];
    }

    else
    {
      v19 = _ISDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v11 name];
        v23 = 138412802;
        v24 = v20;
        v25 = 2112;
        v26 = v9;
        v27 = 2112;
        v28 = v7;
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
      v24 = v7;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v9;
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
  v4 = [v2 name];
  v5 = [v2 _url];
  v6 = [(ISGraphicSymbolResource *)v3 initWithGraphicSymbolDescriptor:v2 symbolName:v4 url:v5];

  return v6;
}

- (ISGraphicSymbolResource)initWithGraphicSymbolDescriptor:(id)a3 symbolName:(id)a4 url:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = ISGraphicSymbolResource;
  v11 = [(ISGraphicSymbolResource *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    descriptor = v11->_descriptor;
    v11->_descriptor = v12;

    v14 = [v9 copy];
    symbolName = v11->_symbolName;
    v11->_symbolName = v14;

    v16 = [v10 copy];
    url = v11->_url;
    v11->_url = v16;
  }

  return v11;
}

- (id)imageForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v24 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc(MEMORY[0x1E69A89B0]);
  v9 = [(ISGraphicSymbolResource *)self symbolName];
  v10 = [(ISGraphicSymbolResource *)self url];
  v11 = [v8 initWithSymbolName:v9 bundleURL:v10];

  if (v11)
  {
    v12 = [(ISGraphicSymbolResource *)self descriptor];
    [v12 setSize:{width, height}];

    v13 = [(ISGraphicSymbolResource *)self descriptor];
    [v13 setScale:a4];

    v14 = [(ISGraphicSymbolResource *)self descriptor];
    v15 = [v11 imageForGraphicSymbolDescriptor:v14];

    if (v15)
    {
      v16 = [objc_alloc(MEMORY[0x1E69A8988]) initWithCGImage:-[NSObject CGImage](v15 scale:{"CGImage"), a4}];
      goto LABEL_10;
    }

    v18 = _ISDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [(ISGraphicSymbolResource *)self symbolName];
      v22 = 138412290;
      v23 = v19;
    }
  }

  else
  {
    v15 = _ISDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = [(ISGraphicSymbolResource *)self symbolName];
      v22 = 138412290;
      v23 = v17;
    }
  }

  v16 = 0;
LABEL_10:

  v20 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)updateDescriptorWithImageDescriptor:(id)a3
{
  v22 = a3;
  v4 = [v22 appearance];
  v5 = [(ISGraphicSymbolResource *)self descriptor];
  [v5 setAppearance:v4];

  v6 = [v22 contrast];
  v7 = [(ISGraphicSymbolResource *)self descriptor];
  [v7 setContrast:v6];

  v8 = [v22 vibrancy];
  v9 = [(ISGraphicSymbolResource *)self descriptor];
  [v9 setVibrancy:v8];

  v10 = [v22 layoutDirection];
  v11 = [(ISGraphicSymbolResource *)self descriptor];
  [v11 setLayoutDirection:v10];

  v12 = [v22 tintColor];
  v13 = [(ISGraphicSymbolResource *)self descriptor];
  [v13 setTintColor:v12];

  v14 = [v22 appearanceVariant];
  v15 = [(ISGraphicSymbolResource *)self descriptor];
  [v15 setAppearanceVariant:v14];

  if ([v22 platformStyle] == 1)
  {
    v16 = [(ISGraphicSymbolResource *)self descriptor];
    [v16 setPlatform:4];
  }

  else
  {
    v16 = +[ISPlatformInfo sharedInstance];
    v17 = [v16 nativePlatform];
    v18 = [(ISGraphicSymbolResource *)self descriptor];
    [v18 setPlatform:v17];
  }

  v19 = [v22 shape];
  if (v19 == 2)
  {
    v20 = 2;
  }

  else
  {
    v20 = v19 == 1;
  }

  v21 = [(ISGraphicSymbolResource *)self descriptor];
  [v21 setShape:v20];
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