@interface PKMicaLayer
- (CGSize)boundsSizeToMatchPointScale:(double)scale;
- (PKMicaLayer)initWithFrame:(CGRect)frame package:(id)package;
- (double)pointScaleToMatchBoundsSize:(CGSize)size;
- (void)dealloc;
- (void)layoutSublayers;
@end

@implementation PKMicaLayer

- (PKMicaLayer)initWithFrame:(CGRect)frame package:(id)package
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v70 = *MEMORY[0x1E69E9840];
  packageCopy = package;
  v10 = packageCopy;
  if (!packageCopy)
  {

    v44 = 0;
    goto LABEL_33;
  }

  rootLayer = [packageCopy rootLayer];
  [rootLayer setGeometryFlipped:{objc_msgSend(v10, "isGeometryFlipped")}];
  [rootLayer bounds];
  v13 = v12;
  v15 = v14;
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  v71.size.height = height;
  if (CGRectIsNull(v71))
  {
    x = *MEMORY[0x1E695EFF8];
    y = *(MEMORY[0x1E695EFF8] + 8);
    width = v13 * 0.5;
    height = v15 * 0.5;
  }

  if (!rootLayer)
  {

    goto LABEL_31;
  }

  v68.receiver = self;
  v68.super_class = PKMicaLayer;
  v16 = [(PKMicaLayer *)&v68 init];
  if (!v16)
  {
LABEL_31:
    v44 = 0;
    goto LABEL_32;
  }

  p_isa = &v16->super.super.isa;
  v18 = PKLayerNullActions();
  [p_isa setActions:v18];

  [p_isa setFrame:{x, y, width, height}];
  v55 = rootLayer;
  objc_storeStrong(p_isa + 6, rootLayer);
  v19 = p_isa[6];
  v20 = PKLayerNullActions();
  [v19 setActions:v20];

  [p_isa[6] setAnchorPoint:{0.5, 0.5}];
  v21 = p_isa[6];
  v22 = fmin(width / v13, height / v15);
  CATransform3DMakeScale(&v67, v22, v22, 1.0);
  [v21 setTransform:&v67];
  v54 = p_isa;
  [p_isa addSublayer:p_isa[6]];
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  *&v67.m11 = v23;
  v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v66 = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__PKMicaLayer_initWithFrame_package___block_invoke;
  aBlock[3] = &unk_1E79E3A40;
  v52 = v23;
  v65 = v52;
  v25 = _Block_copy(aBlock);
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __37__PKMicaLayer_initWithFrame_package___block_invoke_2;
  v62[3] = &unk_1E79E3A68;
  v53 = v24;
  v63 = v53;
  v56 = _Block_copy(v62);
  context = objc_autoreleasePoolPush();
  v26 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"^\\((layer|shape)(?::([^\\)]+))?\\(?::.+)?$" options:? error:?], 0, 0);
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v57 = v10;
  publishedObjectNames = [v10 publishedObjectNames];
  v28 = [publishedObjectNames countByEnumeratingWithState:&v58 objects:v69 count:16];
  if (!v28)
  {
    goto LABEL_24;
  }

  v29 = v28;
  v30 = *v59;
  do
  {
    for (i = 0; i != v29; ++i)
    {
      if (*v59 != v30)
      {
        objc_enumerationMutation(publishedObjectNames);
      }

      v32 = *(*(&v58 + 1) + 8 * i);
      v33 = [v26 firstMatchInString:v32 options:4 range:{0, objc_msgSend(v32, "length")}];
      numberOfRanges = [v33 numberOfRanges];
      if (numberOfRanges >= 2)
      {
        v35 = numberOfRanges;
        v36 = [v33 rangeAtIndex:1];
        v38 = [v32 substringWithRange:{v36, v37}];
        if (v35 == 2 || (v39 = [v33 rangeAtIndex:2], !v40))
        {
          v41 = 0;
        }

        else
        {
          v41 = [v32 substringWithRange:{v39, v40}];
        }

        if ([v38 isEqualToString:@"layer"])
        {
          v42 = [v57 publishedObjectWithName:v32];
          v25[2](v25, v42, v41);
          goto LABEL_20;
        }

        if ([v38 isEqualToString:@"shape"])
        {
          v42 = [v57 publishedObjectWithName:v32];
          v56[2](v56, v42, v41);
LABEL_20:
        }
      }
    }

    v29 = [publishedObjectNames countByEnumeratingWithState:&v58 objects:v69 count:16];
  }

  while (v29);
LABEL_24:

  objc_autoreleasePoolPop(context);
  v43 = objc_autoreleasePoolPush();
  v44 = v54;
  if ([v52 count])
  {
    v45 = __37__PKMicaLayer_initWithFrame_package___block_invoke_3(&v67);
    publishedColorLayers = v54->_publishedColorLayers;
    v54->_publishedColorLayers = v45;
  }

  v47 = v53;
  if ([v53 count])
  {
    v48 = __37__PKMicaLayer_initWithFrame_package___block_invoke_3(&v66);
    publishedColorShapeLayers = v54->_publishedColorShapeLayers;
    v54->_publishedColorShapeLayers = v48;

    v47 = v66;
  }

  objc_autoreleasePoolPop(v43);

  v10 = v57;
  rootLayer = v55;
LABEL_32:

LABEL_33:
  return v44;
}

void __37__PKMicaLayer_initWithFrame_package___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v5)
      {
        v5 = &stru_1F227FD28;
      }

      v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
      if (!v6)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
      }

      [v6 addObject:v7];
    }
  }
}

void __37__PKMicaLayer_initWithFrame_package___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v5)
      {
        v5 = &stru_1F227FD28;
      }

      v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
      if (!v6)
      {
        v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
      }

      [v6 addObject:v7];
    }
  }
}

id __37__PKMicaLayer_initWithFrame_package___block_invoke_3(id *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = [v2 allKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v2 objectForKeyedSubscript:v8];
        v10 = [v9 copy];
        [v2 setObject:v10 forKeyedSubscript:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = *a1;
  *a1 = 0;

  v12 = [v2 copy];

  return v12;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKMicaLayer;
  [(PKMicaLayer *)&v2 dealloc];
}

- (void)layoutSublayers
{
  v15.receiver = self;
  v15.super_class = PKMicaLayer;
  [(PKMicaLayer *)&v15 layoutSublayers];
  [(PKMicaLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKMicaLayer *)self pointScaleToMatchBoundsSize:v7, v9];
  rootLayer = self->_rootLayer;
  CATransform3DMakeScale(&v14, v12 * 0.5, v12 * 0.5, 1.0);
  [(CALayer *)rootLayer setTransform:&v14];
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  MidX = CGRectGetMidX(v16);
  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  [(CALayer *)self->_rootLayer setPosition:MidX, CGRectGetMidY(v17)];
}

- (double)pointScaleToMatchBoundsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(CALayer *)self->_rootLayer bounds];
  v7 = width / v6;
  v8 = 0.0;
  if (v6 == 0.0)
  {
    v7 = 0.0;
  }

  if (v5 != 0.0)
  {
    v8 = height / v5;
  }

  v9 = fmin(v7, v8);
  return v9 + v9;
}

- (CGSize)boundsSizeToMatchPointScale:(double)scale
{
  v3 = scale * 0.5;
  [(CALayer *)self->_rootLayer bounds];
  v5 = v3 * v4;
  v7 = v3 * v6;
  result.height = v7;
  result.width = v5;
  return result;
}

@end