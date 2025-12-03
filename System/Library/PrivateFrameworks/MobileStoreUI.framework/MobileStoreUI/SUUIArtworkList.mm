@interface SUUIArtworkList
+ (BOOL)canHandleArtworkFormat:(id)format;
+ (id)artworkForSize:(int64_t)size artworkDictionaries:(id)dictionaries;
- (BOOL)isEqual:(id)equal;
- (NSArray)_lookupArray;
- (NSMutableDictionary)cacheRepresentation;
- (NSString)description;
- (SUUIArtwork)largestArtwork;
- (SUUIArtwork)smallestArtwork;
- (SUUIArtworkList)initWithArtworkListArray:(id)array;
- (SUUIArtworkList)initWithCacheRepresentation:(id)representation;
- (SUUIArtworkList)initWithCoder:(id)coder;
- (SUUIArtworkList)initWithLookupArray:(id)array;
- (id)artworkForSize:(int64_t)size;
- (id)artworkURLForSize:(int64_t)size;
- (id)artworkWithWidth:(int64_t)width;
- (id)bestArtworkForScaledSize:(CGSize)size;
- (id)bestArtworkForSize:(CGSize)size;
- (id)copyWithZone:(_NSZone *)zone;
- (id)preferredExactArtworkForSize:(CGSize)size;
- (unint64_t)hash;
- (void)setArtworks:(id)artworks;
@end

@implementation SUUIArtworkList

- (SUUIArtworkList)initWithArtworkListArray:(id)array
{
  v25 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v23.receiver = self;
  v23.super_class = SUUIArtworkList;
  v5 = [(SUUIArtworkList *)&v23 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    artworks = v5->_artworks;
    v5->_artworks = v6;

    if ([arrayCopy count] == 1)
    {
      firstObject = [arrayCopy firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        firstObject2 = [arrayCopy firstObject];

        arrayCopy = firstObject2;
      }
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    arrayCopy = arrayCopy;
    v11 = [arrayCopy countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(arrayCopy);
          }

          v15 = *(*(&v19 + 1) + 8 * v14);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [SUUIArtwork alloc];
            v17 = [(SUUIArtwork *)v16 initWithArtworkDictionary:v15, v19];
            if (v17)
            {
              [(NSMutableArray *)v5->_artworks addObject:v17];
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [arrayCopy countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v12);
    }

    [(NSMutableArray *)v5->_artworks sortUsingComparator:&__block_literal_global_52];
  }

  return v5;
}

uint64_t __44__SUUIArtworkList_initWithArtworkListArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 width];
  if (v6 <= [v5 width])
  {
    v8 = [v4 width];
    if (v8 >= [v5 width])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (SUUIArtworkList)initWithLookupArray:(id)array
{
  v23 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v21.receiver = self;
  v21.super_class = SUUIArtworkList;
  v5 = [(SUUIArtworkList *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    artworks = v5->_artworks;
    v5->_artworks = v6;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = arrayCopy;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [SUUIArtwork alloc];
            v15 = [(SUUIArtwork *)v14 initWithArtworkDictionary:v13, v17];
            if (v15)
            {
              [(NSMutableArray *)v5->_artworks addObject:v15];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    [(NSMutableArray *)v5->_artworks sortUsingComparator:&__block_literal_global_5];
  }

  return v5;
}

uint64_t __39__SUUIArtworkList_initWithLookupArray___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 width];
  if (v6 <= [v5 width])
  {
    v8 = [v4 width];
    if (v8 >= [v5 width])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)artworkForSize:(int64_t)size
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_artworks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v5)
  {
    v13 = 0;
    goto LABEL_25;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v19;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v10 = 0;
    do
    {
      if (*v19 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      v12 = [v11 width] - size;
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = v11;

        v7 = v13;
        v9 = v12;
        if (!v12)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (!v12)
        {
          v13 = v11;

          goto LABEL_25;
        }

        if (v9 < 0)
        {
          if (v12 > v9)
          {
            goto LABEL_16;
          }
        }

        else if (v12 >= 1 && v12 < v9)
        {
LABEL_16:
          v15 = v11;

          v7 = v15;
          v9 = v12;
        }
      }

      ++v10;
    }

    while (v6 != v10);
    v16 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    v6 = v16;
    v13 = v7;
  }

  while (v16);
LABEL_25:

  return v13;
}

- (id)artworkURLForSize:(int64_t)size
{
  v3 = [(SUUIArtworkList *)self artworkForSize:size];
  v4 = [v3 URL];

  return v4;
}

- (id)artworkWithWidth:(int64_t)width
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_artworks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 width] == width)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)bestArtworkForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_artworks;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      if (width <= [v11 width] || height <= objc_msgSend(v11, "height"))
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    lastObject = v11;

    if (lastObject)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_10:
  }

  if ([(NSMutableArray *)self->_artworks count])
  {
    lastObject = [(NSMutableArray *)self->_artworks lastObject];
  }

  else
  {
    lastObject = 0;
  }

