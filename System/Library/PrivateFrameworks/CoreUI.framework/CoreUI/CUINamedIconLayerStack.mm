@interface CUINamedIconLayerStack
+ (id)_createLayers:(id)layers fromTheme:(unint64_t)theme baseRendition:(id)rendition withBlock:(id)block;
- (BOOL)_updateFromCatalog:(id)catalog displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)name;
- (BOOL)_updateLayers:(id)layers fromCatalog:(id)catalog displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)name;
- (CGSize)size;
- (CUINamedIconLayerStack)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme resolvingWithBlock:(id)block;
- (NSDictionary)renderingProperties;
- (id)dataRepresentationWithError:(id *)error;
- (id)iconLayerStackByAppendingLayerImages:(id)images;
- (id)iconLayerStackByAppendingLayers:(id)layers;
- (id)mutableCopy;
- (void)_addLayer:(id)layer;
- (void)_processIconGroups:(id)groups layers:(id)layers forName:(id)name andScale:(double)scale layerIdentifier:(int *)identifier error:(id *)error;
- (void)dealloc;
@end

@implementation CUINamedIconLayerStack

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUINamedIconLayerStack;
  [(CUINamedLookup *)&v3 dealloc];
}

- (CGSize)size
{
  metrics = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] metrics];

  [metrics imageSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (NSDictionary)renderingProperties
{
  _rendition = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)_rendition properties];
}

- (CUINamedIconLayerStack)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme resolvingWithBlock:(id)block
{
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = CUINamedIconLayerStack;
  v9 = [(CUINamedLookup *)&v20 initWithName:name usingRenditionKey:key fromTheme:?];
  v10 = v9;
  if (v9)
  {
    _rendition = [(CUINamedLookup *)v9 _rendition];
    if ([(CUIThemeRendition *)_rendition type]!= 1019)
    {
      _CUILog(4, "CoreUI: Attempting to create named icon layer stack '%@' from inappropriate rendition type: %@", v12, v13, v14, v15, v16, v17, nameCopy);
LABEL_8:

      return 0;
    }

    if (!nameCopy)
    {
      [(CUINamedLookup *)v10 setName:[(CUIThemeRendition *)_rendition name]];
      nameCopy = [(CUIThemeRendition *)_rendition name];
    }

    v18 = [objc_opt_class() _createLayers:nameCopy fromTheme:theme baseRendition:_rendition withBlock:block];
    v10->_layers = v18;
    if (!v18)
    {
      goto LABEL_8;
    }
  }

  return v10;
}

- (BOOL)_updateLayers:(id)layers fromCatalog:(id)catalog displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)name
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [layers countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    v15 = &selRef_encodeBytes_length_forKey_;
    while (2)
    {
      v16 = 0;
      v17 = v15[395];
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(layers);
        }

        v18 = *(*(&v28 + 1) + 8 * v16);
        [v18 _updateFromCatalog:catalog displayGamut:gamut deviceIdiom:idiom appearanceName:name];
        if ((objc_opt_respondsToSelector() & 1) != 0 && !-[CUINamedIconLayerStack _updateLayers:fromCatalog:displayGamut:deviceIdiom:appearanceName:](self, "_updateLayers:fromCatalog:displayGamut:deviceIdiom:appearanceName:", [v18 performSelector:v17], catalog, gamut, idiom, name))
        {
          name = [(CUINamedLookup *)self name];
          _CUILog(4, "CoreUI: Couldn't resolve colors for icon layer stack %@", v21, v22, v23, v24, v25, v26, name);
          return 0;
        }

        v16 = v16 + 1;
      }

      while (v13 != v16);
      v13 = [layers countByEnumeratingWithState:&v28 objects:v32 count:16];
      v15 = &selRef_encodeBytes_length_forKey_;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (BOOL)_updateFromCatalog:(id)catalog displayGamut:(int64_t)gamut deviceIdiom:(int64_t)idiom appearanceName:(id)name
{
  v13.receiver = self;
  v13.super_class = CUINamedIconLayerStack;
  v11 = [CUINamedLookup _updateFromCatalog:sel__updateFromCatalog_displayGamut_deviceIdiom_appearanceName_ displayGamut:? deviceIdiom:? appearanceName:?];
  if (v11)
  {
    [(CUINamedIconLayerStack *)self _updateLayers:self->_layers fromCatalog:catalog displayGamut:gamut deviceIdiom:idiom appearanceName:name];
  }

  return v11;
}

