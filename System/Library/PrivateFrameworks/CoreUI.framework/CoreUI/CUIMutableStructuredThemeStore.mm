@interface CUIMutableStructuredThemeStore
- (CUIMutableStructuredThemeStore)initWithIdentifier:(id)identifier;
- (_renditionkeytoken)renditionKeyForAssetWithName:(id)name withDescription:(id)description;
- (const)keyFormat;
- (const)renditionKeyForName:(id)name;
- (id)allImageNames;
- (id)appearances;
- (id)defaultAppearanceName;
- (id)deploymentPlatformString;
- (id)imagesWithName:(id)name;
- (id)nameForAppearanceIdentifier:(unsigned __int16)identifier;
- (id)renditionInfoForIdentifier:(unsigned __int16)identifier;
- (id)renditionWithKey:(const _renditionkeytoken *)key;
- (id)renditionWithKey:(const _renditionkeytoken *)key usingKeySignature:(id)signature;
- (unsigned)appearanceIdentifierForName:(id)name;
- (void)_addRenditionInfoForImageWithName:(id)name andKey:(_renditionkeytoken *)key;
- (void)_removeRenditionInfoForImageWithName:(id)name;
- (void)clearRenditionCache;
- (void)dealloc;
- (void)insertCGImage:(CGImage *)image withName:(id)name andDescription:(id)description;
- (void)removeImageNamed:(id)named withDescription:(id)description;
- (void)removeImagesNamed:(id)named;
@end

@implementation CUIMutableStructuredThemeStore

- (const)keyFormat
{
  deploymentPlatform = [(CUIMutableStructuredThemeStore *)self deploymentPlatform];
  if ((deploymentPlatform - 1) < 4)
  {
    goto LABEL_2;
  }

  if (deploymentPlatform == 5)
  {
    v11 = 4;
  }

  else
  {
    if (deploymentPlatform == -1)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"CUIMutableStructuredThemeStore.m" description:64, @"Unknown platform kCUIThemeSchemaPlatformUnknown."];
LABEL_2:
      v11 = 2;
      goto LABEL_3;
    }

    v11 = 1;
  }

LABEL_3:

  return CUIDefaultThemeRenditionKeyFormat(v11, 0xFFFFFFFF, v5, v6, v7, v8, v9, v10);
}

- (id)defaultAppearanceName
{
  if ([(CUIMutableStructuredThemeStore *)self deploymentPlatform])
  {
    return @"UIAppearanceAny";
  }

  else
  {
    return @"NSAppearanceNameSystem";
  }
}

- (id)appearances
{
  objc_sync_enter(self);
  appearanceNameIdentifierStore = self->_appearanceNameIdentifierStore;
  objc_sync_exit(self);
  return appearanceNameIdentifierStore;
}

- (CUIMutableStructuredThemeStore)initWithIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = CUIMutableStructuredThemeStore;
  v4 = [(CUIMutableStructuredThemeStore *)&v6 init];
  v4->_identifier = identifier;
  v4->_memoryStore = objc_alloc_init(NSMutableDictionary);
  v4->_nameIdentifierStore = objc_alloc_init(NSMutableDictionary);
  v4->_renditionInfoStore = objc_alloc_init(NSMutableDictionary);
  v4->_appearanceNameIdentifierStore = objc_alloc_init(NSMutableDictionary);
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIMutableStructuredThemeStore;
  [(CUIStructuredThemeStore *)&v3 dealloc];
}

- (id)allImageNames
{
  objc_sync_enter(self);
  allKeys = [(NSMutableDictionary *)self->_nameIdentifierStore allKeys];
  objc_sync_exit(self);
  return allKeys;
}

