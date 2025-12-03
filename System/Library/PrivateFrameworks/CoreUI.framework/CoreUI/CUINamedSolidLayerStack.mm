@interface CUINamedSolidLayerStack
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (CUINamedSolidLayerStack)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme resolvingWithBlock:(id)block;
- (id)layerImageAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation CUINamedSolidLayerStack

- (CUINamedSolidLayerStack)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme resolvingWithBlock:(id)block
{
  nameCopy = name;
  v54.receiver = self;
  v54.super_class = CUINamedSolidLayerStack;
  v8 = [(CUINamedLookup *)&v54 initWithName:name usingRenditionKey:key fromTheme:?];
  _rendition = [(CUINamedLookup *)v8 _rendition];
  if ([(CUIThemeRendition *)_rendition type]== 1018)
  {
    if (!nameCopy)
    {
      [(CUINamedLookup *)v8 setName:[(CUIThemeRendition *)_rendition name]];
      nameCopy = [(CUIThemeRendition *)_rendition name];
    }

    v46 = v8;
    v48 = objc_alloc_init(NSMutableArray);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [(CUIThemeRendition *)_rendition layerReferences];
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
          v22 = (*(block + 2))(block, [v21 referenceKey]);
          if (!v22)
          {
            [v21 referenceKey];
            _CUILog(4, "CoreUI: Unable to resolve layer reference for '%@' name '%@' layerRef referenceKey '%@'", v27, v28, v29, v30, v31, v32, v21);
            goto LABEL_23;
          }

          theme = [[CUINamedSolidLayerImage alloc] initWithName:[NSString usingRenditionKey:"stringWithFormat:" fromTheme:@"%@[%ld]" stringWithFormat:nameCopy, ++v18], v22, theme];
          if ([(CUINamedLookup *)theme _rendition])
          {
            [v21 frame];
            [(CUINamedSolidLayerImage *)theme setFrame:?];
            [v21 opacity];
            if (v24 < 1.0)
            {
              [(CUINamedSolidLayerImage *)theme opacity];
              if (v25 == 1.0)
              {
                [v21 opacity];
                [(CUINamedSolidLayerImage *)theme setOpacity:?];
              }
            }

            if ([v21 blendMode] >= 1 && !-[CUINamedSolidLayerImage blendMode](theme, "blendMode"))
            {
              -[CUINamedSolidLayerImage setBlendMode:](theme, "setBlendMode:", [v21 blendMode]);
            }

            -[CUINamedSolidLayerImage setFixedFrame:](theme, "setFixedFrame:", [v21 fixedFrame]);
            [(NSArray *)v48 addObject:theme];
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
    v33 = (*(block + 2))(block, v8);
    if (v33)
    {
      v40 = v33;
      storageRef = [(CUINamedLookup *)v46 storageRef];
      v43 = _LookupStructuredThemeProvider(storageRef, v42);
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
    _CUILog(4, "CoreUI: Attempting to create named layer stack '%@' from inappropriate rendition type: %@", v10, v11, v12, v13, v14, v15, nameCopy);
    v26 = 0;
  }

  return v26;
}

- (BOOL)isEqual:(id)equal
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

  v5 = -[NSArray isEqual:](-[CUINamedSolidLayerStack layers](self, "layers"), "isEqual:", [equal layers]);
  if (v5)
  {
    type = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] type];
    if (type == [objc_msgSend(equal "_rendition")])
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
  layers = [(CUINamedSolidLayerStack *)self layers];
  v5 = [(NSArray *)layers countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(layers);
        }

        v3 *= 2654435769 * [*(*(&v10 + 1) + 8 * v8) hash];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)layers countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (CGSize)size
{
  metrics = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] metrics];

  [metrics imageSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)layerImageAtIndex:(unint64_t)index
{
  layers = [(CUINamedSolidLayerStack *)self layers];

  return [(NSArray *)layers objectAtIndexedSubscript:index];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUINamedSolidLayerStack;
  [(CUINamedLookup *)&v3 dealloc];
}

@end