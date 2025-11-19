@interface SUUISizeToFitImageDataConsumer
+ (id)consumerWithConstraintSize2:(CGSize)a3;
+ (id)consumerWithConstraintSize:(CGSize)a3;
- (CGSize)constraintSize;
- (id)imageForImage:(id)a3;
- (void)_drawGradientWithContext:(CGContext *)a3 imageRect:(CGRect)a4;
@end

@implementation SUUISizeToFitImageDataConsumer

+ (id)consumerWithConstraintSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  result = [a1 consumer];
  *(result + 1) = width;
  *(result + 2) = height;
  return result;
}

+ (id)consumerWithConstraintSize2:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  result = [a1 consumer];
  *(result + 1) = width;
  *(result + 2) = height;
  *(result + 24) = 1;
  return result;
}

- (id)imageForImage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_custom)
  {
    [v4 size];
    width = self->_constraintSize.width;
    height = self->_constraintSize.height;
    if (height == 0.0)
    {
      if (width == 0.0)
      {
        v15 = v5;
        goto LABEL_11;
      }
    }

    else if (width <= height)
    {
      v17 = v13 * (height / v14);
      width = floorf(v17);
      goto LABEL_9;
    }

    v16 = v14 * (width / v13);
    height = floorf(v16);
LABEL_9:
    [v5 scale];
    v19 = v18;
    v23.width = width;
    v23.height = height;
    UIGraphicsBeginImageContextWithOptions(v23, 0, v19);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationLow);
    goto LABEL_10;
  }

  v21.width = 0.0;
  v21.height = 0.0;
  [v4 size];
  SUUIIconFrameForIconSize(&v21.width, 0, v6, v7, self->_constraintSize.width, self->_constraintSize.height, 0.0);
  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 scale];
  UIGraphicsBeginImageContextWithOptions(v21, 0, v9);

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextSetInterpolationQuality(CurrentContext, kCGInterpolationLow);
  width = v21.width;
  height = v21.height;
LABEL_10:
  [v5 drawInRect:{0.0, 0.0, width, height}];
  [(SUUISizeToFitImageDataConsumer *)self _drawGradientWithContext:CurrentContext imageRect:0.0, 0.0, width, height];
  CGContextRestoreGState(CurrentContext);
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
LABEL_11:

  return v15;
}

- (void)_drawGradientWithContext:(CGContext *)a3 imageRect:(CGRect)a4
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_gradientEndColor)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *locations = xmmword_259FCAE10;
    v11 = [(UIColor *)self->_gradientEndColor colorWithAlphaComponent:0.0];
    v15[1] = -[UIColor CGColor](self->_gradientEndColor, "CGColor", [v11 CGColor]);

    v12 = CFArrayCreate(0, v15, 2, MEMORY[0x277CBF128]);
    v13 = CGGradientCreateWithColors(DeviceRGB, v12, locations);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v14 = CGRectGetMaxY(v20) - self->_gradientHeight;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v19.y = CGRectGetMaxY(v21);
    v18.x = 0.0;
    v19.x = 0.0;
    v18.y = v14;
    CGContextDrawLinearGradient(a3, v13, v18, v19, 0);
    CGGradientRelease(v13);
    CFRelease(v12);
    CGColorSpaceRelease(DeviceRGB);
  }
}

- (CGSize)constraintSize
{
  width = self->_constraintSize.width;
  height = self->_constraintSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end