@interface ISTypeIcon
- (ISTypeIcon)initWithCoder:(id)coder;
- (ISTypeIcon)initWithType:(id)type iconConfiguration:(id)configuration;
- (id)_fallbackKey;
- (id)description;
- (id)makeResourceProvider;
- (id)symbol;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISTypeIcon

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  Class = object_getClass(self);
  Name = class_getName(Class);
  type = [(ISTypeIcon *)self type];
  iconConfig = [(ISTypeIcon *)self iconConfig];
  digest = [(ISConcreteIcon *)self digest];
  v9 = [v3 initWithFormat:@"<%s %p> Type: %@, Config: %@, Digest:%@", Name, self, type, iconConfig, digest];

  return v9;
}

- (id)symbol
{
  v12 = *MEMORY[0x1E69E9840];
  type = [(ISTypeIcon *)self type];
  symbol = [ISSymbol symbolForTypeIdentifier:type withResolutionStrategy:0 variantOptions:1 error:0];

  if (!symbol)
  {
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      type2 = [(ISTypeIcon *)self type];
      *buf = 138412290;
      v11 = type2;
    }

    v9.receiver = self;
    v9.super_class = ISTypeIcon;
    symbol = [(ISConcreteIcon *)&v9 symbol];
  }

  v7 = *MEMORY[0x1E69E9840];

  return symbol;
}

- (id)makeResourceProvider
{
  if (!self->_type || ([MEMORY[0x1E69636B0] typeRecordWithIdentifier:?], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:*MEMORY[0x1E6963800]];
  }

  if ([v3 conformsToTypeIdentifier:*MEMORY[0x1E69637D0]] & 1) != 0 || (objc_msgSend(v3, "conformsToTypeIdentifier:", @"com.apple.sidebar-document-type"))
  {
    v4 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E6963638]) initWithTypeIdentifier:self->_type];
    [v5 setBundleClassMask:2052];
    v13 = 0;
    v4 = [objc_alloc(MEMORY[0x1E6963630]) initWithConfiguration:v5 error:&v13];
    v6 = v13;
    if (!v4)
    {
      v7 = _ISDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(ISTagIcon *)v6 makeResourceProvider];
      }
    }
  }

  _IS_primaryFilenameExtension = [v3 _IS_primaryFilenameExtension];
  v9 = [(ISBindableIcon *)self resourceProviderWithClaim:v4 typeRecord:v3 fileExtension:_IS_primaryFilenameExtension];
  v10 = [ISIcon templateTypeForType:self->_type];
  [v9 setTemplateType:v10];
  iconConfig = [(ISTypeIcon *)self iconConfig];
  [v9 setIconConfig:iconConfig];

  return v9;
}

- (ISTypeIcon)initWithType:(id)type iconConfiguration:(id)configuration
{
  typeCopy = type;
  configurationCopy = configuration;
  v9 = typeCopy;
  v10 = v9;
  if (configurationCopy)
  {
    digest = [configurationCopy digest];
    uUIDString = [digest UUIDString];
    v10 = [v9 stringByAppendingString:uUIDString];
  }

  v13 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v10];
  v17.receiver = self;
  v17.super_class = ISTypeIcon;
  v14 = [(ISConcreteIcon *)&v17 initWithDigest:v13];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_type, type);
    objc_storeStrong(&v15->_iconConfig, configuration);
  }

  return v15;
}

- (ISTypeIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = ISTypeIcon;
  v5 = [(ISConcreteIcon *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"iconConfig"];
    iconConfig = v5->_iconConfig;
    v5->_iconConfig = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ISTypeIcon;
  coderCopy = coder;
  [(ISConcreteIcon *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_iconConfig forKey:@"iconConfig"];
}

- (id)_fallbackKey
{
  type = [(ISTypeIcon *)self type];

  if (type)
  {
    type2 = [(ISTypeIcon *)self type];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ISTypeIcon;
    type2 = [(ISConcreteIcon *)&v6 _fallbackKey];
  }

  return type2;
}

@end