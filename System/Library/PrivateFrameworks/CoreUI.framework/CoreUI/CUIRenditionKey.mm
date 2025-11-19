@interface CUIRenditionKey
+ (CUIRenditionKey)renditionKeyWithKeyList:(const _renditionkeytoken *)a3;
+ (id)renditionKey;
+ (void)initialize;
- (CUIRenditionKey)initWithCoder:(id)a3;
- (CUIRenditionKey)initWithKeyList:(const _renditionkeytoken *)a3;
- (CUIRenditionKey)initWithThemeElement:(int64_t)a3 themePart:(int64_t)a4 themeSize:(int64_t)a5 themeDirection:(int64_t)a6 themeValue:(int64_t)a7 themeDimension1:(int64_t)a8 themeDimension2:(int64_t)a9 themeState:(int64_t)a10 themePresentationState:(int64_t)a11 themeLayer:(int64_t)a12 themeScale:(int64_t)a13 themeIdentifier:(int64_t)a14;
- (const)keyList;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionBasedOnKeyFormat:(const _renditionkeyfmt *)a3;
- (id)nameOfAttributeName:(int)a3;
- (int64_t)themeAppearance;
- (int64_t)themeDeploymentTarget;
- (int64_t)themeDimension1;
- (int64_t)themeDimension2;
- (int64_t)themeDirection;
- (int64_t)themeDisplayGamut;
- (int64_t)themeElement;
- (int64_t)themeGlyphSize;
- (int64_t)themeGlyphWeight;
- (int64_t)themeGraphicsClass;
- (int64_t)themeIdentifier;
- (int64_t)themeIdiom;
- (int64_t)themeLayer;
- (int64_t)themeLocalization;
- (int64_t)themeMemoryClass;
- (int64_t)themePart;
- (int64_t)themePresentationState;
- (int64_t)themePreviousState;
- (int64_t)themePreviousValue;
- (int64_t)themeScale;
- (int64_t)themeSize;
- (int64_t)themeSizeClassHorizontal;
- (int64_t)themeSizeClassVertical;
- (int64_t)themeState;
- (int64_t)themeSubtype;
- (int64_t)themeValue;
- (void)_expandKeyIfNecessaryForCount:(uint64_t)a1;
- (void)copyValuesFromKeyList:(const _renditionkeytoken *)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)removeValueForKeyTokenIdentifier:(int64_t)a3;
- (void)setThemeAppearance:(int64_t)a3;
- (void)setThemeDeploymentTarget:(int64_t)a3;
- (void)setThemeDimension1:(int64_t)a3;
- (void)setThemeDimension2:(int64_t)a3;
- (void)setThemeDirection:(int64_t)a3;
- (void)setThemeDisplayGamut:(int64_t)a3;
- (void)setThemeElement:(int64_t)a3;
- (void)setThemeGlyphSize:(int64_t)a3;
- (void)setThemeGlyphWeight:(int64_t)a3;
- (void)setThemeGraphicsClass:(int64_t)a3;
- (void)setThemeIdentifier:(int64_t)a3;
- (void)setThemeIdiom:(int64_t)a3;
- (void)setThemeLayer:(int64_t)a3;
- (void)setThemeLocalization:(int64_t)a3;
- (void)setThemeMemoryClass:(int64_t)a3;
- (void)setThemePart:(int64_t)a3;
- (void)setThemePresentationState:(int64_t)a3;
- (void)setThemePreviousState:(int64_t)a3;
- (void)setThemePreviousValue:(int64_t)a3;
- (void)setThemeScale:(int64_t)a3;
- (void)setThemeSize:(int64_t)a3;
- (void)setThemeSizeClassHorizontal:(int64_t)a3;
- (void)setThemeSizeClassVertical:(int64_t)a3;
- (void)setThemeState:(int64_t)a3;
- (void)setThemeSubtype:(int64_t)a3;
- (void)setThemeValue:(int64_t)a3;
- (void)setValuesFromKeyList:(const _renditionkeytoken *)a3;
@end

@implementation CUIRenditionKey

- (const)keyList
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return self->_stackKey;
  }
}

- (int64_t)themeDimension2
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 9);
}

- (int64_t)themeScale
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 12);
}

- (int64_t)themeIdentifier
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 17);
}

- (int64_t)themeDirection
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 4);
}

