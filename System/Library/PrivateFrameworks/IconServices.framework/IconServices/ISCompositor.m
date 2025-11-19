@interface ISCompositor
- (BOOL)canUseCoreImageForEffects;
- (CIContext)sharedCIContext;
- (ISCompositor)init;
- (ISCompositor)initWithRecipe:(id)a3;
- (ISCompositorRecipe)recipe;
- (id)filterForLayer:(id)a3 scale:(double)a4 resourceProvider:(id)a5;
- (id)imageForSize:(CGSize)a3 scale:(double)a4;
- (id)maskImageForLayer:(id)a3 size:(CGSize)a4 scale:(double)a5 resourceProvider:(id)a6;
- (id)scaledImageFromContent:(id)a3 size:(CGSize)a4 scale:(double)a5 needsScaled:(BOOL *)a6;
- (void)addElementWithRecipe:(id)a3 resources:(id)a4;
- (void)addResourcesFromDictionary:(id)a3;
- (void)clearResources;
- (void)dealloc;
- (void)drawElement:(id)a3 inContext:(id)a4;
- (void)drawInContext:(id)a3;
- (void)drawLayer:(id)a3 resourceProvider:(id)a4 inContext:(id)a5;
- (void)reset;
- (void)setRecipe:(id)a3;
- (void)setResource:(id)a3 named:(id)a4;
@end

@implementation ISCompositor

- (ISCompositor)init
{
  v6.receiver = self;
  v6.super_class = ISCompositor;
  v2 = [(ISCompositor *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    elements = v2->_elements;
    v2->_elements = v3;

    v2->_analyticsSegmented = 0;
    v2->_renderingMode = 1;
    v2->_graphicsContextPreset = 0;
  }

  return v2;
}

- (void)dealloc
{
  sharedCIContext = self->_sharedCIContext;
  if (sharedCIContext)
  {
    [sharedCIContext clearCaches];
  }

  v4.receiver = self;
  v4.super_class = ISCompositor;
  [(ISCompositor *)&v4 dealloc];
}

- (CIContext)sharedCIContext
{
  sharedCIContext = self->_sharedCIContext;
  if (!sharedCIContext)
  {
    v4 = [MEMORY[0x1E695F620] _IS_sharedIconCompositorContext];
    v5 = self->_sharedCIContext;
    self->_sharedCIContext = v4;

    sharedCIContext = self->_sharedCIContext;
  }

  return sharedCIContext;
}

- (void)addElementWithRecipe:(id)a3 resources:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_ISCompositorElement alloc] initWithRecipe:v7 resources:v6];

  [(ISCompositor *)self addElement:v8];
}

- (id)imageForSize:(CGSize)a3 scale:(double)a4
{
  v5 = [MEMORY[0x1E69A8978] bitmapContextWithSize:-[ISCompositor graphicsContextPreset](self scale:"graphicsContextPreset") preset:{a3.width, a3.height, a4}];
  [(ISCompositor *)self drawInContext:v5];
  v6 = [v5 image];
  v7 = objc_alloc(MEMORY[0x1E69A8988]);
  v8 = [v6 CGImage];
  [v6 scale];
  v9 = [v7 initWithCGImage:v8 scale:?];
  v10 = [[ISGenerationReport alloc] initWithIconTreatment:1 hasLightingEffects:0];
  [v9 setGenerationReport:v10];

  return v9;
}

- (void)reset
{
  v3 = [MEMORY[0x1E695DF70] array];
  elements = self->_elements;
  self->_elements = v3;

  MEMORY[0x1EEE66BB8]();
}

- (ISCompositor)initWithRecipe:(id)a3
{
  v4 = a3;
  v5 = [(ISCompositor *)self init];
  if (v5)
  {
    v6 = [_ISCompositorElement alloc];
    v7 = [(_ISCompositorElement *)v6 initWithRecipe:v4 resources:MEMORY[0x1E695E0F8]];
    v8 = [(ISCompositor *)v5 elements];
    [v8 addObject:v7];
  }

  return v5;
}

- (void)setRecipe:(id)a3
{
  v4 = a3;
  v5 = [(ISCompositor *)self elements];
  v6 = [v5 firstObject];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 setRecipe:v4];
    }

    else
    {
      v10 = _ISDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ISCompositor(Convenience) setRecipe:v10];
      }
    }
  }

  else
  {
    v7 = [_ISCompositorElement alloc];
    v8 = [(_ISCompositorElement *)v7 initWithRecipe:v4 resources:MEMORY[0x1E695E0F8]];
    v9 = [(ISCompositor *)self elements];
    [v9 addObject:v8];
  }
}

