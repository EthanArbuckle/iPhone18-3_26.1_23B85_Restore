@interface DOCTagRenderer
+ (DOCTagRenderer)shared;
- (BOOL)differentiateWithShapes;
- (CGSize)sizeOfTagContentForRenderingRequest:(id)request;
- (double)_customRenderingBaselineOffsetFromBottomForRequest:(id)request;
- (double)_defaultBorderWidth;
- (double)_tagChainSpacingForSpacingType:(unint64_t)type tagDimension:(double)dimension;
- (id)_spacerImageWithWidth:(double)width;
- (id)_symbolImageIfPosssibleForRequest:(id)request;
- (id)renderAttributedStringWithRequest:(id)request titleHighlighter:(id)highlighter;
- (id)renderImageWithRequest:(id)request;
- (id)tintedSystemImageForTag:(id)tag variant:(unint64_t)variant;
- (void)__drawInContext:(CGContext *)context tag:(id)tag contextSize:(CGSize)size tagRect:(CGRect)rect blendMode:(int)mode fillColor:(id)color strokeColor:(id)strokeColor traitCollection:(id)self0;
- (void)_insertPrefixTextAttachment:(id)attachment spacerAttributedString:(id)string ensuringLayoutDirection:(int64_t)direction into:(id)into;
- (void)_renderInContext:(CGContext *)context request:(id)request;
- (void)renderInUncacheableContext:(CGContext *)context request:(id)request;
@end

@implementation DOCTagRenderer

+ (DOCTagRenderer)shared
{
  if (shared_onceToken != -1)
  {
    +[DOCTagRenderer shared];
  }

  v3 = shared_shared;

  return v3;
}

void __24__DOCTagRenderer_shared__block_invoke()
{
  v0 = objc_alloc_init(DOCTagRenderer);
  v1 = shared_shared;
  shared_shared = v0;
}

- (BOOL)differentiateWithShapes
{
  if (differentiateWithShapes_onceToken != -1)
  {
    [DOCTagRenderer differentiateWithShapes];
  }

  if (differentiateWithShapes_alwaysUseShapes)
  {
    return 1;
  }

  return UIAccessibilityShouldDifferentiateWithoutColor();
}

void __41__DOCTagRenderer_differentiateWithShapes__block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  differentiateWithShapes_alwaysUseShapes = [v0 BOOLForKey:@"DOCTagsRenderWithShapes"];
}

- (double)_defaultBorderWidth
{
  v2 = +[DOCTagAppearance renderingAppearance];
  [v2 defaultBorderWidth];
  v4 = v3;

  return v4;
}

- (id)tintedSystemImageForTag:(id)tag variant:(unint64_t)variant
{
  tagCopy = tag;
  differentiateWithShapes = [(DOCTagRenderer *)self differentiateWithShapes];
  labelIndex = [tagCopy labelIndex];

  v9 = MEMORY[0x277D755B8];

  return [v9 _doc_tagImageForRenderingVariant:variant differentiateWithShapes:differentiateWithShapes tagColorType:labelIndex];
}

- (id)renderImageWithRequest:(id)request
{
  v23[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = requestCopy;
  if (requestCopy)
  {
    traitCollection = [requestCopy traitCollection];
    [traitCollection displayScale];
    v8 = v7;
    v9 = [MEMORY[0x277CCABB0] numberWithBool:UIAccessibilityIsInvertColorsEnabled()];
    v23[0] = v9;
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[DOCTagRenderer differentiateWithShapes](self, "differentiateWithShapes")}];
    v23[1] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    v23[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];

    v13 = [(DOCTagRenderer *)self _symbolImageIfPosssibleForRequest:v5];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v16 = MEMORY[0x277D755B8];
      v17 = [v5 _UIImageCacheKeyWithAdditionalComponents:v12];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __41__DOCTagRenderer_renderImageWithRequest___block_invoke;
      v19[3] = &unk_278FA1E30;
      v19[4] = self;
      v20 = v5;
      v21 = v8;
      v15 = [v16 _cachedImageForKey:v17 fromBlock:v19];
    }
  }

  else
  {
    [DOCTagRenderer renderImageWithRequest:?];
    v15 = v22;
  }

  return v15;
}