- (void)dealloc
{
  key = self->_key;
  if (key)
  {
    free(key);
  }

  v4.receiver = self;
  v4.super_class = CUIRenditionKey;
  [(CUIRenditionKey *)&v4 dealloc];
}

- (int64_t)themeIdiom
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 15);
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    [a1 setVersion:1];
  }
}

- (int64_t)themeDeploymentTarget
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 25);
}

- (int64_t)themeGlyphWeight
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 26);
}

- (int64_t)themeGlyphSize
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 27);
}

- (int64_t)themeAppearance
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 7);
}

- (int64_t)themePart
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 2);
}

- (int64_t)themeDisplayGamut
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 24);
}

- (int64_t)themeSubtype
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 16);
}

- (int64_t)themeSizeClassHorizontal
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 20);
}

- (int64_t)themeSizeClassVertical
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 21);
}

+ (id)renditionKey
{
  v2 = objc_alloc_init(CUIRenditionKey);

  return v2;
}

+ (CUIRenditionKey)renditionKeyWithKeyList:(const _renditionkeytoken *)a3
{
  v3 = [[CUIRenditionKey alloc] initWithKeyList:a3];

  return v3;
}

- (CUIRenditionKey)initWithKeyList:(const _renditionkeytoken *)a3
{
  v10.receiver = self;
  v10.super_class = CUIRenditionKey;
  v4 = [(CUIRenditionKey *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_highwaterKeyCount = 21;
    v6 = CUIRenditionKeyTokenCount(a3);
    v7 = v6;
    if (v6 <= v5->_highwaterKeyCount)
    {
      stackKey = v5->_stackKey;
    }

    else
    {
      stackKey = malloc_type_calloc(v6 + 1, 4uLL, 0x100004052888210uLL);
      v5->_key = stackKey;
      if (!stackKey)
      {

        return 0;
      }

      v5->_highwaterKeyCount = v7;
    }

    CUIRenditionKeyCopy(stackKey, a3, (v7 + 1));
  }

  return v5;
}

- (CUIRenditionKey)initWithCoder:(id)a3
{
  v20 = 0;
  if ([a3 allowsKeyedCoding])
  {
    v5 = [a3 decodeBytesForKey:@"CUIRenditionKeyBytes" returnedLength:&v20];
    v6 = [a3 decodeIntegerForKey:@"CUIRenditionKeyVersion"];
  }

  else
  {
    v5 = [a3 decodeBytesWithReturnedLength:&v20];
    v6 = [a3 versionForClassName:@"CUIRenditionKey"];
  }

  v7 = v6;
  v8 = v20;
  v9 = v20 >> 2;
  memset(v21, 0, 92);
  if (v20 < 0x60)
  {
    v10 = v21;
    if (v20 < 4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = malloc_type_calloc(v9 + 2, 4uLL, 0x100004052888210uLL);
  }

  v11 = v10 + 1;
  v12 = v5 + 2;
  v13 = v9;
  do
  {
    *(v11 - 1) = *(v12 - 2);
    v11 += 2;
    v12 += 4;
    --v13;
  }

  while (v13);
LABEL_9:
  if (v7 <= 0 && !CUIRenditionKeyValueForAttribute(v10, 1) && v8 >= 4)
  {
    v14 = v10 + 1;
    v15 = (v5 + 2);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v15 += 2;
      *(v14 - 1) = bswap32(v16) >> 16;
      *v14 = bswap32(v17) >> 16;
      v14 += 2;
      --v9;
    }

    while (v9);
  }

  v18 = [(CUIRenditionKey *)self initWithKeyList:v10];
  if (v10 != v21)
  {
    free(v10);
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  v5 = CUIRenditionKeyTokenCount(key);
  v15 = 0u;
  memset(v16, 0, 28);
  v6 = v5;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  if (v5 < 0x18)
  {
    v7 = &v12;
  }

  else
  {
    v7 = malloc_type_calloc(v5 + 2, 4uLL, 0x100004052888210uLL);
  }

  v8 = v6 + 1;
  v9 = v7 + 2;
  p_value = &key->value;
  v11 = v8;
  do
  {
    *(v9 - 2) = *(p_value - 1);
    v9 += 4;
    p_value += 2;
    --v11;
  }

  while (v11);
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeInteger:+[CUIRenditionKey version](CUIRenditionKey forKey:{"version"), @"CUIRenditionKeyVersion"}];
    [a3 encodeBytes:v7 length:4 * v8 forKey:@"CUIRenditionKeyBytes"];
  }

  else
  {
    [a3 encodeBytes:v7 length:4 * v8];
  }

  if (v7 != &v12)
  {
    free(v7);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithKeyList:key];
}