+ (id)_createLayers:(id)layers fromTheme:(unint64_t)theme baseRendition:(id)rendition withBlock:(id)block
{
  v9 = _LookupStructuredThemeProvider(theme, a2);
  v10 = objc_alloc_init(NSMutableArray);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [rendition layerReferences];
  v11 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v11)
  {
    return v10;
  }

  v12 = v11;
  v40 = 0;
  v13 = *v43;
  while (2)
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v43 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v41 = *(*(&v42 + 1) + 8 * i);
      referenceKey = [v41 referenceKey];
      v16 = CUIRenditionKeyValueForAttribute([referenceKey keyList], 12);
      v17 = (*(block + 2))(block, referenceKey, v16);
      if (!v17)
      {
        v17 = (*(block + 2))(block, referenceKey, -1.0);
        if (!v17)
        {
          [v41 referenceKey];
          _CUILog(4, "CoreUI: Unable to resolve layer reference for '%@' name '%@' layerRef referenceKey '%@'", v32, v33, v34, v35, v36, v37, v41);
          goto LABEL_31;
        }
      }

      v18 = v17;
      v19 = [objc_msgSend(v9 "themeStore")];
      if (![(NSString *)v19 length])
      {
        v19 = [NSString stringWithFormat:@"Layer %d", v40];
        v40 = (v40 + 1);
      }

      v20 = [objc_msgSend(v9 renditionWithKey:objc_msgSend(v18 usingKeySignature:{"keyList"), 0), "type"}];
      if (v20 > 8)
      {
        if (v20 <= 1019)
        {
          if (v20 == 9)
          {
            v27 = [[CUINamedLayerVectorSVGImage alloc] initWithName:v19 usingRenditionKey:v18 fromTheme:theme];
            [v41 frame];
            [(CUINamedLayerVectorSVGImage *)v27 setFrame:?];
            [v41 blurStrength];
            [(CUINamedLayerVectorSVGImage *)v27 setBlurStrength:v30];
            -[CUINamedLayerVectorSVGImage setGradientOrColorName:](v27, "setGradientOrColorName:", [v41 gradientOrColorName]);
            -[CUINamedLayerVectorSVGImage setHasLightingEffects:](v27, "setHasLightingEffects:", [v41 hasLightingEffects]);
            -[CUINamedLayerVectorSVGImage _setBlendMode:](v27, "_setBlendMode:", [v41 blendMode]);
            [v41 opacity];
            [(CUINamedLayerVectorSVGImage *)v27 setOpacity:?];
            if (!v27)
            {
              goto LABEL_31;
            }

            goto LABEL_26;
          }

          if (v20 != 1009)
          {
            goto LABEL_30;
          }

          v29 = CUINamedColor;
LABEL_21:
          v27 = [[v29 alloc] initWithName:v19 usingRenditionKey:v18 fromTheme:theme];
          if (!v27)
          {
            goto LABEL_31;
          }

          goto LABEL_26;
        }

        if (v20 == 1020)
        {
          v27 = [[CUINamedIconLayerGroup alloc] initWithName:v19 usingRenditionKey:v18 fromTheme:theme resolvingWithBlock:block];
          [v41 blurStrength];
          [(CUINamedLayerVectorSVGImage *)v27 setBlurStrength:v31];
          -[CUINamedLayerVectorSVGImage setGradientOrColorName:](v27, "setGradientOrColorName:", [v41 gradientOrColorName]);
          -[CUINamedLayerVectorSVGImage setHasLightingEffects:](v27, "setHasLightingEffects:", [v41 hasLightingEffects]);
          -[CUINamedLayerVectorSVGImage setGathersSpecularByElement:](v27, "setGathersSpecularByElement:", [v41 gathersSpecularByElement]);
          -[CUINamedLayerVectorSVGImage setBlendMode:](v27, "setBlendMode:", [v41 blendMode]);
          [v41 opacity];
          [(CUINamedLayerVectorSVGImage *)v27 setOpacity:?];
          -[CUINamedLayerVectorSVGImage setHasSpecular:](v27, "setHasSpecular:", [v41 hasSpecular]);
          [v41 translucency];
          [(CUINamedLayerVectorSVGImage *)v27 setTranslucency:?];
          [v41 shadowOpacity];
          [(CUINamedLayerVectorSVGImage *)v27 setShadowOpacity:?];
          -[CUINamedLayerVectorSVGImage setShadowStyle:](v27, "setShadowStyle:", [v41 shadowStyle]);
          if (!v27)
          {
            goto LABEL_31;
          }

          goto LABEL_26;
        }

        if (v20 == 1021)
        {
          v29 = CUINamedGradient;
          goto LABEL_21;
        }

LABEL_30:
        _CUILog(4, "CoreUI: Unable to connect a layer reference '%@' unsupported type to NamedIconLayerStack '%@' layerRef referenceKey '%@'", v21, v22, v23, v24, v25, v26, v19);
LABEL_31:

        return 0;
      }

      if (v20 >= 6)
      {
        goto LABEL_30;
      }

      v27 = [[CUINamedLayerImage alloc] initWithName:v19 usingRenditionKey:v18 fromTheme:theme];
      [v41 frame];
      [(CUINamedLayerVectorSVGImage *)v27 _setFrame:?];
      [v41 blurStrength];
      [(CUINamedLayerVectorSVGImage *)v27 setBlurStrength:v28];
      -[CUINamedLayerVectorSVGImage setGradientOrColorName:](v27, "setGradientOrColorName:", [v41 gradientOrColorName]);
      -[CUINamedLayerVectorSVGImage setHasLightingEffects:](v27, "setHasLightingEffects:", [v41 hasLightingEffects]);
      -[CUINamedLayerVectorSVGImage _setBlendMode:](v27, "_setBlendMode:", [v41 blendMode]);
      [v41 opacity];
      [(CUINamedLayerVectorSVGImage *)v27 _setOpacity:?];
      if (!v27)
      {
        goto LABEL_31;
      }

