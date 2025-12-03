@interface OADBlipRef
+ (id)blipRefWithIndex:(int)index name:(id)name blip:(id)blip;
+ (id)blipRefWithIndex:(int)index name:(id)name blip:(id)blip effects:(id)effects;
+ (id)inflatedExtensionForGzippedExtension:(id)extension;
+ (int)blipTypeForContentType:(id)type;
+ (int)blipTypeForExtension:(id)extension;
+ (int)blipTypeForImageData:(id)data;
- (BOOL)isEqual:(id)equal;
- (OADBlipRef)initWithIndex:(int)index name:(id)name blip:(id)blip effects:(id)effects;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)addEffect:(id)effect;
- (void)setEffects:(id)effects;
@end

@implementation OADBlipRef

- (unint64_t)hash
{
  mIndex = self->mIndex;
  v4 = [(NSString *)self->mName hash]^ mIndex;
  v5 = v4 ^ [(OADBlip *)self->mBlip hash];
  if ([(NSMutableArray *)self->mEffects count])
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = [(NSMutableArray *)self->mEffects objectAtIndex:v6];
      v5 ^= [v8 hash];

      v6 = v7;
    }

    while ([(NSMutableArray *)self->mEffects count]> v7++);
  }

  return v5;
}

- (OADBlipRef)initWithIndex:(int)index name:(id)name blip:(id)blip effects:(id)effects
{
  nameCopy = name;
  blipCopy = blip;
  effectsCopy = effects;
  v20.receiver = self;
  v20.super_class = OADBlipRef;
  v13 = [(OADBlipRef *)&v20 init];
  v14 = v13;
  if (v13)
  {
    v13->mIndex = index;
    v15 = [nameCopy copy];
    mName = v14->mName;
    v14->mName = v15;

    objc_storeStrong(&v14->mBlip, blip);
    if ([effectsCopy count])
    {
      v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:effectsCopy copyItems:1];
      mEffects = v14->mEffects;
      v14->mEffects = v17;
    }
  }

  return v14;
}

+ (id)blipRefWithIndex:(int)index name:(id)name blip:(id)blip effects:(id)effects
{
  v8 = *&index;
  nameCopy = name;
  blipCopy = blip;
  effectsCopy = effects;
  v12 = [[OADBlipRef alloc] initWithIndex:v8 name:nameCopy blip:blipCopy effects:effectsCopy];

  return v12;
}

+ (id)blipRefWithIndex:(int)index name:(id)name blip:(id)blip
{
  v5 = [self blipRefWithIndex:*&index name:name blip:blip effects:0];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  mIndex = self->mIndex;
  mEffects = self->mEffects;
  mBlip = self->mBlip;
  mName = self->mName;

  return [v4 initWithIndex:mIndex name:mName blip:mBlip effects:mEffects];
}

- (void)addEffect:(id)effect
{
  effectCopy = effect;
  mEffects = self->mEffects;
  v8 = effectCopy;
  if (!mEffects)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->mEffects;
    self->mEffects = v6;

    mEffects = self->mEffects;
    effectCopy = v8;
  }

  [(NSMutableArray *)mEffects addObject:effectCopy];
}

- (void)setEffects:(id)effects
{
  effectsCopy = effects;
  v4 = [effectsCopy mutableCopy];
  mEffects = self->mEffects;
  self->mEffects = v4;
}

