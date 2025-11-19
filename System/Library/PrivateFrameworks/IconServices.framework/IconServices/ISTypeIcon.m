@interface ISTypeIcon
- (ISTypeIcon)initWithCoder:(id)a3;
- (ISTypeIcon)initWithType:(id)a3 iconConfiguration:(id)a4;
- (id)_fallbackKey;
- (id)description;
- (id)makeResourceProvider;
- (id)symbol;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ISTypeIcon

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  Class = object_getClass(self);
  Name = class_getName(Class);
  v6 = [(ISTypeIcon *)self type];
  v7 = [(ISTypeIcon *)self iconConfig];
  v8 = [(ISConcreteIcon *)self digest];
  v9 = [v3 initWithFormat:@"<%s %p> Type: %@, Config: %@, Digest:%@", Name, self, v6, v7, v8];

  return v9;
}

- (id)symbol
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(ISTypeIcon *)self type];
  v4 = [ISSymbol symbolForTypeIdentifier:v3 withResolutionStrategy:0 variantOptions:1 error:0];

  if (!v4)
  {
    v5 = _ISDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(ISTypeIcon *)self type];
      *buf = 138412290;
      v11 = v6;
    }

    v9.receiver = self;
    v9.super_class = ISTypeIcon;
    v4 = [(ISConcreteIcon *)&v9 symbol];
  }

  v7 = *MEMORY[0x1E69E9840];

  return v4;
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

  v8 = [v3 _IS_primaryFilenameExtension];
  v9 = [(ISBindableIcon *)self resourceProviderWithClaim:v4 typeRecord:v3 fileExtension:v8];
  v10 = [ISIcon templateTypeForType:self->_type];
  [v9 setTemplateType:v10];
  v11 = [(ISTypeIcon *)self iconConfig];
  [v9 setIconConfig:v11];

  return v9;
}

- (ISTypeIcon)initWithType:(id)a3 iconConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = v9;
  if (v8)
  {
    v11 = [v8 digest];
    v12 = [v11 UUIDString];
    v10 = [v9 stringByAppendingString:v12];
  }

  v13 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v10];
  v17.receiver = self;
  v17.super_class = ISTypeIcon;
  v14 = [(ISConcreteIcon *)&v17 initWithDigest:v13];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_type, a3);
    objc_storeStrong(&v15->_iconConfig, a4);
  }

  return v15;
}

- (ISTypeIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ISTypeIcon;
  v5 = [(ISConcreteIcon *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"iconConfig"];
    iconConfig = v5->_iconConfig;
    v5->_iconConfig = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ISTypeIcon;
  v4 = a3;
  [(ISConcreteIcon *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_iconConfig forKey:@"iconConfig"];
}

- (id)_fallbackKey
{
  v3 = [(ISTypeIcon *)self type];

  if (v3)
  {
    v4 = [(ISTypeIcon *)self type];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ISTypeIcon;
    v4 = [(ISConcreteIcon *)&v6 _fallbackKey];
  }

  return v4;
}

@end