LABEL_26:
      [v10 addObject:v27];
    }

    v12 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v12)
    {
      continue;
    }

    return v10;
  }
}

- (void)_addLayer:(id)layer
{
  layers = self->_layers;
  if (!layers)
  {
    layers = objc_alloc_init(NSMutableArray);
    self->_layers = layers;
  }

  [(NSMutableArray *)layers addObject:layer];
}

- (void)_processIconGroups:(id)groups layers:(id)layers forName:(id)name andScale:(double)scale layerIdentifier:(int *)identifier error:(id *)error
{
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v106 = [layers countByEnumeratingWithState:&v107 objects:v111 count:16];
  if (v106)
  {
    groupsCopy = groups;
    v105 = *v108;
    identifierCopy = identifier;
    nameCopy = name;
    do
    {
      v12 = 0;
      do
      {
        if (*v108 != v105)
        {
          objc_enumerationMutation(layers);
        }

        v13 = *(*(&v107 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          name = [v13 name];
          if ([name length])
          {
            v15 = [NSString stringWithFormat:@"%@/%@", name, name];
          }

          else
          {
            v15 = [NSString stringWithFormat:@"%@/IMGLayer %d", name, (*identifier)++];
          }

          image = [v13 image];
          [v13 scale];
          if (scaleCopy == 0.0)
          {
            scaleCopy = scale;
          }

          v22 = scaleCopy;
          [groups addImage:image withName:v15 atScale:scaleCopy];
          v23 = objc_alloc_init(CUIRenditionLayerReference);
          [(CUIRenditionLayerReference *)v23 setLayerName:v15];
          [v13 frame];
          [(CUIRenditionLayerReference *)v23 setFrame:?];
          [v13 opacity];
          [(CUIRenditionLayerReference *)v23 setOpacity:?];
          -[CUIRenditionLayerReference setBlendMode:](v23, "setBlendMode:", [v13 blendMode]);
          [v13 blurStrength];
          *&v24 = v24;
          [(CUIRenditionLayerReference *)v23 setBlurStrength:v24];
          -[CUIRenditionLayerReference setHasLightingEffects:](v23, "setHasLightingEffects:", [v13 hasLightingEffects]);
          color = [v13 color];
          if (color)
          {
            v26 = color;
            if ([objc_msgSend(v13 "gradientOrColorName")])
            {
              gradientOrColorName = [v13 gradientOrColorName];
            }

            else
            {
              gradientOrColorName = [NSString stringWithFormat:@"%@/Color", v15];
            }

            [(CUIRenditionLayerReference *)v23 setGradientOrColorName:gradientOrColorName];
            groups = groupsCopy;
            [groupsCopy addColor:v26 withName:-[CUIRenditionLayerReference gradientOrColorName](v23 atScale:{"gradientOrColorName"), 1}];
          }

          else
          {
            gradient = [v13 gradient];
            groups = groupsCopy;
            if (gradient)
            {
              v29 = gradient;
              if ([objc_msgSend(v13 "gradientOrColorName")])
              {
                gradientOrColorName2 = [v13 gradientOrColorName];
              }

              else
              {
                gradientOrColorName2 = [NSString stringWithFormat:@"%@/Gradient", v15];
              }

              [(CUIRenditionLayerReference *)v23 setGradientOrColorName:gradientOrColorName2];
              colors = [v29 colors];
              colorStops = [v29 colorStops];
              gradientType = [v29 gradientType];
              [v29 gradientStartPoint];
              v51 = v50;
              v53 = v52;
              [v29 gradientEndPoint];
              groups = groupsCopy;
              [groupsCopy addGradient:colors withStops:colorStops ofType:gradientType startPoint:-[CUIRenditionLayerReference gradientOrColorName](v23 endPoint:"gradientOrColorName") withName:1 atScale:{v51, v53, v54, v55}];
              identifier = identifierCopy;
              name = nameCopy;
            }
          }

          [groups addLayerReference:v23 forImage:image toLayerStackWithName:name atScale:v22];

          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v57 = objc_alloc_init(TXRDefaultBufferAllocator);
            v56 = [v13 sdfTextureWithBufferAllocator:v57];

            if (!v56)
            {
              goto LABEL_57;
            }

LABEL_51:
            [groups addTexture:v56 withName:v15 atScale:v22];
            goto LABEL_57;
          }

          v56 = [v13 performSelector:sel_sdfTexture];
          if (v56)
          {
            goto LABEL_51;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            name2 = [v13 name];
            if ([name2 length])
            {
              v17 = [NSString stringWithFormat:@"%@/%@", name, name2];
            }

            else
            {
              v17 = [NSString stringWithFormat:@"%@/SVGLayer %d", name, (*identifier)++];
            }

            svgDocument = [v13 svgDocument];
            [v13 scale];
            if (scaleCopy2 == 0.0)
            {
              scaleCopy2 = scale;
            }

            v35 = scaleCopy2;
            [groups addSVGDocument:svgDocument withName:v17 atScale:scaleCopy2];
            v36 = objc_alloc_init(CUIRenditionLayerReference);
            [(CUIRenditionLayerReference *)v36 setLayerName:v17];
            [v13 frame];
            [(CUIRenditionLayerReference *)v36 setFrame:?];
            [v13 opacity];
            [(CUIRenditionLayerReference *)v36 setOpacity:?];
            -[CUIRenditionLayerReference setBlendMode:](v36, "setBlendMode:", [v13 blendMode]);
            [v13 blurStrength];
            *&v37 = v37;
            [(CUIRenditionLayerReference *)v36 setBlurStrength:v37];
            -[CUIRenditionLayerReference setHasLightingEffects:](v36, "setHasLightingEffects:", [v13 hasLightingEffects]);
            color2 = [v13 color];
            if (color2)
            {
              v39 = color2;
              if ([objc_msgSend(v13 "gradientOrColorName")])
              {
                gradientOrColorName3 = [v13 gradientOrColorName];
              }

              else
              {
                gradientOrColorName3 = [NSString stringWithFormat:@"%@/Color", v17];
              }

              [(CUIRenditionLayerReference *)v36 setGradientOrColorName:gradientOrColorName3];
              v42 = groupsCopy;
              [groupsCopy addColor:v39 withName:-[CUIRenditionLayerReference gradientOrColorName](v36 atScale:{"gradientOrColorName"), 1}];
            }

            else
            {
              gradient2 = [v13 gradient];
              v42 = groupsCopy;
              if (gradient2)
              {
                v43 = gradient2;
                if ([objc_msgSend(v13 "gradientOrColorName")])
                {
                  gradientOrColorName4 = [v13 gradientOrColorName];
                }

                else
                {
                  gradientOrColorName4 = [NSString stringWithFormat:@"%@/Gradient", v17];
                }

                [(CUIRenditionLayerReference *)v36 setGradientOrColorName:gradientOrColorName4];
                colors2 = [v43 colors];
                colorStops2 = [v43 colorStops];
                gradientType2 = [v43 gradientType];
                [v43 gradientStartPoint];
                v73 = v72;
                v75 = v74;
                [v43 gradientEndPoint];
                v42 = groupsCopy;
                [groupsCopy addGradient:colors2 withStops:colorStops2 ofType:gradientType2 startPoint:-[CUIRenditionLayerReference gradientOrColorName](v36 endPoint:"gradientOrColorName") withName:1 atScale:{v73, v75, v76, v77}];
                name = nameCopy;
              }
            }

            [v42 addLayerReference:v36 forSVGDocumentToLayerStackWithName:name atScale:v35];

            groups = v42;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              name3 = [v13 name];
              if ([name3 length])
              {
                v19 = [NSString stringWithFormat:@"%@/%@", name, name3];
              }

              else
              {
                v19 = [NSString stringWithFormat:@"%@/Color %d", name, (*identifier)++];
              }

              [groups addColor:objc_msgSend(v13 withName:"cgColor") atScale:{v19, 1}];
              v47 = objc_alloc_init(CUIRenditionLayerReference);
              [(CUIRenditionLayerReference *)v47 setLayerName:v19];
              [groups addLayerReference:v47 forColorToLayerStackWithName:name atScale:1];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                name4 = [v13 name];
                if ([name4 length])
                {
                  v32 = [NSString stringWithFormat:@"%@/%@", name, name4];
                }

                else
                {
                  v32 = [NSString stringWithFormat:@"%@/Gradient %d", name, (*identifier)++];
                }

                nameCopy2 = name;
                colors3 = [v13 colors];
                colorStops3 = [v13 colorStops];
                gradientType3 = [v13 gradientType];
                [v13 gradientStartPoint];
                v63 = v62;
                v65 = v64;
                [v13 gradientEndPoint];
                [groups addGradient:colors3 withStops:colorStops3 ofType:gradientType3 startPoint:v32 endPoint:1 withName:v63 atScale:{v65, v66, v67}];
                v68 = objc_alloc_init(CUIRenditionLayerReference);
                [(CUIRenditionLayerReference *)v68 setLayerName:v32];
                [groups addLayerReference:v68 forGradientToLayerStackWithName:nameCopy2 atScale:1];

                name = nameCopy2;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  name5 = [v13 name];
                  if ([name5 length])
                  {
                    v46 = [NSString stringWithFormat:@"%@/%@", name, name5];
                  }

                  else
                  {
                    v46 = [NSString stringWithFormat:@"%@/Group %d", name, (*identifier)++];
                  }

                  [v13 scale];
                  if (v78 == 0.0)
                  {
                    scaleCopy3 = scale;
                  }

                  else
                  {
                    scaleCopy3 = v78;
                  }

                  [groups addIconLayerGroupWithName:v46 atScale:scaleCopy3];
                  v80 = objc_alloc_init(CUIRenditionLayerReference);
                  color3 = [v13 color];
                  if (color3)
                  {
                    v82 = color3;
                    if ([objc_msgSend(v13 "gradientOrColorName")])
                    {
                      gradientOrColorName5 = [v13 gradientOrColorName];
                    }

                    else
                    {
                      gradientOrColorName5 = [NSString stringWithFormat:@"%@/Color", v46];
                    }

                    [(CUIRenditionLayerReference *)v80 setGradientOrColorName:gradientOrColorName5];
                    [groups addColor:v82 withName:-[CUIRenditionLayerReference gradientOrColorName](v80 atScale:{"gradientOrColorName"), 1}];
                  }

                  else
                  {
                    gradient3 = [v13 gradient];
                    if (gradient3)
                    {
                      v85 = gradient3;
                      if ([objc_msgSend(v13 "gradientOrColorName")])
                      {
                        gradientOrColorName6 = [v13 gradientOrColorName];
                      }

                      else
                      {
                        gradientOrColorName6 = [NSString stringWithFormat:@"%@/Gradient", v46];
                      }

                      [(CUIRenditionLayerReference *)v80 setGradientOrColorName:gradientOrColorName6];
                      colors4 = [v85 colors];
                      colorStops4 = [v85 colorStops];
                      gradientType4 = [v85 gradientType];
                      [v85 gradientStartPoint];
                      v91 = v90;
                      v93 = v92;
                      [v85 gradientEndPoint];
                      [groups addGradient:colors4 withStops:colorStops4 ofType:gradientType4 startPoint:-[CUIRenditionLayerReference gradientOrColorName](v80 endPoint:"gradientOrColorName") withName:1 atScale:{v91, v93, v94, v95}];
                      identifier = identifierCopy;
                      name = nameCopy;
                    }
                  }

                  [(CUIRenditionLayerReference *)v80 setLayerName:v46];
                  [v13 opacity];
                  [(CUIRenditionLayerReference *)v80 setOpacity:?];
                  -[CUIRenditionLayerReference setBlendMode:](v80, "setBlendMode:", [v13 blendMode]);
                  [v13 blurStrength];
                  *&v96 = v96;
                  [(CUIRenditionLayerReference *)v80 setBlurStrength:v96];
                  -[CUIRenditionLayerReference setHasLightingEffects:](v80, "setHasLightingEffects:", [v13 hasLightingEffects]);
                  [v13 shadowOpacity];
                  [(CUIRenditionLayerReference *)v80 setShadowOpacity:?];
                  -[CUIRenditionLayerReference setShadowStyle:](v80, "setShadowStyle:", [v13 shadowStyle]);
                  -[CUIRenditionLayerReference setHasSpecular:](v80, "setHasSpecular:", [v13 hasSpecular]);
                  [v13 translucency];
                  [(CUIRenditionLayerReference *)v80 setTranslucency:?];
                  [groups addLayerReference:v80 forGroupToLayerStackWithName:name atScale:scaleCopy3];

                  -[CUINamedIconLayerStack _processIconGroups:layers:forName:andScale:layerIdentifier:error:](self, "_processIconGroups:layers:forName:andScale:layerIdentifier:error:", groups, [v13 layers], v46, identifier, error, scaleCopy3);
                }
              }
            }
          }
        }

LABEL_57:
        v12 = v12 + 1;
      }

      while (v106 != v12);
      v97 = [layers countByEnumeratingWithState:&v107 objects:v111 count:16];
      v106 = v97;
    }

    while (v97);
  }
}

