@interface SUUIVideoImageDataConsumer
- (CGSize)landscapeSize;
- (CGSize)portraitSize;
- (id)imageForColor:(id)color orientation:(unint64_t)orientation;
- (id)imageForImage:(id)image;
@end

@implementation SUUIVideoImageDataConsumer

- (id)imageForColor:(id)color orientation:(unint64_t)orientation
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorScheme = self->_colorScheme;
    v22 = 0;
    SUUIIconColorsForColorScheme(colorScheme, &v22, 0, 0);
    colorCopy = v22;
  }

  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = &OBJC_IVAR___SUUIVideoImageDataConsumer__portraitSize;
  if (orientation == 2)
  {
    v10 = &OBJC_IVAR___SUUIVideoImageDataConsumer__landscapeSize;
  }

  v11 = (self + *v10);
  v13 = *v11;
  v12 = v11[1];
  v14 = self->_backgroundColor != 0;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v17 = v16;
  v24.width = v13;
  v24.height = v12;
  UIGraphicsBeginImageContextWithOptions(v24, v14, v17);

  [colorCopy set];
  v25.origin.x = v8;
  v25.origin.y = v9;
  v25.size.width = v13;
  v25.size.height = v12;
  UIRectFill(v25);
  v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  [v18 set];

  v19 = [MEMORY[0x277D75208] bezierPathWithRect:{v8, v9, v13, v12}];
  [v19 stroke];
  v20 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v20;
}

- (id)imageForImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  v7 = v5 > v6;
  v8 = 2;
  if (v5 <= v6)
  {
    v8 = 1;
  }

  if ((v8 & self->_allowedOrientations) == 0)
  {
    v9 = objc_alloc(MEMORY[0x277D755B8]);
    cGImage = [imageCopy CGImage];
    [imageCopy scale];
    v11 = [v9 initWithCGImage:cGImage scale:2 orientation:?];

    [v11 size];
    v7 = self->_allowedOrientations == 2;
    imageCopy = v11;
  }

  if (v7)
  {
    v12 = &OBJC_IVAR___SUUIVideoImageDataConsumer__landscapeSize;
  }

  else
  {
    v12 = &OBJC_IVAR___SUUIVideoImageDataConsumer__portraitSize;
  }

  v13 = *(&self->super.super.super.isa + *v12);
  v14 = *MEMORY[0x277CBF3A0];
  v15 = *(MEMORY[0x277CBF3A0] + 8);
  v16 = v6 * (v13 / v5);
  v17 = ceilf(v16);
  v18 = self->_backgroundColor != 0;
  [imageCopy scale];
  v20 = v19;
  v27.width = v13;
  v27.height = v17;
  UIGraphicsBeginImageContextWithOptions(v27, v18, v20);
  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    [(UIColor *)backgroundColor set];
    v28.origin.x = v14;
    v28.origin.y = v15;
    v28.size.width = v13;
    v28.size.height = v17;
    UIRectFill(v28);
  }

  [imageCopy drawInRect:{v14, v15, v13, v17}];
  v22 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  [v22 set];

  v23 = [MEMORY[0x277D75208] bezierPathWithRect:{v14, v15, v13, v17}];
  [v23 stroke];
  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v24;
}

- (CGSize)landscapeSize
{
  width = self->_landscapeSize.width;
  height = self->_landscapeSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)portraitSize
{
  width = self->_portraitSize.width;
  height = self->_portraitSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end