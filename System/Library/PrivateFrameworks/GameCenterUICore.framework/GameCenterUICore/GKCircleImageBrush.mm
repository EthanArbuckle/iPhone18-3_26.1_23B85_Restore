@interface GKCircleImageBrush
- (CGSize)sizeForInput:(id)input;
- (CGSize)sizeOverride;
- (double)scaleForInput:(id)input;
- (id)renderedImageIdentifier;
- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input;
@end

@implementation GKCircleImageBrush

- (id)renderedImageIdentifier
{
  [(GKCircleImageBrush *)self sizeOverride];

  return NSStringFromCGSize(*&v2);
}

- (CGSize)sizeForInput:(id)input
{
  [(GKCircleImageBrush *)self sizeOverride];
  if (v3 == *MEMORY[0x277CBF3A8] && v4 == *(MEMORY[0x277CBF3A8] + 8))
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v3 = 57.0;
      if (*MEMORY[0x277D0C258] != 1)
      {
LABEL_10:
        v4 = v3;
        goto LABEL_11;
      }

      v4 = 57.0;
      if (_GKIsRemoteUIUsingPadIdiom)
      {
        goto LABEL_11;
      }
    }

    v3 = 42.0;
    goto LABEL_10;
  }

LABEL_11:
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)scaleForInput:(id)input
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = v4;

  return v5;
}

- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  inputCopy = input;
  if (!context)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/CommonUI/GKThemeBrush.m"];
    lastPathComponent = [v13 lastPathComponent];
    v15 = [v11 stringWithFormat:@"%@ (context != ((void*)0))\n[%s (%s:%d)]", v12, "-[GKCircleImageBrush drawInRect:withContext:input:]", objc_msgSend(lastPathComponent, "UTF8String"), 499];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v15}];
  }

  v16 = inputCopy;
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 0.0, height);
  CGContextScaleCTM(context, 1.0, -1.0);
  CGContextSetInterpolationQuality(context, kCGInterpolationHigh);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v19 = v18;

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__GKCircleImageBrush_drawInRect_withContext_input___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v19;
  if (drawInRect_withContext_input__onceToken != -1)
  {
    dispatch_once(&drawInRect_withContext_input__onceToken, block);
  }

  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v32[3] = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __51__GKCircleImageBrush_drawInRect_withContext_input___block_invoke_3;
  v23[3] = &unk_27967EE98;
  v25 = v32;
  v26 = v33;
  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  contextCopy = context;
  v20 = v16;
  v24 = v20;
  [v20 _gkReadAtSize:v23 ARGBHostEndianBytes:{350.0, 350.0}];
  CGContextRestoreGState(context);
  if (annotateOnceToken != -1)
  {
    [GKCircleImageBrush drawInRect:withContext:input:];
  }

  if (shouldAnnotateImageUsage == 1)
  {
    v21 = objc_opt_class();
    Name = class_getName(v21);
    _annotateDrawInRectWithContextAndInput(Name, context, v20, x, y, width, height);
  }

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v33, 8);
}

id __51__GKCircleImageBrush_drawInRect_withContext_input___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__GKCircleImageBrush_drawInRect_withContext_input___block_invoke_2;
  v3[3] = &__block_descriptor_48_e24_v16__0__GKImageContext_8l;
  v4 = vdupq_n_s64(0x4075E00000000000uLL);
  return [GKImageContext imageDrawnWithSize:0 scale:v3 options:350.0 usingBlock:350.0, v1];
}

void __51__GKCircleImageBrush_drawInRect_withContext_input___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277CBF348];
  v3 = *(MEMORY[0x277CBF348] + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = MEMORY[0x277D75208];
  v7 = a2;
  v10 = [v6 bezierPathWithOvalInRect:{v2, v3, v4, v5}];
  v8 = [v7 CGContext];

  v12.origin.x = v2;
  v12.origin.y = v3;
  v12.size.width = v4;
  v12.size.height = v5;
  CGContextClearRect(v8, v12);
  UIGraphicsPushContext(v8);
  v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  CGContextSetStrokeColorWithColor(v8, [v9 CGColor]);

  [v10 setLineWidth:1.0];
  [v10 stroke];
  UIGraphicsPopContext();
  CFRetain(v8);
  drawInRect_withContext_input__sTemplateContext = v8;
  drawInRect_withContext_input__sTemplatePix = CGBitmapContextGetData(v8);
}

void __51__GKCircleImageBrush_drawInRect_withContext_input___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (a5 > 0.0)
  {
    v6 = 0;
    v7 = drawInRect_withContext_input__sTemplatePix;
    v8 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      if (a4 > 0.0)
      {
        v9 = 0;
        do
        {
          if (*(v7 + 4 * v9))
          {
            v10 = *(a2 + 4 * v9);
            ++*(*(*(a1 + 40) + 8) + 24);
            if (!(v10 >> 28) || (v10 >= 0xF5u ? (v11 = (v10 & 0xFF00) >= 0xF401) : (v11 = 0), v11 && (v10 & 0xFF0000) > 0xF40000))
            {
              ++*(*(*(a1 + 48) + 8) + 24);
            }
          }

          ++v9;
        }

        while (a4 > v9);
      }

      ++v6;
      a2 += v8;
      v7 += v8;
    }

    while (a5 > v6);
  }

  v12 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v13 = *(a1 + 88);
  v16 = v12;
  CGContextAddPath(v13, [v16 CGPath]);
  CGContextClip(*(a1 + 88));
  CGContextDrawImage(*(a1 + 88), *(a1 + 56), [*(a1 + 32) CGImage]);
  if (*(*(*(a1 + 48) + 8) + 24) / *(*(*(a1 + 40) + 8) + 24) > 0.2)
  {
    v14 = *(a1 + 88);
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:?];
    CGContextSetStrokeColorWithColor(v14, [v15 CGColor]);

    UIGraphicsPushContext(*(a1 + 88));
    [v16 setLineWidth:1.0];
    [v16 stroke];
    UIGraphicsPopContext();
  }
}

void __51__GKCircleImageBrush_drawInRect_withContext_input___block_invoke_4()
{
  v0 = [MEMORY[0x277D0C1D8] shared];
  shouldAnnotateImageUsage = [v0 shouldAnnotateImageUsage];
}

- (CGSize)sizeOverride
{
  width = self->_sizeOverride.width;
  height = self->_sizeOverride.height;
  result.height = height;
  result.width = width;
  return result;
}

@end