@interface ISIconDecoration
+ (id)decorationsFromDescriptor:(id)descriptor;
- (ISIconDecoration)init;
- (ISIconDecoration)initWithBundleIdentifier:(id)identifier;
- (ISIconDecoration)initWithCoder:(id)coder;
- (ISIconDecoration)initWithKind:(unint64_t)kind identifier:(id)identifier;
- (ISIconDecoration)initWithResourceURL:(id)l;
- (ISIconDecoration)initWithType:(id)type;
- (ISScalableCompositorResource)compositorResource;
- (NSString)description;
- (NSUUID)uuid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)imageForDescriptor:(id)descriptor;
- (id)resourceFingerprint;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISIconDecoration

+ (id)decorationsFromDescriptor:(id)descriptor
{
  v3 = objc_opt_new();

  return v3;
}

- (ISIconDecoration)init
{
  v6.receiver = self;
  v6.super_class = ISIconDecoration;
  v2 = [(ISIconDecoration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    identifier = v2->_identifier;
    v2->_identifier = &stru_1F1A4DB80;
    v2->_identifierKind = 0;

    v3->_position = 0;
    v3->_mode = 0;
  }

  return v3;
}

- (ISIconDecoration)initWithType:(id)type
{
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = ISIconDecoration;
  v5 = [(ISIconDecoration *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_identifierKind = 2;
    v7 = [typeCopy copy];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v6->_position = 0;
    v6->_mode = 0;
  }

  return v6;
}

- (ISIconDecoration)initWithKind:(unint64_t)kind identifier:(id)identifier
{
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = ISIconDecoration;
  v7 = [(ISIconDecoration *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_identifierKind = kind;
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v8->_position = 0;
    v8->_mode = 0;
  }

  return v8;
}

- (ISIconDecoration)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = ISIconDecoration;
  v5 = [(ISIconDecoration *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_identifierKind = 1;
    v7 = [identifierCopy copy];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v6->_position = 0;
    v6->_mode = 0;
  }

  return v6;
}

- (ISIconDecoration)initWithResourceURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = ISIconDecoration;
  v6 = [(ISIconDecoration *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_identifierKind = 3;
    objc_storeStrong(&v6->_resourceURL, l);
    identifier = v7->_identifier;
    v7->_identifier = @"com.apple.icon-decoration.folderbadge";
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ISIconDecoration);
  objc_storeStrong(&v4->_identifier, self->_identifier);
  v4->_identifierKind = self->_identifierKind;
  v4->_mode = self->_mode;
  v4->_position = self->_position;
  objc_storeStrong(&v4->_resourceURL, self->_resourceURL);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  identifierKind = self->_identifierKind;
  coderCopy = coder;
  [coderCopy encodeInteger:identifierKind forKey:@"_identifierKind"];
  [coderCopy encodeObject:self->_identifier forKey:@"_identifier"];
  [coderCopy encodeInteger:self->_position forKey:@"_position"];
  [coderCopy encodeInteger:self->_mode forKey:@"_mode"];
  absoluteString = [(NSURL *)self->_resourceURL absoluteString];
  [coderCopy encodeObject:absoluteString forKey:@"_resourceURL"];
}

- (ISIconDecoration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ISIconDecoration *)self init];
  if (v5)
  {
    v5->_identifierKind = [coderCopy decodeIntegerForKey:@"_identifierKind"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1F1A4DB80;
    }

    objc_storeStrong(&v5->_identifier, v8);

    v5->_position = [coderCopy decodeIntegerForKey:@"_position"];
    v5->_mode = [coderCopy decodeIntegerForKey:@"_mode"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_resourceURL"];
    if (v9)
    {
      v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
      resourceURL = v5->_resourceURL;
      v5->_resourceURL = v10;
    }
  }

  return v5;
}

- (NSUUID)uuid
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%ld-%ld-%ld", self->_identifier, self->_identifierKind, self->_position, self->_mode];
  resourceURL = self->_resourceURL;
  v5 = MEMORY[0x1E696AFB0];
  v6 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v3];
  v7 = v6;
  if (resourceURL)
  {
    v15[0] = v6;
    v8 = MEMORY[0x1E696AFB0];
    absoluteString = [(NSURL *)self->_resourceURL absoluteString];
    v10 = [v8 _IF_UUIDWithString:absoluteString];
    v15[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v12 = [v5 _IF_UUIDByXORingUUIDs:v11];

    v7 = v12;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSString)description
{
  v3 = self->_identifierKind - 1;
  if (v3 > 2)
  {
    v4 = &stru_1F1A4DB80;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:off_1E77C6E00[v3], *(&self->super.isa + qword_1A782D150[v3])];
  }

  return v4;
}

- (id)resourceFingerprint
{
  v27 = *MEMORY[0x1E69E9840];
  identifierKind = self->_identifierKind;
  if (identifierKind == 3)
  {
    v20 = MEMORY[0x1E696AFB0];
    absoluteString = [(NSURL *)self->_resourceURL absoluteString];
    _IF_nullUUID = [v20 _IF_UUIDWithString:absoluteString];
  }

  else if (identifierKind == 2)
  {
    v4 = UTTypeCopyDeclaringBundleURL(self->_identifier);
    absoluteString2 = [(__CFURL *)v4 absoluteString];
    v6 = absoluteString2;
    if (absoluteString2)
    {
      v7 = absoluteString2;
    }

    else
    {
      v7 = &stru_1F1A4DB80;
    }

    v24 = v7;
    identifier = self->_identifier;
    v9 = _UTTypeCopyIconName();
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1F1A4DB80;
    }

    v25 = v11;
    v12 = self->_identifier;
    v13 = _UTTypeCopyGlyphName();
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &stru_1F1A4DB80;
    }

    v26 = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:3];

    v17 = MEMORY[0x1E696AFB0];
    v18 = [v16 componentsJoinedByString:{&stru_1F1A4DB80, v24, v25}];
    _IF_nullUUID = [v17 _IF_UUIDWithString:v18];
  }

  else
  {
    _IF_nullUUID = [MEMORY[0x1E696AFB0] _IF_nullUUID];
  }

  v22 = *MEMORY[0x1E69E9840];

  return _IF_nullUUID;
}

- (ISScalableCompositorResource)compositorResource
{
  if (self->_identifierKind == 2)
  {
    v2 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:self->_identifier];
    iconResourceBundleURL = [v2 iconResourceBundleURL];
    iconDictionary = [v2 iconDictionary];
    v5 = [ISResourceProvider resourceWithBundleURL:iconResourceBundleURL iconDictionary:iconDictionary options:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)imageForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  compositorResource = [(ISIconDecoration *)self compositorResource];
  [descriptorCopy size];
  v7 = v6;
  v9 = v8;
  [descriptorCopy scale];
  v11 = v10;

  v12 = [compositorResource imageForSize:v7 scale:{v9, v11}];

  return v12;
}

@end