@interface SUUIArtworkTemplate
+ (BOOL)canHandleArtworkFormat:(id)format;
- (BOOL)isEqual:(id)equal;
- (CGSize)_sizeForWidth:(int64_t)width;
- (NSMutableDictionary)cacheRepresentation;
- (NSString)description;
- (SUUIArtwork)largestArtwork;
- (SUUIArtwork)smallestArtwork;
- (SUUIArtworkTemplate)initWithCacheRepresentation:(id)representation;
- (SUUIArtworkTemplate)initWithCoder:(id)coder;
- (SUUIArtworkTemplate)initWithTemplateDictionary:(id)dictionary;
- (id)_artworkURLWithWidth:(int64_t)width;
- (id)_artworkWithWidth:(int64_t)width;
- (id)_lookupDictionary;
- (id)_urlStringWithTargetSize:(CGSize)size;
- (id)artworkForSize:(int64_t)size;
- (id)artworkURLForSize:(int64_t)size;
- (id)artworkWithWidth:(int64_t)width;
- (id)bestArtworkForScaledSize:(CGSize)size;
- (id)bestArtworkForSize:(CGSize)size;
- (id)copyWithZone:(_NSZone *)zone;
- (id)preferredExactArtworkForSize:(CGSize)size;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUUIArtworkTemplate

- (SUUIArtworkTemplate)initWithTemplateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = SUUIArtworkTemplate;
  v5 = [(SUUIArtworkTemplate *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    servedArtworks = v5->_servedArtworks;
    v5->_servedArtworks = v6;

    v8 = [dictionaryCopy objectForKey:@"url"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_urlTemplateString, v8);
    }

    v9 = [dictionaryCopy objectForKey:@"width"];

    if (objc_opt_respondsToSelector())
    {
      v5->_width = [v9 integerValue];
    }

    v10 = [dictionaryCopy objectForKey:@"height"];

    if (objc_opt_respondsToSelector())
    {
      v5->_height = [v10 integerValue];
    }
  }

  return v5;
}

- (id)artworkForSize:(int64_t)size
{
  v4 = [(SUUIArtworkTemplate *)self artworkWithWidth:size];
  servedArtworks = [(SUUIArtworkTemplate *)self servedArtworks];
  [servedArtworks addObject:v4];

  return v4;
}

- (id)artworkURLForSize:(int64_t)size
{
  v4 = [(SUUIArtworkTemplate *)self artworkForSize:size];
  servedArtworks = [(SUUIArtworkTemplate *)self servedArtworks];
  [servedArtworks addObject:v4];

  v6 = [v4 URL];

  return v6;
}

- (id)artworkWithWidth:(int64_t)width
{
  v4 = [(SUUIArtworkTemplate *)self _artworkWithWidth:width];
  servedArtworks = [(SUUIArtworkTemplate *)self servedArtworks];
  [servedArtworks addObject:v4];

  return v4;
}

- (id)bestArtworkForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [(SUUIArtworkTemplate *)self _urlStringWithTargetSize:?];
  v7 = [SUUIArtwork alloc];
  v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];
  height = [(SUUIArtwork *)v7 initWithURL:v8 size:width, height];

  servedArtworks = [(SUUIArtworkTemplate *)self servedArtworks];
  [servedArtworks addObject:height];

  return height;
}

- (id)bestArtworkForScaledSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = v7;

  v9 = [(SUUIArtworkTemplate *)self bestArtworkForSize:ceil(width * v8), ceil(height * v8)];
  servedArtworks = [(SUUIArtworkTemplate *)self servedArtworks];
  [servedArtworks addObject:v9];

  return v9;
}

- (id)preferredExactArtworkForSize:(CGSize)size
{
  v4 = [(SUUIArtworkTemplate *)self bestArtworkForSize:size.width, size.height];
  servedArtworks = [(SUUIArtworkTemplate *)self servedArtworks];
  [servedArtworks addObject:v4];

  return v4;
}