id __41__DOCTagRenderer_renderImageWithRequest___block_invoke(uint64_t a1)
{
  [*(a1 + 32) sizeOfTagContentForRenderingRequest:*(a1 + 40)];
  UIGraphicsBeginImageContextWithOptions(v9, 0, *(a1 + 48));
  [*(a1 + 32) _renderInContext:UIGraphicsGetCurrentContext() request:*(a1 + 40)];
  v2 = UIGraphicsGetImageFromCurrentImageContext();
  [*(a1 + 32) _customRenderingBaselineOffsetFromBottomForRequest:*(a1 + 40)];
  if (v3 != -1.79769313e308)
  {
    v4 = [v2 imageWithBaselineOffsetFromBottom:?];

    v2 = v4;
  }

  UIGraphicsEndImageContext();
  if (v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D755B8]);
  }

  v6 = v5;

  return v6;
}

- (double)_customRenderingBaselineOffsetFromBottomForRequest:(id)request
{
  requestCopy = request;
  if ([(DOCTagRenderer *)self differentiateWithShapes])
  {
    [(DOCTagRenderer *)self sizeOfTagContentForRenderingRequest:requestCopy];
    v6 = v5;
    v8 = v7;
    v9 = +[DOCTagShapeRenderer shared];
    [v9 baselineOffsetForRequest:requestCopy tagRectSize:{v6, v8}];
    v11 = v10;
  }

  else
  {
    v11 = -1.79769313e308;
  }

  return v11;
}

