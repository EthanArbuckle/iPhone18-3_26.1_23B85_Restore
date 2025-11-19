@interface GKComposedImageBrush
- (CGSize)sizeForInput:(id)a3;
- (UIEdgeInsets)maskInsets;
- (double)scaleForInput:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)drawInRect:(CGRect)a3 withContext:(CGContext *)a4 input:(id)a5;
@end

@implementation GKComposedImageBrush

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = GKComposedImageBrush;
  v4 = [(GKThemeBrush *)&v9 copyWithZone:a3];
  v5 = [(GKComposedImageBrush *)self maskImage];
  [v4 setMaskImage:v5];

  v6 = [(GKComposedImageBrush *)self backgroundImage];
  [v4 setBackgroundImage:v6];

  v7 = [(GKComposedImageBrush *)self overlayImage];
  [v4 setOverlayImage:v7];

  [(GKComposedImageBrush *)self maskInsets];
  [v4 setMaskInsets:?];
  return v4;
}

- (CGSize)sizeForInput:(id)a3
{
  v4 = [(GKComposedImageBrush *)self maskImage];

  if (!v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/CommonUI/GKThemeBrush.m"];
    v8 = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (self.maskImage != ((void*)0))\n[%s (%s:%d)]", v6, "-[GKComposedImageBrush sizeForInput:]", objc_msgSend(v8, "UTF8String"), 413];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  v10 = [(GKComposedImageBrush *)self maskImage];
  [v10 size];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (double)scaleForInput:(id)a3
{
  v4 = [(GKComposedImageBrush *)self maskImage];

  if (!v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/CommonUI/GKThemeBrush.m"];
    v8 = [v7 lastPathComponent];
    v9 = [v5 stringWithFormat:@"%@ (self.maskImage != ((void*)0))\n[%s (%s:%d)]", v6, "-[GKComposedImageBrush scaleForInput:]", objc_msgSend(v8, "UTF8String"), 419];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v9}];
  }

  v10 = [(GKComposedImageBrush *)self maskImage];
  [v10 scale];
  v12 = v11;

  return v12;
}

- (void)drawInRect:(CGRect)a3 withContext:(CGContext *)a4 input:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v30 = a5;
  v11 = [(GKComposedImageBrush *)self backgroundImage];
  v12 = [(GKComposedImageBrush *)self maskImage];
  v13 = [(GKComposedImageBrush *)self overlayImage];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v30;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  CGContextSaveGState(a4);
  CGContextTranslateCTM(a4, 0.0, height);
  CGContextScaleCTM(a4, 1.0, -1.0);
  if (v11)
  {
    v16 = [v11 CGImage];
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    CGContextDrawImage(a4, v32, v16);
  }

  if (v15)
  {
    [(GKComposedImageBrush *)self maskInsets];
    v18 = x + v17;
    v20 = y + v19;
    v22 = width - (v17 + v21);
    v24 = height - (v19 + v23);
    CGContextSaveGState(a4);
    v25 = [v12 CGImage];
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    CGContextClipToMask(a4, v33, v25);
    v26 = [v15 CGImage];
    v34.origin.x = v18;
    v34.origin.y = v20;
    v34.size.width = v22;
    v34.size.height = v24;
    CGContextDrawImage(a4, v34, v26);
    CGContextRestoreGState(a4);
    if (annotateOnceToken != -1)
    {
      [GKComposedImageBrush drawInRect:withContext:input:];
    }

    if (shouldAnnotateImageUsage == 1)
    {
      v27 = objc_opt_class();
      Name = class_getName(v27);
      _annotateDrawInRectWithContextAndInput(Name, a4, v30, v18, v20, v22, v24);
    }
  }

  if (v13)
  {
    v29 = [v13 CGImage];
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    CGContextDrawImage(a4, v35, v29);
  }

  CGContextRestoreGState(a4);
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