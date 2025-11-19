@interface CUINamedModel
- (CUINamedModel)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5;
- (MDLAsset)asset;
- (id)_renditionForKey:(id)a3 inThemeRef:(unint64_t)a4;
@end

@implementation CUINamedModel

- (id)_renditionForKey:(id)a3 inThemeRef:(unint64_t)a4
{
  v5 = _LookupStructuredThemeProvider(a4, a2);
  if (![v5 assetExistsForKey:{objc_msgSend(a3, "keyList")}])
  {
    return 0;
  }

  v6 = [a3 keyList];

  return [v5 renditionWithKey:v6];
}

- (CUINamedModel)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5
{
  v49.receiver = self;
  v49.super_class = CUINamedModel;
  v6 = [(CUINamedLookup *)&v49 initWithName:a3 usingRenditionKey:a4 fromTheme:?];
  v7 = [(CUINamedLookup *)v6 _rendition];
  if ([(CUIThemeRendition *)v7 type]!= 1011)
  {

    v6 = 0;
  }

  v36 = [(CUIThemeRendition *)v7 modelAsset];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [(CUIThemeRendition *)v7 meshKeys];
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
        v13 = [(CUINamedModel *)v6 _renditionForKey:v12 inThemeRef:a5];
        if ([v13 type] == 1012)
        {
          v40 = v11;
          [v36 addObject:{objc_msgSend(v13, "modelMesh")}];
          v20 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(objc_msgSend(v13, "submeshKeys"), "count")}];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v39 = v13;
          v21 = [v13 submeshKeys];
          v22 = [v21 countByEnumeratingWithState:&v41 objects:v50 count:16];
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
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v41 + 1) + 8 * i);
                v27 = [(CUINamedModel *)v6 _renditionForKey:v26 inThemeRef:a5];
                if ([v27 type] == 1016)
                {
                  [v20 addObject:{objc_msgSend(v27, "modelSubmesh")}];
                }

                else
                {
                  _CUILog(4, "[CUINamedModel initWithName:usingRenditionKey:fromTheme:] Got a rendition not of type kCUIModelSubMeshRenditionType with key: '%@' skipping", v28, v29, v30, v31, v32, v33, v26);
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v41 objects:v50 count:16];
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
  v2 = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)v2 modelAsset];
}

@end