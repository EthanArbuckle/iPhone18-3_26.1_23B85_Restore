@interface CUINamedIconLayerStack
+ (id)_createLayers:(id)a3 fromTheme:(unint64_t)a4 baseRendition:(id)a5 withBlock:(id)a6;
- (BOOL)_updateFromCatalog:(id)a3 displayGamut:(int64_t)a4 deviceIdiom:(int64_t)a5 appearanceName:(id)a6;
- (BOOL)_updateLayers:(id)a3 fromCatalog:(id)a4 displayGamut:(int64_t)a5 deviceIdiom:(int64_t)a6 appearanceName:(id)a7;
- (CGSize)size;
- (CUINamedIconLayerStack)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5 resolvingWithBlock:(id)a6;
- (NSDictionary)renderingProperties;
- (id)dataRepresentationWithError:(id *)a3;
- (id)iconLayerStackByAppendingLayerImages:(id)a3;
- (id)iconLayerStackByAppendingLayers:(id)a3;
- (id)mutableCopy;
- (void)_addLayer:(id)a3;
- (void)_processIconGroups:(id)a3 layers:(id)a4 forName:(id)a5 andScale:(double)a6 layerIdentifier:(int *)a7 error:(id *)a8;
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
  v2 = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] metrics];

  [v2 imageSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (NSDictionary)renderingProperties
{
  v2 = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)v2 properties];
}

- (CUINamedIconLayerStack)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5 resolvingWithBlock:(id)a6
{
  v8 = a3;
  v20.receiver = self;
  v20.super_class = CUINamedIconLayerStack;
  v9 = [(CUINamedLookup *)&v20 initWithName:a3 usingRenditionKey:a4 fromTheme:?];
  v10 = v9;
  if (v9)
  {
    v11 = [(CUINamedLookup *)v9 _rendition];
    if ([(CUIThemeRendition *)v11 type]!= 1019)
    {
      _CUILog(4, "CoreUI: Attempting to create named icon layer stack '%@' from inappropriate rendition type: %@", v12, v13, v14, v15, v16, v17, v8);
LABEL_8:

      return 0;
    }

    if (!v8)
    {
      [(CUINamedLookup *)v10 setName:[(CUIThemeRendition *)v11 name]];
      v8 = [(CUIThemeRendition *)v11 name];
    }

    v18 = [objc_opt_class() _createLayers:v8 fromTheme:a5 baseRendition:v11 withBlock:a6];
    v10->_layers = v18;
    if (!v18)
    {
      goto LABEL_8;
    }
  }

  return v10;
}

- (BOOL)_updateLayers:(id)a3 fromCatalog:(id)a4 displayGamut:(int64_t)a5 deviceIdiom:(int64_t)a6 appearanceName:(id)a7
{
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [a3 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(a3);
        }

        v18 = *(*(&v28 + 1) + 8 * v16);
        [v18 _updateFromCatalog:a4 displayGamut:a5 deviceIdiom:a6 appearanceName:a7];
        if ((objc_opt_respondsToSelector() & 1) != 0 && !-[CUINamedIconLayerStack _updateLayers:fromCatalog:displayGamut:deviceIdiom:appearanceName:](self, "_updateLayers:fromCatalog:displayGamut:deviceIdiom:appearanceName:", [v18 performSelector:v17], a4, a5, a6, a7))
        {
          v20 = [(CUINamedLookup *)self name];
          _CUILog(4, "CoreUI: Couldn't resolve colors for icon layer stack %@", v21, v22, v23, v24, v25, v26, v20);
          return 0;
        }

        v16 = v16 + 1;
      }

      while (v13 != v16);
      v13 = [a3 countByEnumeratingWithState:&v28 objects:v32 count:16];
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

- (BOOL)_updateFromCatalog:(id)a3 displayGamut:(int64_t)a4 deviceIdiom:(int64_t)a5 appearanceName:(id)a6
{
  v13.receiver = self;
  v13.super_class = CUINamedIconLayerStack;
  v11 = [CUINamedLookup _updateFromCatalog:sel__updateFromCatalog_displayGamut_deviceIdiom_appearanceName_ displayGamut:? deviceIdiom:? appearanceName:?];
  if (v11)
  {
    [(CUINamedIconLayerStack *)self _updateLayers:self->_layers fromCatalog:a3 displayGamut:a4 deviceIdiom:a5 appearanceName:a6];
  }

  return v11;
}

