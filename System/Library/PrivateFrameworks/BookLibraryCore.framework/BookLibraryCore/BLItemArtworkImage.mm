@interface BLItemArtworkImage
- (BLItemArtworkImage)initWithArtworkDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGSize)imageSize;
- (NSURL)URL;
- (double)imageScale;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)height;
- (int64_t)width;
- (unint64_t)hash;
- (void)_setValue:(id)a3 forKey:(id)a4;
- (void)setImageKindWithTypeName:(id)a3 variantName:(id)a4;
- (void)setURL:(id)a3;
@end

@implementation BLItemArtworkImage

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSMutableDictionary *)self->_dictionary mutableCopyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_imageKind copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (int64_t)height
{
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"box-height"];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  [(BLItemArtworkImage *)self imageScale];
  if (v5 > 0.00000011920929)
  {
    v4 = (v4 / v5);
  }

  return v4;
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
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  [(BLItemArtworkImage *)self imageScale];
  if (v5 > 0.00000011920929)
  {
    v4 = (v4 / v5);
  }

  return v4;
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
  v5 = [(BLItemArtworkImage *)self imageKind];
  v6 = [(BLItemArtworkImage *)self width];
  v7 = [(BLItemArtworkImage *)self height];
  v8 = [(BLItemArtworkImage *)self URL];
  v9 = [v3 stringWithFormat:@"%@: [%@ %ldx%ld] %@", v4, v5, v6, v7, v8];

  return v9;
}

- (unint64_t)hash
{
  v2 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"url"];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"url"];
    v6 = [v4 valueForProperty:@"url"];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BLItemArtworkImage)initWithArtworkDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BLItemArtworkImage;
  v5 = [(BLItemArtworkImage *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;
  }

  return v5;
}

- (CGSize)imageSize
{
  v3 = [(BLItemArtworkImage *)self width];
  v4 = [(BLItemArtworkImage *)self height];
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)setImageKindWithTypeName:(id)a3 variantName:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v6 hasSuffix:@"@2x"])
  {
    LODWORD(v7) = 2.0;
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    [(BLItemArtworkImage *)self _setValue:v8 forKey:@"scale"];

    v9 = [v6 substringToIndex:{objc_msgSend(v6, "length") - 3}];

    v6 = v9;
  }

  v10 = [v11 stringByAppendingFormat:@".%@", v6];
  [(BLItemArtworkImage *)self setImageKind:v10];
}

- (void)setURL:(id)a3
{
  v4 = [a3 absoluteString];
  [(BLItemArtworkImage *)self _setValue:v4 forKey:@"url"];
}

- (void)_setValue:(id)a3 forKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v12;
  v8 = v6;
  dictionary = self->_dictionary;
  if (v12)
  {
    if (!dictionary)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = self->_dictionary;
      self->_dictionary = v10;

      v7 = v12;
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