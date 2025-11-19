@interface ISTagIcon
- (ISTagIcon)initWithCoder:(id)a3;
- (ISTagIcon)initWithTag:(id)a3 tagClass:(id)a4 baseType:(id)a5;
- (id)_fallbackKey;
- (id)description;
- (id)makeResourceProvider;
- (void)encodeWithCoder:(id)a3;
- (void)makeResourceProvider;
@end

@implementation ISTagIcon

- (ISTagIcon)initWithTag:(id)a3 tagClass:(id)a4 baseType:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = &stru_1F1A4DB80;
  if (a3)
  {
    v10 = a3;
  }

  v11 = v10;
  v12 = MEMORY[0x1E696AFB0];
  v13 = [(__CFString *)v11 stringByAppendingString:v8];
  v14 = v13;
  if (v9)
  {
    v15 = [v13 stringByAppendingString:v9];
    v16 = [v12 _IF_UUIDWithString:v15];
  }

  else
  {
    v16 = [v12 _IF_UUIDWithString:v13];
  }

  v25.receiver = self;
  v25.super_class = ISTagIcon;
  v17 = [(ISConcreteIcon *)&v25 initWithDigest:v16];
  if (v17)
  {
    v18 = [(__CFString *)v11 copy];
    tag = v17->_tag;
    v17->_tag = v18;

    v20 = [v8 copy];
    tagClass = v17->_tagClass;
    v17->_tagClass = v20;

    v22 = [v9 copy];
    baseType = v17->_baseType;
    v17->_baseType = v22;
  }

  return v17;
}

- (ISTagIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ISTagIcon;
  v5 = [(ISConcreteIcon *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tag"];
    tag = v5->_tag;
    v5->_tag = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tagClass"];
    tagClass = v5->_tagClass;
    v5->_tagClass = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"baseType"];
    baseType = v5->_baseType;
    v5->_baseType = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ISTagIcon;
  v4 = a3;
  [(ISConcreteIcon *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_tag forKey:{@"tag", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_tagClass forKey:@"tagClass"];
  [v4 encodeObject:self->_baseType forKey:@"baseType"];
}

- (id)makeResourceProvider
{
  v3 = [MEMORY[0x1E69636B0] typeRecordWithTag:self->_tag ofClass:self->_tagClass conformingToIdentifier:self->_baseType];
  v4 = [v3 identifier];
  if (-[NSString isEqualToString:](self->_tagClass, "isEqualToString:", *MEMORY[0x1E6963708]) || ([v3 conformsToTypeIdentifier:*MEMORY[0x1E69637D0]] & 1) != 0 || (objc_msgSend(v3, "conformsToTypeIdentifier:", @"com.apple.sidebar-document-type") & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E6963638]) initWithTypeIdentifier:v4];
    [v13 setBundleClassMask:2052];
    v16 = 0;
    v5 = [objc_alloc(MEMORY[0x1E6963630]) initWithConfiguration:v13 error:&v16];
    v14 = v16;
    if (!v5)
    {
      v15 = _ISDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [(ISTagIcon *)v14 makeResourceProvider];
      }
    }
  }

  if ([(NSString *)self->_tagClass isEqualToString:*MEMORY[0x1E6963710]])
  {
    v6 = self->_tag;
  }

  else
  {
    v6 = [v3 _IS_primaryFilenameExtension];
  }

  v7 = v6;
  v8 = [(ISBindableIcon *)self resourceProviderWithClaim:v5 typeRecord:v3 fileExtension:v6];
  v9 = v8;
  if (v5 && ([v8 isCompositedDocument] & 1) == 0)
  {
    v10 = [ISIcon templateTypeForTag:self->_tag tagClass:self->_tagClass];
  }

  else
  {
    v10 = [ISIcon templateTypeForTag:self->_tag tagClass:self->_tagClass];
    if (!v10)
    {
      v11 = [v3 identifier];
      v10 = [ISIcon templateTypeForType:v11];
    }
  }

  [v9 setTemplateType:v10];

  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  Class = object_getClass(self);
  Name = class_getName(Class);
  tagClass = self->_tagClass;
  v7 = [v3 initWithFormat:@"<%s %p> Tag: %@, Class: %@, Base type: %@", Name, self, self->_tag, tagClass, self->_baseType];

  return v7;
}

- (id)_fallbackKey
{
  v3 = [(ISTagIcon *)self tag];

  if (v3)
  {
    v4 = [(ISTagIcon *)self tag];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ISTagIcon;
    v4 = [(ISConcreteIcon *)&v6 _fallbackKey];
  }

  return v4;
}

- (void)makeResourceProvider
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_DEBUG, "Claim not found with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end