- (ISCompositorRecipe)recipe
{
  v2 = [(ISCompositor *)self elements];
  v3 = [v2 firstObject];
  v4 = [v3 recipe];

  return v4;
}

- (void)setResource:(id)a3 named:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ISCompositor *)self elements];
  v9 = [v8 firstObject];

  if (!v9)
  {
    v10 = objc_alloc_init(ISGenericRecipe);
    [(ISCompositor *)self setRecipe:v10];

    v11 = [(ISCompositor *)self elements];
    v9 = [v11 firstObject];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 setResource:v6 forName:v7];
  }

  else
  {
    v12 = _ISDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ISCompositor(Convenience) setResource:v7 named:v12];
    }
  }
}

- (void)addResourcesFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [(ISCompositor *)self elements];
  v6 = [v5 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 addResourcesFromDictionary:v4];
  }

  else
  {
    v7 = _ISDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ISCompositor(Convenience) *)v4 addResourcesFromDictionary:v7];
    }
  }
}

- (void)clearResources
{
  v2 = [(ISCompositor *)self elements];
  v3 = [v2 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 clearResources];
  }

  else
  {
    v4 = _ISDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(ISCompositor(Convenience) *)v4 clearResources];
    }
  }
}

- (void)drawInContext:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(ISCompositor *)self renderingMode]|| [(ISCompositor *)self renderingMode]== 1 || [(ISCompositor *)self renderingMode]== 2)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v5 = [(ISCompositor *)self elements];
    v6 = [v5 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v55;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v55 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(ISCompositor *)self drawElement:*(*(&v54 + 1) + 8 * i) inContext:v4];
        }

        v7 = [v5 countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v7);
    }

    goto LABEL_31;
  }

  [v4 bounds];
  v11 = v10;
  v13 = v12;
  v43 = v4;
  [v4 scale];
  v15 = v14;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = [(ISCompositor *)self elements];
  v16 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (!v16)
  {
    v5 = 0;
    goto LABEL_28;
  }

  v17 = v16;
  v5 = 0;
  v18 = *v51;
  v19 = *MEMORY[0x1E695FA48];
  v44 = *MEMORY[0x1E695FA48];
  v45 = *MEMORY[0x1E695FAB0];
  do
  {
    for (j = 0; j != v17; ++j)
    {
      if (*v51 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v50 + 1) + 8 * j);
      v22 = [v21 recipe];
      v23 = [v22 layerTreeForSize:v11 scale:{v13, v15}];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = [v23 effect];
        v25 = [v21 resourceProvider];
        v26 = [(ISCompositor *)self filterForLayer:v23 scale:v25 resourceProvider:v15];

        if (v24)
        {
          v27 = [v5 outputImage];
          [v26 outputImage];
          v28 = self;
          v29 = v17;
          v31 = v30 = v18;
          v47 = [v24 filterWithBackgroundImage:v27 inputImage:v31];

          v18 = v30;
          v17 = v29;
          self = v28;

          v5 = v47;
          goto LABEL_24;
        }
      }

      else
      {
        v26 = 0;
      }

      if (v5)
      {
        v32 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
        v33 = [v26 outputImage];
        [v32 setValue:v33 forKey:v45];

        v34 = [v5 outputImage];
        [v32 setValue:v34 forKey:v44];

        v5 = v32;
      }

      else
      {
        v26 = v26;
        v5 = v26;
      }

LABEL_24:
    }

    v17 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
  }

  while (v17);
LABEL_28:

  v35 = [v5 outputImage];
  memset(&v49, 0, sizeof(v49));
  CGAffineTransformMakeScale(&v49, v15, v15);
  v48 = v49;
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = v11;
  v61.size.height = v13;
  v62 = CGRectApplyAffineTransform(v61, &v48);
  x = v62.origin.x;
  y = v62.origin.y;
  width = v62.size.width;
  height = v62.size.height;
  v40 = [(ISCompositor *)self sharedCIContext];
  v41 = [v40 createCGImage:v35 fromRect:{x, y, width, height}];

  v4 = v43;
  if (v41)
  {
    [v43 drawCGImage:v41 inRect:{0.0, 0.0, v11, v13}];
    CFRelease(v41);
  }

LABEL_31:
  v42 = *MEMORY[0x1E69E9840];
}

