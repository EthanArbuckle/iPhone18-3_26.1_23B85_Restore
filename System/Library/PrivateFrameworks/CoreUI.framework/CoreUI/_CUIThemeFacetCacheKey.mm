@interface _CUIThemeFacetCacheKey
- (BOOL)isEqual:(id)equal;
- (_CUIThemeFacetCacheKey)initWithKeyList:(const _renditionkeytoken *)list themeIndex:(int64_t)index;
- (unint64_t)hash64;
@end

@implementation _CUIThemeFacetCacheKey

- (unint64_t)hash64
{
  value_low = LOBYTE(self->keyList[0].value);
  value = self->keyList[1].value;
  identifier = self->keyList[1].identifier;
  if (identifier | value)
  {
    v5 = 0;
    p_value = &self->keyList[2].value;
    do
    {
      v7 = identifier == 2;
      v8 = (value & 0xF) << (4 * identifier + 4);
      v9 = value << 8;
      if (v7)
      {
        v8 = v9;
      }

      value_low += v8;
      value = *p_value;
      identifier = *(p_value - 1);
      if (identifier | value)
      {
        v10 = v5 >= 0x14;
      }

      else
      {
        v10 = 1;
      }

      ++v5;
      p_value += 2;
    }

    while (!v10);
  }

  return value_low + (self->themeIndex << 56);
}

- (_CUIThemeFacetCacheKey)initWithKeyList:(const _renditionkeytoken *)list themeIndex:(int64_t)index
{
  v11.receiver = self;
  v11.super_class = _CUIThemeFacetCacheKey;
  v6 = [(_CUIThemeFacetCacheKey *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->themeIndex = index;
    v8 = CUISystemThemeRenditionKeyFormat();
    CUIRenditionKeyStandardize(v7->keyList, &list->identifier, v8);
    v9 = CUIRenditionKeyValueForAttribute(&list->identifier, 12);
    CUIRenditionKeySetValueForAttribute(&v7->keyList[0].identifier, 12, v9, 0x16u);
    v7->hashPrecalc = [(_CUIThemeFacetCacheKey *)v7 hash64];
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (self->themeIndex == *(equal + 12))
  {
    v3 = (equal + 10);
    p_value = &self->keyList[0].value;
    v5 = -1;
    while (*p_value == *v3 && *(p_value - 1) == *(v3 - 1))
    {
      ++v5;
      v3 += 2;
      p_value += 2;
      if (v5 == 20)
      {
        return 1;
      }
    }
  }

  return 0;
}

@end