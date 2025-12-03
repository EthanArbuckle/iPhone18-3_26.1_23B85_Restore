@interface EMMailDropMetadata
+ (id)mailDropMetadata;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpired;
- (EMMailDropMetadata)initWithCoder:(id)coder;
- (NSString)UUID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)merge:(id)merge;
@end

@implementation EMMailDropMetadata

+ (id)mailDropMetadata
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (EMMailDropMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = EMMailDropMetadata;
  v5 = [(EMMailDropMetadata *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_fileName"];
    fileName = v5->_fileName;
    v5->_fileName = v6;

    v5->_fileSize = [coderCopy decodeIntegerForKey:@"EFPropertyKey_fileSize"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_mimeType"];
    mimeType = v5->_mimeType;
    v5->_mimeType = v8;

    v5->_autoArchive = [coderCopy decodeBoolForKey:@"EFPropertyKey_autoArchive"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_directUrl"];
    directUrl = v5->_directUrl;
    v5->_directUrl = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_wrappedUrl"];
    wrappedUrl = v5->_wrappedUrl;
    v5->_wrappedUrl = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_expiration"];
    expiration = v5->_expiration;
    v5->_expiration = v14;

    v5->_flags = [coderCopy decodeIntegerForKey:@"EFPropertyKey_flags"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v16;

    v5->_isInvalid = [coderCopy decodeBoolForKey:@"EFPropertyKey_isInvalid"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fileName = [(EMMailDropMetadata *)self fileName];
  [coderCopy encodeObject:fileName forKey:@"EFPropertyKey_fileName"];

  [coderCopy encodeInteger:-[EMMailDropMetadata fileSize](self forKey:{"fileSize"), @"EFPropertyKey_fileSize"}];
  mimeType = [(EMMailDropMetadata *)self mimeType];
  [coderCopy encodeObject:mimeType forKey:@"EFPropertyKey_mimeType"];

  [coderCopy encodeBool:-[EMMailDropMetadata autoArchive](self forKey:{"autoArchive"), @"EFPropertyKey_autoArchive"}];
  directUrl = [(EMMailDropMetadata *)self directUrl];
  [coderCopy encodeObject:directUrl forKey:@"EFPropertyKey_directUrl"];

  wrappedUrl = [(EMMailDropMetadata *)self wrappedUrl];
  [coderCopy encodeObject:wrappedUrl forKey:@"EFPropertyKey_wrappedUrl"];

  [coderCopy encodeObject:self->_expiration forKey:@"EFPropertyKey_expiration"];
  [coderCopy encodeInteger:-[EMMailDropMetadata flags](self forKey:{"flags"), @"EFPropertyKey_flags"}];
  [coderCopy encodeObject:self->_UUID forKey:@"EFPropertyKey_UUID"];
  [coderCopy encodeBool:-[EMMailDropMetadata isInvalid](self forKey:{"isInvalid"), @"EFPropertyKey_isInvalid"}];
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  UUID = self->_UUID;
  uUID = [equalCopy UUID];
  LOBYTE(UUID) = [(NSString *)UUID isEqualToString:uUID];

  if (UUID)
  {
    v7 = 1;
  }

  else
  {
    directUrlString = [(EMMailDropMetadata *)self directUrlString];
    directUrlString2 = [equalCopy directUrlString];
    v7 = [directUrlString isEqualToString:directUrlString2];
  }

  return v7;
}

- (BOOL)isExpired
{
  date = [MEMORY[0x1E695DF00] date];
  v4 = [(NSDate *)self->_expiration laterDate:date];
  LOBYTE(self) = v4 == date;

  return self;
}

- (void)merge:(id)merge
{
  mergeCopy = merge;
  if (mergeCopy)
  {
    v22 = mergeCopy;
    fileName = [mergeCopy fileName];
    v6 = [fileName length];

    if (v6)
    {
      fileName2 = [v22 fileName];
      ef_sanitizedFileName = [fileName2 ef_sanitizedFileName];
      [(EMMailDropMetadata *)self setFileName:ef_sanitizedFileName];
    }

    if ([v22 fileSize])
    {
      -[EMMailDropMetadata setFileSize:](self, "setFileSize:", [v22 fileSize]);
    }

    mimeType = [v22 mimeType];
    v10 = [mimeType length];

    if (v10)
    {
      mimeType2 = [v22 mimeType];
      [(EMMailDropMetadata *)self setMimeType:mimeType2];
    }

    if ([v22 autoArchive])
    {
      -[EMMailDropMetadata setAutoArchive:](self, "setAutoArchive:", [v22 autoArchive]);
    }

    directUrlString = [v22 directUrlString];
    v13 = [directUrlString length];

    if (v13)
    {
      directUrl = [v22 directUrl];
      [(EMMailDropMetadata *)self setDirectUrl:directUrl];
    }

    wrappedUrlString = [v22 wrappedUrlString];
    v16 = [wrappedUrlString length];

    if (v16)
    {
      wrappedUrl = [v22 wrappedUrl];
      [(EMMailDropMetadata *)self setWrappedUrl:wrappedUrl];
    }

    expiration = [v22 expiration];

    if (expiration)
    {
      expiration2 = [v22 expiration];
      [(EMMailDropMetadata *)self setExpiration:expiration2];
    }

    -[EMMailDropMetadata setFlags:](self, "setFlags:", -[EMMailDropMetadata flags](self, "flags") | [v22 flags]);
    uUID = [v22 UUID];

    mergeCopy = v22;
    if (uUID)
    {
      uUID2 = [v22 UUID];
      [(EMMailDropMetadata *)self setUUID:uUID2];

      mergeCopy = v22;
    }
  }
}

- (NSString)UUID
{
  if (!self->_UUID)
  {
    if (self->_directUrl)
    {
      directUrlString = [(EMMailDropMetadata *)self directUrlString];
      uUID = [directUrlString dataUsingEncoding:4];

      ef_md5Digest = [uUID ef_md5Digest];
      ef_hexString = [ef_md5Digest ef_hexString];
      if ([ef_hexString length] >= 0x20)
      {
        v7 = MEMORY[0x1E696AEC0];
        v8 = [ef_hexString substringWithRange:{0, 8}];
        v9 = [ef_hexString substringWithRange:{8, 4}];
        v10 = [ef_hexString substringWithRange:{12, 4}];
        v11 = [ef_hexString substringWithRange:{16, 4}];
        v12 = [ef_hexString substringWithRange:{20, 12}];
        v13 = [v7 stringWithFormat:@"%@-%@-%@-%@-%@", v8, v9, v10, v11, v12];
        UUID = self->_UUID;
        self->_UUID = v13;
      }
    }

    else
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      ef_md5Digest = self->_UUID;
      self->_UUID = uUIDString;
    }
  }

  v16 = self->_UUID;

  return v16;
}

@end