- (id)filterForLayer:(id)a3 scale:(double)a4 resourceProvider:(id)a5
{
  v120[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v105 = a5;
  objc_opt_class();
  v97 = v7;
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v7 content], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v93 = 0;
    goto LABEL_38;
  }

  v9 = v7;
  v10 = [v9 content];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v12 = [v9 content];
  if (isKindOfClass)
  {
    v13 = [v105 resourceNamed:v12];
    v14 = v12;
    v12 = v13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v89 = v12;
    if ([v12 conformsToProtocol:&unk_1F1A669B8])
    {
      v120[0] = v12;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:1];
    }

    else
    {
      if (![v12 conformsToProtocol:&unk_1F1A74E58])
      {
        v19 = MEMORY[0x1E695E0F0];
        goto LABEL_14;
      }

      v18 = [v12 resourceStack];
    }

    v19 = v18;
LABEL_14:
    v20 = [v9 backgroundColor];

    if (v20)
    {
      v15 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
      v21 = [v9 backgroundColor];
      v22 = [v21 ciColor];
      [v15 setValue:v22 forKey:*MEMORY[0x1E695FA78]];
    }

    else
    {
      v15 = 0;
    }

    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    obj = v19;
    v98 = [obj countByEnumeratingWithState:&v114 objects:v119 count:16];
    if (v98)
    {
      v23 = *v115;
      v24 = *MEMORY[0x1E695FAB0];
      v94 = *MEMORY[0x1E695FB38];
      v95 = *MEMORY[0x1E695FB20];
      v25 = 0x1E695F000uLL;
      v91 = *MEMORY[0x1E695FA48];
      v102 = *MEMORY[0x1E695FAB0];
      do
      {
        for (i = 0; i != v98; i = i + 1)
        {
          if (*v115 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v114 + 1) + 8 * i);
          [v9 size];
          v28 = [v27 imageForSize:? scale:?];
          if (v28)
          {
            v29 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:{objc_msgSend(v28, "CGImage")}];
            v106 = [*(v25 + 1608) filterWithName:@"CILanczosScaleTransform"];
            v100 = v29;
            [v106 setValue:v29 forKey:v24];
            [v9 size];
            v31 = v30 * a4;
            [v9 size];
            v33 = v32 * a4;
            [v28 pixelSize];
            v36 = 1.0;
            if (v34 != v31 || v35 != v33)
            {
              v38 = v31 / v34;
              v39 = v33 / v35;
              if (v38 >= v39)
              {
                v36 = v39;
              }

              else
              {
                v36 = v38;
              }
            }

            v40 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
            [v106 setValue:v40 forKey:v95];

            [v28 pixelSize];
            v42 = v41;
            v44 = v43;
            CGAffineTransformMakeScale(&v113, v36, v36);
            v45 = (v31 - (v44 * v113.c + v113.a * v42)) * 0.5;
            v46 = (v33 - (v44 * v113.d + v113.b * v42)) * 0.5;
            v47 = [*(v25 + 1608) filterWithName:@"CIAffineTransform"];
            memset(&v113, 0, sizeof(v113));
            [v9 position];
            v49 = v45 + v48 * a4;
            [v9 position];
            CGAffineTransformMakeTranslation(&v113, v49, v46 + v50 * a4);
            v51 = [MEMORY[0x1E696B098] valueWithBytes:&v113 objCType:"{CGAffineTransform=dddddd}"];
            [v47 setValue:v51 forKey:v94];
            v52 = [v106 outputImage];
            [v47 setValue:v52 forKey:v102];

            if (v15)
            {
              v53 = [*(v25 + 1608) filterWithName:@"CISourceOverCompositing"];
              [v47 outputImage];
              v54 = v9;
              v56 = v55 = v23;
              [v53 setValue:v56 forKey:v102];

              v57 = [v15 outputImage];
              [v53 setValue:v57 forKey:v91];

              v23 = v55;
              v9 = v54;

              v15 = v53;
            }

            else
            {
              v15 = v47;
            }

            v24 = v102;
            v25 = 0x1E695F000;
          }
        }

        v98 = [obj countByEnumeratingWithState:&v114 objects:v119 count:16];
      }

      while (v98);
    }

    v7 = v97;
    v16 = v90;
    goto LABEL_37;
  }

  v15 = [MEMORY[0x1E695F648] filterWithName:@"CIConstantColorGenerator"];
  [v12 ciColor];
  v17 = v16 = v12;
  [v15 setValue:v17 forKey:*MEMORY[0x1E695FA78]];

LABEL_37:
  v93 = v15;

