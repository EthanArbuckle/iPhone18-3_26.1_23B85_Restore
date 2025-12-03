@interface ISTagIcon
- (ISTagIcon)initWithCoder:(id)coder;
- (ISTagIcon)initWithTag:(id)tag tagClass:(id)class baseType:(id)type;
- (id)_fallbackKey;
- (id)description;
- (id)makeResourceProvider;
- (void)encodeWithCoder:(id)coder;
- (void)makeResourceProvider;
@end

@implementation ISTagIcon

- (ISTagIcon)initWithTag:(id)tag tagClass:(id)class baseType:(id)type
{
  classCopy = class;
  typeCopy = type;
  tagCopy = &stru_1F1A4DB80;
  if (tag)
  {
    tagCopy = tag;
  }

  v11 = tagCopy;
  v12 = MEMORY[0x1E696AFB0];
  v13 = [(__CFString *)v11 stringByAppendingString:classCopy];
  v14 = v13;
  if (typeCopy)
  {
    v15 = [v13 stringByAppendingString:typeCopy];
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

    v20 = [classCopy copy];
    tagClass = v17->_tagClass;
    v17->_tagClass = v20;

    v22 = [typeCopy copy];
    baseType = v17->_baseType;
    v17->_baseType = v22;
  }

  return v17;
}

- (ISTagIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ISTagIcon;
  v5 = [(ISConcreteIcon *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tag"];
    tag = v5->_tag;
    v5->_tag = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tagClass"];
    tagClass = v5->_tagClass;
    v5->_tagClass = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseType"];
    baseType = v5->_baseType;
    v5->_baseType = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ISTagIcon;
  coderCopy = coder;
  [(ISConcreteIcon *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tag forKey:{@"tag", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_tagClass forKey:@"tagClass"];
  [coderCopy encodeObject:self->_baseType forKey:@"baseType"];
}

- (id)makeResourceProvider
{
  v3 = [MEMORY[0x1E69636B0] typeRecordWithTag:self->_tag ofClass:self->_tagClass conformingToIdentifier:self->_baseType];
  identifier = [v3 identifier];
  if (-[NSString isEqualToString:](self->_tagClass, "isEqualToString:", *MEMORY[0x1E6963708]) || ([v3 conformsToTypeIdentifier:*MEMORY[0x1E69637D0]] & 1) != 0 || (objc_msgSend(v3, "conformsToTypeIdentifier:", @"com.apple.sidebar-document-type") & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E6963638]) initWithTypeIdentifier:identifier];
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
    _IS_primaryFilenameExtension = self->_tag;
  }

  else
  {
    _IS_primaryFilenameExtension = [v3 _IS_primaryFilenameExtension];
  }

  v7 = _IS_primaryFilenameExtension;
  v8 = [(ISBindableIcon *)self resourceProviderWithClaim:v5 typeRecord:v3 fileExtension:_IS_primaryFilenameExtension];
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
      identifier2 = [v3 identifier];
      v10 = [ISIcon templateTypeForType:identifier2];
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
    _fallbackKey = [(ISTagIcon *)self tag];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ISTagIcon;
    _fallbackKey = [(ISConcreteIcon *)&v6 _fallbackKey];
  }

  return _fallbackKey;
}

- (void)makeResourceProvider
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_DEBUG, "Claim not found with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end