- (void)setValuesFromKeyList:(const _renditionkeytoken *)a3
{
  identifier = a3->identifier;
  if (*a3)
  {
    v6 = 0;
    p_value = &a3[1].value;
    do
    {
      if (CUIRenditionKeyIndexForAttribute(&self->_key->identifier, identifier) != -1)
      {
        ++v6;
      }

      v8 = *p_value | *(p_value - 1);
      identifier = *(p_value - 1);
      p_value += 2;
    }

    while (v8);
  }

  else
  {
    v6 = 0;
  }

  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  v10 = CUIRenditionKeyTokenCount(key);
  v11 = v10 - v6 + CUIRenditionKeyTokenCount(a3);
  if (v11 <= self->_highwaterKeyCount)
  {
    goto LABEL_11;
  }

  [(CUIRenditionKey *)self _expandKeyIfNecessaryForCount:v11];
  if (v11 <= self->_highwaterKeyCount)
  {
    key = self->_key;
LABEL_11:
    v12 = &a3->value;
    do
    {
      while (1)
      {
        v13 = *v12;
        v14 = *(v12 - 1);
        v12 += 2;
        if (!v13)
        {
          break;
        }

        CUIRenditionKeySetValueForAttribute(&key->identifier, v14, v13, (v11 + 1));
      }
    }

    while (v14);
    return;
  }

  _CUILog(4, "couldn't allocate memory!", v15, v16, v17, v18, v19, v20, v22);
}

- (void)copyValuesFromKeyList:(const _renditionkeytoken *)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  v6 = CUIRenditionKeyTokenCount(a3);
  v7 = v6;
  if (v6 <= self->_highwaterKeyCount)
  {
LABEL_5:

    CUIRenditionKeyCopy(key, a3, (v7 + 1));
    return;
  }

  [(CUIRenditionKey *)self _expandKeyIfNecessaryForCount:v6];
  if (v7 <= self->_highwaterKeyCount)
  {
    key = self->_key;
    goto LABEL_5;
  }

  _CUILog(4, "couldn't allocate memory!", v8, v9, v10, v11, v12, v13, v15);
}

- (void)removeValueForKeyTokenIdentifier:(int64_t)a3
{
  key = self->_key;
  if (!key)
  {
    key = self->_stackKey;
  }

  CUIRenditionKeySetValueForAttribute(&key->identifier, a3, 0, (self->_highwaterKeyCount + 1));
}

- (CUIRenditionKey)initWithThemeElement:(int64_t)a3 themePart:(int64_t)a4 themeSize:(int64_t)a5 themeDirection:(int64_t)a6 themeValue:(int64_t)a7 themeDimension1:(int64_t)a8 themeDimension2:(int64_t)a9 themeState:(int64_t)a10 themePresentationState:(int64_t)a11 themeLayer:(int64_t)a12 themeScale:(int64_t)a13 themeIdentifier:(int64_t)a14
{
  memset(v21, 0, 92);
  _CUIRenditionKeySetIntegerValueForAttribute(v21, 1, a3);
  _CUIRenditionKeySetIntegerValueForAttribute(v21, 2, a4);
  _CUIRenditionKeySetIntegerValueForAttribute(v21, 3, a5);
  _CUIRenditionKeySetIntegerValueForAttribute(v21, 4, a6);
  _CUIRenditionKeySetIntegerValueForAttribute(v21, 6, a7);
  _CUIRenditionKeySetIntegerValueForAttribute(v21, 8, a8);
  _CUIRenditionKeySetIntegerValueForAttribute(v21, 9, a9);
  _CUIRenditionKeySetIntegerValueForAttribute(v21, 10, a10);
  _CUIRenditionKeySetIntegerValueForAttribute(v21, 14, a11);
  _CUIRenditionKeySetIntegerValueForAttribute(v21, 11, a12);
  _CUIRenditionKeySetIntegerValueForAttribute(v21, 12, a13);
  _CUIRenditionKeySetIntegerValueForAttribute(v21, 17, a14);
  return [(CUIRenditionKey *)self initWithKeyList:v21];
}