- (const)renditionKeyForName:(id)name
{
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)self->_nameIdentifierStore objectForKey:name];
  if (v5)
  {
    v6 = (*([(CUIMutableStructuredThemeStore *)self keyFormat]+ 2) + 1);
    v7 = malloc_type_calloc(v6, 4uLL, 0x100004052888210uLL);
    CUIRenditionKeySetValueForAttribute(v7, 17, [v5 integerValue], v6);
    v8 = [+[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData bytes:v7];
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(self);
  return v8;
}

- (id)imagesWithName:(id)name
{
  objc_sync_enter(self);
  v5 = +[NSMutableArray array];
  v6 = [(NSMutableDictionary *)self->_memoryStore objectForKey:[NSNumber numberWithInteger:CUIRenditionKeyValueForAttribute([(CUIMutableStructuredThemeStore *)self renditionKeyForName:name], 17)]];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __49__CUIMutableStructuredThemeStore_imagesWithName___block_invoke;
  v8[3] = &unk_1E724A6B0;
  v8[4] = name;
  v8[5] = self;
  v8[6] = v5;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
  objc_sync_exit(self);
  return v5;
}

void __49__CUIMutableStructuredThemeStore_imagesWithName___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = -[CUIRenditionKey initWithKeyList:]([CUIRenditionKey alloc], "initWithKeyList:", [a3 key]);
  v4 = -[CUINamedImage initWithName:usingRenditionKey:fromTheme:]([CUINamedImage alloc], "initWithName:usingRenditionKey:fromTheme:", *(a1 + 32), v5, [*(a1 + 40) themeIndex]);
  [*(a1 + 48) addObject:v4];
}

- (id)renditionWithKey:(const _renditionkeytoken *)key
{
  v5 = [(CUIStructuredThemeStore *)self copyKeySignatureForKey:key withBytesNoCopy:v8 length:256];
  v6 = [(CUIMutableStructuredThemeStore *)self renditionWithKey:key usingKeySignature:v5];

  return v6;
}

