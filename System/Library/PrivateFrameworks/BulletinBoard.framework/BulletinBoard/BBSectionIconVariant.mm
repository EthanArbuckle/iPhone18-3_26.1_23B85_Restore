@interface BBSectionIconVariant
+ (id)variantWithFormat:(int64_t)format applicationIdentifier:(id)identifier;
+ (id)variantWithFormat:(int64_t)format dateComponentDetails:(id)details;
+ (id)variantWithFormat:(int64_t)format imageData:(id)data;
+ (id)variantWithFormat:(int64_t)format imageName:(id)name inBundle:(id)bundle;
+ (id)variantWithFormat:(int64_t)format imageName:(id)name inBundleAtPath:(id)path;
+ (id)variantWithFormat:(int64_t)format imagePath:(id)path;
+ (id)variantWithFormat:(int64_t)format systemImageName:(id)name;
+ (id)variantWithFormat:(int64_t)format uti:(id)uti;
- (BBSectionIconVariant)initWithCoder:(id)coder;
- (BBSectionIconVariant)initWithFormat:(int64_t)format imageInfo:(id)info imageInfoType:(int64_t)type bundlePath:(id)path precomposed:(BOOL)precomposed;
- (BOOL)isEqual:(id)equal;
- (NSData)imageData;
- (NSDictionary)dateComponentDetails;
- (NSString)applicationIdentifier;
- (NSString)imageName;
- (NSString)imagePath;
- (NSString)systemImageName;
- (NSString)uti;
- (id)_processImageInfo:(id)info imageInfoType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_setImageInfo:(id)info ofType:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBSectionIconVariant

- (unint64_t)hash
{
  format = [(BBSectionIconVariant *)self format];
  v4 = [self->_imageInfo hash] ^ format ^ self->_imageInfoType;
  bundlePath = [(BBSectionIconVariant *)self bundlePath];
  v6 = [bundlePath hash];
  v7 = v6 ^ [(BBSectionIconVariant *)self isPrecomposed];

  return v4 ^ v7;
}

+ (id)variantWithFormat:(int64_t)format imageData:(id)data
{
  dataCopy = data;
  v6 = [[BBSectionIconVariant alloc] initWithFormat:format imageInfo:dataCopy imageInfoType:1 bundlePath:0 precomposed:0];

  return v6;
}

+ (id)variantWithFormat:(int64_t)format applicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [[BBSectionIconVariant alloc] initWithFormat:format imageInfo:identifierCopy imageInfoType:4 bundlePath:0 precomposed:0];

  return v6;
}

+ (id)variantWithFormat:(int64_t)format imagePath:(id)path
{
  pathCopy = path;
  v6 = [[BBSectionIconVariant alloc] initWithFormat:format imageInfo:pathCopy imageInfoType:2 bundlePath:0 precomposed:0];

  return v6;
}

+ (id)variantWithFormat:(int64_t)format imageName:(id)name inBundle:(id)bundle
{
  nameCopy = name;
  bundlePath = [bundle bundlePath];
  v10 = [self variantWithFormat:format imageName:nameCopy inBundleAtPath:bundlePath];

  return v10;
}

+ (id)variantWithFormat:(int64_t)format imageName:(id)name inBundleAtPath:(id)path
{
  pathCopy = path;
  nameCopy = name;
  v9 = [[BBSectionIconVariant alloc] initWithFormat:format imageInfo:nameCopy imageInfoType:3 bundlePath:pathCopy precomposed:0];

  return v9;
}

+ (id)variantWithFormat:(int64_t)format systemImageName:(id)name
{
  nameCopy = name;
  v6 = [[BBSectionIconVariant alloc] initWithFormat:format imageInfo:nameCopy imageInfoType:5 bundlePath:0 precomposed:0];

  return v6;
}

+ (id)variantWithFormat:(int64_t)format uti:(id)uti
{
  utiCopy = uti;
  v6 = [[BBSectionIconVariant alloc] initWithFormat:format imageInfo:utiCopy imageInfoType:6 bundlePath:0 precomposed:0];

  return v6;
}

+ (id)variantWithFormat:(int64_t)format dateComponentDetails:(id)details
{
  detailsCopy = details;
  v6 = [[BBSectionIconVariant alloc] initWithFormat:format imageInfo:detailsCopy imageInfoType:7 bundlePath:0 precomposed:0];

  return v6;
}

