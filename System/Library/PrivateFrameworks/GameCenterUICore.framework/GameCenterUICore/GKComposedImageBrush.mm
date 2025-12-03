@interface GKComposedImageBrush
- (CGSize)sizeForInput:(id)input;
- (UIEdgeInsets)maskInsets;
- (double)scaleForInput:(id)input;
- (id)copyWithZone:(_NSZone *)zone;
- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input;
@end

@implementation GKComposedImageBrush

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = GKComposedImageBrush;
  v4 = [(GKThemeBrush *)&v9 copyWithZone:zone];
  maskImage = [(GKComposedImageBrush *)self maskImage];
  [v4 setMaskImage:maskImage];

  backgroundImage = [(GKComposedImageBrush *)self backgroundImage];
  [v4 setBackgroundImage:backgroundImage];

  overlayImage = [(GKComposedImageBrush *)self overlayImage];
  [v4 setOverlayImage:overlayImage];

  [(GKComposedImageBrush *)self maskInsets];
  [v4 setMaskInsets:?];
  return v4;
}

- (CGSize)sizeForInput:(id)input
{
  maskImage = [(GKComposedImageBrush *)self maskImage];

  if (!maskImage)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/CommonUI/GKThemeBrush.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (self.maskImage != ((void*)0))\n[%s (%s:%d)]", v6, "-[GKComposedImageBrush sizeForInput:]", objc_msgSend(lastPathComponent, "UTF8String"), 413];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  maskImage2 = [(GKComposedImageBrush *)self maskImage];
  [maskImage2 size];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (double)scaleForInput:(id)input
{
  maskImage = [(GKComposedImageBrush *)self maskImage];

  if (!maskImage)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/CommonUI/GKThemeBrush.m"];
    lastPathComponent = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (self.maskImage != ((void*)0))\n[%s (%s:%d)]", v6, "-[GKComposedImageBrush scaleForInput:]", objc_msgSend(lastPathComponent, "UTF8String"), 419];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  maskImage2 = [(GKComposedImageBrush *)self maskImage];
  [maskImage2 scale];
  v12 = v11;

  return v12;
}

- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  inputCopy = input;
  backgroundImage = [(GKComposedImageBrush *)self backgroundImage];
  maskImage = [(GKComposedImageBrush *)self maskImage];
  overlayImage = [(GKComposedImageBrush *)self overlayImage];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = inputCopy;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, 0.0, height);
  CGContextScaleCTM(context, 1.0, -1.0);
  if (backgroundImage)
  {
    cGImage = [backgroundImage CGImage];
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    CGContextDrawImage(context, v32, cGImage);
  }

  if (v15)
  {
    [(GKComposedImageBrush *)self maskInsets];
    v18 = x + v17;
    v20 = y + v19;
    v22 = width - (v17 + v21);
    v24 = height - (v19 + v23);
    CGContextSaveGState(context);
    cGImage2 = [maskImage CGImage];
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    CGContextClipToMask(context, v33, cGImage2);
    cGImage3 = [v15 CGImage];
    v34.origin.x = v18;
    v34.origin.y = v20;
    v34.size.width = v22;
    v34.size.height = v24;
    CGContextDrawImage(context, v34, cGImage3);
    CGContextRestoreGState(context);
    if (annotateOnceToken != -1)
    {
      [GKComposedImageBrush drawInRect:withContext:input:];
    }

    if (shouldAnnotateImageUsage == 1)
    {
      v27 = objc_opt_class();
      Name = class_getName(v27);
      _annotateDrawInRectWithContextAndInput(Name, context, inputCopy, v18, v20, v22, v24);
    }
  }

  if (overlayImage)
  {
    cGImage4 = [overlayImage CGImage];
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    CGContextDrawImage(context, v35, cGImage4);
  }

  CGContextRestoreGState(context);
}

void __53__GKComposedImageBrush_drawInRect_withContext_input___block_invoke()
{
  v0 = [MEMORY[0x277D0C1D8] shared];
  shouldAnnotateImageUsage = [v0 shouldAnnotateImageUsage];
}

- (UIEdgeInsets)maskInsets
{
  top = self->_maskInsets.top;
  left = self->_maskInsets.left;
  bottom = self->_maskInsets.bottom;
  right = self->_maskInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end