- (id)_symbolImageIfPosssibleForRequest:(id)request
{
  requestCopy = request;
  if (+[DOCTagRenderer allowUnsizedSymbolImages](DOCTagRenderer, "allowUnsizedSymbolImages") && [requestCopy allowUnsizedSymbolImages] && ((objc_msgSend(requestCopy, "selectionOutlineColor"), (v5 = objc_claimAutoreleasedReturnValue()) == 0) || (v6 = v5, objc_msgSend(requestCopy, "selectionOutlineColor"), v7 = objc_claimAutoreleasedReturnValue(), Alpha = CGColorGetAlpha(objc_msgSend(v7, "CGColor")), v7, v6, Alpha == 0.0)) && (objc_msgSend(requestCopy, "tags"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v10 == 1) && (objc_msgSend(requestCopy, "tags"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), objc_msgSend(requestCopy, "fillColors"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v11, v12 == v14))
  {
    tags = [requestCopy tags];
    v16 = [tags objectAtIndexedSubscript:0];

    fillColors = [requestCopy fillColors];
    v18 = [fillColors objectAtIndexedSubscript:0];

    ringColor = [requestCopy ringColor];
    differentiateWithShapes = [(DOCTagRenderer *)self differentiateWithShapes];
    if (CGColorGetAlpha([v18 CGColor]) == 0.0)
    {
      variant = 1;
      v22 = ringColor;
    }

    else
    {
      variant = [requestCopy variant];
      v22 = v18;
    }

    v25 = v22;
    v26 = [[DOCTagSymbolImageConfiguration alloc] initWithTag:v16 color:v25 variant:variant differentiateWithShapes:differentiateWithShapes];

    loadedImageForSettings = [(DOCTagSymbolImageConfiguration *)v26 loadedImageForSettings];
  }

  else
  {
    loadedImageForSettings = 0;
  }

  return loadedImageForSettings;
}

- (void)_renderInContext:(CGContext *)context request:(id)request
{
  requestCopy = request;
  tags = [requestCopy tags];
  v7 = [tags count];
  fillColors = [requestCopy fillColors];
  v9 = [fillColors count];

  if (v7 == v9)
  {
    [(DOCTagRenderer *)self sizeOfTagContentForRenderingRequest:requestCopy];
    v11 = v10;
    traitCollection = [requestCopy traitCollection];
    spacingType = [requestCopy spacingType];
    tags2 = [requestCopy tags];
    fillColors2 = [requestCopy fillColors];
    ringColor = [requestCopy ringColor];
    selectionOutlineColor = [requestCopy selectionOutlineColor];
    v45 = requestCopy;
    [requestCopy knockOutBorderWidth];
    v47 = v16;
    v49 = fillColors2;
    v17 = [fillColors2 count];
    if (v17)
    {
      v18 = v17;
      [requestCopy tagDimension];
      [(DOCTagRenderer *)self _tagChainSpacingForSpacingType:spacingType tagDimension:?];
      v20 = v19;
      if ([requestCopy layoutDirection] == 1)
      {
        [(DOCTagRenderer *)self sizeOfTagContentForRenderingRequest:requestCopy];
        v22 = v21;
        memset(&v54, 0, sizeof(v54));
        CGAffineTransformMakeScale(&v54, -1.0, 1.0);
        transform = v54;
        memset(&v53, 0, sizeof(v53));
        CGAffineTransformTranslate(&v53, &transform, -v22, 0.0);
        transform = v53;
        CGContextConcatCTM(context, &transform);
      }

      v23 = v18 - 1;
      if (v18 - 1 >= 0)
      {
        v46 = v20;
        v24 = 0.0;
        v25 = v11;
        do
        {
          v26 = [tags2 objectAtIndexedSubscript:--v18];
          v27 = [v49 objectAtIndexedSubscript:v18];
          x = v20 * v18;
          if (v18 < v23)
          {
            v55.origin.x = v20 * v18;
            v55.origin.y = v24;
            v55.size.width = v11;
            v55.size.height = v25;
            v56 = CGRectInset(v55, -v47, -v47);
            y = v56.origin.y;
            width = v56.size.width;
            height = v56.size.height;
            whiteColor = [MEMORY[0x277D75348] whiteColor];
            v33 = height;
            v20 = v46;
            [(DOCTagRenderer *)self __drawInContext:context tag:v26 contextSize:16 tagRect:whiteColor blendMode:0 fillColor:traitCollection strokeColor:v11 traitCollection:v25, x - v47, y, width, v33];
          }

          Alpha = CGColorGetAlpha([v27 CGColor]);
          v35 = Alpha;
          if (Alpha == 0.0)
          {
            v36 = 0;
          }

          else
          {
            v36 = v27;
          }

          if (Alpha == 0.0)
          {
            v37 = ringColor;
          }

          else
          {
            v37 = selectionOutlineColor;
          }

          v38 = v36;
          v39 = v37;
          if (v35 == 0.0 && selectionOutlineColor != 0)
          {
            [(DOCTagRenderer *)self _defaultBorderWidth];
            v42 = v41;
            if ([(DOCTagRenderer *)self differentiateWithShapes])
            {
              defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
              [defaultMetrics scaledValueForValue:traitCollection compatibleWithTraitCollection:1.0];
              v42 = v42 + v44;
            }

            v57.origin.x = x;
            v57.origin.y = v24;
            v57.size.width = v11;
            v57.size.height = v25;
            v58 = CGRectInset(v57, v42, v42);
            x = v58.origin.x;
            v24 = v58.origin.y;
            v11 = v58.size.width;
            v25 = v58.size.height;
          }

          [(DOCTagRenderer *)self __drawInContext:context tag:v26 contextSize:17 tagRect:v38 blendMode:v39 fillColor:traitCollection strokeColor:v11 traitCollection:v25, x, v24, v11, v25];
        }

        while (v18 > 0);
      }
    }

    requestCopy = v45;
  }

  else
  {
    traitCollection = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected input: tag/color count mismatch"];
    tags2 = DOCLogHandle();
    if (os_log_type_enabled(tags2, OS_LOG_TYPE_FAULT))
    {
      [DOCTagRenderer _renderInContext:traitCollection request:tags2];
    }
  }
}

- (void)__drawInContext:(CGContext *)context tag:(id)tag contextSize:(CGSize)size tagRect:(CGRect)rect blendMode:(int)mode fillColor:(id)color strokeColor:(id)strokeColor traitCollection:(id)self0
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v18 = size.height;
  v19 = size.width;
  tagCopy = tag;
  colorCopy = color;
  strokeColorCopy = strokeColor;
  collectionCopy = collection;
  CGContextSetBlendMode(context, mode);
  if ([(DOCTagRenderer *)self differentiateWithShapes])
  {
    v25 = +[DOCTagShapeRenderer shared];
    [v25 renderInContext:context contextSize:tagCopy tagRect:strokeColorCopy tag:colorCopy outlineColor:collectionCopy fillColor:v19 traitCollection:{v18, x, y, width, height}];
  }

  else
  {
    [(DOCTagRenderer *)self _defaultBorderWidth];
    v27 = v26;
    if (strokeColorCopy)
    {
      v28 = v26 * 0.5;
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v32 = CGRectInset(v31, v28, v27 * 0.5);
      x = v32.origin.x;
      y = v32.origin.y;
      width = v32.size.width;
      height = v32.size.height;
    }

    v25 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{x, y, width, height}];
    if (colorCopy)
    {
      CGContextSetFillColorWithColor(context, [colorCopy CGColor]);
      CGContextAddPath(context, [v25 CGPath]);
      CGContextFillPath(context);
    }

    if (strokeColorCopy)
    {
      CGContextSetLineWidth(context, v27);
      CGContextSetStrokeColorWithColor(context, [strokeColorCopy CGColor]);
      CGContextAddPath(context, [v25 CGPath]);
      CGContextStrokePath(context);
    }
  }
}

