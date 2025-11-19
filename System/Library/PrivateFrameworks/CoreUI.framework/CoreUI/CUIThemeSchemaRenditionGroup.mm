@interface CUIThemeSchemaRenditionGroup
+ (id)renditionGroupsForRenditions:(id)a3 part:(id *)a4;
- (CUIThemeSchemaRenditionGroup)initWithRenditions:(id)a3 part:(id *)a4;
- (id)_layerNameForDrawingLayer:(int64_t)a3;
- (id)_layerNameForState:(int64_t)a3;
- (id)_renditionsSortedIntoLayers;
- (id)baseKey;
- (id)description;
- (id)mutablePSDImageRef;
- (id)mutablePSDImageRefColumnStyle;
- (id)schemaLayersAndLayerGroups;
- (id)themeSchemaLayers;
- (void)addLayoutMetricsToPSDImageRef:(id)a3 withRendition:(id)a4;
- (void)addStatesAndDrawingLayersToPSDLayers:(id)a3 forPresentationState:(unint64_t)a4;
- (void)addValueOrDim1LayersToPSDLayers:(id)a3 forPresentationState:(unint64_t)a4 state:(unint64_t)a5 drawingLayer:(unint64_t)a6;
- (void)dealloc;
@end

@implementation CUIThemeSchemaRenditionGroup

+ (id)renditionGroupsForRenditions:(id)a3 part:(id *)a4
{
  if (![a3 count])
  {
    return 0;
  }

  v5 = CUIRenditionKeyValueForAttribute([objc_msgSend(a3 objectAtIndex:{0), "key"}], 2);
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v70 objects:v78 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v71;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v71 != v8)
        {
          objc_enumerationMutation(a3);
        }

        if (CUIRenditionKeyValueForAttribute([*(*(&v70 + 1) + 8 * i) key], 2) != v5)
        {
          _CUILog(1, "Can't create rendition groups. The problem: not all renditions come from the same part.", v10, v11, v12, v13, v14, v15, v49);
          return 0;
        }
      }

      v7 = [a3 countByEnumeratingWithState:&v70 objects:v78 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  obj = +[NSMutableArray array];
  v16 = [NSMutableArray arrayWithArray:a3];
  for (j = 1; j != 3; ++j)
  {
    for (k = 0; k != 4; ++k)
    {
      for (m = 0; m != 6; ++m)
      {
        v20 = +[NSMutableArray array];
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v21 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v66 objects:v77 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v67;
          do
          {
            for (n = 0; n != v22; n = n + 1)
            {
              if (*v67 != v23)
              {
                objc_enumerationMutation(v16);
              }

              v25 = *(*(&v66 + 1) + 8 * n);
              v26 = [v25 key];
              if (m == CUIRenditionKeyValueForAttribute(v26, 4) && k == CUIRenditionKeyValueForAttribute(v26, 3) && j == CUIRenditionKeyValueForAttribute(v26, 12))
              {
                [v20 addObject:v25];
              }
            }

            v22 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v66 objects:v77 count:16];
          }

          while (v22);
        }

        if ([v20 count])
        {
          [obj addObject:{-[CUIThemeSchemaRenditionGroup initWithRenditions:part:]([CUIThemeSchemaRenditionGroup alloc], "initWithRenditions:part:", v20, a4)}];
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v27 = [v20 countByEnumeratingWithState:&v62 objects:v76 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v63;
            do
            {
              for (ii = 0; ii != v28; ii = ii + 1)
              {
                if (*v63 != v29)
                {
                  objc_enumerationMutation(v20);
                }

                [(NSMutableArray *)v16 removeObject:*(*(&v62 + 1) + 8 * ii)];
              }

              v28 = [v20 countByEnumeratingWithState:&v62 objects:v76 count:16];
            }

            while (v28);
          }
        }
      }
    }
  }

  var4 = a4->var4;
  if ([obj count] && (var4 & 0x10004) == 0x10004)
  {
    v32 = [NSMutableArray arrayWithArray:obj];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v33 = [obj countByEnumeratingWithState:&v58 objects:v75 count:16];
    if (v33)
    {
      v34 = v33;
      v50 = v32;
      v51 = *v59;
      do
      {
        for (jj = 0; jj != v34; jj = jj + 1)
        {
          if (*v59 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v58 + 1) + 8 * jj);
          v37 = [v36 renditions];
          v38 = +[NSMutableArray array];
          v39 = +[NSMutableArray array];
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v40 = [v37 countByEnumeratingWithState:&v54 objects:v74 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v55;
            do
            {
              for (kk = 0; kk != v41; kk = kk + 1)
              {
                if (*v55 != v42)
                {
                  objc_enumerationMutation(v37);
                }

                v44 = *(*(&v54 + 1) + 8 * kk);
                if (CUIRenditionKeyValueForAttribute([v44 key], 14))
                {
                  v45 = v39;
                }

                else
                {
                  v45 = v38;
                }

                [v45 addObject:v44];
              }

              v41 = [v37 countByEnumeratingWithState:&v54 objects:v74 count:16];
            }

            while (v41);
          }

          if ([v38 count] && objc_msgSend(v39, "count"))
          {
            v46 = [[CUIThemeSchemaRenditionGroup alloc] initWithRenditions:v38 part:a4];
            v47 = [[CUIThemeSchemaRenditionGroup alloc] initWithRenditions:v39 part:a4];
            [(NSMutableArray *)v50 removeObject:v36];
            [(NSMutableArray *)v50 addObject:v46];
            [(NSMutableArray *)v50 addObject:v47];
          }
        }

        v34 = [obj countByEnumeratingWithState:&v58 objects:v75 count:16];
      }

      while (v34);
      return v50;
    }

    else
    {
      return v32;
    }
  }

  return obj;
}

