@interface DOCTagRenderer
+ (DOCTagRenderer)shared;
- (BOOL)differentiateWithShapes;
- (CGSize)sizeOfTagContentForRenderingRequest:(id)a3;
- (double)_customRenderingBaselineOffsetFromBottomForRequest:(id)a3;
- (double)_defaultBorderWidth;
- (double)_tagChainSpacingForSpacingType:(unint64_t)a3 tagDimension:(double)a4;
- (id)_spacerImageWithWidth:(double)a3;
- (id)_symbolImageIfPosssibleForRequest:(id)a3;
- (id)renderAttributedStringWithRequest:(id)a3 titleHighlighter:(id)a4;
- (id)renderImageWithRequest:(id)a3;
- (id)tintedSystemImageForTag:(id)a3 variant:(unint64_t)a4;
- (void)__drawInContext:(CGContext *)a3 tag:(id)a4 contextSize:(CGSize)a5 tagRect:(CGRect)a6 blendMode:(int)a7 fillColor:(id)a8 strokeColor:(id)a9 traitCollection:(id)a10;
- (void)_insertPrefixTextAttachment:(id)a3 spacerAttributedString:(id)a4 ensuringLayoutDirection:(int64_t)a5 into:(id)a6;
- (void)_renderInContext:(CGContext *)a3 request:(id)a4;
- (void)renderInUncacheableContext:(CGContext *)a3 request:(id)a4;
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

- (id)tintedSystemImageForTag:(id)a3 variant:(unint64_t)a4
{
  v6 = a3;
  v7 = [(DOCTagRenderer *)self differentiateWithShapes];
  v8 = [v6 labelIndex];

  v9 = MEMORY[0x277D755B8];

  return [v9 _doc_tagImageForRenderingVariant:a4 differentiateWithShapes:v7 tagColorType:v8];
}

