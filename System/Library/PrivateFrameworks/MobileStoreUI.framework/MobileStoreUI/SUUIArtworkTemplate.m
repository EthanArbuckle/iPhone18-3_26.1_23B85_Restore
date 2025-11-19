@interface SUUIArtworkTemplate
+ (BOOL)canHandleArtworkFormat:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGSize)_sizeForWidth:(int64_t)a3;
- (NSMutableDictionary)cacheRepresentation;
- (NSString)description;
- (SUUIArtwork)largestArtwork;
- (SUUIArtwork)smallestArtwork;
- (SUUIArtworkTemplate)initWithCacheRepresentation:(id)a3;
- (SUUIArtworkTemplate)initWithCoder:(id)a3;
- (SUUIArtworkTemplate)initWithTemplateDictionary:(id)a3;
- (id)_artworkURLWithWidth:(int64_t)a3;
- (id)_artworkWithWidth:(int64_t)a3;
- (id)_lookupDictionary;
- (id)_urlStringWithTargetSize:(CGSize)a3;
- (id)artworkForSize:(int64_t)a3;
- (id)artworkURLForSize:(int64_t)a3;
- (id)artworkWithWidth:(int64_t)a3;
- (id)bestArtworkForScaledSize:(CGSize)a3;
- (id)bestArtworkForSize:(CGSize)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)preferredExactArtworkForSize:(CGSize)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUUIArtworkTemplate

- (SUUIArtworkTemplate)initWithTemplateDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SUUIArtworkTemplate;
  v5 = [(SUUIArtworkTemplate *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    servedArtworks = v5->_servedArtworks;
    v5->_servedArtworks = v6;

    v8 = [v4 objectForKey:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_urlTemplateString, v8);
    }

    v9 = [v4 objectForKey:@"width"];

    if (objc_opt_respondsToSelector())
    {
      v5->_width = [v9 integerValue];
    }

    v10 = [v4 objectForKey:@"height"];

    if (objc_opt_respondsToSelector())
    {
      v5->_height = [v10 integerValue];
    }
  }

  return v5;
}

- (id)artworkForSize:(int64_t)a3
{
  v4 = [(SUUIArtworkTemplate *)self artworkWithWidth:a3];
  v5 = [(SUUIArtworkTemplate *)self servedArtworks];
  [v5 addObject:v4];

  return v4;
}

- (id)artworkURLForSize:(int64_t)a3
{
  v4 = [(SUUIArtworkTemplate *)self artworkForSize:a3];
  v5 = [(SUUIArtworkTemplate *)self servedArtworks];
  [v5 addObject:v4];

  v6 = [v4 URL];

  return v6;
}

- (id)artworkWithWidth:(int64_t)a3
{
  v4 = [(SUUIArtworkTemplate *)self _artworkWithWidth:a3];
  v5 = [(SUUIArtworkTemplate *)self servedArtworks];
  [v5 addObject:v4];

  return v4;
}

- (id)bestArtworkForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(SUUIArtworkTemplate *)self _urlStringWithTargetSize:?];
  v7 = [SUUIArtwork alloc];
  v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];
  v9 = [(SUUIArtwork *)v7 initWithURL:v8 size:width, height];

  v10 = [(SUUIArtworkTemplate *)self servedArtworks];
  [v10 addObject:v9];

  return v9;
}

- (id)bestArtworkForScaledSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v8 = v7;

  v9 = [(SUUIArtworkTemplate *)self bestArtworkForSize:ceil(width * v8), ceil(height * v8)];
  v10 = [(SUUIArtworkTemplate *)self servedArtworks];
  [v10 addObject:v9];

  return v9;
}

- (id)preferredExactArtworkForSize:(CGSize)a3
{
  v4 = [(SUUIArtworkTemplate *)self bestArtworkForSize:a3.width, a3.height];
  v5 = [(SUUIArtworkTemplate *)self servedArtworks];
  [v5 addObject:v4];

  return v4;
}

+ (BOOL)canHandleArtworkFormat:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (SUUIArtwork)largestArtwork
{
  width = self->_width;
  height = self->_height;
  v5 = [(SUUIArtworkTemplate *)self _urlStringWithTargetSize:width, height];
  v6 = [SUUIArtwork alloc];
  v7 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  v8 = [(SUUIArtwork *)v6 initWithURL:v7 size:width, height];

  v9 = [(SUUIArtworkTemplate *)self servedArtworks];
  [v9 addObject:v8];

  return v8;
}