LABEL_38:
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v58 = [v7 sublayers];
  v107 = [v58 countByEnumeratingWithState:&v109 objects:v118 count:16];
  if (!v107)
  {

    v59 = 0;
LABEL_54:
    v75 = v93;
    goto LABEL_55;
  }

  v59 = 0;
  v103 = *v110;
  v60 = *MEMORY[0x1E695FAB0];
  v101 = *MEMORY[0x1E695FB38];
  v96 = *MEMORY[0x1E695FA48];
  v99 = v58;
  do
  {
    for (j = 0; j != v107; ++j)
    {
      if (*v110 != v103)
      {
        objc_enumerationMutation(v99);
      }

      v62 = [(ISCompositor *)self filterForLayer:*(*(&v109 + 1) + 8 * j) scale:v105 resourceProvider:a4];
      if (v62)
      {
        v63 = [MEMORY[0x1E695F648] filterWithName:@"CICrop"];
        memset(&v113, 0, sizeof(v113));
        CGAffineTransformMakeScale(&v113, a4, a4);
        [v7 frame];
        v108 = v113;
        v123 = CGRectApplyAffineTransform(v122, &v108);
        v64 = [MEMORY[0x1E695F688] vectorWithCGRect:{v123.origin.x, v123.origin.y, v123.size.width, v123.size.height}];
        [v63 setValue:v64 forKey:@"inputRectangle"];

        v65 = [v62 outputImage];
        [v63 setValue:v65 forKey:v60];

        v66 = [MEMORY[0x1E695F648] filterWithName:@"CIAffineTransform"];
        memset(&v108, 0, sizeof(v108));
        [v7 position];
        v68 = v67 * a4;
        [v7 position];
        CGAffineTransformMakeTranslation(&v108, v68, v69 * a4);
        v70 = [MEMORY[0x1E696B098] valueWithBytes:&v108 objCType:"{CGAffineTransform=dddddd}"];
        [v66 setValue:v70 forKey:v101];
        v71 = [v63 outputImage];
        [v66 setValue:v71 forKey:v60];

        if (v59)
        {
          v72 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
          v73 = [v66 outputImage];
          [v72 setValue:v73 forKey:v60];

          v74 = [v59 outputImage];
          [v72 setValue:v74 forKey:v96];

          v7 = v97;
          v59 = v72;
        }

        else
        {
          v59 = v66;
        }
      }
    }

    v107 = [v99 countByEnumeratingWithState:&v109 objects:v118 count:16];
  }

  while (v107);

  if (!v59)
  {
    goto LABEL_54;
  }

  v75 = v93;
  if (v93)
  {
    v76 = [MEMORY[0x1E695F648] filterWithName:@"CISourceOverCompositing"];
    v77 = [v59 outputImage];
    [v76 setValue:v77 forKey:v60];

    v78 = [v93 outputImage];
    [v76 setValue:v78 forKey:v96];

    goto LABEL_57;
  }

LABEL_55:
  v79 = [v59 outputImage];

  if (!v79)
  {
    goto LABEL_58;
  }

  v59 = v59;
  v76 = v59;
LABEL_57:

  v75 = v76;
LABEL_58:
  v80 = v97;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v81 = v97;
    v82 = [v81 mask];
    v83 = [(ISCompositor *)self filterForLayer:v82 scale:v105 resourceProvider:a4];

    if (v83 && v75)
    {
      v84 = [MEMORY[0x1E695F648] filterWithName:@"CISourceInCompositing"];
      v85 = [v75 outputImage];
      [v84 setValue:v85 forKey:*MEMORY[0x1E695FAB0]];

      v86 = [v83 outputImage];
      [v84 setValue:v86 forKey:*MEMORY[0x1E695FA48]];

      v75 = v84;
    }

    v80 = v97;
  }

  v87 = *MEMORY[0x1E69E9840];

  return v75;
}

- (BOOL)canUseCoreImageForEffects
{
  v3 = [(ISCompositor *)self renderingMode];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(ISCompositor *)self renderingMode]== 2 || [(ISCompositor *)self renderingMode]== 3;
  }

  return v3;
}

- (void)drawElement:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  [v7 scale];
  v13 = v12;
  v14 = [v6 recipe];
  v15 = [v14 layerTreeForSize:v9 scale:{v11, v13}];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = 0;