- (id)dataRepresentationWithError:(id *)error
{
  kdebug_trace();
  v5 = CUICurrentPlatform();
  v15 = 0;
  v16[0] = NSTemporaryDirectory();
  v16[1] = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"coreui-iconlayerstack-%@", [+[NSProcessInfo globallyUniqueString] processInfo];
  v6 = [[NSURL fileURLWithPathComponents:?], "URLByAppendingPathExtension:", @"car"];
  v7 = [[CUISingleNamedAssetCreator alloc] initWithOutputURL:v6 versionString:[NSString stringWithFormat:@"%s", "@(#)PROGRAM:CoreUI  PROJECT:CoreUI-971.6\n"]];
  [(CUISingleNamedAssetCreator *)v7 setUpdateBitmapIndex:1];
  [(CUISingleNamedAssetCreator *)v7 setThinningArguments:@"CUINamedIconLayerStack serialized"];
  [(CUISingleNamedAssetCreator *)v7 setTargetPlatform:v5];
  [(CUISingleNamedAssetCreator *)v7 setAllowsWideGamutImages:1];
  [(CUISingleNamedAssetCreator *)v7 setGenerateFlattenedImages:0];
  [(CUISingleNamedAssetCreator *)v7 setCheckForMonochrome:0];
  [(CUISingleNamedAssetCreator *)v7 setCompressionType:4 * ((v5 & 0xFFFFFFFFFFFFFFFDLL) != 0)];
  if ([(NSString *)[(CUINamedLookup *)self name] length])
  {
    name = [(CUINamedLookup *)self name];
  }

  else
  {
    name = @"AppIcon";
  }

  [(CUINamedLookup *)self scale];
  v10 = v9;
  [(CUINamedIconLayerStack *)self size];
  [(CUISingleNamedAssetCreator *)v7 addIconLayerStackWithSize:0 stackData:name name:v10 atScale:[(CUINamedIconLayerStack *)self renderingProperties] withRenderingProperties:v11, v12];
  if (error)
  {
    *error = 0;
    [(CUINamedIconLayerStack *)self _processIconGroups:v7 layers:[(CUINamedIconLayerStack *)self layers] forName:name andScale:&v15 layerIdentifier:error error:v10];
    v13 = 0;
    if (*error)
    {
      return v13;
    }
  }

  else
  {
    [(CUINamedIconLayerStack *)self _processIconGroups:v7 layers:[(CUINamedIconLayerStack *)self layers] forName:name andScale:&v15 layerIdentifier:0 error:v10];
  }

  if ([(CUISingleNamedAssetCreator *)v7 distillAndSave:error])
  {
    v13 = [NSData dataWithContentsOfURL:v6 options:0 error:error];
  }

  else
  {
    v13 = 0;
  }

  [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:v6, 0];
  [(NSData *)v13 length];
  kdebug_trace();
  return v13;
}

