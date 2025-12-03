@interface CUINamedModel
- (CUINamedModel)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (MDLAsset)asset;
- (id)_renditionForKey:(id)key inThemeRef:(unint64_t)ref;
@end

@implementation CUINamedModel

- (id)_renditionForKey:(id)key inThemeRef:(unint64_t)ref
{
  v5 = _LookupStructuredThemeProvider(ref, a2);
  if (![v5 assetExistsForKey:{objc_msgSend(key, "keyList")}])
  {
    return 0;
  }

  keyList = [key keyList];

  return [v5 renditionWithKey:keyList];
}

- (CUINamedModel)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v49.receiver = self;
  v49.super_class = CUINamedModel;
  v6 = [(CUINamedLookup *)&v49 initWithName:name usingRenditionKey:key fromTheme:?];
  _rendition = [(CUINamedLookup *)v6 _rendition];
  if ([(CUIThemeRendition *)_rendition type]!= 1011)
  {

    v6 = 0;
  }

  modelAsset = [(CUIThemeRendition *)_rendition modelAsset];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [(CUIThemeRendition *)_rendition meshKeys];
  v8 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v46;
    v35 = *v46;
    do
    {
      v11 = 0;
      v37 = v9;
      do
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v45 + 1) + 8 * v11);
        v13 = [(CUINamedModel *)v6 _renditionForKey:v12 inThemeRef:theme];
        if ([v13 type] == 1012)
        {
          v40 = v11;
          [modelAsset addObject:{objc_msgSend(v13, "modelMesh")}];
          v20 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(objc_msgSend(v13, "submeshKeys"), "count")}];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v39 = v13;
          submeshKeys = [v13 submeshKeys];
          v22 = [submeshKeys countByEnumeratingWithState:&v41 objects:v50 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v42;
            do
            {
              for (i = 0; i != v23; i = i + 1)
              {
                if (*v42 != v24)
                {
                  objc_enumerationMutation(submeshKeys);
                }

                v26 = *(*(&v41 + 1) + 8 * i);
                v27 = [(CUINamedModel *)v6 _renditionForKey:v26 inThemeRef:theme];
                if ([v27 type] == 1016)
                {
                  [v20 addObject:{objc_msgSend(v27, "modelSubmesh")}];
                }

                else
                {
                  _CUILog(4, "[CUINamedModel initWithName:usingRenditionKey:fromTheme:] Got a rendition not of type kCUIModelSubMeshRenditionType with key: '%@' skipping", v28, v29, v30, v31, v32, v33, v26);
                }
              }

              v23 = [submeshKeys countByEnumeratingWithState:&v41 objects:v50 count:16];
            }

            while (v23);
          }

          [objc_msgSend(v39 "modelMesh")];

          v10 = v35;
          v9 = v37;
          v11 = v40;
        }

        else
        {
          _CUILog(4, "[CUINamedModel initWithName:usingRenditionKey:fromTheme:] Got a rendition not of type kCUIModelMeshRenditionType with key: '%@' skipping", v14, v15, v16, v17, v18, v19, v12);
        }

        v11 = v11 + 1;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v9);
  }

  return v6;
}

- (MDLAsset)asset
{
  _rendition = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)_rendition modelAsset];
}

@end