- (id)renderImageWithRequest:(id)a3
{
  v23[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 traitCollection];
    [v6 displayScale];
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

- (double)_customRenderingBaselineOffsetFromBottomForRequest:(id)a3
{
  v4 = a3;
  if ([(DOCTagRenderer *)self differentiateWithShapes])
  {
    [(DOCTagRenderer *)self sizeOfTagContentForRenderingRequest:v4];
    v6 = v5;
    v8 = v7;
    v9 = +[DOCTagShapeRenderer shared];
    [v9 baselineOffsetForRequest:v4 tagRectSize:{v6, v8}];
    v11 = v10;
  }

  else
  {
    v11 = -1.79769313e308;
  }

  return v11;
}

- (id)_symbolImageIfPosssibleForRequest:(id)a3
{
  v4 = a3;
  if (+[DOCTagRenderer allowUnsizedSymbolImages](DOCTagRenderer, "allowUnsizedSymbolImages") && [v4 allowUnsizedSymbolImages] && ((objc_msgSend(v4, "selectionOutlineColor"), (v5 = objc_claimAutoreleasedReturnValue()) == 0) || (v6 = v5, objc_msgSend(v4, "selectionOutlineColor"), v7 = objc_claimAutoreleasedReturnValue(), Alpha = CGColorGetAlpha(objc_msgSend(v7, "CGColor")), v7, v6, Alpha == 0.0)) && (objc_msgSend(v4, "tags"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v10 == 1) && (objc_msgSend(v4, "tags"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), objc_msgSend(v4, "fillColors"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v11, v12 == v14))
  {
    v15 = [v4 tags];
    v16 = [v15 objectAtIndexedSubscript:0];

    v17 = [v4 fillColors];
    v18 = [v17 objectAtIndexedSubscript:0];

    v19 = [v4 ringColor];
    v20 = [(DOCTagRenderer *)self differentiateWithShapes];
    if (CGColorGetAlpha([v18 CGColor]) == 0.0)
    {
      v21 = 1;
      v22 = v19;
    }

    else
    {
      v21 = [v4 variant];
      v22 = v18;
    }

    v25 = v22;
    v26 = [[DOCTagSymbolImageConfiguration alloc] initWithTag:v16 color:v25 variant:v21 differentiateWithShapes:v20];

    v23 = [(DOCTagSymbolImageConfiguration *)v26 loadedImageForSettings];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)_renderInContext:(CGContext *)a3 request:(id)a4
{
  v5 = a4;
  v6 = [v5 tags];
  v7 = [v6 count];
  v8 = [v5 fillColors];
  v9 = [v8 count];

  if (v7 == v9)
  {
    [(DOCTagRenderer *)self sizeOfTagContentForRenderingRequest:v5];
    v11 = v10;
    v12 = [v5 traitCollection];
    v13 = [v5 spacingType];
    v50 = [v5 tags];
    v14 = [v5 fillColors];
    v48 = [v5 ringColor];
    v15 = [v5 selectionOutlineColor];
    v45 = v5;
    [v5 knockOutBorderWidth];
    v47 = v16;
    v49 = v14;
    v17 = [v14 count];
    if (v17)
    {
      v18 = v17;
      [v5 tagDimension];
      [(DOCTagRenderer *)self _tagChainSpacingForSpacingType:v13 tagDimension:?];
      v20 = v19;
      if ([v5 layoutDirection] == 1)
      {
        [(DOCTagRenderer *)self sizeOfTagContentForRenderingRequest:v5];
        v22 = v21;
        memset(&v54, 0, sizeof(v54));
        CGAffineTransformMakeScale(&v54, -1.0, 1.0);
        transform = v54;
        memset(&v53, 0, sizeof(v53));
        CGAffineTransformTranslate(&v53, &transform, -v22, 0.0);
        transform = v53;
        CGContextConcatCTM(a3, &transform);
      }

      v23 = v18 - 1;
      if (v18 - 1 >= 0)
      {
        v46 = v20;
        v24 = 0.0;
        v25 = v11;
        do
        {
          v26 = [v50 objectAtIndexedSubscript:--v18];
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
            v32 = [MEMORY[0x277D75348] whiteColor];
            v33 = height;
            v20 = v46;
            [(DOCTagRenderer *)self __drawInContext:a3 tag:v26 contextSize:16 tagRect:v32 blendMode:0 fillColor:v12 strokeColor:v11 traitCollection:v25, x - v47, y, width, v33];
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
            v37 = v48;
          }

          else
          {
            v37 = v15;
          }

          v38 = v36;
          v39 = v37;
          if (v35 == 0.0 && v15 != 0)
          {
            [(DOCTagRenderer *)self _defaultBorderWidth];
            v42 = v41;
            if ([(DOCTagRenderer *)self differentiateWithShapes])
            {
              v43 = [MEMORY[0x277D75520] defaultMetrics];
              [v43 scaledValueForValue:v12 compatibleWithTraitCollection:1.0];
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

          [(DOCTagRenderer *)self __drawInContext:a3 tag:v26 contextSize:17 tagRect:v38 blendMode:v39 fillColor:v12 strokeColor:v11 traitCollection:v25, x, v24, v11, v25];
        }

        while (v18 > 0);
      }
    }

    v5 = v45;
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected input: tag/color count mismatch"];
    v50 = DOCLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
    {
      [DOCTagRenderer _renderInContext:v12 request:v50];
    }
  }
}

- (void)__drawInContext:(CGContext *)a3 tag:(id)a4 contextSize:(CGSize)a5 tagRect:(CGRect)a6 blendMode:(int)a7 fillColor:(id)a8 strokeColor:(id)a9 traitCollection:(id)a10
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v18 = a5.height;
  v19 = a5.width;
  v29 = a4;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  CGContextSetBlendMode(a3, a7);
  if ([(DOCTagRenderer *)self differentiateWithShapes])
  {
    v25 = +[DOCTagShapeRenderer shared];
    [v25 renderInContext:a3 contextSize:v29 tagRect:v23 tag:v22 outlineColor:v24 fillColor:v19 traitCollection:{v18, x, y, width, height}];
  }

  else
  {
    [(DOCTagRenderer *)self _defaultBorderWidth];
    v27 = v26;
    if (v23)
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
    if (v22)
    {
      CGContextSetFillColorWithColor(a3, [v22 CGColor]);
      CGContextAddPath(a3, [v25 CGPath]);
      CGContextFillPath(a3);
    }

    if (v23)
    {
      CGContextSetLineWidth(a3, v27);
      CGContextSetStrokeColorWithColor(a3, [v23 CGColor]);
      CGContextAddPath(a3, [v25 CGPath]);
      CGContextStrokePath(a3);
    }
  }
}

- (void)renderInUncacheableContext:(CGContext *)a3 request:(id)a4
{
  v7 = a4;
  if (UIGraphicsGetCurrentContext())
  {
    [(DOCTagRenderer *)self _renderInContext:a3 request:v7];
  }

  else
  {
    UIGraphicsPushContext(a3);
    [v7 tagDimension];
    CGContextTranslateCTM(a3, 0.0, v6);
    CGContextScaleCTM(a3, 1.0, -1.0);
    [(DOCTagRenderer *)self _renderInContext:a3 request:v7];
    UIGraphicsPopContext();
  }
}

- (id)renderAttributedStringWithRequest:(id)a3 titleHighlighter:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 text];
    v9 = [v6 textAttributes];
    v10 = +[DOCTagRenderer shared];
    v11 = [v10 renderImageWithRequest:v6];

    [v6 tagBaselineAdjustment];
    v13 = v12;
    if ([(DOCTagRenderer *)self differentiateWithShapes])
    {
      [v11 baselineOffsetFromBottom];
      v13 = v13 - v14;
    }

    v15 = [v11 isSymbolImage];
    [v11 size];
    v18 = v17;
    if (v15)
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

      [v6 tagDimension];
      v18 = v25 * v22;
      [v6 tagDimension];
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
    [v6 tagToTitleSpacing];
    v30 = [(DOCTagRenderer *)self _spacerImageWithWidth:?];
    [v29 setImage:v30];

    v31 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v8 attributes:v9];
    v32 = v7[2](v7, v31);

    v33 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v29];
    -[DOCTagRenderer _insertPrefixTextAttachment:spacerAttributedString:ensuringLayoutDirection:into:](self, "_insertPrefixTextAttachment:spacerAttributedString:ensuringLayoutDirection:into:", v28, v33, [v6 layoutDirection], v32);
  }

  else
  {
    [DOCTagRenderer renderAttributedStringWithRequest:? titleHighlighter:?];
    v32 = v35;
  }

  return v32;
}

