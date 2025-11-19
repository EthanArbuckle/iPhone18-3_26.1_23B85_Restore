@interface BBAttachmentMetadata
- (BBAttachmentMetadata)initWithCoder:(id)a3;
- (BOOL)hasContentModificationsRelativeTo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_initWithType:(int64_t)a3 URL:(id)a4 identifier:(id)a5 uniformType:(id)a6 thumbnailGeneratorUserInfo:(id)a7 thumbnailHidden:(BOOL)a8 hiddenFromDefaultExpandedView:(BOOL)a9;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBAttachmentMetadata

- (id)_initWithType:(int64_t)a3 URL:(id)a4 identifier:(id)a5 uniformType:(id)a6 thumbnailGeneratorUserInfo:(id)a7 thumbnailHidden:(BOOL)a8 hiddenFromDefaultExpandedView:(BOOL)a9
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v31.receiver = self;
  v31.super_class = BBAttachmentMetadata;
  v19 = [(BBAttachmentMetadata *)&v31 init];
  if (v19)
  {
    v20 = [MEMORY[0x277CCAD78] UUID];
    UUID = v19->_UUID;
    v19->_UUID = v20;

    v19->_type = a3;
    v22 = [v15 copy];
    URL = v19->_URL;
    v19->_URL = v22;

    v24 = [v16 copy];
    identifier = v19->_identifier;
    v19->_identifier = v24;

    v26 = [v17 copy];
    uniformType = v19->_uniformType;
    v19->_uniformType = v26;

    v28 = [v18 copy];
    thumbnailGeneratorUserInfo = v19->_thumbnailGeneratorUserInfo;
    v19->_thumbnailGeneratorUserInfo = v28;

    v19->_thumbnailHidden = a8;
    v19->_hiddenFromDefaultExpandedView = a9;
  }

  return v19;
}

- (unint64_t)hash
{
  v3 = [(BBAttachmentMetadata *)self type];
  v4 = [(BBAttachmentMetadata *)self URL];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v5 = v4;
      v6 = [(BBAttachmentMetadata *)self type];
      if (v6 == [(BBAttachmentMetadata *)v5 type])
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

- (BOOL)hasContentModificationsRelativeTo:(id)a3
{
  v4 = a3;
  v5 = [(BBAttachmentMetadata *)self type];
  if (v5 == [v4 type])
  {
    v6 = [(BBAttachmentMetadata *)self URL];
    v7 = [v4 URL];
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

  v7 = [v3 build];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BBMutableAttachmentMetadata allocWithZone:a3];
  v5 = [(BBAttachmentMetadata *)self type];
  v6 = [(BBAttachmentMetadata *)self URL];
  v7 = [(BBAttachmentMetadata *)self identifier];
  v8 = [(BBAttachmentMetadata *)self uniformType];
  v9 = [(BBAttachmentMetadata *)self thumbnailGeneratorUserInfo];
  v10 = [(BBAttachmentMetadata *)self thumbnailHidden];
  LOBYTE(v13) = [(BBAttachmentMetadata *)self hiddenFromDefaultExpandedView];
  v11 = [(BBAttachmentMetadata *)v4 _initWithType:v5 URL:v6 identifier:v7 uniformType:v8 thumbnailGeneratorUserInfo:v9 thumbnailHidden:v10 hiddenFromDefaultExpandedView:v13];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeInteger:-[BBAttachmentMetadata type](self forKey:{"type"), @"type"}];
  v4 = [(BBAttachmentMetadata *)self URL];
  [v8 encodeObject:v4 forKey:@"URL"];

  v5 = [(BBAttachmentMetadata *)self identifier];
  [v8 encodeObject:v5 forKey:@"identifier"];

  v6 = [(BBAttachmentMetadata *)self uniformType];
  [v8 encodeObject:v6 forKey:@"uniformType"];

  v7 = [(BBAttachmentMetadata *)self thumbnailGeneratorUserInfo];
  [v8 encodeObject:v7 forKey:@"thumbnailGeneratorUserInfo"];

  [v8 encodeBool:-[BBAttachmentMetadata thumbnailHidden](self forKey:{"thumbnailHidden"), @"thumbnailHidden"}];
  [v8 encodeBool:-[BBAttachmentMetadata hiddenFromDefaultExpandedView](self forKey:{"hiddenFromDefaultExpandedView"), @"hiddenFromDefaultExpandedView"}];
}

- (BBAttachmentMetadata)initWithCoder:(id)a3
{
  v3 = a3;
  v18 = [v3 decodeIntegerForKey:@"type"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"uniformType"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v7 setWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = [v3 decodeObjectOfClasses:v12 forKey:@"thumbnailGeneratorUserInfo"];

  v14 = [v3 decodeBoolForKey:@"thumbnailHidden"];
  LOBYTE(v8) = [v3 decodeBoolForKey:@"hiddenFromDefaultExpandedView"];

  LOBYTE(v17) = v8;
  v15 = [(BBAttachmentMetadata *)self _initWithType:v18 URL:v4 identifier:v5 uniformType:v6 thumbnailGeneratorUserInfo:v13 thumbnailHidden:v14 hiddenFromDefaultExpandedView:v17];

  return v15;
}

@end