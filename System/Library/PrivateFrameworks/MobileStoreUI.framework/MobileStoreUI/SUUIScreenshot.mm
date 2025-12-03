@interface SUUIScreenshot
- (CGSize)sizeForVariant:(id)variant;
- (NSMutableDictionary)cacheRepresentation;
- (SUUIScreenshot)initWithCacheRepresentation:(id)representation;
- (SUUIScreenshot)initWithScreenshotDictionary:(id)dictionary;
- (id)URLForVariant:(id)variant;
- (id)_firstVariant;
- (id)_initSUUIScreenshot;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_addURLsFromDictionary:(id)dictionary withRemoteLocalKeysMap:(id)map;
- (void)setArtwork:(id)artwork forVariant:(id)variant;
@end

@implementation SUUIScreenshot

- (id)_initSUUIScreenshot
{
  v3.receiver = self;
  v3.super_class = SUUIScreenshot;
  result = [(SUUIScreenshot *)&v3 init];
  if (result)
  {
    *(result + 2) = atomic_fetch_add_explicit(&_initSUUIScreenshot_sUniqueID, 1uLL, memory_order_relaxed) + 1;
  }

  return result;
}

- (SUUIScreenshot)initWithScreenshotDictionary:(id)dictionary
{
  v39[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  _initSUUIScreenshot = [(SUUIScreenshot *)self _initSUUIScreenshot];
  if (_initSUUIScreenshot)
  {
    v6 = [dictionaryCopy objectForKey:@"orientation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      orientation = _initSUUIScreenshot->_orientation;
      _initSUUIScreenshot->_orientation = v7;
    }

    v35 = v6;
    v38 = @"low-dpi";
    v39[0] = @"high-dpi";
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    urls = _initSUUIScreenshot->_urls;
    _initSUUIScreenshot->_urls = v9;

    v11 = &v38;
    v12 = 1;
    do
    {
      v13 = v12;
      v14 = *v11;
      v15 = [dictionaryCopy objectForKey:{*v11, v35}];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 objectForKey:@"url"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v16];
          if (v17)
          {
            [(NSMutableDictionary *)_initSUUIScreenshot->_urls setObject:v17 forKey:v14];
          }
        }
      }

      v12 = 0;
      v11 = v39;
    }

    while ((v13 & 1) != 0);
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sizes = _initSUUIScreenshot->_sizes;
    _initSUUIScreenshot->_sizes = v18;

    v20 = [dictionaryCopy objectForKey:@"width"];

    v21 = [dictionaryCopy objectForKey:@"height"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        intValue = [v20 intValue];
        intValue2 = [v21 intValue];
        v24 = _initSUUIScreenshot->_sizes;
        v25 = [MEMORY[0x277CCAE60] valueWithCGSize:{intValue, intValue2}];
        [(NSMutableDictionary *)v24 setObject:v25 forKey:@"low-dpi"];
      }
    }

    v26 = [dictionaryCopy objectForKey:@"width2x"];

    v27 = [dictionaryCopy objectForKey:@"height2x"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        intValue3 = [v26 intValue];
        intValue4 = [v27 intValue];
        v30 = _initSUUIScreenshot->_sizes;
        v31 = [MEMORY[0x277CCAE60] valueWithCGSize:{intValue3, intValue4}];
        [(NSMutableDictionary *)v30 setObject:v31 forKey:@"high-dpi"];
      }
    }

    v36[0] = @"url";
    v36[1] = @"url2x";
    v37[0] = @"low-dpi";
    v37[1] = @"high-dpi";
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    [(SUUIScreenshot *)_initSUUIScreenshot _addURLsFromDictionary:dictionaryCopy withRemoteLocalKeysMap:v32];

    for (i = 1; i != -1; --i)
    {
    }
  }

  return _initSUUIScreenshot;
}

- (void)setArtwork:(id)artwork forVariant:(id)variant
{
  artworkCopy = artwork;
  variantCopy = variant;
  width = [artworkCopy width];
  height = [artworkCopy height];
  if (![(SUUIScreenshot *)self numberOfVariants])
  {
    v9 = @"portrait";
    orientation = self->_orientation;
    if (width > height)
    {
      v9 = @"landscape";
    }

    self->_orientation = &v9->isa;
  }

  sizes = self->_sizes;
  if (!sizes)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v13 = self->_sizes;
    self->_sizes = v12;

    sizes = self->_sizes;
  }

  v14 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
  [(NSMutableDictionary *)sizes setObject:v14 forKey:variantCopy];

  urls = self->_urls;
  if (!urls)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = self->_urls;
    self->_urls = v16;

    urls = self->_urls;
  }

  v18 = [artworkCopy URL];
  [(NSMutableDictionary *)urls setObject:v18 forKey:variantCopy];
}