+ (id)_createLayers:(id)a3 fromTheme:(unint64_t)a4 baseRendition:(id)a5 withBlock:(id)a6
{
  v9 = _LookupStructuredThemeProvider(a4, a2);
  v10 = objc_alloc_init(NSMutableArray);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [a5 layerReferences];
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
      v15 = [v41 referenceKey];
      v16 = CUIRenditionKeyValueForAttribute([v15 keyList], 12);
      v17 = (*(a6 + 2))(a6, v15, v16);
      if (!v17)
      {
        v17 = (*(a6 + 2))(a6, v15, -1.0);
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
            v27 = [[CUINamedLayerVectorSVGImage alloc] initWithName:v19 usingRenditionKey:v18 fromTheme:a4];
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
          v27 = [[v29 alloc] initWithName:v19 usingRenditionKey:v18 fromTheme:a4];
          if (!v27)
          {
            goto LABEL_31;
          }

          goto LABEL_26;
        }

        if (v20 == 1020)
        {
          v27 = [[CUINamedIconLayerGroup alloc] initWithName:v19 usingRenditionKey:v18 fromTheme:a4 resolvingWithBlock:a6];
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

      v27 = [[CUINamedLayerImage alloc] initWithName:v19 usingRenditionKey:v18 fromTheme:a4];
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

- (void)_addLayer:(id)a3
{
  layers = self->_layers;
  if (!layers)
  {
    layers = objc_alloc_init(NSMutableArray);
    self->_layers = layers;
  }

  [(NSMutableArray *)layers addObject:a3];
}

- (void)_processIconGroups:(id)a3 layers:(id)a4 forName:(id)a5 andScale:(double)a6 layerIdentifier:(int *)a7 error:(id *)a8
{
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v106 = [a4 countByEnumeratingWithState:&v107 objects:v111 count:16];
  if (v106)
  {
    v104 = a3;
    v105 = *v108;
    v100 = a7;
    v101 = a5;
    do
    {
      v12 = 0;
      do
      {
        if (*v108 != v105)
        {
          objc_enumerationMutation(a4);
        }

        v13 = *(*(&v107 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 name];
          if ([v14 length])
          {
            v15 = [NSString stringWithFormat:@"%@/%@", a5, v14];
          }

          else
          {
            v15 = [NSString stringWithFormat:@"%@/IMGLayer %d", a5, (*a7)++];
          }

          v20 = [v13 image];
          [v13 scale];
          if (v21 == 0.0)
          {
            v21 = a6;
          }

          v22 = v21;
          [a3 addImage:v20 withName:v15 atScale:v21];
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
          v25 = [v13 color];
          if (v25)
          {
            v26 = v25;
            if ([objc_msgSend(v13 "gradientOrColorName")])
            {
              v27 = [v13 gradientOrColorName];
            }

            else
            {
              v27 = [NSString stringWithFormat:@"%@/Color", v15];
            }

            [(CUIRenditionLayerReference *)v23 setGradientOrColorName:v27];
            a3 = v104;
            [v104 addColor:v26 withName:-[CUIRenditionLayerReference gradientOrColorName](v23 atScale:{"gradientOrColorName"), 1}];
          }

          else
          {
            v28 = [v13 gradient];
            a3 = v104;
            if (v28)
            {
              v29 = v28;
              if ([objc_msgSend(v13 "gradientOrColorName")])
              {
                v30 = [v13 gradientOrColorName];
              }

              else
              {
                v30 = [NSString stringWithFormat:@"%@/Gradient", v15];
              }

              [(CUIRenditionLayerReference *)v23 setGradientOrColorName:v30];
              v102 = [v29 colors];
              v48 = [v29 colorStops];
              v49 = [v29 gradientType];
              [v29 gradientStartPoint];
              v51 = v50;
              v53 = v52;
              [v29 gradientEndPoint];
              a3 = v104;
              [v104 addGradient:v102 withStops:v48 ofType:v49 startPoint:-[CUIRenditionLayerReference gradientOrColorName](v23 endPoint:"gradientOrColorName") withName:1 atScale:{v51, v53, v54, v55}];
              a7 = v100;
              a5 = v101;
            }
          }

          [a3 addLayerReference:v23 forImage:v20 toLayerStackWithName:a5 atScale:v22];

          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v57 = objc_alloc_init(TXRDefaultBufferAllocator);
            v56 = [v13 sdfTextureWithBufferAllocator:v57];

            if (!v56)
            {
              goto LABEL_57;
            }

LABEL_51:
            [a3 addTexture:v56 withName:v15 atScale:v22];
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
            v16 = [v13 name];
            if ([v16 length])
            {
              v17 = [NSString stringWithFormat:@"%@/%@", a5, v16];
            }

            else
            {
              v17 = [NSString stringWithFormat:@"%@/SVGLayer %d", a5, (*a7)++];
            }

            v33 = [v13 svgDocument];
            [v13 scale];
            if (v34 == 0.0)
            {
              v34 = a6;
            }

            v35 = v34;
            [a3 addSVGDocument:v33 withName:v17 atScale:v34];
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
            v38 = [v13 color];
            if (v38)
            {
              v39 = v38;
              if ([objc_msgSend(v13 "gradientOrColorName")])
              {
                v40 = [v13 gradientOrColorName];
              }

              else
              {
                v40 = [NSString stringWithFormat:@"%@/Color", v17];
              }

              [(CUIRenditionLayerReference *)v36 setGradientOrColorName:v40];
              v42 = v104;
              [v104 addColor:v39 withName:-[CUIRenditionLayerReference gradientOrColorName](v36 atScale:{"gradientOrColorName"), 1}];
            }

            else
            {
              v41 = [v13 gradient];
              v42 = v104;
              if (v41)
              {
                v43 = v41;
                if ([objc_msgSend(v13 "gradientOrColorName")])
                {
                  v44 = [v13 gradientOrColorName];
                }

                else
                {
                  v44 = [NSString stringWithFormat:@"%@/Gradient", v17];
                }

                [(CUIRenditionLayerReference *)v36 setGradientOrColorName:v44];
                v69 = [v43 colors];
                v70 = [v43 colorStops];
                v71 = [v43 gradientType];
                [v43 gradientStartPoint];
                v73 = v72;
                v75 = v74;
                [v43 gradientEndPoint];
                v42 = v104;
                [v104 addGradient:v69 withStops:v70 ofType:v71 startPoint:-[CUIRenditionLayerReference gradientOrColorName](v36 endPoint:"gradientOrColorName") withName:1 atScale:{v73, v75, v76, v77}];
                a5 = v101;
              }
            }

            [v42 addLayerReference:v36 forSVGDocumentToLayerStackWithName:a5 atScale:v35];

            a3 = v42;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [v13 name];
              if ([v18 length])
              {
                v19 = [NSString stringWithFormat:@"%@/%@", a5, v18];
              }

              else
              {
                v19 = [NSString stringWithFormat:@"%@/Color %d", a5, (*a7)++];
              }

              [a3 addColor:objc_msgSend(v13 withName:"cgColor") atScale:{v19, 1}];
              v47 = objc_alloc_init(CUIRenditionLayerReference);
              [(CUIRenditionLayerReference *)v47 setLayerName:v19];
              [a3 addLayerReference:v47 forColorToLayerStackWithName:a5 atScale:1];
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v31 = [v13 name];
                if ([v31 length])
                {
                  v32 = [NSString stringWithFormat:@"%@/%@", a5, v31];
                }

                else
                {
                  v32 = [NSString stringWithFormat:@"%@/Gradient %d", a5, (*a7)++];
                }

                v58 = a5;
                v59 = [v13 colors];
                v60 = [v13 colorStops];
                v61 = [v13 gradientType];
                [v13 gradientStartPoint];
                v63 = v62;
                v65 = v64;
                [v13 gradientEndPoint];
                [a3 addGradient:v59 withStops:v60 ofType:v61 startPoint:v32 endPoint:1 withName:v63 atScale:{v65, v66, v67}];
                v68 = objc_alloc_init(CUIRenditionLayerReference);
                [(CUIRenditionLayerReference *)v68 setLayerName:v32];
                [a3 addLayerReference:v68 forGradientToLayerStackWithName:v58 atScale:1];

                a5 = v58;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v45 = [v13 name];
                  if ([v45 length])
                  {
                    v46 = [NSString stringWithFormat:@"%@/%@", a5, v45];
                  }

                  else
                  {
                    v46 = [NSString stringWithFormat:@"%@/Group %d", a5, (*a7)++];
                  }

                  [v13 scale];
                  if (v78 == 0.0)
                  {
                    v79 = a6;
                  }

                  else
                  {
                    v79 = v78;
                  }

                  [a3 addIconLayerGroupWithName:v46 atScale:v79];
                  v80 = objc_alloc_init(CUIRenditionLayerReference);
                  v81 = [v13 color];
                  if (v81)
                  {
                    v82 = v81;
                    if ([objc_msgSend(v13 "gradientOrColorName")])
                    {
                      v83 = [v13 gradientOrColorName];
                    }

                    else
                    {
                      v83 = [NSString stringWithFormat:@"%@/Color", v46];
                    }

                    [(CUIRenditionLayerReference *)v80 setGradientOrColorName:v83];
                    [a3 addColor:v82 withName:-[CUIRenditionLayerReference gradientOrColorName](v80 atScale:{"gradientOrColorName"), 1}];
                  }

                  else
                  {
                    v84 = [v13 gradient];
                    if (v84)
                    {
                      v85 = v84;
                      if ([objc_msgSend(v13 "gradientOrColorName")])
                      {
                        v86 = [v13 gradientOrColorName];
                      }

                      else
                      {
                        v86 = [NSString stringWithFormat:@"%@/Gradient", v46];
                      }

                      [(CUIRenditionLayerReference *)v80 setGradientOrColorName:v86];
                      v87 = [v85 colors];
                      v88 = [v85 colorStops];
                      v89 = [v85 gradientType];
                      [v85 gradientStartPoint];
                      v91 = v90;
                      v93 = v92;
                      [v85 gradientEndPoint];
                      [a3 addGradient:v87 withStops:v88 ofType:v89 startPoint:-[CUIRenditionLayerReference gradientOrColorName](v80 endPoint:"gradientOrColorName") withName:1 atScale:{v91, v93, v94, v95}];
                      a7 = v100;
                      a5 = v101;
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
                  [a3 addLayerReference:v80 forGroupToLayerStackWithName:a5 atScale:v79];

                  -[CUINamedIconLayerStack _processIconGroups:layers:forName:andScale:layerIdentifier:error:](self, "_processIconGroups:layers:forName:andScale:layerIdentifier:error:", a3, [v13 layers], v46, a7, a8, v79);
                }
              }
            }
          }
        }

LABEL_57:
        v12 = v12 + 1;
      }

      while (v106 != v12);
      v97 = [a4 countByEnumeratingWithState:&v107 objects:v111 count:16];
      v106 = v97;
    }

    while (v97);
  }
}