- (id)_spacerImageWithWidth:(double)a3
{
  if (a3 <= 0.0)
  {
    [(DOCTagRenderer *)a2 _spacerImageWithWidth:?];
  }

  if (_spacerImageWithWidth__onceToken != -1)
  {
    [DOCTagRenderer _spacerImageWithWidth:];
  }

  v4 = _spacerImageWithWidth___spacerImageCache;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v11.height = 1.0;
    v11.width = a3;
    UIGraphicsBeginImageContextWithOptions(v11, 0, 1.0);
    v6 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    v7 = _spacerImageWithWidth___spacerImageCache;
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
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

- (void)_insertPrefixTextAttachment:(id)a3 spacerAttributedString:(id)a4 ensuringLayoutDirection:(int64_t)a5 into:(id)a6
{
  v9 = MEMORY[0x277CCA898];
  v10 = a6;
  v11 = a4;
  v16 = [v9 attributedStringWithAttachment:a3];
  v12 = objc_alloc_init(MEMORY[0x277CCAB48]);
  v13 = +[_TtC26DocumentManagerExecutables10DOCUnicode nonBreakingSpace_zeroWidth];
  [v12 appendUnicode:v13];

  [v12 appendAttributedString:v16];
  v14 = +[_TtC26DocumentManagerExecutables10DOCUnicode nonBreakingSpace_zeroWidth];
  [v12 appendUnicode:v14];

  [v12 appendAttributedString:v11];
  v15 = +[_TtC26DocumentManagerExecutables10DOCUnicode nonBreakingSpace_zeroWidth];
  [v12 appendUnicode:v15];

  [v10 wrapInDirectionalIsolation:0];
  [v10 insertAttributedString:v12 atIndex:0];
  [v10 wrapInDirectionalIsolation:{+[DOCUnicode layoutDirectionForUIDirection:](_TtC26DocumentManagerExecutables10DOCUnicode, "layoutDirectionForUIDirection:", a5)}];
}

- (double)_tagChainSpacingForSpacingType:(unint64_t)a3 tagDimension:(double)a4
{
  v4 = 0.4;
  if (a3 != 1)
  {
    v4 = 0.5625;
  }

  v5 = v4 * a4;
  return ceilf(v5);
}

- (CGSize)sizeOfTagContentForRenderingRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 tags];
  v6 = [v5 count];

  if (v6)
  {
    v7 = v6;
    [v4 tagDimension];
    [(DOCTagRenderer *)self differentiateWithShapes];
    v8 = [v4 traitCollection];
    [v8 displayScale];
    UIRoundToScale();
    v10 = v9;

    v11 = [v4 spacingType];
    [v4 tagDimension];
    [(DOCTagRenderer *)self _tagChainSpacingForSpacingType:v11 tagDimension:?];
    v13 = v10 + (v7 + -1.0) * v12;
    v14 = [v4 selectionOutlineColor];

    if (v14)
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