+ (int)blipTypeForExtension:(id)extension
{
  extensionCopy = extension;
  v4 = extensionCopy;
  if (+[OADBlipRef blipTypeForExtension:]::extToBlipTypeMap)
  {
    if (!extensionCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CBEAC0]);
    v25 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v6 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v26 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v24 = [MEMORY[0x277CCABB0] numberWithInt:3];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:4];
    v21 = v5;
    v9 = [MEMORY[0x277CCABB0] numberWithInt:5];
    v10 = [MEMORY[0x277CCABB0] numberWithInt:6];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:6];
    v22 = [MEMORY[0x277CCABB0] numberWithInt:7];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:8];
    v11 = [MEMORY[0x277CCABB0] numberWithInt:8];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:9];
    v18 = [MEMORY[0x277CCABB0] numberWithInt:10];
    v12 = [v21 initWithObjectsAndKeys:{v25, @"bmp", v6, @"jpg", v7, @"jpeg", v26, @"jp2", v24, @"png", v8, @"wmf", v9, @"emf", v10, @"pct", v23, @"pict", v22, @"gif", v20, @"tif", v11, @"tiff", v19, @"pdf", v18, @"psd", 0}];
    v13 = +[OADBlipRef blipTypeForExtension:]::extToBlipTypeMap;
    +[OADBlipRef blipTypeForExtension:]::extToBlipTypeMap = v12;

    if (!v4)
    {
LABEL_7:
      intValue = 0;
      goto LABEL_8;
    }
  }

  v14 = [+[OADBlipRef blipTypeForExtension:]::extToBlipTypeMap objectForKey:v4];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_7;
  }

  intValue = [v14 intValue];

LABEL_8:
  return intValue;
}

+ (int)blipTypeForContentType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    v4 = +[OADBlipRef blipTypeForContentType:]::contentTypeToBlipTypeMap;
    if (!+[OADBlipRef blipTypeForContentType:]::contentTypeToBlipTypeMap)
    {
      v5 = objc_alloc(MEMORY[0x277CBEAC0]);
      v26 = [MEMORY[0x277CCABB0] numberWithInt:1];
      v6 = [MEMORY[0x277CCABB0] numberWithInt:1];
      v7 = [MEMORY[0x277CCABB0] numberWithInt:2];
      v29 = [MEMORY[0x277CCABB0] numberWithInt:2];
      v25 = [MEMORY[0x277CCABB0] numberWithInt:3];
      v8 = [MEMORY[0x277CCABB0] numberWithInt:4];
      v28 = v6;
      v9 = [MEMORY[0x277CCABB0] numberWithInt:5];
      v23 = [MEMORY[0x277CCABB0] numberWithInt:6];
      v24 = [MEMORY[0x277CCABB0] numberWithInt:6];
      v22 = [MEMORY[0x277CCABB0] numberWithInt:7];
      v21 = [MEMORY[0x277CCABB0] numberWithInt:8];
      v20 = [MEMORY[0x277CCABB0] numberWithInt:8];
      v19 = [MEMORY[0x277CCABB0] numberWithInt:9];
      v27 = [MEMORY[0x277CCABB0] numberWithInt:9];
      v10 = v8;
      v11 = [MEMORY[0x277CCABB0] numberWithInt:10];
      v18 = [MEMORY[0x277CCABB0] numberWithInt:10];
      v12 = [v5 initWithObjectsAndKeys:{v26, @"image/bmp", v28, @"image/x-ms-bmp", v7, @"image/jpeg", v29, @"image/jpg", v25, @"image/png", v10, @"image/x-wmf", v9, @"image/x-emf", v23, @"image/x-pict", v24, @"image/pict", v22, @"image/gif", v21, @"image/tiff", v20, @"image/tif", v19, @"application/pdf", v27, @"application/x-pdf", v11, @"application/photoshop", v18, @"application/x-photoshop", 0}];
      v13 = +[OADBlipRef blipTypeForContentType:]::contentTypeToBlipTypeMap;
      +[OADBlipRef blipTypeForContentType:]::contentTypeToBlipTypeMap = v12;

      v4 = +[OADBlipRef blipTypeForContentType:]::contentTypeToBlipTypeMap;
    }

    v14 = [v4 objectForKey:typeCopy];
    v15 = v14;
    if (v14)
    {
      intValue = [v14 intValue];
    }

    else
    {
      intValue = 0;
    }
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

