@interface ISSymbolIcon
- (ISSymbolIcon)initWithCoder:(id)a3;
- (ISSymbolIcon)initWithSymbolName:(id)a3 configuration:(id)a4;
- (id)_generateImageWithDescriptor:(id)a3;
- (id)_specUpdatedDescriptorForDescriptor:(id)a3;
- (id)description;
- (id)imageForImageDescriptor:(id)a3;
- (id)symbol;
- (void)_prepareImagesForImageDescriptors:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)getImageForImageDescriptor:(id)a3 completion:(id)a4;
@end

@implementation ISSymbolIcon

- (ISSymbolIcon)initWithSymbolName:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = ISSymbolIcon;
  v9 = [(ISCodableIcon *)&v16 _init];
  if (v9)
  {
    v10 = objc_opt_new();
    imageCache = v9->_imageCache;
    v9->_imageCache = v10;

    objc_storeStrong(&v9->_symbolName, a3);
    graphicSymbolDescriptor = v9->_graphicSymbolDescriptor;
    v9->_graphicSymbolDescriptor = 0;

    v13 = [v8 copy];
    config = v9->_config;
    v9->_config = v13;
  }

  return v9;
}

- (ISSymbolIcon)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  if ([v4 decodeBoolForKey:@"configset"])
  {
    v6 = objc_opt_new();
    v7 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v9 = [v7 setWithArray:v8];
    v10 = [v4 decodeArrayOfObjectsOfClasses:v9 forKey:@"symbolColors"];
    [v6 setSymbolColors:v10];

    v11 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [v4 decodeArrayOfObjectsOfClasses:v13 forKey:@"enclosureColors"];
    [v6 setEnclosureColors:v14];

    [v6 setRenderingMode:{objc_msgSend(v4, "decodeIntegerForKey:", @"renderingMode"}];
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if (v5)
  {
LABEL_5:
    self = [(ISSymbolIcon *)self initWithSymbolName:v5 configuration:v6];
  }

LABEL_6:

  v15 = *MEMORY[0x1E69E9840];
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_symbolName forKey:@"symbolName"];
  v4 = [(ISGraphicIconConfiguration *)self->_config symbolColors];
  [v6 encodeObject:v4 forKey:@"symbolColors"];

  v5 = [(ISGraphicIconConfiguration *)self->_config enclosureColors];
  [v6 encodeObject:v5 forKey:@"enclosureColors"];

  [v6 encodeInteger:-[ISGraphicIconConfiguration renderingMode](self->_config forKey:{"renderingMode"), @"renderingMode"}];
  if (self->_config)
  {
    [v6 encodeBool:1 forKey:@"configset"];
  }
}

- (id)symbol
{
  v3 = objc_alloc(MEMORY[0x1E69A89B0]);
  v4 = [(ISSymbolIcon *)self symbolName];
  v5 = [v3 initWithSymbolName:v4 bundleURL:0];

  return v5;
}

- (id)_generateImageWithDescriptor:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E69A89B0]);
  v6 = [(ISSymbolIcon *)self symbolName];
  v7 = [v5 initWithSymbolName:v6 bundleURL:0];

  if (v7)
  {
    v8 = [(ISSymbolIcon *)self config];

    if (v8)
    {
      v9 = [(ISSymbolIcon *)self config];
      v10 = [(ISSymbolIcon *)self symbolName];
      v11 = [ISGraphicSymbolResource graphicSymbolResourceWithConfiguration:v9 symbolName:v10 url:0];

      [v11 updateDescriptorWithImageDescriptor:v4];
      [v4 size];
      v13 = v12;
      v15 = v14;
      [v4 scale];
      v17 = [v11 imageForSize:v13 scale:{v15, v16}];
    }

    else
    {
      [v4 size];
      v21 = v20;
      v23 = v22;
      [v4 scale];
      v17 = [v7 imageForSize:v21 scale:{v23, v24}];
    }
  }

  else
  {
    v18 = _ISDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [(ISSymbolIcon *)self symbolName];
      v27 = 138412290;
      v28 = v19;
    }

    v17 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_specUpdatedDescriptorForDescriptor:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69A8980] defaultIconSpecification];
  [v3 size];
  v6 = v5;
  v8 = v7;
  [v3 scale];
  v10 = [v4 imageSpecificationForSize:v6 scale:{v8, v9}];
  [v10 size];
  [v3 setSize:?];
  [v10 scale];
  [v3 setScale:?];

  return v3;
}

- (void)_prepareImagesForImageDescriptors:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v22 + 1) + 8 * i) copy];
        v10 = [(ISSymbolIcon *)self _specUpdatedDescriptorForDescriptor:v9];

        v11 = [(ISImageCache *)self->_imageCache imageForDescriptor:v10];
        v12 = v11;
        if (!v11 || (([v11 size], v14 = v13, v16 = v15, objc_msgSend(v10, "size"), v14 == v18) ? (v19 = v16 == v17) : (v19 = 0), !v19))
        {
          v20 = [(ISSymbolIcon *)self _generateImageWithDescriptor:v10];

          [(ISImageCache *)self->_imageCache setImage:v20 forDescriptor:v10];
          v12 = v20;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)imageForImageDescriptor:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 copy];
  v5 = [(ISSymbolIcon *)self _specUpdatedDescriptorForDescriptor:v4];

  v6 = [(ISImageCache *)self->_imageCache imageForDescriptor:v5];
  v7 = v6;
  if (!v6 || (([v6 size], v9 = v8, v11 = v10, objc_msgSend(v5, "size"), v9 == v13) ? (v14 = v11 == v12) : (v14 = 0), !v14))
  {
    v19[0] = v5;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    [(ISIcon *)self prepareImagesForImageDescriptors:v15];

    v16 = [(ISImageCache *)self->_imageCache imageForDescriptor:v5];

    v7 = v16;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
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

  v10 = [(ISSymbolIcon *)self imageForImageDescriptor:v8];

  v7[2](v7, v10);
  v11 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = ISSymbolIcon;
  v4 = [(ISSymbolIcon *)&v10 description];
  v5 = [(ISSymbolIcon *)self symbolName];
  v6 = [(ISSymbolIcon *)self config];
  v7 = [(ISSymbolIcon *)self config];
  v8 = [v3 stringWithFormat:@"%@ Symbol name: %@ Config: %d - %@", v4, v5, v6 != 0, v7];

  return v8;
}

@end