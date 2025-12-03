@interface GKGameMessagesBrush
- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input;
@end

@implementation GKGameMessagesBrush

- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  inputCopy = input;
  CGContextSaveGState(context);
  UIGraphicsPushContext(context);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = inputCopy;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  CGContextTranslateCTM(context, 0.0, height);
  CGContextScaleCTM(context, 1.0, -1.0);
  cGImage = [v11 CGImage];

  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  CGContextDrawImage(context, v15, cGImage);
  UIGraphicsPopContext();
  CGContextRestoreGState(context);
}

@end