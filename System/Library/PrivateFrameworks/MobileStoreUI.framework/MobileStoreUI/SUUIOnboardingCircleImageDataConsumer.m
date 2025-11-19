@interface SUUIOnboardingCircleImageDataConsumer
- (CGSize)outputSize;
- (id)_saturationBackgroundImageWithSize:(CGSize)a3;
- (id)imageForImage:(id)a3;
@end

@implementation SUUIOnboardingCircleImageDataConsumer

- (id)imageForImage:(id)a3
{
  v4 = a3;
  if ([(SUUIOnboardingCircleImageDataConsumer *)self usesSaturationFilter])
  {
    v5 = SUUICoreImageFramework();
    v6 = SUUIWeakLinkedClassForString(&cfstr_Cicontext.isa, v5);
    v7 = SUUIWeakLinkedClassForString(&cfstr_Ciimage.isa, v5);
    v8 = SUUIWeakLinkedClassForString(&cfstr_Cifilter.isa, v5);
    v9 = *SUUIWeakLinkedSymbolForString("kCIInputBackgroundImageKey", v5);
    v10 = *SUUIWeakLinkedSymbolForString("kCIInputImageKey", v5);
    v11 = *SUUIWeakLinkedSymbolForString("kCIOutputImageKey", v5);
    v12 = [v8 filterWithName:@"CIColorControls" keysAndValues:{@"inputSaturation", &unk_286BBE060, 0}];
    v13 = [v7 imageWithCGImage:{objc_msgSend(v4, "CGImage")}];
    [v12 setValue:v13 forKey:v10];

    v14 = [v8 filterWithName:@"CIMultiplyBlendMode"];
    v15 = [v12 valueForKey:v11];
    [v14 setValue:v15 forKey:v10];

    [v4 size];
    v16 = [(SUUIOnboardingCircleImageDataConsumer *)self _saturationBackgroundImageWithSize:?];
    v17 = [v7 imageWithCGImage:{objc_msgSend(v16, "CGImage")}];
    [v14 setValue:v17 forKey:v9];

    v18 = [v6 contextWithOptions:0];
    v19 = [v14 valueForKey:v11];

    [v19 extent];
    v20 = [v18 createCGImage:v19 fromRect:?];
    v21 = [MEMORY[0x277D755B8] imageWithCGImage:v20];

    CFRelease(v20);
    v4 = v21;
  }

  p_outputSize = &self->_outputSize;
  v23 = [MEMORY[0x277D759A0] mainScreen];
  [v23 scale];
  UIGraphicsBeginImageContextWithOptions(*p_outputSize, 0, v24);

  CurrentContext = UIGraphicsGetCurrentContext();
  width = p_outputSize->width;
  height = p_outputSize->height;
  CGContextBeginPath(CurrentContext);
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = width;
  v31.size.height = height;
  CGContextAddEllipseInRect(CurrentContext, v31);
  CGContextClosePath(CurrentContext);
  CGContextClip(CurrentContext);
  [v4 drawInRect:{0.0, 0.0, width, height}];
  v28 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v28;
}

- (id)_saturationBackgroundImageWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v8 = v7;
  v13.width = width;
  v13.height = height;
  UIGraphicsBeginImageContextWithOptions(v13, 0, v8);

  v9 = [(SUUIOnboardingCircleImageDataConsumer *)self tintColor];
  [v9 set];

  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = width;
  v14.size.height = height;
  UIRectFill(v14);
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

- (CGSize)outputSize
{
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end