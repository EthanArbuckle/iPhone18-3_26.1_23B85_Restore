@interface DOCTagShapeRenderer
+ (DOCTagShapeRenderer)shared;
- (CGRect)_imageRectForRenderingImage:(id)image tagRect:(CGRect)rect displayScale:(double)scale;
- (double)baselineOffsetForRequest:(id)request tagRectSize:(CGSize)size;
- (id)_shapeImageForColorType:(int64_t)type variant:(unint64_t)variant renderedColor:(id)color;
- (void)renderInContext:(CGContext *)context contextSize:(CGSize)size tagRect:(CGRect)rect tag:(id)tag outlineColor:(id)color fillColor:(id)fillColor traitCollection:(id)collection;
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

- (void)renderInContext:(CGContext *)context contextSize:(CGSize)size tagRect:(CGRect)rect tag:(id)tag outlineColor:(id)color fillColor:(id)fillColor traitCollection:(id)collection
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16 = size.height;
  v17 = size.width;
  colorCopy = color;
  collectionCopy = collection;
  if (context)
  {
    fillColorCopy = fillColor;
    tagCopy = tag;
    v24 = +[DOCTagAppearance renderingAppearance];
    labelIndex = [tagCopy labelIndex];

    v26 = [(DOCTagShapeRenderer *)self _shapeImageForColorType:labelIndex variant:0 renderedColor:fillColorCopy];

    v67 = v17;
    v68 = v16;
    if (v26)
    {
      v27 = [(DOCTagShapeRenderer *)self _shapeImageForColorType:labelIndex variant:1 renderedColor:colorCopy];
      outlineTagsToIndicateMixedState = 0;
    }

    else
    {
      if (colorCopy)
      {
        nonClearNoneTagColor = colorCopy;
      }

      else
      {
        nonClearNoneTagColor = [MEMORY[0x277D06260] nonClearNoneTagColor];
      }

      v30 = nonClearNoneTagColor;
      v26 = [(DOCTagShapeRenderer *)self _shapeImageForColorType:labelIndex variant:1 renderedColor:nonClearNoneTagColor];
      outlineTagsToIndicateMixedState = [v24 outlineTagsToIndicateMixedState];

      v27 = 0;
    }

    [collectionCopy displayScale];
    [(DOCTagShapeRenderer *)self _imageRectForRenderingImage:v26 tagRect:x displayScale:y, width, height];
    v35 = v31;
    v36 = v32;
    v37 = v33;
    v38 = v34;
    if (v27 || (v39 = v34, v40 = v33, v41 = v32, v42 = v31, outlineTagsToIndicateMixedState))
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
      defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
      [defaultMetrics scaledValueForValue:collectionCopy compatibleWithTraitCollection:1.0];
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
      contextCopy = context;
      v66 = v43;
      CGContextSaveGState(context);
      __102__DOCTagShapeRenderer_renderInContext_contextSize_tagRect_tag_outlineColor_fillColor_traitCollection___block_invoke(v69);
      CGContextRestoreGState(context);
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

- (double)baselineOffsetForRequest:(id)request tagRectSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  traitCollection = [request traitCollection];
  [traitCollection displayScale];
  v9 = v8;

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v11 = [(DOCTagShapeRenderer *)self _shapeImageForColorType:4 variant:0 renderedColor:whiteColor];

  [(DOCTagShapeRenderer *)self _imageRectForRenderingImage:v11 tagRect:0.0 displayScale:0.0, width, height, v9];
  [v11 size];
  [v11 baselineOffsetFromBottom];
  [v11 contentInsets];
  UIRoundToScale();
  v13 = v12;

  return v13;
}

- (CGRect)_imageRectForRenderingImage:(id)image tagRect:(CGRect)rect displayScale:(double)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  imageCopy = image;
  [imageCopy contentInsets];
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
  [imageCopy size];
  [imageCopy size];
  [imageCopy size];
  UIRoundToScale();
  v18 = v17;
  [imageCopy size];

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

- (id)_shapeImageForColorType:(int64_t)type variant:(unint64_t)variant renderedColor:(id)color
{
  if (color)
  {
    v6 = [MEMORY[0x277D755B8] _doc_tagImageForRenderingVariant:variant differentiateWithShapes:1 tagColorType:type renderedColor:color];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end