LABEL_8:
    v17 = [v6 resourceProvider];
    [(ISCompositor *)self drawLayer:v15 resourceProvider:v17 inContext:v7];
    goto LABEL_9;
  }

  v16 = [v15 effect];
  if (!v16 || ![(ISCompositor *)self canUseCoreImageForEffects])
  {
    goto LABEL_8;
  }

  v17 = [MEMORY[0x1E69A8978] bitmapContextWithSize:0 scale:v9 preset:{v11, v13}];
  v18 = [v6 resourceProvider];
  [(ISCompositor *)self drawLayer:v15 resourceProvider:v18 inContext:v17];

  v19 = objc_alloc(MEMORY[0x1E695F658]);
  v20 = [v17 image];
  v21 = [v19 initWithCGImage:{objc_msgSend(v20, "CGImage")}];

  v22 = objc_alloc(MEMORY[0x1E695F658]);
  v23 = [v7 image];
  v24 = [v22 initWithCGImage:{objc_msgSend(v23, "CGImage")}];

  v34 = v21;
  v25 = [v16 filterWithBackgroundImage:v24 inputImage:v21];
  v26 = [v25 outputImage];
  memset(&v36, 0, sizeof(v36));
  CGAffineTransformMakeScale(&v36, v13, v13);
  v35 = v36;
  v37.origin.x = 0.0;
  v37.origin.y = 0.0;
  v37.size.width = v9;
  v37.size.height = v11;
  v38 = CGRectApplyAffineTransform(v37, &v35);
  if (v26)
  {
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    v31 = [(ISCompositor *)self sharedCIContext];
    v32 = [v31 createCGImage:v26 fromRect:{x, y, width, height}];

    if (v32)
    {
      [v7 drawCGImage:v32 inRect:{0.0, 0.0, v9, v11}];
      CFRelease(v32);
    }
  }

  else
  {
    v33 = [v6 resourceProvider];
    [(ISCompositor *)self drawLayer:v15 resourceProvider:v33 inContext:v7];
  }

LABEL_9:
}

- (id)scaledImageFromContent:(id)a3 size:(CGSize)a4 scale:(double)a5 needsScaled:(BOOL *)a6
{
  height = a4.height;
  width = a4.width;
  v11 = [a3 imageForSize:? scale:?];
  v12 = [(ISCompositor *)self canUseCoreImage];
  if (v12)
  {
    v13 = width * a5;
    v14 = height * a5;
    [v11 pixelSize];
    if (v15 != v13 || v16 != v14)
    {
      v18 = v13 / v15;
      v19 = v14 / v16;
      v20 = v18 >= v19 ? v19 : v18;
      if (v20 != 1.0)
      {
        v21 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:{objc_msgSend(v11, "CGImage")}];
        [v11 pixelSize];
        v23 = v20 * v22;
        [v11 pixelSize];
        v25 = v20 * v24;
        v26 = [MEMORY[0x1E695F648] filterWithName:@"CIAffineClamp"];
        v27 = *MEMORY[0x1E695FAB0];
        [v26 setValue:v21 forKey:*MEMORY[0x1E695FAB0]];
        v28 = *(MEMORY[0x1E695EFD0] + 16);
        v53[0] = *MEMORY[0x1E695EFD0];
        v53[1] = v28;
        v53[2] = *(MEMORY[0x1E695EFD0] + 32);
        v29 = [MEMORY[0x1E696B098] valueWithBytes:v53 objCType:"{CGAffineTransform=dddddd}"];
        [v26 setValue:v29 forKey:*MEMORY[0x1E695FB38]];

        if (_os_feature_enabled_simple_impl())
        {
          v30 = _ISDefaultLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            [ISCompositor(Rendering) scaledImageFromContent:v30 size:? scale:? needsScaled:?];
          }

          v31 = [v26 outputImage];
          CGAffineTransformMakeScale(&v52, v20, v20);
          v32 = [v31 imageByApplyingTransform:&v52 highQualityDownsample:1];
        }

        else
        {
          v31 = [MEMORY[0x1E695F648] filterWithName:@"CILanczosScaleTransform"];
          v33 = [v26 outputImage];
          [v31 setValue:v33 forKey:v27];

          v34 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
          [v31 setValue:v34 forKey:*MEMORY[0x1E695FB20]];

          v32 = [v31 outputImage];
        }

        v35 = v32;

        v36 = [MEMORY[0x1E695F648] filterWithName:@"CICrop"];
        v37 = [MEMORY[0x1E695F688] vectorWithCGRect:{0.0, 0.0, v23, v25}];
        [v36 setValue:v37 forKey:@"inputRectangle"];

        [v36 setValue:v35 forKey:v27];
        v38 = [v36 outputImage];
        v39 = v38;
        if (v38)
        {
          [v38 extent];
          v41 = v40;
          v43 = v42;
          v45 = v44;
          v47 = v46;
          v48 = [(ISCompositor *)self sharedCIContext];
          v49 = [v48 createCGImage:v39 fromRect:{v41, v43, v45, v47}];

          if (v49)
          {
            [v11 CGImage];
            if (CGImageGetProperty() == *MEMORY[0x1E695E4D0])
            {
              CGImageSetProperty();
            }

            v50 = [objc_alloc(MEMORY[0x1E69A8988]) initWithCGImage:v49 scale:a5];

            CFRelease(v49);
            v11 = v50;
          }
        }
      }
    }
  }

  if (a6)
  {
    *a6 = !v12;
  }

  return v11;
}

