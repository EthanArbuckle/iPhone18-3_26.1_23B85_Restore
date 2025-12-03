@interface BBAttachmentMetadata
- (BBAttachmentMetadata)initWithCoder:(id)coder;
- (BOOL)hasContentModificationsRelativeTo:(id)to;
- (BOOL)isEqual:(id)equal;
- (id)_initWithType:(int64_t)type URL:(id)l identifier:(id)identifier uniformType:(id)uniformType thumbnailGeneratorUserInfo:(id)info thumbnailHidden:(BOOL)hidden hiddenFromDefaultExpandedView:(BOOL)view;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBAttachmentMetadata

- (id)_initWithType:(int64_t)type URL:(id)l identifier:(id)identifier uniformType:(id)uniformType thumbnailGeneratorUserInfo:(id)info thumbnailHidden:(BOOL)hidden hiddenFromDefaultExpandedView:(BOOL)view
{
  lCopy = l;
  identifierCopy = identifier;
  uniformTypeCopy = uniformType;
  infoCopy = info;
  v31.receiver = self;
  v31.super_class = BBAttachmentMetadata;
  v19 = [(BBAttachmentMetadata *)&v31 init];
  if (v19)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    UUID = v19->_UUID;
    v19->_UUID = uUID;

    v19->_type = type;
    v22 = [lCopy copy];
    URL = v19->_URL;
    v19->_URL = v22;

    v24 = [identifierCopy copy];
    identifier = v19->_identifier;
    v19->_identifier = v24;

    v26 = [uniformTypeCopy copy];
    uniformType = v19->_uniformType;
    v19->_uniformType = v26;

    v28 = [infoCopy copy];
    thumbnailGeneratorUserInfo = v19->_thumbnailGeneratorUserInfo;
    v19->_thumbnailGeneratorUserInfo = v28;

    v19->_thumbnailHidden = hidden;
    v19->_hiddenFromDefaultExpandedView = view;
  }

  return v19;
}

- (unint64_t)hash
{
  type = [(BBAttachmentMetadata *)self type];
  v4 = [(BBAttachmentMetadata *)self URL];
  v5 = [v4 hash];

  return v5 ^ type;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = equalCopy;
      type = [(BBAttachmentMetadata *)self type];
      if (type == [(BBAttachmentMetadata *)v5 type])
      {
        v7 = [(BBAttachmentMetadata *)self URL];
        v8 = [(BBAttachmentMetadata *)v5 URL];
        v9 = BSEqualObjects();
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)hasContentModificationsRelativeTo:(id)to
{
  toCopy = to;
  type = [(BBAttachmentMetadata *)self type];
  if (type == [toCopy type])
  {
    v6 = [(BBAttachmentMetadata *)self URL];
    v7 = [toCopy URL];
    v8 = BSEqualObjects() ^ 1;
  }

  else
  {
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInteger:-[BBAttachmentMetadata type](self withName:{"type"), @"type"}];
  v5 = [(BBAttachmentMetadata *)self URL];
  v6 = [v3 appendObject:v5 withName:@"URL"];

  build = [v3 build];

  return build;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BBMutableAttachmentMetadata allocWithZone:zone];
  type = [(BBAttachmentMetadata *)self type];
  v6 = [(BBAttachmentMetadata *)self URL];
  identifier = [(BBAttachmentMetadata *)self identifier];
  uniformType = [(BBAttachmentMetadata *)self uniformType];
  thumbnailGeneratorUserInfo = [(BBAttachmentMetadata *)self thumbnailGeneratorUserInfo];
  thumbnailHidden = [(BBAttachmentMetadata *)self thumbnailHidden];
  LOBYTE(v13) = [(BBAttachmentMetadata *)self hiddenFromDefaultExpandedView];
  v11 = [(BBAttachmentMetadata *)v4 _initWithType:type URL:v6 identifier:identifier uniformType:uniformType thumbnailGeneratorUserInfo:thumbnailGeneratorUserInfo thumbnailHidden:thumbnailHidden hiddenFromDefaultExpandedView:v13];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[BBAttachmentMetadata type](self forKey:{"type"), @"type"}];
  v4 = [(BBAttachmentMetadata *)self URL];
  [coderCopy encodeObject:v4 forKey:@"URL"];

  identifier = [(BBAttachmentMetadata *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  uniformType = [(BBAttachmentMetadata *)self uniformType];
  [coderCopy encodeObject:uniformType forKey:@"uniformType"];

  thumbnailGeneratorUserInfo = [(BBAttachmentMetadata *)self thumbnailGeneratorUserInfo];
  [coderCopy encodeObject:thumbnailGeneratorUserInfo forKey:@"thumbnailGeneratorUserInfo"];

  [coderCopy encodeBool:-[BBAttachmentMetadata thumbnailHidden](self forKey:{"thumbnailHidden"), @"thumbnailHidden"}];
  [coderCopy encodeBool:-[BBAttachmentMetadata hiddenFromDefaultExpandedView](self forKey:{"hiddenFromDefaultExpandedView"), @"hiddenFromDefaultExpandedView"}];
}

- (BBAttachmentMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18 = [coderCopy decodeIntegerForKey:@"type"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniformType"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v7 setWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"thumbnailGeneratorUserInfo"];

  v14 = [coderCopy decodeBoolForKey:@"thumbnailHidden"];
  LOBYTE(v8) = [coderCopy decodeBoolForKey:@"hiddenFromDefaultExpandedView"];

  LOBYTE(v17) = v8;
  v15 = [(BBAttachmentMetadata *)self _initWithType:v18 URL:v4 identifier:v5 uniformType:v6 thumbnailGeneratorUserInfo:v13 thumbnailHidden:v14 hiddenFromDefaultExpandedView:v17];

  return v15;
}

@end