- (void)renderInUncacheableContext:(CGContext *)context request:(id)request
{
  requestCopy = request;
  if (UIGraphicsGetCurrentContext())
  {
    [(DOCTagRenderer *)self _renderInContext:context request:requestCopy];
  }

  else
  {
    UIGraphicsPushContext(context);
    [requestCopy tagDimension];
    CGContextTranslateCTM(context, 0.0, v6);
    CGContextScaleCTM(context, 1.0, -1.0);
    [(DOCTagRenderer *)self _renderInContext:context request:requestCopy];
    UIGraphicsPopContext();
  }
}

- (id)renderAttributedStringWithRequest:(id)request titleHighlighter:(id)highlighter
{
  requestCopy = request;
  highlighterCopy = highlighter;
  if (requestCopy)
  {
    text = [requestCopy text];
    textAttributes = [requestCopy textAttributes];
    v10 = +[DOCTagRenderer shared];
    v11 = [v10 renderImageWithRequest:requestCopy];

    [requestCopy tagBaselineAdjustment];
    v13 = v12;
    if ([(DOCTagRenderer *)self differentiateWithShapes])
    {
      [v11 baselineOffsetFromBottom];
      v13 = v13 - v14;
    }

    isSymbolImage = [v11 isSymbolImage];
    [v11 size];
    v18 = v17;
    if (isSymbolImage)
    {
      [v11 size];
      v20 = v18 / v19;
      v21 = v18 / v19 <= 0.0;
      if (v18 / v19 <= 0.0)
      {
        v22 = v18 / v19;
      }

      else
      {
        v22 = 1.0;
      }

      v23 = 1.0 / v20;
      if (v21)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = v23;
      }

      [requestCopy tagDimension];
      v18 = v25 * v22;
      [requestCopy tagDimension];
      v27 = v26 * v24;
    }

    else
    {
      v27 = v16;
    }

    v28 = objc_opt_new();
    [v28 setImage:v11];
    [v28 setBounds:{0.0, v13, v18, v27}];
    v29 = objc_opt_new();
    [requestCopy tagToTitleSpacing];
    v30 = [(DOCTagRenderer *)self _spacerImageWithWidth:?];
    [v29 setImage:v30];

    v31 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:text attributes:textAttributes];
    v32 = highlighterCopy[2](highlighterCopy, v31);

    v33 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v29];
    -[DOCTagRenderer _insertPrefixTextAttachment:spacerAttributedString:ensuringLayoutDirection:into:](self, "_insertPrefixTextAttachment:spacerAttributedString:ensuringLayoutDirection:into:", v28, v33, [requestCopy layoutDirection], v32);
  }

  else
  {
    [DOCTagRenderer renderAttributedStringWithRequest:? titleHighlighter:?];
    v32 = v35;
  }

  return v32;
}

- (id)_spacerImageWithWidth:(double)width
{
  if (width <= 0.0)
  {
    [(DOCTagRenderer *)a2 _spacerImageWithWidth:?];
  }

  if (_spacerImageWithWidth__onceToken != -1)
  {
    [DOCTagRenderer _spacerImageWithWidth:];
  }

  v4 = _spacerImageWithWidth___spacerImageCache;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:width];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v11.height = 1.0;
    v11.width = width;
    UIGraphicsBeginImageContextWithOptions(v11, 0, 1.0);
    v6 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v7 = _spacerImageWithWidth___spacerImageCache;
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:width];
    [v7 setObject:v6 forKey:v8];
  }

  return v6;
}

