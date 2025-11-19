@interface SUUIMediaSocialPhotoUpload
- (SUUIMediaSocialPhotoUpload)initWithUploadDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SUUIMediaSocialPhotoUpload

- (SUUIMediaSocialPhotoUpload)initWithUploadDictionary:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SUUIMediaSocialPhotoUpload;
  v5 = [(SUUIMediaSocialPhotoUpload *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"dsId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      uniqueIdentifier = v5->_uniqueIdentifier;
      v5->_uniqueIdentifier = v7;
    }

    v9 = [v4 objectForKey:@"hasAlpha"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_hasAlpha = [v9 BOOLValue];
    }

    v10 = [v4 objectForKey:@"height"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_height = [v10 unsignedIntegerValue];
    }

    v11 = [v4 objectForKey:@"length"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_length = [v11 unsignedIntegerValue];
    }

    v12 = [v4 objectForKey:@"md5"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      MD5 = v5->_MD5;
      v5->_MD5 = v13;
    }

    v15 = [v4 objectForKey:@"token"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      token = v5->_token;
      v5->_token = v16;
    }

    v18 = [v4 objectForKey:@"tokenType"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v18 copy];
      tokenType = v5->_tokenType;
      v5->_tokenType = v19;
    }

    v21 = [v4 objectForKey:@"type"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      type = v5->_type;
      v5->_type = v22;
    }

    v24 = [v4 objectForKey:@"width"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5->_width = [v24 unsignedIntegerValue];
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setHasAlpha:self->_hasAlpha];
  [v4 setHeight:self->_height];
  [v4 setLength:self->_length];
  [v4 setMD5:self->_MD5];
  [v4 setToken:self->_token];
  [v4 setTokenType:self->_tokenType];
  [v4 setType:self->_type];
  [v4 setWidth:self->_width];
  return v4;
}

@end