- (CUIThemeSchemaRenditionGroup)initWithRenditions:(id)a3 part:(id *)a4
{
  v9.receiver = self;
  v9.super_class = CUIThemeSchemaRenditionGroup;
  v6 = [(CUIThemeSchemaRenditionGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(CUIThemeSchemaRenditionGroup *)v6 setRenditions:a3];
    v7->_part = a4;
  }

  return v7;
}

- (id)baseKey
{
  result = self->_baseKey;
  if (!result)
  {
    memset(v4, 0, 92);
    CUIRenditionKeyCopy(v4, [-[NSArray objectAtIndex:](-[CUIThemeSchemaRenditionGroup renditions](self "renditions")], 0x16u);
    CUIRenditionKeySetValueForAttribute(v4, 10, 0, 0x16u);
    CUIRenditionKeySetValueForAttribute(v4, 6, 0, 0x16u);
    CUIRenditionKeySetValueForAttribute(v4, 8, 0, 0x16u);
    CUIRenditionKeySetValueForAttribute(v4, 9, 0, 0x16u);
    CUIRenditionKeySetValueForAttribute(v4, 11, 0, 0x16u);
    if (([(CUIThemeSchemaRenditionGroup *)self partFeatures]& 0x10000) == 0)
    {
      CUIRenditionKeySetValueForAttribute(v4, 14, 0, 0x16u);
    }

    result = [[CUIRenditionKey alloc] initWithKeyList:v4];
    self->_baseKey = result;
  }

  return result;
}

- (void)addLayoutMetricsToPSDImageRef:(id)a3 withRendition:(id)a4
{
  [a4 contentInsets];
  v8 = CUIEdgeInsetsToCGRect(v6, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = objc_alloc_init(CUIPSDLayoutMetricsChannel);
  [(CUIPSDLayoutMetricsChannel *)v15 setName:@"ContentBounds"];
  [(CUIPSDLayoutMetricsChannel *)v15 setEdgeInsets:v8, v10, v12, v14];
  [a3 addLayoutMetricsChannel:v15];
  v16 = objc_alloc_init(CUIPSDLayoutMetricsChannel);
  [(CUIPSDLayoutMetricsChannel *)v16 setName:@"Edges"];
  [a4 edgeInsets:1];
  [(CUIPSDLayoutMetricsChannel *)v16 setEdgeInsets:?];

  [a3 addLayoutMetricsChannel:v16];
}

- (id)mutablePSDImageRef
{
  v3 = [(CUIThemeSchemaRenditionGroup *)self themeSchemaLayers];
  v46 = self;
  v49 = [(CUIThemeSchemaRenditionGroup *)self partFeatures];
  v4 = [NSMutableArray arrayWithCapacity:0];
  v60 = 0;
  v61 = 0;
  v5 = CGSizeZero;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = v5;
  obj = v3;
  v43 = [v3 countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (!v43)
  {
    return 0;
  }

  v50 = 0;
  v6 = 0;
  v7 = 0;
  ARGBBitmapContext = 0;
  v47 = 0;
  v42 = *v56;
  v9 = 1.0;
  do
  {
    for (i = 0; i != v43; i = i + 1)
    {
      if (*v56 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v55 + 1) + 8 * i);
      v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld. %@", v6 + 1, [v11 name]);
      if (v6)
      {
        v64.size = v59;
        v64.origin.x = 0.0;
        v64.origin.y = 0.0;
        CGContextClearRect(ARGBBitmapContext, v64);
      }

      else
      {
        [v11 calculateColumLefts:&v60 rowTops:&v61 totalSize:&v59 forPartFeatures:v49];
        ARGBBitmapContext = CreateARGBBitmapContext(v59.width, v59.height, 1.0);
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v48 = [v11 renditions];
      v13 = [v48 countByEnumeratingWithState:&v51 objects:v62 count:16];
      if (v13)
      {
        v14 = v13;
        v44 = v12;
        v45 = i;
        v15 = ARGBBitmapContext;
        v16 = *v52;
        while (2)
        {
          for (j = 0; j != v14; j = j + 1)
          {
            if (*v52 != v16)
            {
              objc_enumerationMutation(v48);
            }

            v18 = *(*(&v51 + 1) + 8 * j);
            v19 = [v18 gradient];
            if (v19)
            {
              v7 = v19;
              goto LABEL_26;
            }

            [v18 opacity];
            v9 = v20;
            v50 = [v18 blendMode];
            [v18 renditionCoordinatesForPartFeatures:v49];
            v22 = v21;
            v24 = v23;
            v25 = [objc_msgSend(v18 "referenceImage")];
            Width = CGImageGetWidth(v25);
            Height = CGImageGetHeight(v25);
            [objc_msgSend(v60 objectAtIndex:{v22), "floatValue"}];
            v29 = v28;
            [objc_msgSend(v61 objectAtIndex:{v24), "floatValue"}];
            v31 = v30;
            v65.size.width = Width;
            v65.size.height = Height;
            v65.origin.x = v29;
            v65.origin.y = v31;
            CGContextDrawImage(v15, v65, v25);
            if (!v6)
            {
              v32 = [v18 numberOfSlices];
              if (v32)
              {
                v33 = 0;
                v34 = 32 * v32;
                do
                {
                  v66 = CGRectOffset(*([v18 sliceRects] + v33), v29, v31);
                  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v66);
                  if (DictionaryRepresentation)
                  {
                    v36 = DictionaryRepresentation;
                    [(NSMutableArray *)v4 addObject:DictionaryRepresentation];
                    CFRelease(v36);
                  }

                  v33 += 32;
                }

                while (v34 != v33);
              }

              [(CUIThemeSchemaRenditionGroup *)v46 addLayoutMetricsToPSDImageRef:v47 withRendition:v18];
            }
          }

          v14 = [v48 countByEnumeratingWithState:&v51 objects:v62 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

        v7 = 0;
LABEL_26:
        ARGBBitmapContext = v15;
        v12 = v44;
        i = v45;
      }

      if (v6)
      {
        if (v7)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v38 = [CUIMutablePSDImageRef alloc];
        v47 = [(CUIMutablePSDImageRef *)v38 initWithPixelWidth:v59.width pixelHeight:v59.height];
        [(CUIMutablePSDImageRef *)v47 addOrUpdateSlicesWithSliceRects:v4];
        if (v7)
        {
LABEL_29:
          v37 = [[CUIPSDGradientLayer alloc] initWithGradient:v7];
          goto LABEL_32;
        }
      }

      Image = CGBitmapContextCreateImage(ARGBBitmapContext);
      v37 = [[CUIPSDImageLayer alloc] initWithCGImageRef:Image];
      CGImageRelease(Image);
LABEL_32:
      [(CUIPSDLayer *)v37 setName:v12];
      [(CUIPSDLayer *)v37 setOpacity:v9];
      [(CUIPSDLayer *)v37 setBlendMode:v50];
      [(CUIMutablePSDImageRef *)v47 addLayer:v37];

      ++v6;
    }

    v43 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
  }

  while (v43);
  if (ARGBBitmapContext)
  {
    CGContextRelease(ARGBBitmapContext);
  }

  return v47;
}

- (id)mutablePSDImageRefColumnStyle
{
  v4 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v4 handleFailureInMethod:a1 object:a2 file:@"CUIThemeSchemaRenditionGroup.m" lineNumber:356 description:@"Couldn't find a rendition in the dictionary of groups and renditions. Something gang aft agley."];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = CUIThemeSchemaRenditionGroup;
  return [-[CUIThemeSchemaRenditionGroup description](&v3 description)];
}

- (id)_renditionsSortedIntoLayers
{
  v2 = [(CUIThemeSchemaRenditionGroup *)self renditions];

  return [(NSArray *)v2 sortedArrayUsingComparator:&__block_literal_global_17];
}

uint64_t __59__CUIThemeSchemaRenditionGroup__renditionsSortedIntoLayers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 drawingLayer];
  if (v5 < [a3 drawingLayer])
  {
    return -1;
  }

  v7 = [a2 drawingLayer];
  if (v7 > [a3 drawingLayer])
  {
    return 1;
  }

  v8 = [a2 state];
  if (v8 < [a3 state])
  {
    return -1;
  }

  v9 = [a2 state];
  return v9 > [a3 state];
}

- (id)_layerNameForState:(int64_t)a3
{
  if (a3 > 5)
  {
    return 0;
  }

  else
  {
    return off_1E7255510[a3];
  }
}

- (id)_layerNameForDrawingLayer:(int64_t)a3
{
  if (a3 > 7)
  {
    return @"Unused Drawing Layer";
  }

  else
  {
    return off_1E7255540[a3];
  }
}

- (id)themeSchemaLayers
{
  v3 = [(CUIThemeSchemaRenditionGroup *)self _renditionsSortedIntoLayers];
  v17 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        v11 = v8;
        if (*v19 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if (v11)
        {
          v12 = [*(*(&v18 + 1) + 8 * i) state];
          if (v12 != [v11 state] || (v13 = objc_msgSend(v8, "drawingLayer"), v13 != objc_msgSend(v11, "drawingLayer")))
          {
            if ([v11 drawingLayer])
            {
              v14 = -[CUIThemeSchemaRenditionGroup _layerNameForDrawingLayer:](self, "_layerNameForDrawingLayer:", [v11 drawingLayer]);
            }

            else
            {
              v14 = -[CUIThemeSchemaRenditionGroup _layerNameForState:](self, "_layerNameForState:", [v11 state]);
            }

            [v17 addObject:{+[CUIThemeSchemaLayer layerWithRenditions:name:index:](CUIThemeSchemaLayer, "layerWithRenditions:name:index:", v4, v14, v7++)}];
            v4 = +[NSMutableArray array];
          }
        }

        [v4 addObject:v8];
      }

      v6 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if ([v8 drawingLayer])
  {
    v15 = -[CUIThemeSchemaRenditionGroup _layerNameForDrawingLayer:](self, "_layerNameForDrawingLayer:", [v8 drawingLayer]);
  }

  else
  {
    v15 = -[CUIThemeSchemaRenditionGroup _layerNameForState:](self, "_layerNameForState:", [v8 state]);
  }

  [v17 addObject:{+[CUIThemeSchemaLayer layerWithRenditions:name:index:](CUIThemeSchemaLayer, "layerWithRenditions:name:index:", v4, v15, v7)}];
  return [NSArray arrayWithArray:v17];
}

- (id)schemaLayersAndLayerGroups
{
  v28 = +[NSMutableArray array];
  v3 = [(CUIThemeSchemaRenditionGroup *)self renditions];
  v4 = [(CUIThemeSchemaRenditionGroup *)self partFeatures];
  if ((v4 & 0x100000) != 0)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = [(NSArray *)v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v3);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v18 = objc_alloc_init(CUIThemeSchemaPSDRenditionLayer);
          [(CUIThemeSchemaPSDRenditionLayer *)v18 setRendition:v17];
          -[CUIThemeSchemaPSDLayer setName:](v18, "setName:", +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@-%@ to %@-%@", [v17 previousStateLocalizedString], objc_msgSend(v17, "previousValueLocalizedString"), objc_msgSend(v17, "stateLocalizedString"), objc_msgSend(v17, "valueLocalizedString")));
          [v28 addObject:v18];
        }

        v14 = [(NSArray *)v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v5 = [-[CUIThemeSchemaRenditionGroup themeSchemaLayers](self "themeSchemaLayers")];
    v6 = +[NSMutableArray array];
    if ((*&v4 & 0x20004) == 0 || (v4 & 0x10000) != 0)
    {
      if (v5 < 2)
      {
        if ((v4 & 0x4001) != 0)
        {
          [(CUIThemeSchemaRenditionGroup *)self addValueOrDim1LayersToPSDLayers:v28 forPresentationState:0 state:0 drawingLayer:0];
        }

        else
        {
          v23 = objc_alloc_init(CUIThemeSchemaPSDRenditionLayer);
          [(CUIThemeSchemaPSDLayer *)v23 setName:@"Normal"];
          [(CUIThemeSchemaPSDRenditionLayer *)v23 setRendition:[(NSArray *)v3 objectAtIndex:0]];
          [v28 addObject:v23];
        }
      }

      else
      {
        if ((v4 & 0x10000) != 0 && ![[(NSArray *)v3 filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:?]
        {
          v19 = 1;
          if (![[(NSArray *)v3 filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:?]
          {
            v19 = 2 * ([[(NSArray *)v3 filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:?];
          }
        }

        else
        {
          v19 = 0;
        }

        [(CUIThemeSchemaRenditionGroup *)self addStatesAndDrawingLayersToPSDLayers:v28 forPresentationState:v19];
      }
    }

    else
    {
      v7 = v6;
      v8 = +[NSMutableArray array];
      [v7 addObject:&unk_1F00F7D78];
      [v8 addObject:@"Active"];
      if ((v4 & 4) != 0)
      {
        [v7 addObject:&unk_1F00F7D90];
        [v8 addObject:@"Inactive"];
      }

      if ((v4 & 0x20000) != 0)
      {
        [v7 addObject:&unk_1F00F7DA8];
        [v8 addObject:@"Active Main"];
      }

      v9 = [v7 count];
      if (v5 < 2)
      {
        if ((v4 & 0x4001) != 0)
        {
          if (v9)
          {
            v20 = 0;
            do
            {
              v21 = objc_alloc_init(CUIThemeSchemaPSDLayerGroup);
              [(CUIThemeSchemaPSDLayerGroup *)v21 setIsStart:1];
              [v28 addObject:v21];
              -[CUIThemeSchemaRenditionGroup addValueOrDim1LayersToPSDLayers:forPresentationState:state:drawingLayer:](self, "addValueOrDim1LayersToPSDLayers:forPresentationState:state:drawingLayer:", v28, [objc_msgSend(v7 objectAtIndex:{v20), "unsignedIntegerValue"}], 0, 0);
              v22 = objc_alloc_init(CUIThemeSchemaPSDLayerGroup);
              [(CUIThemeSchemaPSDLayerGroup *)v22 setIsStart:0];
              -[CUIThemeSchemaPSDLayer setName:](v22, "setName:", [v8 objectAtIndex:v20]);
              [(CUIThemeSchemaPSDLayer *)v21 setName:[(CUIThemeSchemaPSDLayer *)v22 name]];
              [v28 addObject:v22];
              ++v20;
            }

            while (v20 < [v7 count]);
          }
        }

        else if (v9)
        {
          v24 = 0;
          do
          {
            v25 = -[NSArray filteredArrayUsingPredicate:](v3, "filteredArrayUsingPredicate:", +[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"presentationState == %lu", [objc_msgSend(v7 objectAtIndex:{v24), "unsignedIntegerValue"}]));
            if ([(NSArray *)v25 count])
            {
              v26 = objc_alloc_init(CUIThemeSchemaPSDRenditionLayer);
              [(CUIThemeSchemaPSDRenditionLayer *)v26 setRendition:[(NSArray *)v25 objectAtIndex:0]];
              -[CUIThemeSchemaPSDLayer setName:](v26, "setName:", [v8 objectAtIndex:v24]);
              [v28 addObject:v26];
            }

            ++v24;
          }

          while (v24 < [v7 count]);
        }
      }

      else if (v9)
      {
        v10 = 0;
        do
        {
          v11 = objc_alloc_init(CUIThemeSchemaPSDLayerGroup);
          [(CUIThemeSchemaPSDLayerGroup *)v11 setIsStart:1];
          [v28 addObject:v11];
          -[CUIThemeSchemaRenditionGroup addStatesAndDrawingLayersToPSDLayers:forPresentationState:](self, "addStatesAndDrawingLayersToPSDLayers:forPresentationState:", v28, [objc_msgSend(v7 objectAtIndex:{v10), "unsignedIntegerValue"}]);
          v12 = objc_alloc_init(CUIThemeSchemaPSDLayerGroup);
          [(CUIThemeSchemaPSDLayerGroup *)v12 setIsStart:0];
          -[CUIThemeSchemaPSDLayer setName:](v12, "setName:", [v8 objectAtIndex:v10]);
          [(CUIThemeSchemaPSDLayer *)v11 setName:[(CUIThemeSchemaPSDLayer *)v12 name]];
          [v28 addObject:v12];
          ++v10;
        }

        while (v10 < [v7 count]);
      }
    }
  }

  return [NSArray arrayWithArray:v28];
}

- (void)addStatesAndDrawingLayersToPSDLayers:(id)a3 forPresentationState:(unint64_t)a4
{
  v7 = [(CUIThemeSchemaRenditionGroup *)self themeSchemaLayers];
  v37 = self;
  v35 = [(CUIThemeSchemaRenditionGroup *)self partFeatures];
  if ((v35 & 0x1000000) != 0)
  {
    v22 = 0;
    v34 = a4;
    do
    {
      v23 = [(NSArray *)[(CUIThemeSchemaRenditionGroup *)self renditions] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"state == %lu AND presentationState == %lu", v22, a4]];
      if ([(NSArray *)v23 count])
      {
        v24 = [-[NSArray objectAtIndex:](v23 objectAtIndex:{0), "stateLocalizedString"}];
        v25 = objc_alloc_init(CUIThemeSchemaPSDLayerGroup);
        [(CUIThemeSchemaPSDLayerGroup *)v25 setIsStart:1];
        v36 = v24;
        [(CUIThemeSchemaPSDLayer *)v25 setName:v24];
        [a3 addObject:v25];
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v26 = [(NSArray *)v23 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v39;
          do
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v39 != v28)
              {
                objc_enumerationMutation(v23);
              }

              v30 = *(*(&v38 + 1) + 8 * i);
              v31 = [v30 drawingLayerLocalizedString];
              v32 = objc_alloc_init(CUIThemeSchemaPSDRenditionLayer);
              [(CUIThemeSchemaPSDLayer *)v32 setName:v31];
              [(CUIThemeSchemaPSDRenditionLayer *)v32 setRendition:v30];
              [a3 addObject:v32];
            }

            v27 = [(NSArray *)v23 countByEnumeratingWithState:&v38 objects:v42 count:16];
          }

          while (v27);
        }

        v33 = objc_alloc_init(CUIThemeSchemaPSDLayerGroup);
        [(CUIThemeSchemaPSDLayerGroup *)v33 setIsStart:0];
        [(CUIThemeSchemaPSDLayer *)v33 setName:v36];
        [a3 addObject:v33];
        a4 = v34;
      }

      ++v22;
    }

    while (v22 != 6);
  }

  else if ([v7 count])
  {
    v8 = 0;
    v9 = OBJC_CLASS___CUIPSDLayer_ptr;
    do
    {
      v10 = [objc_msgSend(v7 objectAtIndex:{v8), "renditions"}];
      v11 = v10;
      if (v8)
      {
        v12 = [objc_msgSend(v10 objectAtIndex:{0), "drawingLayer"}];
        v13 = [v11 objectAtIndex:0];
        if (v12)
        {
          v14 = [v13 drawingLayerLocalizedString];
        }

        else
        {
          v14 = [v13 stateLocalizedString];
        }

        v15 = v14;
      }

      else if ((v35 & 0x1000) == 0 || (v15 = @"Background", [v7 count] <= 1))
      {
        v15 = @"Normal";
      }

      v16 = [v11 filteredArrayUsingPredicate:{-[__objc2_class predicateWithFormat:](v9[221], "predicateWithFormat:", @"presentationState == %lu", a4)}];
      if ([v16 count])
      {
        v17 = [v16 objectAtIndex:0];
        if ([v16 count] == 1)
        {
          v18 = objc_alloc_init(CUIThemeSchemaPSDRenditionLayer);
          [(CUIThemeSchemaPSDLayer *)v18 setName:v15];
          [(CUIThemeSchemaPSDRenditionLayer *)v18 setRendition:v17];
        }

        else
        {
          v19 = v9;
          v20 = objc_alloc_init(CUIThemeSchemaPSDLayerGroup);
          [(CUIThemeSchemaPSDLayerGroup *)v20 setIsStart:1];
          [a3 addObject:v20];
          -[CUIThemeSchemaRenditionGroup addValueOrDim1LayersToPSDLayers:forPresentationState:state:drawingLayer:](v37, "addValueOrDim1LayersToPSDLayers:forPresentationState:state:drawingLayer:", a3, a4, [v17 state], objc_msgSend(v17, "drawingLayer"));
          v18 = objc_alloc_init(CUIThemeSchemaPSDLayerGroup);
          [(CUIThemeSchemaPSDRenditionLayer *)v18 setIsStart:0];
          [(CUIThemeSchemaPSDLayer *)v18 setName:v15];
          v21 = v20;
          v9 = v19;
          [(CUIThemeSchemaPSDLayer *)v21 setName:v15];
        }

        [a3 addObject:v18];
      }

      ++v8;
    }

    while (v8 < [v7 count]);
  }
}

- (void)addValueOrDim1LayersToPSDLayers:(id)a3 forPresentationState:(unint64_t)a4 state:(unint64_t)a5 drawingLayer:(unint64_t)a6
{
  v36 = [(NSArray *)[(CUIThemeSchemaRenditionGroup *)self renditions] filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"presentationState == %lu AND state == %lu AND drawingLayer == %lu", a4, a5, a6]];
  if (([(CUIThemeSchemaRenditionGroup *)self partFeatures]& 1) != 0 && ([(CUIThemeSchemaRenditionGroup *)self partFeatures]& 0x4000) != 0)
  {
    for (i = 0; i != 3; ++i)
    {
      v25 = [(NSArray *)v36 filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"value == %lu", i]];
      if ([(NSArray *)v25 count])
      {
        v26 = [-[NSArray objectAtIndex:](v25 objectAtIndex:{0), "valueLocalizedString"}];
        v27 = objc_alloc_init(CUIThemeSchemaPSDLayerGroup);
        [(CUIThemeSchemaPSDLayerGroup *)v27 setIsStart:1];
        v37 = v26;
        [(CUIThemeSchemaPSDLayer *)v27 setName:v26];
        [a3 addObject:v27];
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v28 = [(NSArray *)v25 countByEnumeratingWithState:&v46 objects:v52 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v47;
          do
          {
            for (j = 0; j != v29; j = j + 1)
            {
              if (*v47 != v30)
              {
                objc_enumerationMutation(v25);
              }

              v32 = *(*(&v46 + 1) + 8 * j);
              v33 = [v32 dimension1LocalizedString];
              v34 = objc_alloc_init(CUIThemeSchemaPSDRenditionLayer);
              [(CUIThemeSchemaPSDLayer *)v34 setName:v33];
              [(CUIThemeSchemaPSDRenditionLayer *)v34 setRendition:v32];
              [a3 addObject:v34];
            }

            v29 = [(NSArray *)v25 countByEnumeratingWithState:&v46 objects:v52 count:16];
          }

          while (v29);
        }

        v35 = objc_alloc_init(CUIThemeSchemaPSDLayerGroup);
        [(CUIThemeSchemaPSDLayerGroup *)v35 setIsStart:0];
        [(CUIThemeSchemaPSDLayer *)v35 setName:v37];
        [a3 addObject:v35];
      }
    }
  }

  else if (([(CUIThemeSchemaRenditionGroup *)self partFeatures]& 1) != 0)
  {
    v16 = [(NSArray *)v36 sortedArrayUsingComparator:&__block_literal_global_104];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v43;
      do
      {
        for (k = 0; k != v18; k = k + 1)
        {
          if (*v43 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v42 + 1) + 8 * k);
          v22 = [v21 valueLocalizedString];
          v23 = objc_alloc_init(CUIThemeSchemaPSDRenditionLayer);
          [(CUIThemeSchemaPSDRenditionLayer *)v23 setRendition:v21];
          [(CUIThemeSchemaPSDLayer *)v23 setName:v22];
          [a3 addObject:v23];
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v42 objects:v51 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v8 = [(NSArray *)v36 sortedArrayUsingComparator:&__block_literal_global_106];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v39;
      do
      {
        for (m = 0; m != v10; m = m + 1)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v38 + 1) + 8 * m);
          v14 = [v13 dimension1LocalizedString];
          v15 = objc_alloc_init(CUIThemeSchemaPSDRenditionLayer);
          [(CUIThemeSchemaPSDRenditionLayer *)v15 setRendition:v13];
          [(CUIThemeSchemaPSDLayer *)v15 setName:v14];
          [a3 addObject:v15];
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v10);
    }
  }
}

uint64_t __104__CUIThemeSchemaRenditionGroup_addValueOrDim1LayersToPSDLayers_forPresentationState_state_drawingLayer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 value];
  if (v5 < [a3 value])
  {
    return -1;
  }

  v7 = [a2 value];
  return v7 > [a3 value];
}

uint64_t __104__CUIThemeSchemaRenditionGroup_addValueOrDim1LayersToPSDLayers_forPresentationState_state_drawingLayer___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 dimension1];
  if (v5 < [a3 dimension1])
  {
    return -1;
  }

  v7 = [a2 dimension1];
  return v7 > [a3 dimension1];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIThemeSchemaRenditionGroup;
  [(CUIThemeSchemaRenditionGroup *)&v3 dealloc];
}

@end