+ (BOOL)canHandleArtworkFormat:(id)format
{
  formatCopy = format;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (SUUIArtwork)largestArtwork
{
  width = self->_width;
  height = self->_height;
  height = [(SUUIArtworkTemplate *)self _urlStringWithTargetSize:width, height];
  v6 = [SUUIArtwork alloc];
  v7 = [MEMORY[0x277CBEBC0] URLWithString:height];
  height2 = [(SUUIArtwork *)v6 initWithURL:v7 size:width, height];

  servedArtworks = [(SUUIArtworkTemplate *)self servedArtworks];
  [servedArtworks addObject:height2];

  return height2;
}

- (SUUIArtwork)smallestArtwork
{
  v3 = [(SUUIArtworkTemplate *)self _urlStringWithTargetSize:65.0, 65.0];
  v4 = [SUUIArtwork alloc];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  v6 = [(SUUIArtwork *)v4 initWithURL:v5 size:65.0, 65.0];

  servedArtworks = [(SUUIArtworkTemplate *)self servedArtworks];
  [servedArtworks addObject:v6];

  return v6;
}

- (id)_artworkWithWidth:(int64_t)width
{
  [(SUUIArtworkTemplate *)self _sizeForWidth:?];
  v6 = v5;
  v8 = v7;
  v9 = [(SUUIArtworkTemplate *)self _artworkURLWithWidth:width];
  v10 = [[SUUIArtwork alloc] initWithURL:v9 size:v6, v8];

  return v10;
}

- (id)_artworkURLWithWidth:(int64_t)width
{
  [(SUUIArtworkTemplate *)self _sizeForWidth:width];
  v4 = [(SUUIArtworkTemplate *)self _urlStringWithTargetSize:?];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];

  return v5;
}

- (CGSize)_sizeForWidth:(int64_t)width
{
  widthCopy = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  height = self->_height;
  if (height >= 1)
  {
    width = self->_width;
    if (width >= 1)
    {
      widthCopy = width;
      v4 = ceil(height / width * width);
    }
  }

  result.height = v4;
  result.width = widthCopy;
  return result;
}

- (id)_urlStringWithTargetSize:(CGSize)size
{
  v3 = 0;
  if (self->_urlTemplateString)
  {
    if (size.width > 0.0)
    {
      height = size.height;
      if (size.height > 0.0)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%li", size.width];
        height = [MEMORY[0x277CCACA8] stringWithFormat:@"%li", height];
        v8 = [(NSString *)self->_urlTemplateString stringByReplacingOccurrencesOfString:@"{w}" withString:v6];
        v9 = [v8 stringByReplacingOccurrencesOfString:@"{h}" withString:height];

        v10 = [v9 stringByReplacingOccurrencesOfString:@"{f}" withString:@"jpg"];

        v3 = [v10 stringByReplacingOccurrencesOfString:@"{c}" withString:@"bb"];
      }
    }
  }

  return v3;
}

- (id)_lookupDictionary
{
  largestArtwork = [(SUUIArtworkTemplate *)self largestArtwork];
  _lookupDictionary = [largestArtwork _lookupDictionary];

  return _lookupDictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    urlTemplateString = self->_urlTemplateString;
    urlTemplateString = [equalCopy urlTemplateString];
    v7 = [(NSString *)urlTemplateString isEqualToString:urlTemplateString];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_urlTemplateString copyWithZone:zone];
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
  largestArtwork = [(SUUIArtworkTemplate *)self largestArtwork];
  v6 = [v3 stringWithFormat:@"%@: Artwork: %@", v4, largestArtwork];

  return v6;
}

- (SUUIArtworkTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUUIArtworkTemplate;
  v5 = [(SUUIArtworkTemplate *)&v9 init];
  if (v5)
  {
    v5->_height = [coderCopy decodeIntegerForKey:@"height"];
    v5->_width = [coderCopy decodeIntegerForKey:@"width"];
    v6 = [coderCopy decodeObjectForKey:@"urlTemplateString"];
    urlTemplateString = v5->_urlTemplateString;
    v5->_urlTemplateString = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  height = self->_height;
  coderCopy = coder;
  [coderCopy encodeInteger:height forKey:@"height"];
  [coderCopy encodeInteger:self->_width forKey:@"width"];
  [coderCopy encodeObject:self->_urlTemplateString forKey:@"urlTemplateString"];
}

- (SUUIArtworkTemplate)initWithCacheRepresentation:(id)representation
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10.receiver = self;
    v10.super_class = SUUIArtworkTemplate;
    v5 = [(SUUIArtworkTemplate *)&v10 init];
    if (v5)
    {
      v6 = [representationCopy objectForKey:@"urlTemplateString"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_urlTemplateString, v6);
      }

      v7 = [representationCopy objectForKey:@"width"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5->_width = [v7 integerValue];
      }

      v8 = [representationCopy objectForKey:@"height"];

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