- (id)mutableCopy
{
  v3 = [CUIMutableNamedIconLayerStack alloc];
  name = [(CUINamedLookup *)self name];
  [(CUINamedIconLayerStack *)self size];
  v6 = v5;
  v8 = v7;
  [(CUINamedLookup *)self scale];
  v10 = [(CUIMutableNamedIconLayerStack *)v3 initWithName:name withSize:v6 atScale:v8, v9];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  layers = [(CUINamedIconLayerStack *)self layers];
  v12 = [(NSArray *)layers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(layers);
        }

        v16 = [*(*(&v18 + 1) + 8 * v15) mutableCopy];
        [(CUIMutableNamedIconLayerStack *)v10 addLayer:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSArray *)layers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

- (id)iconLayerStackByAppendingLayers:(id)layers
{
  v4 = [(CUINamedIconLayerStack *)self mutableCopy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [layers countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [v4 addLayer:*(*(&v10 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [layers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)iconLayerStackByAppendingLayerImages:(id)images
{
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(images, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [images countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(images);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = objc_alloc_init(CUIMutableNamedLayerImage);
        [(CUIMutableNamedLayerImage *)v11 setImage:v10];
        Width = CGImageGetWidth(v10);
        [(CUIMutableNamedLayerImage *)v11 setFrame:0.0, 0.0, Width, CGImageGetHeight(v10)];
        [(CUIMutableNamedLayerImage *)v11 setScale:1.0];
        [(CUIMutableNamedLayerImage *)v11 setOpacity:1.0];
        [v5 addObject:v11];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [images countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [(CUINamedIconLayerStack *)self iconLayerStackByAppendingLayers:v5];

  return v13;
}

@end