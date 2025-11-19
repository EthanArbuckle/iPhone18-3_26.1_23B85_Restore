@interface DOCTagShapeRenderer
+ (DOCTagShapeRenderer)shared;
- (CGRect)_imageRectForRenderingImage:(id)a3 tagRect:(CGRect)a4 displayScale:(double)a5;
- (double)baselineOffsetForRequest:(id)a3 tagRectSize:(CGSize)a4;
- (id)_shapeImageForColorType:(int64_t)a3 variant:(unint64_t)a4 renderedColor:(id)a5;
- (void)renderInContext:(CGContext *)a3 contextSize:(CGSize)a4 tagRect:(CGRect)a5 tag:(id)a6 outlineColor:(id)a7 fillColor:(id)a8 traitCollection:(id)a9;
@end

@implementation DOCTagShapeRenderer

+ (DOCTagShapeRenderer)shared
{
  if (shared_onceToken_0 != -1)
  {
    +[DOCTagShapeRenderer shared];
  }

  v3 = shared_instance;

  return v3;
}

void __29__DOCTagShapeRenderer_shared__block_invoke()
{
  v0 = objc_alloc_init(DOCTagShapeRenderer);
  v1 = shared_instance;
  shared_instance = v0;
}

- (void)renderInContext:(CGContext *)a3 contextSize:(CGSize)a4 tagRect:(CGRect)a5 tag:(id)a6 outlineColor:(id)a7 fillColor:(id)a8 traitCollection:(id)a9
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v16 = a4.height;
  v17 = a4.width;
  v20 = a7;
  v21 = a9;
  if (a3)
  {
    v22 = a8;
    v23 = a6;
    v24 = +[DOCTagAppearance renderingAppearance];
    v25 = [v23 labelIndex];

    v26 = [(DOCTagShapeRenderer *)self _shapeImageForColorType:v25 variant:0 renderedColor:v22];

    v67 = v17;
    v68 = v16;
    if (v26)
    {
      v27 = [(DOCTagShapeRenderer *)self _shapeImageForColorType:v25 variant:1 renderedColor:v20];
      v28 = 0;
    }

    else
    {
      if (v20)
      {
        v29 = v20;
      }

      else
      {
        v29 = [MEMORY[0x277D06260] nonClearNoneTagColor];
      }

      v30 = v29;
      v26 = [(DOCTagShapeRenderer *)self _shapeImageForColorType:v25 variant:1 renderedColor:v29];
      v28 = [v24 outlineTagsToIndicateMixedState];

      v27 = 0;
    }

    [v21 displayScale];
    [(DOCTagShapeRenderer *)self _imageRectForRenderingImage:v26 tagRect:x displayScale:y, width, height];
    v35 = v31;
    v36 = v32;
    v37 = v33;
    v38 = v34;
    if (v27 || (v39 = v34, v40 = v33, v41 = v32, v42 = v31, v28))
    {
      v78 = CGRectInset(*&v31, 1.0, 1.0);
      v42 = v78.origin.x;
      v41 = v78.origin.y;
      v40 = v78.size.width;
      v39 = v78.size.height;
    }

    if (CGContextGetBlendMode() == 16)
    {
      v43 = v26;
      [v43 size];
      v45 = v40 / v44;
      [v43 size];
      if (v45 >= v39 / v46)
      {
        v45 = v39 / v46;
      }

      [v43 contentInsets];
      v48 = v47 * v45;
      v50 = v49 * v45;
      v52 = v51 * v45;
      v54 = v53 * v45;
      v55 = v42 + v50;
      v56 = v41 + v48;
      v57 = v40 - (v50 + v54);
      v58 = v39 - (v48 + v52);
      v59 = [MEMORY[0x277D75520] defaultMetrics];
      [v59 scaledValueForValue:v21 compatibleWithTraitCollection:1.0];
      v61 = v60;

      v79.origin.x = v55;
      v79.origin.y = v56;
      v79.size.width = v57;
      v79.size.height = v58;
      CGRectInset(v79, -v61, -v61);
      UIRectIntegralWithScale();
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __102__DOCTagShapeRenderer_renderInContext_contextSize_tagRect_tag_outlineColor_fillColor_traitCollection___block_invoke;
      v69[3] = &unk_278FA2510;
      v72 = v67;
      v73 = v68;
      v74 = v62;
      v75 = v63;
      v76 = v64;
      v77 = v65;
      v70 = v43;
      v71 = a3;
      v66 = v43;
      CGContextSaveGState(a3);
      __102__DOCTagShapeRenderer_renderInContext_contextSize_tagRect_tag_outlineColor_fillColor_traitCollection___block_invoke(v69);
      CGContextRestoreGState(a3);
    }

    else
    {
      [v26 drawInRect:{v42, v41, v40, v39}];
      if (v27)
      {
        [v27 drawInRect:{v35, v36, v37, v38}];
      }
    }
  }
}

void __102__DOCTagShapeRenderer_renderInContext_contextSize_tagRect_tag_outlineColor_fillColor_traitCollection___block_invoke(uint64_t a1)
{
  CGContextTranslateCTM(*(a1 + 40), 0.0, *(a1 + 56));
  CGContextScaleCTM(*(a1 + 40), 1.0, -1.0);
  CGContextClipToMask(*(a1 + 40), *(a1 + 64), [*(a1 + 32) CGImage]);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277D75348] orangeColor];
  CGContextSetFillColorWithColor(v2, [v3 CGColor]);

  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);

  CGContextFillRect(v4, *&v5);
}

- (double)baselineOffsetForRequest:(id)a3 tagRectSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = [a3 traitCollection];
  [v7 displayScale];
  v9 = v8;

  v10 = [MEMORY[0x277D75348] whiteColor];
  v11 = [(DOCTagShapeRenderer *)self _shapeImageForColorType:4 variant:0 renderedColor:v10];

  [(DOCTagShapeRenderer *)self _imageRectForRenderingImage:v11 tagRect:0.0 displayScale:0.0, width, height, v9];
  [v11 size];
  [v11 baselineOffsetFromBottom];
  [v11 contentInsets];
  UIRoundToScale();
  v13 = v12;

  return v13;
}

- (CGRect)_imageRectForRenderingImage:(id)a3 tagRect:(CGRect)a4 displayScale:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  [v9 contentInsets];
  if (v11 >= v13)
  {
    v11 = v13;
  }

  if (v10 >= v12)
  {
    v10 = v12;
  }

  if (v11 < v10)
  {
    v10 = v11;
  }

  if (v10 <= 0.0)
  {
    v14 = -0.0;
  }

  else
  {
    v14 = -v10;
  }

  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v29 = CGRectInset(v28, v14, v14);
  v15 = v29.origin.x;
  v16 = v29.origin.y;
  [v9 size];
  [v9 size];
  [v9 size];
  UIRoundToScale();
  v18 = v17;
  [v9 size];

  UIRoundToScale();
  v20 = v19;
  UIRoundToScale();
  v22 = v15 + v21;
  UIRoundToScale();
  v24 = v16 + v23;
  v25 = v22;
  v26 = v18;
  v27 = v20;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v24;
  result.origin.x = v25;
  return result;
}

- (id)_shapeImageForColorType:(int64_t)a3 variant:(unint64_t)a4 renderedColor:(id)a5
{
  if (a5)
  {
    v6 = [MEMORY[0x277D755B8] _doc_tagImageForRenderingVariant:a4 differentiateWithShapes:1 tagColorType:a3 renderedColor:a5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end