- (id)maskImageForLayer:(id)a3 size:(CGSize)a4 scale:(double)a5 resourceProvider:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = [a3 mask];
  if (v12)
  {
    v13 = [MEMORY[0x1E69A8978] bitmapContextWithSize:0 scale:width preset:{height, a5}];
    [(ISCompositor *)self drawLayer:v12 resourceProvider:v11 inContext:v13];
    v14 = [v13 image];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)drawLayer:(id)a3 resourceProvider:(id)a4 inContext:(id)a5
{
  v156[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [v10 pushState];
  [v10 scale];
  v12 = v11;
  [v8 frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v127 = *(MEMORY[0x1E695EFD0] + 16);
  *obj = *MEMORY[0x1E695EFD0];
  *&v153.a = *MEMORY[0x1E695EFD0];
  *&v153.c = v127;
  v125 = *(MEMORY[0x1E695EFD0] + 32);
  *&v153.tx = v125;
  [v10 scale];
  v22 = v21;
  if (v10)
  {
    [v10 transform];
    v23 = *&v152;
    [v10 transform];
    v24 = *(&v149 + 1);
  }

  else
  {
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v24 = 0.0;
    v23 = 0.0;
  }

  v25 = v23 / v22;
  v26 = v24 / v22;
  if ([v8 flipped] == 3)
  {
    *&t1.a = *obj;
    *&t1.c = v127;
    *&t1.tx = v125;
    CGAffineTransformTranslate(&v153, &t1, v22 * v25, v22 * v26);
    t2 = v153;
    CGAffineTransformScale(&t1, &t2, -1.0, -1.0);
    v153 = t1;
    t2 = t1;
    CGAffineTransformTranslate(&t1, &t2, -((v18 + v25) * v22), -((v20 + v26) * v22));
    v153 = t1;
    if (v10)
    {
      [v10 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    CGAffineTransformTranslate(&v144, &t1, -v14, -v16);
    *&t1.a = *&v144.a;
    *&t1.c = *&v144.c;
    v27 = *&v144.tx;
  }

  else if ([v8 flipped] == 1)
  {
    t2 = v153;
    CGAffineTransformTranslate(&t1, &t2, 0.0, v22 * v26);
    v153 = t1;
    t2 = t1;
    CGAffineTransformScale(&t1, &t2, 1.0, -1.0);
    v153 = t1;
    t2 = t1;
    CGAffineTransformTranslate(&t1, &t2, 0.0, -((v20 + v26) * v22));
    v153 = t1;
    if (v10)
    {
      [v10 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    CGAffineTransformTranslate(&v143, &t1, v14, -v16);
    *&t1.a = *&v143.a;
    *&t1.c = *&v143.c;
    v27 = *&v143.tx;
  }

  else if ([v8 flipped] == 2)
  {
    t2 = v153;
    CGAffineTransformTranslate(&t1, &t2, v22 * v25, 0.0);
    v153 = t1;
    t2 = t1;
    CGAffineTransformScale(&t1, &t2, -1.0, 1.0);
    v153 = t1;
    t2 = t1;
    CGAffineTransformTranslate(&t1, &t2, -((v18 + v25) * v22), 0.0);
    v153 = t1;
    if (v10)
    {
      [v10 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    CGAffineTransformTranslate(&v142, &t1, -v14, v16);
    *&t1.a = *&v142.a;
    *&t1.c = *&v142.c;
    v27 = *&v142.tx;
  }

  else
  {
    if (v10)
    {
      [v10 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    CGAffineTransformTranslate(&v141, &t1, v14, v16);
    *&t1.a = *&v141.a;
    *&t1.c = *&v141.c;
    v27 = *&v141.tx;
  }

  *&t1.tx = v27;
  [v10 setTransform:&t1];
  if (v10)
  {
    [v10 transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  t2 = v153;
  CGAffineTransformConcat(&v140, &t1, &t2);
  t1 = v140;
  [v10 setTransform:&t1];
  [v8 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = [(ISCompositor *)self maskImageForLayer:v8 size:v9 scale:v32 resourceProvider:v34, v12];
  [v10 clipToMaskCGImage:objc_msgSend(v36 inRect:{"CGImage"), v29, v31, v33, v35}];
  v37 = v10;
  v124 = v36;
  if (v36 || ([v8 effect], v38 = objc_claimAutoreleasedReturnValue(), v38, v39 = v37, v38))
  {
    v40 = MEMORY[0x1E69A8978];
    [v37 scale];
    v39 = [v40 bitmapContextWithSize:objc_msgSend(v37 scale:"preset") preset:{v33, v35, v41}];
  }

  objc_opt_class();
  v126 = v37;
  if (objc_opt_isKindOfClass())
  {
    v42 = [v8 content];

    if (v42)
    {
      v43 = v8;
      v44 = [v43 content];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v46 = [v43 content];
      if (isKindOfClass)
      {
        v47 = [v9 resourceNamed:v46];
      }

      else
      {
        objc_opt_class();
        v58 = objc_opt_isKindOfClass();

        v46 = [v43 content];
        if ((v58 & 1) == 0)
        {
LABEL_51:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v39 setFillColor:v46];
            [v39 fillRect:{v29, v31, v33, v35}];
            goto LABEL_81;
          }

          if (objc_opt_respondsToSelector())
          {
            v156[0] = v46;
            v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v156 count:1];
          }

          else
          {
            if (![v46 conformsToProtocol:&unk_1F1A74E58])
            {
              v64 = MEMORY[0x1E695E0F0];
              goto LABEL_64;
            }

            v59 = [v46 resourceStack];
          }

          v64 = v59;
LABEL_64:
          v66 = [v43 backgroundColor];

          if (v66)
          {
            v67 = [v43 backgroundColor];
            [v39 setFillColor:v67];

            [v39 fillRect:{v29, v31, v33, v35}];
          }

          v68 = [v43 acceptSymbol];
          v136 = 0u;
          v137 = 0u;
          v138 = 0u;
          v139 = 0u;
          obja = v64;
          v69 = [obja countByEnumeratingWithState:&v136 objects:v155 count:16];
          if (v69)
          {
            v70 = v69;
            v71 = v43;
            v72 = *v137;
            v73 = 0x1E69A8000uLL;
            do
            {
              v74 = 0;
              v128 = v70;
              do
              {
                if (*v137 != v72)
                {
                  objc_enumerationMutation(obja);
                }

                v75 = *(*(&v136 + 1) + 8 * v74);
                v76 = *(v73 + 2480);
                objc_opt_class();
                if (v68 & 1 | ((objc_opt_isKindOfClass() & 1) == 0))
                {
                  LOBYTE(t1.a) = 0;
                  [v71 size];
                  v77 = [ISCompositor scaledImageFromContent:"scaledImageFromContent:size:scale:needsScaled:" size:v75 scale:&t1 needsScaled:?];
                  v78 = v77;
                  if (v77)
                  {
                    v79 = v72;
                    v80 = self;
                    v81 = v9;
                    v82 = v73;
                    v83 = v71;
                    a_low = LOBYTE(t1.a);
                    v85 = [v77 CGImage];
                    if (a_low == 1)
                    {
                      [v39 drawCGImage:v85 inRect:{v29, v31, v33, v35}];
                    }

                    else
                    {
                      [v39 drawCGImage:v85 centeredInRect:{v29, v31, v33, v35}];
                    }

                    v71 = v83;
                    v73 = v82;
                    v9 = v81;
                    self = v80;
                    v72 = v79;
                    v70 = v128;
                  }
                }

                ++v74;
              }

              while (v70 != v74);
              v70 = [obja countByEnumeratingWithState:&v136 objects:v155 count:16];
            }

            while (v70);
          }

          v10 = v122;
          v8 = v123;
          v46 = v121;
          goto LABEL_81;
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v65 = [v46 name];
          v48 = [v9 resourceNamed:v65];

          goto LABEL_34;
        }

        v47 = [v9 resourceForKey:v46];
      }

      v48 = v47;
LABEL_34:

      v46 = v48;
      goto LABEL_51;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = v8;
    v46 = [v49 text];
    v50 = [v9 resourceNamed:v46];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = v50;

      v46 = v51;
    }

    if (ISIsResourceKey(v46))
    {

      v46 = 0;
    }

    else if (v46)
    {
      [v39 pushState];
      v56 = [v49 color];
      [v39 setStrokeColor:v56];

      v57 = [v49 fontName];
      [v49 fontSize];
      [v39 drawText:v46 fontName:v57 fontSize:? inRect:?];

      [v39 popState];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_82;
    }

    v52 = v10;
    v53 = v8;
    v54 = [v53 symbol];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = [v9 resourceNamed:v54];

      v54 = v55;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v54;
    }

    else
    {
      v46 = 0;
    }

    v60 = objc_alloc_init(MEMORY[0x1E69A89C0]);
    [v53 fontSize];
    [v60 setPointSize:?];
    [v60 setScale:v12];
    [v60 setSymbolSize:{objc_msgSend(v53, "symbolSize")}];
    [v60 setSymbolWeight:{objc_msgSend(v53, "symbolWeight")}];
    v61 = [v53 color];
    [v60 setTintColor:v61];

    v62 = [v46 imageForDescriptor:v60];
    if (v62)
    {
      [v39 pushState];
      v63 = [v53 color];
      [v39 setStrokeColor:v63];

      [v39 drawSymbolImage:v62 centeredInRect:{v29, v31, v33, v35}];
      [v39 popState];
    }

    v10 = v52;
  }

LABEL_81:

LABEL_82:
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v86 = [v8 sublayers];
  v87 = [v86 countByEnumeratingWithState:&v132 objects:v154 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = *v133;
    do
    {
      for (i = 0; i != v88; ++i)
      {
        if (*v133 != v89)
        {
          objc_enumerationMutation(v86);
        }

        v91 = *(*(&v132 + 1) + 8 * i);
        [v39 pushState];
        [v39 setBlendMode:{objc_msgSend(v91, "blendMode")}];
        [(ISCompositor *)self drawLayer:v91 resourceProvider:v9 inContext:v39];
        [v39 popState];
      }

      v88 = [v86 countByEnumeratingWithState:&v132 objects:v154 count:16];
    }

    while (v88);
  }

  v92 = v126;
  if (v39 != v126)
  {
    v93 = [v8 effect];
    if (v93)
    {
      v94 = v93;
      v95 = [v8 superlayer];
      if (v95)
      {
        v96 = v95;
        v97 = [(ISCompositor *)self canUseCoreImageForEffects];

        if (!v97)
        {
          v100 = 0;
LABEL_107:
          v92 = v126;
          goto LABEL_108;
        }

        v98 = objc_alloc(MEMORY[0x1E695F658]);
        v99 = [v39 image];
        v100 = [v98 initWithCGImage:{objc_msgSend(v99, "CGImage")}];

        [v126 pushState];
        [v126 bounds];
        v102 = v101;
        [v126 scale];
        v104 = v103 * v102;
        if (v10)
        {
          [v126 transform];
        }

        else
        {
          memset(&t1, 0, sizeof(t1));
        }

        t2.b = 0.0;
        t2.c = 0.0;
        t2.a = 1.0;
        *&t2.d = xmmword_1A78250C0;
        t2.ty = v104;
        CGAffineTransformConcat(&v131, &t1, &t2);
        t1 = v131;
        [v126 setTransform:&t1];
        v105 = [v126 imageFromRect:{v29, v31, v33, v35}];
        [v126 popState];
        v106 = [objc_alloc(MEMORY[0x1E695F658]) initWithCGImage:{objc_msgSend(v105, "CGImage")}];
        v107 = [v8 effect];
        v108 = [v107 filterWithBackgroundImage:v106 inputImage:v100];

        v109 = [v8 effect];
        objc_opt_class();
        v110 = objc_opt_isKindOfClass();

        v111 = [v8 effect];
        if ((v110 & 1) == 0)
        {
          objc_opt_class();
          v112 = objc_opt_isKindOfClass();

          if ((v112 & 1) == 0)
          {
            goto LABEL_103;
          }

          v111 = [v8 effect];
        }

        -[ISCompositor setAnalyticsSegmented:](self, "setAnalyticsSegmented:", [v111 hasSegmentedImage]);

LABEL_103:
        if (v108)
        {
          v113 = [v108 outputImage];

          memset(&t1, 0, sizeof(t1));
          CGAffineTransformMakeScale(&t1, v12, v12);
          t2 = t1;
          v157.origin.x = 0.0;
          v157.origin.y = 0.0;
          v157.size.width = v33;
          v157.size.height = v35;
          v158 = CGRectApplyAffineTransform(v157, &t2);
          x = v158.origin.x;
          y = v158.origin.y;
          width = v158.size.width;
          height = v158.size.height;
          v118 = [(ISCompositor *)self sharedCIContext];
          v119 = [v118 createCGImage:v113 fromRect:{x, y, width, height}];

          v92 = v126;
          if (v119)
          {
            [v126 drawCGImage:v119 centeredInRect:{v29, v31, v33, v35}];
            CFRelease(v119);
          }

          v100 = v113;
          goto LABEL_109;
        }

        goto LABEL_107;
      }
    }

    v100 = 0;
LABEL_108:
    v108 = [v39 image];
    [v92 drawCGImage:objc_msgSend(v108 centeredInRect:{"CGImage"), v29, v31, v33, v35}];
LABEL_109:
  }

  [v92 popState];

  v120 = *MEMORY[0x1E69E9840];
}

@end