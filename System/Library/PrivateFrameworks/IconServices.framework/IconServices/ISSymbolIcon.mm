@interface ISSymbolIcon
- (ISSymbolIcon)initWithCoder:(id)coder;
- (ISSymbolIcon)initWithSymbolName:(id)name configuration:(id)configuration;
- (id)_generateImageWithDescriptor:(id)descriptor;
- (id)_specUpdatedDescriptorForDescriptor:(id)descriptor;
- (id)description;
- (id)imageForImageDescriptor:(id)descriptor;
- (id)symbol;
- (void)_prepareImagesForImageDescriptors:(id)descriptors;
- (void)encodeWithCoder:(id)coder;
- (void)getImageForImageDescriptor:(id)descriptor completion:(id)completion;
@end

@implementation ISSymbolIcon

- (ISSymbolIcon)initWithSymbolName:(id)name configuration:(id)configuration
{
  nameCopy = name;
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = ISSymbolIcon;
  _init = [(ISCodableIcon *)&v16 _init];
  if (_init)
  {
    v10 = objc_opt_new();
    imageCache = _init->_imageCache;
    _init->_imageCache = v10;

    objc_storeStrong(&_init->_symbolName, name);
    graphicSymbolDescriptor = _init->_graphicSymbolDescriptor;
    _init->_graphicSymbolDescriptor = 0;

    v13 = [configurationCopy copy];
    config = _init->_config;
    _init->_config = v13;
  }

  return _init;
}

- (ISSymbolIcon)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  if ([coderCopy decodeBoolForKey:@"configset"])
  {
    v6 = objc_opt_new();
    v7 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v9 = [v7 setWithArray:v8];
    v10 = [coderCopy decodeArrayOfObjectsOfClasses:v9 forKey:@"symbolColors"];
    [v6 setSymbolColors:v10];

    v11 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeArrayOfObjectsOfClasses:v13 forKey:@"enclosureColors"];
    [v6 setEnclosureColors:v14];

    [v6 setRenderingMode:{objc_msgSend(coderCopy, "decodeIntegerForKey:", @"renderingMode"}];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_symbolName forKey:@"symbolName"];
  symbolColors = [(ISGraphicIconConfiguration *)self->_config symbolColors];
  [coderCopy encodeObject:symbolColors forKey:@"symbolColors"];

  enclosureColors = [(ISGraphicIconConfiguration *)self->_config enclosureColors];
  [coderCopy encodeObject:enclosureColors forKey:@"enclosureColors"];

  [coderCopy encodeInteger:-[ISGraphicIconConfiguration renderingMode](self->_config forKey:{"renderingMode"), @"renderingMode"}];
  if (self->_config)
  {
    [coderCopy encodeBool:1 forKey:@"configset"];
  }
}

- (id)symbol
{
  v3 = objc_alloc(MEMORY[0x1E69A89B0]);
  symbolName = [(ISSymbolIcon *)self symbolName];
  v5 = [v3 initWithSymbolName:symbolName bundleURL:0];

  return v5;
}

- (id)_generateImageWithDescriptor:(id)descriptor
{
  v29 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v5 = objc_alloc(MEMORY[0x1E69A89B0]);
  symbolName = [(ISSymbolIcon *)self symbolName];
  v7 = [v5 initWithSymbolName:symbolName bundleURL:0];

  if (v7)
  {
    config = [(ISSymbolIcon *)self config];

    if (config)
    {
      config2 = [(ISSymbolIcon *)self config];
      symbolName2 = [(ISSymbolIcon *)self symbolName];
      v11 = [ISGraphicSymbolResource graphicSymbolResourceWithConfiguration:config2 symbolName:symbolName2 url:0];

      [v11 updateDescriptorWithImageDescriptor:descriptorCopy];
      [descriptorCopy size];
      v13 = v12;
      v15 = v14;
      [descriptorCopy scale];
      v17 = [v11 imageForSize:v13 scale:{v15, v16}];
    }

    else
    {
      [descriptorCopy size];
      v21 = v20;
      v23 = v22;
      [descriptorCopy scale];
      v17 = [v7 imageForSize:v21 scale:{v23, v24}];
    }
  }

  else
  {
    v18 = _ISDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      symbolName3 = [(ISSymbolIcon *)self symbolName];
      v27 = 138412290;
      v28 = symbolName3;
    }

    v17 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)_specUpdatedDescriptorForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  defaultIconSpecification = [MEMORY[0x1E69A8980] defaultIconSpecification];
  [descriptorCopy size];
  v6 = v5;
  v8 = v7;
  [descriptorCopy scale];
  v10 = [defaultIconSpecification imageSpecificationForSize:v6 scale:{v8, v9}];
  [v10 size];
  [descriptorCopy setSize:?];
  [v10 scale];
  [descriptorCopy setScale:?];

  return descriptorCopy;
}

- (void)_prepareImagesForImageDescriptors:(id)descriptors
{
  v27 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = [descriptorsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(descriptorsCopy);
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

      v6 = [descriptorsCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)imageForImageDescriptor:(id)descriptor
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = [descriptor copy];
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

- (void)getImageForImageDescriptor:(id)descriptor completion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v6 = MEMORY[0x1E695DEC8];
  completionCopy = completion;
  descriptorCopy2 = descriptor;
  v9 = [v6 arrayWithObjects:&descriptorCopy count:1];
  [(ISIcon *)self prepareImagesForImageDescriptors:v9, descriptorCopy, v13];

  v10 = [(ISSymbolIcon *)self imageForImageDescriptor:descriptorCopy2];

  completionCopy[2](completionCopy, v10);
  v11 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = ISSymbolIcon;
  v4 = [(ISSymbolIcon *)&v10 description];
  symbolName = [(ISSymbolIcon *)self symbolName];
  config = [(ISSymbolIcon *)self config];
  config2 = [(ISSymbolIcon *)self config];
  v8 = [v3 stringWithFormat:@"%@ Symbol name: %@ Config: %d - %@", v4, symbolName, config != 0, config2];

  return v8;
}

@end