- (CGSize)sizeForVariant:(id)variant
{
  v4 = [(NSMutableDictionary *)self->_sizes objectForKey:variant];
  if (v4)
  {
    v5 = v4;
  }

  else if (![(NSMutableDictionary *)self->_sizes count]|| (sizes = self->_sizes, [(SUUIScreenshot *)self _firstVariant], v11 = objc_claimAutoreleasedReturnValue(), [(NSMutableDictionary *)sizes objectForKey:v11], v5 = objc_claimAutoreleasedReturnValue(), v11, !v5))
  {
    v7 = *MEMORY[0x277CBF3A8];
    v9 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_7;
  }

  [v5 CGSizeValue];
  v7 = v6;
  v9 = v8;

LABEL_7:
  v12 = v7;
  v13 = v9;
  result.height = v13;
  result.width = v12;
  return result;
}

- (id)URLForVariant:(id)variant
{
  v4 = [(NSMutableDictionary *)self->_urls objectForKey:variant];
  if (!v4)
  {
    if ([(NSMutableDictionary *)self->_urls count])
    {
      urls = self->_urls;
      _firstVariant = [(SUUIScreenshot *)self _firstVariant];
      v4 = [(NSMutableDictionary *)urls objectForKey:_firstVariant];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_orientation copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSMutableDictionary *)self->_sizes mutableCopyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSMutableDictionary *)self->_urls mutableCopyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (SUUIScreenshot)initWithCacheRepresentation:(id)representation
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _initSUUIScreenshot = [(SUUIScreenshot *)self _initSUUIScreenshot];
    if (_initSUUIScreenshot)
    {
      v6 = [representationCopy objectForKey:@"orient"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&_initSUUIScreenshot->_orientation, v6);
      }

      v7 = [representationCopy objectForKey:@"urls"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        urls = _initSUUIScreenshot->_urls;
        _initSUUIScreenshot->_urls = v8;

        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __46__SUUIScreenshot_initWithCacheRepresentation___block_invoke;
        v11[3] = &unk_2798FBFF8;
        v12 = _initSUUIScreenshot;
        [v7 enumerateKeysAndObjectsUsingBlock:v11];
      }
    }
  }

  else
  {

    _initSUUIScreenshot = 0;
  }

  return _initSUUIScreenshot;
}

void __46__SUUIScreenshot_initWithCacheRepresentation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5];
      if (v6)
      {
        [*(*(a1 + 32) + 24) setObject:v6 forKey:v7];
      }
    }
  }
}

- (NSMutableDictionary)cacheRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  orientation = self->_orientation;
  if (orientation)
  {
    [dictionary setObject:orientation forKey:@"orient"];
  }

  if (self->_urls)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    urls = self->_urls;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__SUUIScreenshot_cacheRepresentation__block_invoke;
    v10[3] = &unk_2798FE838;
    v11 = v6;
    v8 = v6;
    [(NSMutableDictionary *)urls enumerateKeysAndObjectsUsingBlock:v10];
    [v4 setObject:v8 forKey:@"urls"];
  }

  return v4;
}

void __37__SUUIScreenshot_cacheRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 absoluteString];
  [v4 setObject:v6 forKey:v5];
}

- (void)_addURLsFromDictionary:(id)dictionary withRemoteLocalKeysMap:(id)map
{
  dictionaryCopy = dictionary;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__SUUIScreenshot__addURLsFromDictionary_withRemoteLocalKeysMap___block_invoke;
  v8[3] = &unk_2798FE860;
  v9 = dictionaryCopy;
  selfCopy = self;
  v7 = dictionaryCopy;
  [map enumerateKeysAndObjectsUsingBlock:v8];
}

void __64__SUUIScreenshot__addURLsFromDictionary_withRemoteLocalKeysMap___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v5 = [*(a1 + 32) objectForKey:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v5];
    if (v6)
    {
      [*(*(a1 + 40) + 24) setObject:v6 forKey:v7];
    }
  }
}

- (id)_firstVariant
{
  v2 = [(NSMutableDictionary *)self->_urls keysSortedByValueUsingComparator:&__block_literal_global_69];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end