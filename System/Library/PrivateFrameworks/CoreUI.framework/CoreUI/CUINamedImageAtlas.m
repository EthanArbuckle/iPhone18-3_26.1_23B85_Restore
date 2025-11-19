@interface CUINamedImageAtlas
- (BOOL)_dimension1ExistsInKeyFormatForThemeRef:(_BOOL8)result;
- (CGImage)image;
- (CUINamedImageAtlas)initWithName:(id)a3 usingRenditionKey:(id)a4 withContents:(id)a5 contentsFromCatalog:(id)a6 fromTheme:(unint64_t)a7 withSourceThemeRef:(unint64_t)a8;
- (id)_renditionForKey:(uint64_t)a3 inThemeRef:;
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

- (CUINamedImageAtlas)initWithName:(id)a3 usingRenditionKey:(id)a4 withContents:(id)a5 contentsFromCatalog:(id)a6 fromTheme:(unint64_t)a7 withSourceThemeRef:(unint64_t)a8
{
  v14 = _LookupStructuredThemeProvider(a8, a2);
  v89.receiver = self;
  v89.super_class = CUINamedImageAtlas;
  v15 = [(CUINamedLookup *)&v89 initWithName:a3 usingRenditionKey:a4 fromTheme:a7];
  if (!v15->_images)
  {
    v17 = [a3 stringByAppendingString:@"/"];
    v79 = objc_alloc_init(NSMutableDictionary);
    v69 = objc_alloc_init(NSMutableArray);
    theArray = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v63 = a6;
    if (a5 && (v18 = -[CUINamedImageAtlas _renditionForKey:inThemeRef:](v15, a5, a7), [objc_msgSend(v18 "contentNames")]))
    {
      obj = [[NSMutableSet alloc] initWithArray:{objc_msgSend(v18, "contentNames")}];
    }

    else
    {
      obj = 0;
    }

    v19 = [(CUIRenditionKey *)[(CUINamedLookup *)v15 renditionKey] copy];
    v64 = [(CUINamedImageAtlas *)v15 _dimension1ExistsInKeyFormatForThemeRef:a7];
    v62 = [v19 themeScale];
    v78 = [v19 themeIdiom];
    v77 = [v19 themeSubtype];
    v76 = [v19 themeDisplayGamut];
    v75 = [v19 themeDirection];
    v74 = [v19 themeSizeClassHorizontal];
    v73 = [v19 themeSizeClassVertical];
    v72 = [v19 themeMemoryClass];
    v71 = [v19 themeGraphicsClass];
    [v19 setThemeDimension1:0];
    v70 = v15;
    v65 = v19;
    v20 = [(CUINamedImageAtlas *)v15 _renditionForKey:v19 inThemeRef:a7];
    if (v20)
    {
      v21 = 0;
      do
      {
        v66 = v20;
        v67 = v21;
        v22 = a7;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v23 = [v20 layerReferences];
        v24 = [v23 countByEnumeratingWithState:&v85 objects:v91 count:16];
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
                objc_enumerationMutation(v23);
              }

              v28 = [*(*(&v85 + 1) + 8 * i) referenceKey];
              v29 = [v14 renditionNameForKeyList:{objc_msgSend(v28, "keyList")}];
              v31 = v29;
              if ([v29 rangeOfString:v17 options:8 range:{0, objc_msgSend(v29, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v31 = [v29 substringFromIndex:v30];
              }

              v32 = [[CUINamedImage alloc] initWithName:v31 usingRenditionKey:v28 fromTheme:v22];
              if (v32)
              {
                v33 = v32;
                [(NSDictionary *)v79 setObject:v32 forKey:v31];
              }

              [obj removeObject:v29];
            }

            v25 = [v23 countByEnumeratingWithState:&v85 objects:v91 count:16];
          }

          while (v25);
        }

        [(NSArray *)v69 addObject:v66];
        v34 = [v66 unslicedImage];
        if (v34)
        {
          CFArrayAppendValue(theArray, v34);
          a7 = v22;
          v35 = v67;
          if (!v64)
          {
            break;
          }
        }

        else
        {
          a7 = v22;
          v35 = v67;
          if (!v64)
          {
            break;
          }
        }

        v21 = v35 + 1;
        [v65 setThemeDimension1:v21];
        v20 = [(CUINamedImageAtlas *)v70 _renditionForKey:v65 inThemeRef:a7];
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

          v43 = [v63 imageWithName:v40 scaleFactor:v78 deviceIdiom:v77 deviceSubtype:v76 displayGamut:v75 layoutDirection:v74 sizeClassHorizontal:v62 sizeClassVertical:v73 memoryClass:v72 graphicsClass:v71];
          if (v43)
          {
            v50 = v43;
            [v43 setName:v42];
            [(NSDictionary *)v79 setObject:v50 forKey:v42];
            v51 = [objc_msgSend(v50 "_rendition")];
            if (v51)
            {
              v52 = [(CUINamedImageAtlas *)v70 _renditionForKey:v51 inThemeRef:a7];
              if (v52 && (v59 = v52, [(NSArray *)v69 indexOfObject:v52]== 0x7FFFFFFFFFFFFFFFLL))
              {
                [(NSArray *)v69 addObject:v59];
                v60 = [v59 unslicedImage];
                if (v60)
                {
                  CFArrayAppendValue(theArray, v60);
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

- (id)_renditionForKey:(uint64_t)a3 inThemeRef:
{
  if (!a1)
  {
    return 0;
  }

  v4 = _LookupStructuredThemeProvider(a3, a2);
  if (![v4 assetExistsForKey:{objc_msgSend(a2, "keyList")}])
  {
    return 0;
  }

  v5 = [a2 keyList];

  return [v4 renditionWithKey:v5];
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