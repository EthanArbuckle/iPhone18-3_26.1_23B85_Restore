@interface CUIDesignLibraryCompositeCatalog
+ (id)_catalogsForDesignSystem:(int64_t)system colorScheme:(int64_t)scheme contrast:(int64_t)contrast styling:(int64_t)styling error:(id *)error;
+ (id)compositeCatalogForDesignSystem:(int64_t)system colorScheme:(int64_t)scheme contrast:(int64_t)contrast styling:(int64_t)styling error:(id *)error;
- (CUIDesignLibraryCompositeCatalog)initWithCatalogs:(id)catalogs;
- (id)colorWithName:(int64_t)name palette:(int64_t)palette displayGamut:(int64_t)gamut hierarchyLevel:(int64_t)level error:(id *)error;
- (id)shapeEffectPresetWithName:(id)name error:(id *)error;
- (void)dealloc;
@end

@implementation CUIDesignLibraryCompositeCatalog

+ (id)_catalogsForDesignSystem:(int64_t)system colorScheme:(int64_t)scheme contrast:(int64_t)contrast styling:(int64_t)styling error:(id *)error
{
  v11 = __resolvedDesignSystemForInputSystem(system);
  v12 = objc_alloc_init(NSMutableArray);
  v13 = [CUIDesignLibraryCatalog catalogForDesignSystem:v11 colorScheme:scheme contrast:contrast styling:styling error:error];
  if (v13)
  {
    [v12 addObject:v13];
  }

  v14 = objc_alloc_init(NSMutableArray);
  if (v11 <= 4)
  {
    if ((v11 - 2) >= 3)
    {
      if (v11 != 1)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

LABEL_9:
    v15 = [CUIDesignLibraryCatalog catalogForDesignSystem:1 colorScheme:scheme contrast:contrast styling:styling error:error];
    if (v15)
    {
      [v14 addObject:v15];
    }

LABEL_11:
    if (styling == 1)
    {
      v16 = [CUIDesignLibraryCatalog catalogForDesignSystem:1 colorScheme:scheme contrast:contrast styling:0 error:error];
      if (v16)
      {
        [v14 addObject:v16];
      }
    }

    goto LABEL_14;
  }

  if (v11 != 5)
  {
    if (v11 != 7)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (styling)
  {
    v19 = [CUIDesignLibraryCatalog catalogForDesignSystem:5 colorScheme:scheme contrast:contrast styling:0 error:error];
    if (v19)
    {
      [v14 addObject:v19];
    }

    if (styling == 1)
    {
      v20 = [CUIDesignLibraryCatalog catalogForDesignSystem:5 colorScheme:scheme contrast:contrast styling:2 error:error];
      if (v20)
      {
        [v14 insertObject:v20 atIndex:0];
      }
    }
  }

LABEL_14:
  if ([v14 count])
  {
    [v12 addObjectsFromArray:v14];
  }

  v17 = [NSArray arrayWithArray:v12];

  return v17;
}

- (CUIDesignLibraryCompositeCatalog)initWithCatalogs:(id)catalogs
{
  v7.receiver = self;
  v7.super_class = CUIDesignLibraryCompositeCatalog;
  v4 = [(CUIDesignLibraryCompositeCatalog *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (catalogs)
    {
      v4->_catalogs = catalogs;
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

+ (id)compositeCatalogForDesignSystem:(int64_t)system colorScheme:(int64_t)scheme contrast:(int64_t)contrast styling:(int64_t)styling error:(id *)error
{
  styling = [NSString stringWithFormat:@"%d.%d.%d.%d", system, scheme, contrast, styling];
  if (__compositeOnceToken != -1)
  {
    +[CUIDesignLibraryCompositeCatalog compositeCatalogForDesignSystem:colorScheme:contrast:styling:error:];
  }

  os_unfair_lock_lock(&__compositeCatalogCacheLock);
  v14 = [__compositeCatalogCache objectForKey:styling];
  if (!v14)
  {
    v15 = [self _catalogsForDesignSystem:system colorScheme:scheme contrast:contrast styling:styling error:error];
    if (v15)
    {
      v14 = [[self alloc] initWithCatalogs:v15];
      [__compositeCatalogCache setObject:v14 forKey:styling];
      v16 = v14;
    }

    else
    {
      v14 = 0;
    }
  }

  os_unfair_lock_unlock(&__compositeCatalogCacheLock);
  return v14;
}

id __103__CUIDesignLibraryCompositeCatalog_compositeCatalogForDesignSystem_colorScheme_contrast_styling_error___block_invoke()
{
  result = objc_alloc_init(NSMutableDictionary);
  __compositeCatalogCache = result;
  return result;
}

- (id)colorWithName:(int64_t)name palette:(int64_t)palette displayGamut:(int64_t)gamut hierarchyLevel:(int64_t)level error:(id *)error
{
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  catalogs = self->_catalogs;
  v14 = [(NSArray *)catalogs countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v28 != v16)
      {
        objc_enumerationMutation(catalogs);
      }

      result = [*(*(&v27 + 1) + 8 * v17) colorWithName:name palette:palette displayGamut:gamut hierarchyLevel:level error:error];
      if (result)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [(NSArray *)catalogs countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v15)
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
    if (!palette)
    {
      return 0;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = self->_catalogs;
    result = [(NSArray *)v19 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (!result)
    {
      return result;
    }

    v20 = result;
    v21 = *v24;
LABEL_12:
    v22 = 0;
    while (1)
    {
      if (*v24 != v21)
      {
        objc_enumerationMutation(v19);
      }

      result = [*(*(&v23 + 1) + 8 * v22) colorWithName:name palette:0 displayGamut:gamut hierarchyLevel:level error:error];
      if (result)
      {
        break;
      }

      if (v20 == ++v22)
      {
        v20 = [(NSArray *)v19 countByEnumeratingWithState:&v23 objects:v31 count:16];
        result = 0;
        if (v20)
        {
          goto LABEL_12;
        }

        return result;
      }
    }
  }

  if (error)
  {
    *error = 0;
  }

  return result;
}

- (id)shapeEffectPresetWithName:(id)name error:(id *)error
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  catalogs = self->_catalogs;
  result = [(NSArray *)catalogs countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v12;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(catalogs);
        }

        result = [*(*(&v11 + 1) + 8 * v10) shapeEffectPresetWithName:name error:error];
        if (result)
        {
          if (error)
          {
            *error = 0;
          }

          return result;
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      result = [(NSArray *)catalogs countByEnumeratingWithState:&v11 objects:v15 count:16];
      v8 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIDesignLibraryCompositeCatalog;
  [(CUIDesignLibraryCompositeCatalog *)&v3 dealloc];
}

@end