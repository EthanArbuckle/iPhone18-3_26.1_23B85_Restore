@interface SUUIUberImageDataConsumer
- (id)imageForImage:(id)a3;
@end

@implementation SUUIUberImageDataConsumer

- (id)imageForImage:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 size];
  v6 = v5;
  [v4 size];
  v8 = v7;
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 scale];
  v11 = v10;
  v39.width = v6;
  v39.height = v8;
  UIGraphicsBeginImageContextWithOptions(v39, 1, v11);

  CurrentContext = UIGraphicsGetCurrentContext();
  [v4 drawInRect:{0.0, 0.0, v6, v8}];
  if (self->_backgroundColor)
  {
    c = CurrentContext;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *locations = xmmword_259FCBA18;
    v36 = unk_259FCBA28;
    v14 = [(UIColor *)self->_backgroundColor colorWithAlphaComponent:0.0];
    v15 = CGColorRetain([v14 CGColor]);

    v16 = [(UIColor *)self->_backgroundColor colorWithAlphaComponent:0.25];
    v17 = CGColorRetain([v16 CGColor]);

    v18 = [(UIColor *)self->_backgroundColor colorWithAlphaComponent:0.75];
    v19 = CGColorRetain([v18 CGColor]);

    v20 = [(UIColor *)self->_backgroundColor colorWithAlphaComponent:1.0];
    v21 = CGColorRetain([v20 CGColor]);

    values[0] = v15;
    values[1] = v17;
    values[2] = v19;
    values[3] = v21;
    v22 = CFArrayCreate(0, values, 4, MEMORY[0x277CBF128]);
    v23 = CGGradientCreateWithColors(DeviceRGB, v22, locations);
    [v4 size];
    v25 = v24;
    v26 = [MEMORY[0x277D75418] currentDevice];
    v27 = [v26 userInterfaceIdiom];

    v28 = 70.0;
    if ((v27 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v28 = 30.0;
    }

    v29 = v25 - v28;
    [v4 size];
    v41.y = v30;
    v40.x = 0.0;
    v41.x = 0.0;
    v40.y = v29;
    CGContextDrawLinearGradient(c, v23, v40, v41, 0);
    CGGradientRelease(v23);
    CFRelease(v22);
    CGColorRelease(v15);
    CGColorRelease(v17);
    CGColorRelease(v19);
    CGColorRelease(v21);
    CGColorSpaceRelease(DeviceRGB);
  }

  v31 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v31;
}

@end