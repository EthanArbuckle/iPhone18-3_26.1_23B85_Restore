@interface EMMailDropMetadata
+ (id)mailDropMetadata;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpired;
- (EMMailDropMetadata)initWithCoder:(id)a3;
- (NSString)UUID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)merge:(id)a3;
@end

@implementation EMMailDropMetadata

+ (id)mailDropMetadata
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (EMMailDropMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = EMMailDropMetadata;
  v5 = [(EMMailDropMetadata *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_fileName"];
    fileName = v5->_fileName;
    v5->_fileName = v6;

    v5->_fileSize = [v4 decodeIntegerForKey:@"EFPropertyKey_fileSize"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_mimeType"];
    mimeType = v5->_mimeType;
    v5->_mimeType = v8;

    v5->_autoArchive = [v4 decodeBoolForKey:@"EFPropertyKey_autoArchive"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_directUrl"];
    directUrl = v5->_directUrl;
    v5->_directUrl = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_wrappedUrl"];
    wrappedUrl = v5->_wrappedUrl;
    v5->_wrappedUrl = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_expiration"];
    expiration = v5->_expiration;
    v5->_expiration = v14;

    v5->_flags = [v4 decodeIntegerForKey:@"EFPropertyKey_flags"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v16;

    v5->_isInvalid = [v4 decodeBoolForKey:@"EFPropertyKey_isInvalid"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(EMMailDropMetadata *)self fileName];
  [v8 encodeObject:v4 forKey:@"EFPropertyKey_fileName"];

  [v8 encodeInteger:-[EMMailDropMetadata fileSize](self forKey:{"fileSize"), @"EFPropertyKey_fileSize"}];
  v5 = [(EMMailDropMetadata *)self mimeType];
  [v8 encodeObject:v5 forKey:@"EFPropertyKey_mimeType"];

  [v8 encodeBool:-[EMMailDropMetadata autoArchive](self forKey:{"autoArchive"), @"EFPropertyKey_autoArchive"}];
  v6 = [(EMMailDropMetadata *)self directUrl];
  [v8 encodeObject:v6 forKey:@"EFPropertyKey_directUrl"];

  v7 = [(EMMailDropMetadata *)self wrappedUrl];
  [v8 encodeObject:v7 forKey:@"EFPropertyKey_wrappedUrl"];

  [v8 encodeObject:self->_expiration forKey:@"EFPropertyKey_expiration"];
  [v8 encodeInteger:-[EMMailDropMetadata flags](self forKey:{"flags"), @"EFPropertyKey_flags"}];
  [v8 encodeObject:self->_UUID forKey:@"EFPropertyKey_UUID"];
  [v8 encodeBool:-[EMMailDropMetadata isInvalid](self forKey:{"isInvalid"), @"EFPropertyKey_isInvalid"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(EMMailDropMetadata);
  v5 = [(NSString *)self->_UUID copy];
  UUID = v4->_UUID;
  v4->_UUID = v5;

  v4->_autoArchive = self->_autoArchive;
  objc_storeStrong(&v4->_directUrl, self->_directUrl);
  objc_storeStrong(&v4->_expiration, self->_expiration);
  v4->_flags = self->_flags;
  v7 = [(NSString *)self->_fileName copy];
  fileName = v4->_fileName;
  v4->_fileName = v7;

  v4->_fileSize = self->_fileSize;
  v9 = [(NSString *)self->_mimeType copy];
  mimeType = v4->_mimeType;
  v4->_mimeType = v9;

  v4->_isInvalid = self->_isInvalid;
  objc_storeStrong(&v4->_wrappedUrl, self->_wrappedUrl);
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v14 = *&self->_fileName;
  if (self->_autoArchive)
  {
    v4 = "YES";
  }

  else
  {
    v4 = "NO";
  }

  flags = self->_flags;
  UUID = self->_UUID;
  mimeType = self->_mimeType;
  directUrl = self->_directUrl;
  wrappedUrl = self->_wrappedUrl;
  expiration = self->_expiration;
  [(EMMailDropMetadata *)self isBanner];
  v11 = NSStringFromBOOL();
  v12 = [v3 stringWithFormat:@"\nPtr:[%p]\nName:[%@]\nSize:[%lu]\nMIME:[%@]\nAuto-archive:[%s]\nExpiration:[%@]\nUUID:[%@]\nMDType:[%lu]\nURL:[%@]\nWrapped URL:[%@]\nisBanner:[%@]\n--------------", self, v14, mimeType, v4, expiration, UUID, flags, directUrl, wrappedUrl, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  UUID = self->_UUID;
  v6 = [v4 UUID];
  LOBYTE(UUID) = [(NSString *)UUID isEqualToString:v6];

  if (UUID)
  {
    v7 = 1;
  }

  else
  {
    v8 = [(EMMailDropMetadata *)self directUrlString];
    v9 = [v4 directUrlString];
    v7 = [v8 isEqualToString:v9];
  }

  return v7;
}

- (BOOL)isExpired
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [(NSDate *)self->_expiration laterDate:v3];
  LOBYTE(self) = v4 == v3;

  return self;
}

- (void)merge:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v22 = v4;
    v5 = [v4 fileName];
    v6 = [v5 length];

    if (v6)
    {
      v7 = [v22 fileName];
      v8 = [v7 ef_sanitizedFileName];
      [(EMMailDropMetadata *)self setFileName:v8];
    }

    if ([v22 fileSize])
    {
      -[EMMailDropMetadata setFileSize:](self, "setFileSize:", [v22 fileSize]);
    }

    v9 = [v22 mimeType];
    v10 = [v9 length];

    if (v10)
    {
      v11 = [v22 mimeType];
      [(EMMailDropMetadata *)self setMimeType:v11];
    }

    if ([v22 autoArchive])
    {
      -[EMMailDropMetadata setAutoArchive:](self, "setAutoArchive:", [v22 autoArchive]);
    }

    v12 = [v22 directUrlString];
    v13 = [v12 length];

    if (v13)
    {
      v14 = [v22 directUrl];
      [(EMMailDropMetadata *)self setDirectUrl:v14];
    }

    v15 = [v22 wrappedUrlString];
    v16 = [v15 length];

    if (v16)
    {
      v17 = [v22 wrappedUrl];
      [(EMMailDropMetadata *)self setWrappedUrl:v17];
    }

    v18 = [v22 expiration];

    if (v18)
    {
      v19 = [v22 expiration];
      [(EMMailDropMetadata *)self setExpiration:v19];
    }

    -[EMMailDropMetadata setFlags:](self, "setFlags:", -[EMMailDropMetadata flags](self, "flags") | [v22 flags]);
    v20 = [v22 UUID];

    v4 = v22;
    if (v20)
    {
      v21 = [v22 UUID];
      [(EMMailDropMetadata *)self setUUID:v21];

      v4 = v22;
    }
  }
}

- (NSString)UUID
{
  if (!self->_UUID)
  {
    if (self->_directUrl)
    {
      v3 = [(EMMailDropMetadata *)self directUrlString];
      v4 = [v3 dataUsingEncoding:4];

      v5 = [v4 ef_md5Digest];
      v6 = [v5 ef_hexString];
      if ([v6 length] >= 0x20)
      {
        v7 = MEMORY[0x1E696AEC0];
        v8 = [v6 substringWithRange:{0, 8}];
        v9 = [v6 substringWithRange:{8, 4}];
        v10 = [v6 substringWithRange:{12, 4}];
        v11 = [v6 substringWithRange:{16, 4}];
        v12 = [v6 substringWithRange:{20, 12}];
        v13 = [v7 stringWithFormat:@"%@-%@-%@-%@-%@", v8, v9, v10, v11, v12];
        UUID = self->_UUID;
        self->_UUID = v13;
      }
    }

    else
    {
      v4 = [MEMORY[0x1E696AFB0] UUID];
      v15 = [v4 UUIDString];
      v5 = self->_UUID;
      self->_UUID = v15;
    }
  }

  v16 = self->_UUID;

  return v16;
}

@end