- (id)dataRepresentationWithError:(id *)a3
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
    v8 = [(CUINamedLookup *)self name];
  }

  else
  {
    v8 = @"AppIcon";
  }

  [(CUINamedLookup *)self scale];
  v10 = v9;
  [(CUINamedIconLayerStack *)self size];
  [(CUISingleNamedAssetCreator *)v7 addIconLayerStackWithSize:0 stackData:v8 name:v10 atScale:[(CUINamedIconLayerStack *)self renderingProperties] withRenderingProperties:v11, v12];
  if (a3)
  {
    *a3 = 0;
    [(CUINamedIconLayerStack *)self _processIconGroups:v7 layers:[(CUINamedIconLayerStack *)self layers] forName:v8 andScale:&v15 layerIdentifier:a3 error:v10];
    v13 = 0;
    if (*a3)
    {
      return v13;
    }
  }

  else
  {
    [(CUINamedIconLayerStack *)self _processIconGroups:v7 layers:[(CUINamedIconLayerStack *)self layers] forName:v8 andScale:&v15 layerIdentifier:0 error:v10];
  }

  if ([(CUISingleNamedAssetCreator *)v7 distillAndSave:a3])
  {
    v13 = [NSData dataWithContentsOfURL:v6 options:0 error:a3];
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
  v4 = [(CUINamedLookup *)self name];
  [(CUINamedIconLayerStack *)self size];
  v6 = v5;
  v8 = v7;
  [(CUINamedLookup *)self scale];
  v10 = [(CUIMutableNamedIconLayerStack *)v3 initWithName:v4 withSize:v6 atScale:v8, v9];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [(CUINamedIconLayerStack *)self layers];
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v18 + 1) + 8 * v15) mutableCopy];
        [(CUIMutableNamedIconLayerStack *)v10 addLayer:v16];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

- (id)iconLayerStackByAppendingLayers:(id)a3
{
  v4 = [(CUINamedIconLayerStack *)self mutableCopy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(a3);
        }

        [v4 addLayer:*(*(&v10 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)iconLayerStackByAppendingLayerImages:(id)a3
{
  v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(a3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(a3);
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
      v7 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [(CUINamedIconLayerStack *)self iconLayerStackByAppendingLayers:v5];

  return v13;
}

@end