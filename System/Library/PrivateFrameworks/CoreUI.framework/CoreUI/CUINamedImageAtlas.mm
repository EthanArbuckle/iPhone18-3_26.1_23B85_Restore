@interface CUINamedImageAtlas
- (BOOL)_dimension1ExistsInKeyFormatForThemeRef:(_BOOL8)result;
- (CGImage)image;
- (CUINamedImageAtlas)initWithName:(id)name usingRenditionKey:(id)key withContents:(id)contents contentsFromCatalog:(id)catalog fromTheme:(unint64_t)theme withSourceThemeRef:(unint64_t)ref;
- (id)_renditionForKey:(uint64_t)key inThemeRef:;
- (void)dealloc;
@end

@implementation CUINamedImageAtlas

- (void)dealloc
{
  atlasImages = self->_atlasImages;
  if (atlasImages)
  {
    CFRelease(atlasImages);
  }

  v4.receiver = self;
  v4.super_class = CUINamedImageAtlas;
  [(CUINamedLookup *)&v4 dealloc];
}

- (CUINamedImageAtlas)initWithName:(id)name usingRenditionKey:(id)key withContents:(id)contents contentsFromCatalog:(id)catalog fromTheme:(unint64_t)theme withSourceThemeRef:(unint64_t)ref
{
  v14 = _LookupStructuredThemeProvider(ref, a2);
  v89.receiver = self;
  v89.super_class = CUINamedImageAtlas;
  v15 = [(CUINamedLookup *)&v89 initWithName:name usingRenditionKey:key fromTheme:theme];
  if (!v15->_images)
  {
    v17 = [name stringByAppendingString:@"/"];
    v79 = objc_alloc_init(NSMutableDictionary);
    v69 = objc_alloc_init(NSMutableArray);
    theArray = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    catalogCopy = catalog;
    if (contents && (v18 = -[CUINamedImageAtlas _renditionForKey:inThemeRef:](v15, contents, theme), [objc_msgSend(v18 "contentNames")]))
    {
      obj = [[NSMutableSet alloc] initWithArray:{objc_msgSend(v18, "contentNames")}];
    }

    else
    {
      obj = 0;
    }

    v19 = [(CUIRenditionKey *)[(CUINamedLookup *)v15 renditionKey] copy];
    v64 = [(CUINamedImageAtlas *)v15 _dimension1ExistsInKeyFormatForThemeRef:theme];
    themeScale = [v19 themeScale];
    themeIdiom = [v19 themeIdiom];
    themeSubtype = [v19 themeSubtype];
    themeDisplayGamut = [v19 themeDisplayGamut];
    themeDirection = [v19 themeDirection];
    themeSizeClassHorizontal = [v19 themeSizeClassHorizontal];
    themeSizeClassVertical = [v19 themeSizeClassVertical];
    themeMemoryClass = [v19 themeMemoryClass];
    themeGraphicsClass = [v19 themeGraphicsClass];
    [v19 setThemeDimension1:0];
    v70 = v15;
    v65 = v19;
    v20 = [(CUINamedImageAtlas *)v15 _renditionForKey:v19 inThemeRef:theme];
    if (v20)
    {
      v21 = 0;
      do
      {
        v66 = v20;
        v67 = v21;
        themeCopy = theme;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        layerReferences = [v20 layerReferences];
        v24 = [layerReferences countByEnumeratingWithState:&v85 objects:v91 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v86;
          do
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v86 != v26)
              {
                objc_enumerationMutation(layerReferences);
              }

              referenceKey = [*(*(&v85 + 1) + 8 * i) referenceKey];
              v29 = [v14 renditionNameForKeyList:{objc_msgSend(referenceKey, "keyList")}];
              v31 = v29;
              if ([v29 rangeOfString:v17 options:8 range:{0, objc_msgSend(v29, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v31 = [v29 substringFromIndex:v30];
              }

              v32 = [[CUINamedImage alloc] initWithName:v31 usingRenditionKey:referenceKey fromTheme:themeCopy];
              if (v32)
              {
                v33 = v32;
                [(NSDictionary *)v79 setObject:v32 forKey:v31];
              }

              [obj removeObject:v29];
            }

            v25 = [layerReferences countByEnumeratingWithState:&v85 objects:v91 count:16];
          }

          while (v25);
        }

        [(NSArray *)v69 addObject:v66];
        unslicedImage = [v66 unslicedImage];
        if (unslicedImage)
        {
          CFArrayAppendValue(theArray, unslicedImage);
          theme = themeCopy;
          v35 = v67;
          if (!v64)
          {
            break;
          }
        }

        else
        {
          theme = themeCopy;
          v35 = v67;
          if (!v64)
          {
            break;
          }
        }

        v21 = v35 + 1;
        [v65 setThemeDimension1:v21];
        v20 = [(CUINamedImageAtlas *)v70 _renditionForKey:v65 inThemeRef:theme];
      }

      while (v20);
    }

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v36 = [obj countByEnumeratingWithState:&v81 objects:v90 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v82;
      do
      {
        v39 = 0;
        do
        {
          if (*v82 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v81 + 1) + 8 * v39);
          v42 = v40;
          if ([v40 rangeOfString:v17 options:8 range:{0, objc_msgSend(v40, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v42 = [v40 substringFromIndex:v41];
          }

          v43 = [catalogCopy imageWithName:v40 scaleFactor:themeIdiom deviceIdiom:themeSubtype deviceSubtype:themeDisplayGamut displayGamut:themeDirection layoutDirection:themeSizeClassHorizontal sizeClassHorizontal:themeScale sizeClassVertical:themeSizeClassVertical memoryClass:themeMemoryClass graphicsClass:themeGraphicsClass];
          if (v43)
          {
            v50 = v43;
            [v43 setName:v42];
            [(NSDictionary *)v79 setObject:v50 forKey:v42];
            v51 = [objc_msgSend(v50 "_rendition")];
            if (v51)
            {
              v52 = [(CUINamedImageAtlas *)v70 _renditionForKey:v51 inThemeRef:theme];
              if (v52 && (v59 = v52, [(NSArray *)v69 indexOfObject:v52]== 0x7FFFFFFFFFFFFFFFLL))
              {
                [(NSArray *)v69 addObject:v59];
                unslicedImage2 = [v59 unslicedImage];
                if (unslicedImage2)
                {
                  CFArrayAppendValue(theArray, unslicedImage2);
                }
              }

              else
              {
                _CUILog(1, "CoreUI: didn't find parent rendition for '%@' skipping it", v53, v54, v55, v56, v57, v58, v40);
              }
            }
          }

          else
          {
            _CUILog(1, "CoreUI: couldn't find image '%@' in '%@'", v44, v45, v46, v47, v48, v49, v40);
          }

          v39 = v39 + 1;
        }

        while (v37 != v39);
        v61 = [obj countByEnumeratingWithState:&v81 objects:v90 count:16];
        v37 = v61;
      }

      while (v61);
    }

    v15 = v70;
    v70->_images = v79;
    v70->_renditions = v69;
    v70->_atlasImages = theArray;
  }

  return v15;
}

- (CGImage)image
{
  atlasImages = self->_atlasImages;
  if (!atlasImages || CFArrayGetCount(atlasImages) < 1)
  {
    return 0;
  }

  _CUILog(1, "CoreUI: using depricated method [CUINamedImageAtlas image] use [CUINamedImageAtlas images] instead", v4, v5, v6, v7, v8, v9, v12);
  v10 = self->_atlasImages;

  return CFArrayGetValueAtIndex(v10, 0);
}

- (id)_renditionForKey:(uint64_t)key inThemeRef:
{
  if (!self)
  {
    return 0;
  }

  v4 = _LookupStructuredThemeProvider(key, a2);
  if (![v4 assetExistsForKey:{objc_msgSend(a2, "keyList")}])
  {
    return 0;
  }

  keyList = [a2 keyList];

  return [v4 renditionWithKey:keyList];
}

- (BOOL)_dimension1ExistsInKeyFormatForThemeRef:(_BOOL8)result
{
  if (result)
  {
    v2 = [_LookupStructuredThemeProvider(a2 a2)];
    return CUIRenditionKeyHasIdentifier(v2, 8);
  }

  return result;
}

@end