- (id)renditionWithKey:(const _renditionkeytoken *)key usingKeySignature:(id)signature
{
  objc_sync_enter(self);
  v7 = [-[NSMutableDictionary objectForKey:](self->_memoryStore objectForKey:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", CUIRenditionKeyValueForAttribute(&key->identifier, 17))), "objectForKey:", signature}];
  objc_sync_exit(self);
  return v7;
}

- (_renditionkeytoken)renditionKeyForAssetWithName:(id)name withDescription:(id)description
{
  objc_sync_enter(self);
  v7 = [(NSMutableDictionary *)self->_nameIdentifierStore objectForKey:name];
  v8 = *([(CUIMutableStructuredThemeStore *)self keyFormat]+ 2) + 1;
  v9 = malloc_type_calloc(v8, 4uLL, 0x100004052888210uLL);
  v10 = 0;
  for (i = 0; i < *([(CUIMutableStructuredThemeStore *)self keyFormat]+ 2); ++i)
  {
    v9[v10].identifier = *([(CUIMutableStructuredThemeStore *)self keyFormat]+ v10 * 4 + 12);
    ++v10;
  }

  if (!v7)
  {
    ++self->_maxNameIdentifier;
    v7 = [NSNumber numberWithInteger:?];
    [(NSMutableDictionary *)self->_nameIdentifierStore setObject:v7 forKey:name];
  }

  appearanceName = [description appearanceName];
  if (!appearanceName)
  {
    appearanceName = [(CUIMutableStructuredThemeStore *)self defaultAppearanceName];
  }

  v13 = [(NSMutableDictionary *)self->_appearanceNameIdentifierStore objectForKey:appearanceName];
  if (!v13)
  {
    if ([appearanceName isEqualToString:{-[CUIMutableStructuredThemeStore defaultAppearanceName](self, "defaultAppearanceName")}])
    {
      v13 = &unk_1F00F7C40;
    }

    else
    {
      ++self->_maxAppearanceNameIdentifier;
      v13 = [NSNumber numberWithInteger:?];
    }

    [(NSMutableDictionary *)self->_appearanceNameIdentifierStore setObject:v13 forKey:appearanceName];
  }

  subtype = [description subtype];
  idiom = [description idiom];
  CUIValidateIdiomSubtypes(idiom, &subtype, v15, v16, v17, v18, v19, v20);
  CUIRenditionKeySetValueForAttribute(&v9->identifier, 17, [(NSNumber *)v7 integerValue], v8);
  CUIRenditionKeySetValueForAttribute(&v9->identifier, 15, [description idiom], v8);
  [description scale];
  CUIRenditionKeySetValueForAttribute(&v9->identifier, 12, v21, v8);
  CUIRenditionKeySetValueForAttribute(&v9->identifier, 16, subtype, v8);
  CUIRenditionKeySetValueForAttribute(&v9->identifier, 24, [description displayGamut], v8);
  CUIRenditionKeySetValueForAttribute(&v9->identifier, 4, [description layoutDirection], v8);
  CUIRenditionKeySetValueForAttribute(&v9->identifier, 20, [description sizeClassHorizontal], v8);
  CUIRenditionKeySetValueForAttribute(&v9->identifier, 21, [description sizeClassVertical], v8);
  CUIRenditionKeySetValueForAttribute(&v9->identifier, 7, [(NSNumber *)v13 integerValue], v8);
  objc_sync_exit(self);
  return v9;
}

- (void)_addRenditionInfoForImageWithName:(id)name andKey:(_renditionkeytoken *)key
{
  v6 = [(NSMutableDictionary *)self->_nameIdentifierStore objectForKey:name];
  if (v6)
  {
    v7 = v6;
    v8 = [(NSMutableDictionary *)self->_renditionInfoStore objectForKey:v6];
    if (v8)
    {
      v9 = [v8 copy];
    }

    else
    {
      v9 = [[CUINamedRenditionInfo alloc] initWithKeyFormat:[(CUIMutableStructuredThemeStore *)self keyFormat] andPlatform:[(CUIMutableStructuredThemeStore *)self deploymentPlatform]];
    }

    v10 = v9;
    v14 = v9;
    if (__PAIR64__(key->value, key->identifier))
    {
      v11 = 1;
      do
      {
        [CUINamedRenditionInfo setAttributePresent:v10 withValue:"setAttributePresent:withValue:"];
        v10 = v14;
        v12 = &key[v11++];
        if (v12->value)
        {
          v13 = 0;
        }

        else
        {
          v13 = v12->identifier == 0;
        }
      }

      while (!v13);
    }

    [(NSMutableDictionary *)self->_renditionInfoStore setObject:v10 forKey:v7];
  }
}

- (void)_removeRenditionInfoForImageWithName:(id)name
{
  v4 = [(NSMutableDictionary *)self->_nameIdentifierStore objectForKey:name];
  if (v4)
  {
    v5 = v4;
    renditionInfoStore = self->_renditionInfoStore;

    [(NSMutableDictionary *)renditionInfoStore removeObjectForKey:v5];
  }
}

- (void)insertCGImage:(CGImage *)image withName:(id)name andDescription:(id)description
{
  objc_sync_enter(self);
  v9 = [(CUIMutableStructuredThemeStore *)self renditionKeyForAssetWithName:name withDescription:description];
  v10 = [(NSMutableDictionary *)self->_nameIdentifierStore objectForKey:name];
  v11 = [(CUIStructuredThemeStore *)self copyKeySignatureForKey:v9 withBytesNoCopy:v17 length:256];
  if (!self->_memoryStore)
  {
    self->_memoryStore = objc_alloc_init(NSMutableDictionary);
  }

  v12 = [[CUIMutableThemeRendition alloc] initWithCGImage:image withDescription:description forKey:v9];
  [(CUIMutableThemeRendition *)v12 setName:name];
  v13 = [v11 copy];
  v14 = [(NSMutableDictionary *)self->_memoryStore objectForKey:v10];
  v15 = v14;
  if (v14)
  {
    [v14 setObject:v12 forKey:v13];
    [(NSMutableDictionary *)self->_memoryStore setObject:v15 forKey:v10];
  }

  else
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    [v16 setObject:v12 forKey:v13];
    [(NSMutableDictionary *)self->_memoryStore setObject:v16 forKey:v10];
  }

  [(CUIMutableStructuredThemeStore *)self _addRenditionInfoForImageWithName:name andKey:v9];
  free(v9);
  objc_sync_exit(self);
}

- (void)removeImageNamed:(id)named withDescription:(id)description
{
  objc_sync_enter(self);
  v7 = [(NSMutableDictionary *)self->_nameIdentifierStore objectForKey:named];
  if (v7)
  {
    v8 = [(CUIMutableStructuredThemeStore *)self renditionKeyForAssetWithName:named withDescription:description];
    v9 = [(CUIStructuredThemeStore *)self copyKeySignatureForKey:v8 withBytesNoCopy:v11 length:256];
    v10 = [(NSMutableDictionary *)self->_memoryStore objectForKey:v7];
    [v10 removeObjectForKey:v9];
    free(v8);

    if (![v10 count])
    {
      [(CUIMutableStructuredThemeStore *)self _removeRenditionInfoForImageWithName:named];
      [(NSMutableDictionary *)self->_memoryStore removeObjectForKey:v7];
      [(NSMutableDictionary *)self->_nameIdentifierStore removeObjectForKey:named];
    }
  }

  objc_sync_exit(self);
}

- (void)removeImagesNamed:(id)named
{
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)self->_nameIdentifierStore objectForKey:named];
  if (v5)
  {
    [(NSMutableDictionary *)self->_memoryStore removeObjectForKey:v5];
    [(NSMutableDictionary *)self->_nameIdentifierStore removeObjectForKey:named];
    [(CUIMutableStructuredThemeStore *)self _removeRenditionInfoForImageWithName:named];
  }

  objc_sync_exit(self);
}

