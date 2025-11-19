@interface CUINamedSolidLayerStack
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (CUINamedSolidLayerStack)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5 resolvingWithBlock:(id)a6;
- (id)layerImageAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation CUINamedSolidLayerStack

- (CUINamedSolidLayerStack)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5 resolvingWithBlock:(id)a6
{
  v7 = a3;
  v54.receiver = self;
  v54.super_class = CUINamedSolidLayerStack;
  v8 = [(CUINamedLookup *)&v54 initWithName:a3 usingRenditionKey:a4 fromTheme:?];
  v9 = [(CUINamedLookup *)v8 _rendition];
  if ([(CUIThemeRendition *)v9 type]== 1018)
  {
    if (!v7)
    {
      [(CUINamedLookup *)v8 setName:[(CUIThemeRendition *)v9 name]];
      v7 = [(CUIThemeRendition *)v9 name];
    }

    v46 = v8;
    v48 = objc_alloc_init(NSMutableArray);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [(CUIThemeRendition *)v9 layerReferences];
    v16 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v51;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v51 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v50 + 1) + 8 * i);
          v22 = (*(a6 + 2))(a6, [v21 referenceKey]);
          if (!v22)
          {
            [v21 referenceKey];
            _CUILog(4, "CoreUI: Unable to resolve layer reference for '%@' name '%@' layerRef referenceKey '%@'", v27, v28, v29, v30, v31, v32, v21);
            goto LABEL_23;
          }

          v23 = [[CUINamedSolidLayerImage alloc] initWithName:[NSString usingRenditionKey:"stringWithFormat:" fromTheme:@"%@[%ld]" stringWithFormat:v7, ++v18], v22, a5];
          if ([(CUINamedLookup *)v23 _rendition])
          {
            [v21 frame];
            [(CUINamedSolidLayerImage *)v23 setFrame:?];
            [v21 opacity];
            if (v24 < 1.0)
            {
              [(CUINamedSolidLayerImage *)v23 opacity];
              if (v25 == 1.0)
              {
                [v21 opacity];
                [(CUINamedSolidLayerImage *)v23 setOpacity:?];
              }
            }

            if ([v21 blendMode] >= 1 && !-[CUINamedSolidLayerImage blendMode](v23, "blendMode"))
            {
              -[CUINamedSolidLayerImage setBlendMode:](v23, "setBlendMode:", [v21 blendMode]);
            }

            -[CUINamedSolidLayerImage setFixedFrame:](v23, "setFixedFrame:", [v21 fixedFrame]);
            [(NSArray *)v48 addObject:v23];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:
    v26 = v46;
    v46->_layers = v48;
    v8 = objc_alloc_init(CUIRenditionKey);
    [(CUINamedSolidLayerStack *)v8 setThemeElement:[(CUIRenditionKey *)[(CUINamedLookup *)v46 key] themeElement]];
    [(CUINamedSolidLayerStack *)v8 setThemePart:208];
    [(CUINamedSolidLayerStack *)v8 setThemeIdentifier:[(CUIRenditionKey *)[(CUINamedLookup *)v46 key] themeIdentifier]];
    v33 = (*(a6 + 2))(a6, v8);
    if (v33)
    {
      v40 = v33;
      v41 = [(CUINamedLookup *)v46 storageRef];
      v43 = _LookupStructuredThemeProvider(v41, v42);
      v44 = [v43 copyLookupKeySignatureForKey:{objc_msgSend(v40, "keyList")}];
      v46->_flattenedImageRendition = [v43 renditionWithKey:objc_msgSend(v40 usingKeySignature:{"keyList"), v44}];
    }

    else
    {
      _CUILog(4, "CoreUI: Unable to resolve flattened image for layer stack %@", v34, v35, v36, v37, v38, v39, v46);
    }
  }

  else
  {
    _CUILog(4, "CoreUI: Attempting to create named layer stack '%@' from inappropriate rendition type: %@", v10, v11, v12, v13, v14, v15, v7);
    v26 = 0;
  }

  return v26;
}

- (BOOL)isEqual:(id)a3
{
  v8.receiver = self;
  v8.super_class = CUINamedSolidLayerStack;
  if (![(CUINamedLookup *)&v8 isEqual:?])
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = -[NSArray isEqual:](-[CUINamedSolidLayerStack layers](self, "layers"), "isEqual:", [a3 layers]);
  if (v5)
  {
    v6 = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] type];
    if (v6 == [objc_msgSend(a3 "_rendition")])
    {
      LOBYTE(v5) = 1;
      return v5;
    }

LABEL_6:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v14.receiver = self;
  v14.super_class = CUINamedSolidLayerStack;
  v3 = [(CUINamedLookup *)&v14 hash];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(CUINamedSolidLayerStack *)self layers];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3 *= 2654435769 * [*(*(&v10 + 1) + 8 * v8) hash];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (CGSize)size
{
  v2 = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] metrics];

  [v2 imageSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)layerImageAtIndex:(unint64_t)a3
{
  v4 = [(CUINamedSolidLayerStack *)self layers];

  return [(NSArray *)v4 objectAtIndexedSubscript:a3];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUINamedSolidLayerStack;
  [(CUINamedLookup *)&v3 dealloc];
}

@end