+ (int)blipTypeForImageData:(id)data
{
  dataCopy = data;
  bytes = [dataCopy bytes];
  v5 = [dataCopy length];
  v6 = v5;
  if (v5 < 4)
  {
    goto LABEL_2;
  }

  if (v5 >= 6)
  {
    if (*bytes == 66 && *(bytes + 1) == 77 && v5 == *(bytes + 2))
    {
      v7 = 1;
      goto LABEL_26;
    }

    if (v5 >= 8)
    {
      if (*bytes == 1196314761 && *(bytes + 4) == 169478669)
      {
        v7 = 3;
        goto LABEL_26;
      }

      if (v5 >= 0xB && (*bytes == -520103681 && !strcmp("JFIF", (bytes + 6)) || *bytes == -503326465 && !strcmp("Exif", (bytes + 6)) || v6 != 11 && *bytes == -385885953 && !strcmp("SPIFF", (bytes + 6))))
      {
        v7 = 2;
        goto LABEL_26;
      }
    }

    if (!strncmp(bytes, "GIF87a", 6uLL))
    {
      goto LABEL_25;
    }
  }

  if (!strncmp(bytes, "GIF89a", 6uLL))
  {
LABEL_25:
    v7 = 7;
    goto LABEL_26;
  }

  if (*bytes == 2771273 || (v8 = *bytes, *bytes == 704662861))
  {
    v7 = 8;
    goto LABEL_26;
  }

  if (v6 >= 0x16 && *bytes == -1698247209 && !*(bytes + 2))
  {
    v10 = 22;
    if (*(bytes + 16))
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 >= v10 + 18)
  {
    v11 = bytes + v10;
    if ((*v11 == 1 || *v11 == 2) && *(v11 + 2) == 9 && v6 == *(v11 + 6) && !*(v11 + 16))
    {
      v7 = 4;
      goto LABEL_26;
    }

    if (v6 >= 0x34 && *(bytes + 40) == 1179469088 && v6 == *(bytes + 48))
    {
      v7 = 5;
      goto LABEL_26;
    }

    if (v8 != 1178882085)
    {
      goto LABEL_2;
    }

LABEL_45:
    v12 = bytes + v6;
    v13 = *(bytes + v6 - 1);
    if (v13 == 10)
    {
      if (*(v12 - 2) == 13 && *(v12 - 8) == 10 && *(v12 - 9) == 13)
      {
        v14 = -7;
        goto LABEL_56;
      }

      if (*(v12 - 7) == 10)
      {
LABEL_55:
        v14 = -6;
LABEL_56:
        if (!strncmp("%%EOF", (bytes + v14 + v6), 5uLL))
        {
          v7 = 9;
          goto LABEL_26;
        }
      }
    }

    else if (v13 == 13 && *(v12 - 7) == 13)
    {
      goto LABEL_55;
    }

LABEL_2:
    v7 = 0;
    goto LABEL_26;
  }

  v7 = 0;
  if (v6 >= 0xD && v8 == 1178882085)
  {
    goto LABEL_45;
  }

LABEL_26:

  return v7;
}

+ (id)inflatedExtensionForGzippedExtension:(id)extension
{
  extensionCopy = extension;
  v4 = +[OADBlipRef inflatedExtensionForGzippedExtension:]::extMap;
  if (!+[OADBlipRef inflatedExtensionForGzippedExtension:]::extMap)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"wmf", @"wmz", @"emf", @"emz", 0}];
    v6 = +[OADBlipRef inflatedExtensionForGzippedExtension:]::extMap;
    +[OADBlipRef inflatedExtensionForGzippedExtension:]::extMap = v5;

    v4 = +[OADBlipRef inflatedExtensionForGzippedExtension:]::extMap;
  }

  v7 = [v4 objectForKey:extensionCopy];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v5 = equalCopy;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  mIndex = self->mIndex;
  if (mIndex != [v5 index] || !TCObjectEqual(self->mName, v6[2]) || !TCObjectEqual(self->mEffects, v6[3]))
  {
    goto LABEL_8;
  }

  v8 = TCObjectEqual(self->mBlip, v6[4]);
LABEL_9:

  return v8;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADBlipRef;
  v2 = [(OADBlipRef *)&v4 description];

  return v2;
}

@end