- (void)clearRenditionCache
{
  objc_sync_enter(self);
  v4.receiver = self;
  v4.super_class = CUIMutableStructuredThemeStore;
  [(CUIStructuredThemeStore *)&v4 clearRenditionCache];
  v3 = self->_memoryStore;
  self->_memoryStore = 0;
  [(NSMutableDictionary *)self->_nameIdentifierStore removeAllObjects];
  [(NSMutableDictionary *)self->_renditionInfoStore removeAllObjects];
  [(NSMutableDictionary *)self->_appearanceNameIdentifierStore removeAllObjects];
  self->_maxNameIdentifier = 0;
  self->_maxAppearanceNameIdentifier = 0;
  objc_sync_exit(self);
}

- (id)renditionInfoForIdentifier:(unsigned __int16)identifier
{
  identifierCopy = identifier;
  objc_sync_enter(self);
  v5 = [(NSMutableDictionary *)self->_renditionInfoStore objectForKey:[NSNumber numberWithUnsignedShort:identifierCopy]];
  objc_sync_exit(self);
  return v5;
}

- (id)deploymentPlatformString
{
  v2 = CUICurrentPlatform();

  return CUIPlatformNameForPlatform(v2);
}

- (unsigned)appearanceIdentifierForName:(id)name
{
  objc_sync_enter(self);
  LOWORD(name) = [-[NSMutableDictionary objectForKey:](self->_appearanceNameIdentifierStore objectForKey:{name), "unsignedShortValue"}];
  objc_sync_exit(self);
  return name;
}

- (id)nameForAppearanceIdentifier:(unsigned __int16)identifier
{
  identifierCopy = identifier;
  objc_sync_enter(self);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  appearanceNameIdentifierStore = self->_appearanceNameIdentifierStore;
  v6 = [(NSMutableDictionary *)appearanceNameIdentifierStore countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(appearanceNameIdentifierStore);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      if ([-[NSMutableDictionary objectForKey:](self->_appearanceNameIdentifierStore objectForKey:{v9), "unsignedShortValue"}] == identifierCopy)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableDictionary *)appearanceNameIdentifierStore countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  objc_sync_exit(self);
  return v9;
}

@end