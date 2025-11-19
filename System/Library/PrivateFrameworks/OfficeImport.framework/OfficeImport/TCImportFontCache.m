@interface TCImportFontCache
+ (CGSize)stringSizeForText:(id)a3 ctFontRef:(__CTFont *)a4;
- (CGSize)stringSizeForSpaceWithFontName:(id)a3 fontSize:(int)a4;
- (CGSize)stringSizeForText:(id)a3 fontName:(id)a4 fontSize:(int)a5;
- (TCImportFontCache)init;
- (__CTFont)ctFontRefForKey:(id)a3;
- (__CTFont)fontRefForFontName:(id)a3 size:(int)a4;
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
  v3 = [(OITSUNoCopyDictionary *)self->mFontCache objectEnumerator];
  for (i = 0; ; i = v5)
  {
    v5 = [v3 nextObject];

    if (!v5)
    {
      break;
    }

    CFRelease([v5 pointerValue]);
  }

  v6.receiver = self;
  v6.super_class = TCImportFontCache;
  [(TCImportFontCache *)&v6 dealloc];
}

- (__CTFont)ctFontRefForKey:(id)a3
{
  v3 = [(OITSUNoCopyDictionary *)self->mFontCache objectForKey:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 pointerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (__CTFont)fontRefForFontName:(id)a3 size:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  if (v6)
  {
    v7 = [TCImportFontCacheKey createFontCacheKeyForName:v6 size:v4];
    if (v7)
    {
      v8 = [(TCImportFontCache *)self ctFontRefForKey:v7];
      if (!v8)
      {
        v8 = CTFontCreateWithNameAndOptions(v6, v4, 0, 1uLL);
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

+ (CGSize)stringSizeForText:(id)a3 ctFontRef:(__CTFont *)a4
{
  v5 = a3;
  AdvancesForGlyphs = *(MEMORY[0x277CBF3A0] + 16);
  height = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v5 length];
  if (v5)
  {
    if (a4)
    {
      v9 = v8;
      if (v8)
      {
        v10 = malloc_type_malloc(2 * v8, 0x1000040BDFB0063uLL);
        v11 = malloc_type_malloc(2 * v9 + 2, 0x1000040BDFB0063uLL);
        [v5 getCharacters:v11 range:{0, v9}];
        CTFontGetGlyphsForCharacters(a4, v11, v10, v9);
        BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(a4, kCTFontOrientationDefault, v10, 0, v9);
        height = BoundingRectsForGlyphs.size.height;
        AdvancesForGlyphs = CTFontGetAdvancesForGlyphs(a4, kCTFontOrientationDefault, v10, 0, v9);
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

- (CGSize)stringSizeForSpaceWithFontName:(id)a3 fontSize:(int)a4
{
  v4 = [(TCImportFontCache *)self fontRefForFontName:a3 size:*&a4];
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

- (CGSize)stringSizeForText:(id)a3 fontName:(id)a4 fontSize:(int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = a4;
  [TCImportFontCache stringSizeForText:v8 ctFontRef:[(TCImportFontCache *)self fontRefForFontName:v9 size:v5]];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

@end