- (SUUIArtwork)smallestArtwork
{
  v3 = [(SUUIArtworkTemplate *)self _urlStringWithTargetSize:65.0, 65.0];
  v4 = [SUUIArtwork alloc];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  v6 = [(SUUIArtwork *)v4 initWithURL:v5 size:65.0, 65.0];

  v7 = [(SUUIArtworkTemplate *)self servedArtworks];
  [v7 addObject:v6];

  return v6;
}

- (id)_artworkWithWidth:(int64_t)a3
{
  [(SUUIArtworkTemplate *)self _sizeForWidth:?];
  v6 = v5;
  v8 = v7;
  v9 = [(SUUIArtworkTemplate *)self _artworkURLWithWidth:a3];
  v10 = [[SUUIArtwork alloc] initWithURL:v9 size:v6, v8];

  return v10;
}

- (id)_artworkURLWithWidth:(int64_t)a3
{
  [(SUUIArtworkTemplate *)self _sizeForWidth:a3];
  v4 = [(SUUIArtworkTemplate *)self _urlStringWithTargetSize:?];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];

  return v5;
}

- (CGSize)_sizeForWidth:(int64_t)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  height = self->_height;
  if (height >= 1)
  {
    width = self->_width;
    if (width >= 1)
    {
      v3 = a3;
      v4 = ceil(height / width * a3);
    }
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (id)_urlStringWithTargetSize:(CGSize)a3
{
  v3 = 0;
  if (self->_urlTemplateString)
  {
    if (a3.width > 0.0)
    {
      height = a3.height;
      if (a3.height > 0.0)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%li", a3.width];
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%li", height];
        v8 = [(NSString *)self->_urlTemplateString stringByReplacingOccurrencesOfString:@"{w}" withString:v6];
        v9 = [v8 stringByReplacingOccurrencesOfString:@"{h}" withString:v7];

        v10 = [v9 stringByReplacingOccurrencesOfString:@"{f}" withString:@"jpg"];

        v3 = [v10 stringByReplacingOccurrencesOfString:@"{c}" withString:@"bb"];
      }
    }
  }

  return v3;
}

- (id)_lookupDictionary
{
  v2 = [(SUUIArtworkTemplate *)self largestArtwork];
  v3 = [v2 _lookupDictionary];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    urlTemplateString = self->_urlTemplateString;
    v6 = [v4 urlTemplateString];
    v7 = [(NSString *)urlTemplateString isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_urlTemplateString copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v5[2] = self->_width;
  v5[1] = self->_height;
  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SUUIArtworkTemplate;
  v4 = [(SUUIArtworkTemplate *)&v8 description];
  v5 = [(SUUIArtworkTemplate *)self largestArtwork];
  v6 = [v3 stringWithFormat:@"%@: Artwork: %@", v4, v5];

  return v6;
}

- (SUUIArtworkTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUUIArtworkTemplate;
  v5 = [(SUUIArtworkTemplate *)&v9 init];
  if (v5)
  {
    v5->_height = [v4 decodeIntegerForKey:@"height"];
    v5->_width = [v4 decodeIntegerForKey:@"width"];
    v6 = [v4 decodeObjectForKey:@"urlTemplateString"];
    urlTemplateString = v5->_urlTemplateString;
    v5->_urlTemplateString = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  height = self->_height;
  v5 = a3;
  [v5 encodeInteger:height forKey:@"height"];
  [v5 encodeInteger:self->_width forKey:@"width"];
  [v5 encodeObject:self->_urlTemplateString forKey:@"urlTemplateString"];
}

- (SUUIArtworkTemplate)initWithCacheRepresentation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = SUUIArtworkTemplate;
    v5 = [(SUUIArtworkTemplate *)&v10 init];
    if (v5)
    {
      v6 = [v4 objectForKey:@"urlTemplateString"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_urlTemplateString, v6);
      }

      v7 = [v4 objectForKey:@"width"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5->_width = [v7 integerValue];
      }

      v8 = [v4 objectForKey:@"height"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5->_height = [v8 integerValue];
      }
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (NSMutableDictionary)cacheRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:self->_urlTemplateString forKey:@"urlTemplateString"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_width];
  [v3 setObject:v4 forKey:@"width"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_height];
  [v3 setObject:v5 forKey:@"height"];

  return v3;
}

@end