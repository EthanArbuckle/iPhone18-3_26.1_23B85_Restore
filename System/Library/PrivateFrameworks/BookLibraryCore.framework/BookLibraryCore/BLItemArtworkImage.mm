@interface BLItemArtworkImage
- (BLItemArtworkImage)initWithArtworkDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (CGSize)imageSize;
- (NSURL)URL;
- (double)imageScale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)height;
- (int64_t)width;
- (unint64_t)hash;
- (void)_setValue:(id)value forKey:(id)key;
- (void)setImageKindWithTypeName:(id)name variantName:(id)variantName;
- (void)setURL:(id)l;
@end

@implementation BLItemArtworkImage

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSMutableDictionary *)self->_dictionary mutableCopyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_imageKind copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (int64_t)height
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"box-height"];
  if (objc_opt_respondsToSelector())
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  [(BLItemArtworkImage *)self imageScale];
  if (v5 > 0.00000011920929)
  {
    intValue = (intValue / v5);
  }

  return intValue;
}

- (double)imageScale
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"scale"];
  v3 = 1.0;
  if (objc_opt_respondsToSelector())
  {
    [v2 floatValue];
    v3 = v4;
  }

  return v3;
}

- (int64_t)width
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"box-width"];
  if (objc_opt_respondsToSelector())
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  [(BLItemArtworkImage *)self imageScale];
  if (v5 > 0.00000011920929)
  {
    intValue = (intValue / v5);
  }

  return intValue;
}

- (NSURL)URL
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = BLItemArtworkImage;
  v4 = [(BLItemArtworkImage *)&v11 description];
  imageKind = [(BLItemArtworkImage *)self imageKind];
  width = [(BLItemArtworkImage *)self width];
  height = [(BLItemArtworkImage *)self height];
  v8 = [(BLItemArtworkImage *)self URL];
  v9 = [v3 stringWithFormat:@"%@: [%@ %ldx%ld] %@", v4, imageKind, width, height, v8];

  return v9;
}

- (unint64_t)hash
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"url"];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"url"];
    v6 = [equalCopy valueForProperty:@"url"];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BLItemArtworkImage)initWithArtworkDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = BLItemArtworkImage;
  v5 = [(BLItemArtworkImage *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy mutableCopy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;
  }

  return v5;
}

- (CGSize)imageSize
{
  width = [(BLItemArtworkImage *)self width];
  height = [(BLItemArtworkImage *)self height];
  v5 = width;
  result.height = height;
  result.width = v5;
  return result;
}

- (void)setImageKindWithTypeName:(id)name variantName:(id)variantName
{
  nameCopy = name;
  variantNameCopy = variantName;
  if ([variantNameCopy hasSuffix:@"@2x"])
  {
    LODWORD(v7) = 2.0;
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    [(BLItemArtworkImage *)self _setValue:v8 forKey:@"scale"];

    v9 = [variantNameCopy substringToIndex:{objc_msgSend(variantNameCopy, "length") - 3}];

    variantNameCopy = v9;
  }

  variantNameCopy = [nameCopy stringByAppendingFormat:@".%@", variantNameCopy];
  [(BLItemArtworkImage *)self setImageKind:variantNameCopy];
}

- (void)setURL:(id)l
{
  absoluteString = [l absoluteString];
  [(BLItemArtworkImage *)self _setValue:absoluteString forKey:@"url"];
}

- (void)_setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v7 = valueCopy;
  v8 = keyCopy;
  dictionary = self->_dictionary;
  if (valueCopy)
  {
    if (!dictionary)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = self->_dictionary;
      self->_dictionary = v10;

      v7 = valueCopy;
      dictionary = self->_dictionary;
    }

    [(NSMutableDictionary *)dictionary setObject:v7 forKey:v8];
  }

  else
  {
    [(NSMutableDictionary *)dictionary removeObjectForKey:v8];
  }
}

@end