- (void)setThemeElement:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 1, a3);
}

- (int64_t)themeElement
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 1);
}

- (void)setThemePart:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 2, a3);
}

- (void)setThemeSize:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 3, a3);
}

- (int64_t)themeSize
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 3);
}

- (void)setThemeDirection:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 4, a3);
}

- (void)setThemeValue:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 6, a3);
}

- (int64_t)themeValue
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 6);
}

- (void)setThemePreviousValue:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 18, a3);
}

- (int64_t)themePreviousValue
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 18);
}

- (void)setThemeDimension1:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 8, a3);
}

- (int64_t)themeDimension1
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 8);
}

- (void)setThemeDimension2:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 9, a3);
}

- (void)setThemeState:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 10, a3);
}

- (int64_t)themeState
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 10);
}

- (void)setThemePreviousState:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 19, a3);
}

- (int64_t)themePreviousState
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 19);
}

- (void)setThemePresentationState:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 14, a3);
}

- (int64_t)themePresentationState
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 14);
}

- (void)setThemeLayer:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 11, a3);
}

- (int64_t)themeLayer
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 11);
}

- (void)setThemeScale:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 12, a3);
}

- (void)setThemeIdiom:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 15, a3);
}

- (void)setThemeSubtype:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 16, a3);
}

- (void)setThemeSizeClassHorizontal:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 20, a3);
}

- (void)setThemeSizeClassVertical:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 21, a3);
}

- (void)setThemeMemoryClass:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 22, a3);
}

- (int64_t)themeMemoryClass
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 22);
}

- (void)setThemeGraphicsClass:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 23, a3);
}

- (int64_t)themeGraphicsClass
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 23);
}

- (void)setThemeIdentifier:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 17, a3);
}

- (void)setThemeAppearance:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 7, a3);
}

- (void)setThemeLocalization:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 13, a3);
}

- (int64_t)themeLocalization
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  return CUIRenditionKeyValueForAttribute(&key->identifier, 13);
}

- (void)setThemeDisplayGamut:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 24, a3);
}

- (void)setThemeDeploymentTarget:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 25, a3);
}

- (void)setThemeGlyphSize:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 27, a3);
}

- (void)setThemeGlyphWeight:(int64_t)a3
{
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  _CUIRenditionKeySetIntegerValueForAttribute(&key->identifier, 26, a3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = CUIRenditionKey;
  return [-[CUIRenditionKey description](&v3 description)];
}

- (id)nameOfAttributeName:(int)a3
{
  if ((a3 - 1) > 0x1A)
  {
    return &stru_1F00D74D0;
  }

  else
  {
    return off_1E7250E58[a3 - 1];
  }
}

- (id)descriptionBasedOnKeyFormat:(const _renditionkeyfmt *)a3
{
  var2 = a3->var2;
  if (self->_key)
  {
    key = self->_key;
  }

  else
  {
    key = self->_stackKey;
  }

  if (!var2)
  {
    return &stru_1F00D74D0;
  }

  var3 = a3->var3;
  v7 = &stru_1F00D74D0;
  do
  {
    v9 = *var3++;
    v8 = v9;
    v10 = [(CUIRenditionKey *)self nameOfAttributeName:v9];
    if ([v10 length])
    {
      v7 = [(__CFString *)v7 stringByAppendingString:[NSString stringWithFormat:@"%@: %lu ", v10, CUIRenditionKeyValueForAttribute(&key->identifier, v8)]];
    }

    --var2;
  }

  while (var2);
  return v7;
}

- (void)_expandKeyIfNecessaryForCount:(uint64_t)a1
{
  if (a1)
  {
    v2 = a2;
    v4 = *(a1 + 104);
    if (v4 < a2)
    {
      v5 = malloc_type_calloc(v4 + 1, 4uLL, 0x100004052888210uLL);
      CUIRenditionKeyCopy(v5, *(a1 + 96), (*(a1 + 104) + 1));
      v6 = *(a1 + 96);
      if (v6)
      {
        free(v6);
      }

      *(a1 + 96) = v5;
      *(a1 + 104) = v2;
    }
  }
}

@end