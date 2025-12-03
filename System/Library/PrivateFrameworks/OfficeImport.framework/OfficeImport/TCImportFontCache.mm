@interface TCImportFontCache
+ (CGSize)stringSizeForText:(id)text ctFontRef:(__CTFont *)ref;
- (CGSize)stringSizeForSpaceWithFontName:(id)name fontSize:(int)size;
- (CGSize)stringSizeForText:(id)text fontName:(id)name fontSize:(int)size;
- (TCImportFontCache)init;
- (__CTFont)ctFontRefForKey:(id)key;
- (__CTFont)fontRefForFontName:(id)name size:(int)size;
- (void)dealloc;
@end

@implementation TCImportFontCache

- (TCImportFontCache)init
{
  v8.receiver = self;
  v8.super_class = TCImportFontCache;
  v2 = [(TCImportFontCache *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(OITSUNoCopyDictionary);
    mFontCache = v2->mFontCache;
    v2->mFontCache = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mFontNameCache = v2->mFontNameCache;
    v2->mFontNameCache = v5;
  }

  return v2;
}

- (void)dealloc
{
  objectEnumerator = [(OITSUNoCopyDictionary *)self->mFontCache objectEnumerator];
  for (i = 0; ; i = nextObject)
  {
    nextObject = [objectEnumerator nextObject];

    if (!nextObject)
    {
      break;
    }

    CFRelease([nextObject pointerValue]);
  }

  v6.receiver = self;
  v6.super_class = TCImportFontCache;
  [(TCImportFontCache *)&v6 dealloc];
}

- (__CTFont)ctFontRefForKey:(id)key
{
  v3 = [(OITSUNoCopyDictionary *)self->mFontCache objectForKey:key];
  v4 = v3;
  if (v3)
  {
    pointerValue = [v3 pointerValue];
  }

  else
  {
    pointerValue = 0;
  }

  return pointerValue;
}

- (__CTFont)fontRefForFontName:(id)name size:(int)size
{
  v4 = *&size;
  nameCopy = name;
  if (nameCopy)
  {
    v7 = [TCImportFontCacheKey createFontCacheKeyForName:nameCopy size:v4];
    if (v7)
    {
      v8 = [(TCImportFontCache *)self ctFontRefForKey:v7];
      if (!v8)
      {
        v8 = CTFontCreateWithNameAndOptions(nameCopy, v4, 0, 1uLL);
        if (v8)
        {
          mFontCache = self->mFontCache;
          v10 = [MEMORY[0x277CCAE60] valueWithPointer:v8];
          [(OITSUNoCopyDictionary *)mFontCache setObject:v10 forUncopiedKey:v7];
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (CGSize)stringSizeForText:(id)text ctFontRef:(__CTFont *)ref
{
  textCopy = text;
  AdvancesForGlyphs = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [textCopy length];
  if (textCopy)
  {
    if (ref)
    {
      v9 = v8;
      if (v8)
      {
        v10 = malloc_type_malloc(2 * v8, 0x1000040BDFB0063uLL);
        v11 = malloc_type_malloc(2 * v9 + 2, 0x1000040BDFB0063uLL);
        [textCopy getCharacters:v11 range:{0, v9}];
        CTFontGetGlyphsForCharacters(ref, v11, v10, v9);
        BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(ref, kCTFontOrientationDefault, v10, 0, v9);
        height = BoundingRectsForGlyphs.size.height;
        AdvancesForGlyphs = CTFontGetAdvancesForGlyphs(ref, kCTFontOrientationDefault, v10, 0, v9);
        free(v10);
        free(v11);
      }
    }
  }

  v12 = AdvancesForGlyphs;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)stringSizeForSpaceWithFontName:(id)name fontSize:(int)size
{
  v4 = [(TCImportFontCache *)self fontRefForFontName:name size:*&size];
  glyphs = -1;
  characters = 32;
  CTFontGetGlyphsForCharacters(v4, &characters, &glyphs, 1);
  advances = *MEMORY[0x277CBF3A8];
  CTFontGetAdvancesForGlyphs(v4, kCTFontOrientationDefault, &glyphs, &advances, 1);
  width = advances.width;
  height = advances.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)stringSizeForText:(id)text fontName:(id)name fontSize:(int)size
{
  v5 = *&size;
  textCopy = text;
  nameCopy = name;
  [TCImportFontCache stringSizeForText:textCopy ctFontRef:[(TCImportFontCache *)self fontRefForFontName:nameCopy size:v5]];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

@end