void __40__DOCTagRenderer__spacerImageWithWidth___block_invoke()
{
  v0 = objc_opt_new();
  v1 = _spacerImageWithWidth___spacerImageCache;
  _spacerImageWithWidth___spacerImageCache = v0;
}

- (void)_insertPrefixTextAttachment:(id)attachment spacerAttributedString:(id)string ensuringLayoutDirection:(int64_t)direction into:(id)into
{
  v9 = MEMORY[0x277CCA898];
  intoCopy = into;
  stringCopy = string;
  v16 = [v9 attributedStringWithAttachment:attachment];
  v12 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v13 = +[_TtC26DocumentManagerExecutables10DOCUnicode nonBreakingSpace_zeroWidth];
  [v12 appendUnicode:v13];

  [v12 appendAttributedString:v16];
  v14 = +[_TtC26DocumentManagerExecutables10DOCUnicode nonBreakingSpace_zeroWidth];
  [v12 appendUnicode:v14];

  [v12 appendAttributedString:stringCopy];
  v15 = +[_TtC26DocumentManagerExecutables10DOCUnicode nonBreakingSpace_zeroWidth];
  [v12 appendUnicode:v15];

  [intoCopy wrapInDirectionalIsolation:0];
  [intoCopy insertAttributedString:v12 atIndex:0];
  [intoCopy wrapInDirectionalIsolation:{+[DOCUnicode layoutDirectionForUIDirection:](_TtC26DocumentManagerExecutables10DOCUnicode, "layoutDirectionForUIDirection:", direction)}];
}

- (double)_tagChainSpacingForSpacingType:(unint64_t)type tagDimension:(double)dimension
{
  v4 = 0.4;
  if (type != 1)
  {
    v4 = 0.5625;
  }

  v5 = v4 * dimension;
  return ceilf(v5);
}

- (CGSize)sizeOfTagContentForRenderingRequest:(id)request
{
  requestCopy = request;
  tags = [requestCopy tags];
  v6 = [tags count];

  if (v6)
  {
    v7 = v6;
    [requestCopy tagDimension];
    [(DOCTagRenderer *)self differentiateWithShapes];
    traitCollection = [requestCopy traitCollection];
    [traitCollection displayScale];
    UIRoundToScale();
    v10 = v9;

    spacingType = [requestCopy spacingType];
    [requestCopy tagDimension];
    [(DOCTagRenderer *)self _tagChainSpacingForSpacingType:spacingType tagDimension:?];
    v13 = v10 + (v7 + -1.0) * v12;
    selectionOutlineColor = [requestCopy selectionOutlineColor];

    if (selectionOutlineColor)
    {
      [(DOCTagRenderer *)self _defaultBorderWidth];
      v13 = v13 + v15;
      v10 = v10 + v15;
    }
  }

  else
  {
    v13 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v16 = v13;
  v17 = v10;
  result.height = v17;
  result.width = v16;
  return result;
}

- (id)renderImageWithRequest:(void *)a1 .cold.1(void *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parameter"];
  v3 = DOCLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [v2 UTF8String];
    OUTLINED_FUNCTION_0(&dword_2493AC000, v5, v6, "%s", v7, v8, v9, v10, 2u);
  }

  result = objc_alloc_init(MEMORY[0x277D755B8]);
  *a1 = result;
  return result;
}

- (void)_renderInContext:(void *)a1 request:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = [a1 UTF8String];
  _os_log_fault_impl(&dword_2493AC000, a2, OS_LOG_TYPE_FAULT, "%s", &v3, 0xCu);
}

- (uint64_t)renderAttributedStringWithRequest:(uint64_t *)a1 titleHighlighter:.cold.1(uint64_t *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parameter"];
  v3 = DOCLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [v2 UTF8String];
    OUTLINED_FUNCTION_0(&dword_2493AC000, v5, v6, "%s", v7, v8, v9, v10, 2u);
  }

  result = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_285CBC3C8];
  *a1 = result;
  return result;
}

- (void)_spacerImageWithWidth:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DOCTagRenderer.m" lineNumber:346 description:@"Requesting spacer image with zero size."];
}

@end