LABEL_15:

  return lastObject;
}

- (id)bestArtworkForScaledSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = v7;

  v9 = ceil(width * v8);
  v10 = ceil(height * v8);

  return [(SUUIArtworkList *)self bestArtworkForSize:v9, v10];
}

- (id)preferredExactArtworkForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v28 = *MEMORY[0x277D85DE8];
  [(SUUIArtworkList *)self artworks];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v26 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_27;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v24;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  while (2)
  {
    for (i = 0; i != v7; ++i)
    {
      v12 = v10;
      if (*v24 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v23 + 1) + 8 * i);
      v14 = objc_autoreleasePoolPush();
      height = [v13 height];
      width = [v13 width];
      if (height == height && width == width)
      {
        v21 = v13;

        objc_autoreleasePoolPop(v14);
        v8 = v21;
        goto LABEL_27;
      }

      height2 = [v13 height];
      if (!v12)
      {
LABEL_19:
        v10 = v12;
        goto LABEL_22;
      }

      v10 = (height2 - height);
      if (v12 != 0x7FFFFFFFFFFFFFFFLL && v10)
      {
        if (v12 < 0)
        {
          if (v12 >= v10)
          {
            goto LABEL_19;
          }
        }

        else if (v10 < 1 || v12 <= v10)
        {
          goto LABEL_19;
        }
      }

      v20 = v13;

      v8 = v20;
LABEL_22:
      objc_autoreleasePoolPop(v14);
    }

    v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      continue;
    }

    break;
  }

LABEL_27:

  return v8;
}

+ (id)artworkForSize:(int64_t)size artworkDictionaries:(id)dictionaries
{
  v24 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [dictionariesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_23;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v20;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(dictionariesCopy);
      }

      v12 = *(*(&v19 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [[SUUIArtwork alloc] initWithArtworkDictionary:v12];
        width = [(SUUIArtwork *)v13 width];
        if (!v10)
        {
          goto LABEL_15;
        }

        v15 = width - size;
        if (v10 != 0x7FFFFFFFFFFFFFFFLL && v15)
        {
          if (v10 < 0)
          {
            if (v15 <= v10)
            {
              goto LABEL_15;
            }
          }

          else if (v15 < 1 || v15 >= v10)
          {
LABEL_15:
            v15 = v10;
LABEL_18:

            v10 = v15;
            continue;
          }
        }

        v17 = v13;

        v8 = v17;
        goto LABEL_18;
      }
    }

    v7 = [dictionariesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v7);
LABEL_23:

  return v8;
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
  lastObject = [(NSMutableArray *)self->_artworks count];
  if (lastObject)
  {
    lastObject = [(NSMutableArray *)self->_artworks lastObject];
  }

  return lastObject;
}

- (void)setArtworks:(id)artworks
{
  if (self->_artworks != artworks)
  {
    v5 = [artworks mutableCopy];
    artworks = self->_artworks;
    self->_artworks = v5;

    MEMORY[0x2821F96F8](v5, artworks);
  }
}

- (SUUIArtwork)smallestArtwork
{
  v3 = [(NSMutableArray *)self->_artworks count];
  if (v3)
  {
    v3 = [(NSMutableArray *)self->_artworks objectAtIndex:0];
  }

  return v3;
}

- (NSArray)_lookupArray
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_artworks;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        _lookupDictionary = [*(*(&v11 + 1) + 8 * i) _lookupDictionary];
        if (_lookupDictionary)
        {
          [array addObject:_lookupDictionary];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    artworks = self->_artworks;
    artworks = [equalCopy artworks];
    v7 = [(NSMutableArray *)artworks isEqualToArray:artworks];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_artworks count];
  artworks = self->_artworks;
  if (v3)
  {
    v5 = [(NSMutableArray *)artworks objectAtIndex:0];
    v6 = [v5 hash];

    return v6;
  }

  else
  {

    return [(NSMutableArray *)artworks hash];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSMutableArray *)self->_artworks copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SUUIArtworkList;
  v4 = [(SUUIArtworkList *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: Artwork: %@", v4, self->_artworks];

  return v5;
}

- (SUUIArtworkList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUUIArtworkList;
  v5 = [(SUUIArtworkList *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"artworks"];
    artworks = v5->_artworks;
    v5->_artworks = v6;
  }

  return v5;
}

- (SUUIArtworkList)initWithCacheRepresentation:(id)representation
{
  representationCopy = representation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11.receiver = self;
    v11.super_class = SUUIArtworkList;
    v5 = [(SUUIArtworkList *)&v11 init];
    if (v5)
    {
      v6 = [representationCopy objectForKey:@"array"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = objc_opt_class();
        v8 = SUUICacheCodingDecodeArray(v6, v7);
        artworks = v5->_artworks;
        v5->_artworks = v8;
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
  v4 = SUUICacheCodingEncodeArray(self->_artworks);
  [v3 setObject:v4 forKey:@"array"];

  return v3;
}

@end