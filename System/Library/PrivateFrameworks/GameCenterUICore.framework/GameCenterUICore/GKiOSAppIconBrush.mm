@interface GKiOSAppIconBrush
- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input;
@end

@implementation GKiOSAppIconBrush

- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  inputCopy = input;
  CGContextSaveGState(context);
  UIGraphicsPushContext(context);
  v14 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, height * 0.225}];
  [v14 addClip];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = inputCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  CGContextTranslateCTM(context, 0.0, height);
  CGContextScaleCTM(context, 1.0, -1.0);
  cGImage = [v12 CGImage];

  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGContextDrawImage(context, v16, cGImage);
  UIGraphicsPopContext();
  CGContextRestoreGState(context);
}

@end