- (NSData)imageData
{
  if (self->_imageInfoType == 1)
  {
    imageInfo = self->_imageInfo;
    v3 = objc_opt_class();
    v4 = imageInfo;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)imagePath
{
  if (self->_imageInfoType == 2)
  {
    imageInfo = self->_imageInfo;
    v3 = objc_opt_class();
    v4 = imageInfo;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)imageName
{
  if (self->_imageInfoType == 3)
  {
    imageInfo = self->_imageInfo;
    v3 = objc_opt_class();
    v4 = imageInfo;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)applicationIdentifier
{
  if (self->_imageInfoType == 4)
  {
    imageInfo = self->_imageInfo;
    v3 = objc_opt_class();
    v4 = imageInfo;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)systemImageName
{
  if (self->_imageInfoType == 5)
  {
    imageInfo = self->_imageInfo;
    v3 = objc_opt_class();
    v4 = imageInfo;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)uti
{
  if (self->_imageInfoType == 6)
  {
    imageInfo = self->_imageInfo;
    v3 = objc_opt_class();
    v4 = imageInfo;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDictionary)dateComponentDetails
{
  if (self->_imageInfoType == 7)
  {
    imageInfo = self->_imageInfo;
    v3 = objc_opt_class();
    v4 = imageInfo;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      format = [(BBSectionIconVariant *)self format];
      if (format == [(BBSectionIconVariant *)v5 format]&& (imageInfo = self->_imageInfo, v8 = v5->_imageInfo, BSEqualObjects()) && self->_imageInfoType == v5->_imageInfoType)
      {
        bundlePath = [(BBSectionIconVariant *)self bundlePath];
        bundlePath2 = [(BBSectionIconVariant *)v5 bundlePath];
        if (BSEqualObjects())
        {
          isPrecomposed = [(BBSectionIconVariant *)self isPrecomposed];
          v12 = isPrecomposed ^ [(BBSectionIconVariant *)v5 isPrecomposed]^ 1;
        }

        else
        {
          LOBYTE(v12) = 0;
        }
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  imageInfo = self->_imageInfo;
  imageInfoType = self->_imageInfoType;
  format = self->_format;
  bundlePath = self->_bundlePath;
  precomposed = self->_precomposed;

  return [v4 initWithFormat:format imageInfo:imageInfo imageInfoType:imageInfoType bundlePath:bundlePath precomposed:precomposed];
}

- (BBSectionIconVariant)initWithCoder:(id)coder
{
  v29[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(BBSectionIconVariant *)self init];
  if (v5)
  {
    if ([coderCopy decodeIntegerForKey:@"codingVersion"] == 2)
    {
      v6 = [coderCopy decodeIntegerForKey:@"imageInfoType"];
      v5->_imageInfoType = v6;
      v7 = coderCopy;
      if (v6 == 7)
      {
        v8 = MEMORY[0x277CBEB98];
        v29[0] = objc_opt_class();
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
        v10 = [v8 setWithArray:v9];

        v11 = MEMORY[0x277CBEB98];
        v23 = objc_opt_class();
        v24 = objc_opt_class();
        v25 = objc_opt_class();
        v26 = objc_opt_class();
        v27 = objc_opt_class();
        v28 = objc_opt_class();
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:6];
        v13 = [v11 setWithArray:{v12, v23, v24, v25, v26, v27}];

        v14 = [v7 decodeDictionaryWithKeysOfClasses:v10 objectsOfClasses:v13 forKey:@"imageInfo"];
      }

      else
      {
        v14 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"imageInfo"];
      }

      imageInfo = v5->_imageInfo;
      v5->_imageInfo = v14;
    }

    else
    {
      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
      if (v15)
      {
        [(BBSectionIconVariant *)v5 setImageData:v15];
      }

      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imagePath"];
      if (v16)
      {
        [(BBSectionIconVariant *)v5 setImageName:v16];
      }

      v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
      if (v16)
      {
        [(BBSectionIconVariant *)v5 setApplicationIdentifier:v17];
      }
    }

    v5->_format = [coderCopy decodeIntegerForKey:@"format"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];
    bundlePath = v5->_bundlePath;
    v5->_bundlePath = v19;

    v5->_precomposed = [coderCopy decodeBoolForKey:@"precomposed"];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:2 forKey:@"codingVersion"];
  [coderCopy encodeInteger:self->_format forKey:@"format"];
  [coderCopy encodeInteger:self->_imageInfoType forKey:@"imageInfoType"];
  [coderCopy encodeObject:self->_imageInfo forKey:@"imageInfo"];
  [coderCopy encodeObject:self->_bundlePath forKey:@"bundlePath"];
  [coderCopy encodeBool:self->_precomposed forKey:@"precomposed"];
}

- (BBSectionIconVariant)initWithFormat:(int64_t)format imageInfo:(id)info imageInfoType:(int64_t)type bundlePath:(id)path precomposed:(BOOL)precomposed
{
  infoCopy = info;
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = BBSectionIconVariant;
  v14 = [(BBSectionIconVariant *)&v21 init];
  v15 = v14;
  if (v14)
  {
    v14->_format = format;
    v16 = [(BBSectionIconVariant *)v14 _processImageInfo:infoCopy imageInfoType:type];
    imageInfo = v15->_imageInfo;
    v15->_imageInfo = v16;

    v15->_imageInfoType = type;
    v18 = [pathCopy copy];
    bundlePath = v15->_bundlePath;
    v15->_bundlePath = v18;

    v15->_precomposed = precomposed;
  }

  return v15;
}

- (id)_processImageInfo:(id)info imageInfoType:(int64_t)type
{
  infoCopy = info;
  v7 = infoCopy;
  v8 = infoCopy;
  if (type == 1)
  {
    v9 = [infoCopy copy];
    bb_objectCache = [self bb_objectCache];
    v8 = [bb_objectCache cacheObject:v9];
  }

  return v8;
}

- (void)_setImageInfo:(id)info ofType:(int64_t)type
{
  infoCopy = info;
  if (infoCopy)
  {
    self->_imageInfoType = type;
    v7 = [(BBSectionIconVariant *)self _processImageInfo:infoCopy imageInfoType:type];
  }

  else
  {
    if (self->_imageInfoType != type)
    {
      goto LABEL_6;
    }

    v7 = 0;
    self->_imageInfoType = 0;
  }

  imageInfo = self->_imageInfo;
  self->_imageInfo = v7;

LABEL_6:

  MEMORY[0x2821F96F8]();
}

@end