@interface IFColor
+ (CGColorSpace)deviceDisplayP3ColorSpace;
+ (CGColorSpace)deviceExtendedDisplayP3ColorSpace;
+ (CGColorSpace)deviceExtendedRGBColorSpace;
+ (CGColorSpace)deviceGreyColorSpace;
+ (CGColorSpace)deviceRGBColorSpace;
+ (CGColorSpace)deviceSRGBColorSpace;
+ (id)black;
+ (id)borderColorForAppearance:(int64_t)a3;
+ (id)white;
- (BOOL)isEqual:(id)a3;
- (CGColor)cgColor;
- (IFColor)initWithCGColor:(CGColor *)a3;
- (IFColor)initWithCIColor:(id)a3;
- (IFColor)initWithCoder:(id)a3;
- (IFColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6;
- (IFColor)initWithSystemColor:(int64_t)a3 appearance:(int64_t)a4 contrast:(int64_t)a5 vibrancy:(int64_t)a6;
- (IFColor)initWithWhite:(double)a3 alpha:(double)a4;
- (id)_initWithColorStr:(id)a3 appearance:(int64_t)a4 contrast:(int64_t)a5 vibrancy:(int64_t)a6;
- (id)blendColorWithFraction:(double)a3 ofColor:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IFColor

+ (CGColorSpace)deviceExtendedRGBColorSpace
{
  if (deviceExtendedRGBColorSpace_onceToken != -1)
  {
    +[IFColor deviceExtendedRGBColorSpace];
  }

  return deviceExtendedRGBColorSpace_colorSpace;
}

+ (CGColorSpace)deviceRGBColorSpace
{
  if (deviceRGBColorSpace_onceToken != -1)
  {
    +[IFColor deviceRGBColorSpace];
  }

  return deviceRGBColorSpace_defaultColorSpace;
}

+ (CGColorSpace)deviceSRGBColorSpace
{
  if (deviceSRGBColorSpace_onceToken != -1)
  {
    +[IFColor deviceSRGBColorSpace];
  }

  return deviceSRGBColorSpace_colorSpace;
}

CGColorSpaceRef __30__IFColor_deviceRGBColorSpace__block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  deviceRGBColorSpace_defaultColorSpace = result;
  return result;
}

CGColorSpaceRef __38__IFColor_deviceExtendedRGBColorSpace__block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  deviceExtendedRGBColorSpace_colorSpace = result;
  return result;
}

+ (id)black
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __16__IFColor_black__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (black_onceToken != -1)
  {
    dispatch_once(&black_onceToken, block);
  }

  v2 = black_color;

  return v2;
}

uint64_t __16__IFColor_black__block_invoke(uint64_t a1)
{
  black_color = [objc_alloc(*(a1 + 32)) initWithWhite:0.0 alpha:1.0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)white
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __16__IFColor_white__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (white_onceToken != -1)
  {
    dispatch_once(&white_onceToken, block);
  }

  v2 = white_color;

  return v2;
}

uint64_t __16__IFColor_white__block_invoke(uint64_t a1)
{
  white_color = [objc_alloc(*(a1 + 32)) initWithWhite:1.0 alpha:1.0];

  return MEMORY[0x1EEE66BB8]();
}

CGColorSpaceRef __31__IFColor_deviceSRGBColorSpace__block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  deviceSRGBColorSpace_colorSpace = result;
  return result;
}

+ (CGColorSpace)deviceDisplayP3ColorSpace
{
  if (deviceDisplayP3ColorSpace_onceToken != -1)
  {
    +[IFColor deviceDisplayP3ColorSpace];
  }

  return deviceDisplayP3ColorSpace_colorSpace;
}

CGColorSpaceRef __36__IFColor_deviceDisplayP3ColorSpace__block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
  deviceDisplayP3ColorSpace_colorSpace = result;
  return result;
}

+ (CGColorSpace)deviceExtendedDisplayP3ColorSpace
{
  if (deviceExtendedDisplayP3ColorSpace_onceToken != -1)
  {
    +[IFColor deviceExtendedDisplayP3ColorSpace];
  }

  return deviceExtendedDisplayP3ColorSpace_colorSpace;
}

CGColorSpaceRef __44__IFColor_deviceExtendedDisplayP3ColorSpace__block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0D8]);
  deviceExtendedDisplayP3ColorSpace_colorSpace = result;
  return result;
}

+ (CGColorSpace)deviceGreyColorSpace
{
  if (deviceGreyColorSpace_onceToken != -1)
  {
    +[IFColor deviceGreyColorSpace];
  }

  return deviceGreyColorSpace_defaultColorSpace;
}

CGColorSpaceRef __31__IFColor_deviceGreyColorSpace__block_invoke()
{
  result = CGColorSpaceCreateDeviceGray();
  deviceGreyColorSpace_defaultColorSpace = result;
  return result;
}

- (IFColor)initWithRed:(double)a3 green:(double)a4 blue:(double)a5 alpha:(double)a6
{
  v7 = [objc_alloc(MEMORY[0x1E695F610]) initWithRed:+[IFColor deviceRGBColorSpace](IFColor green:"deviceRGBColorSpace") blue:a3 alpha:a4 colorSpace:{a5, a6}];
  v8 = [(IFColor *)self initWithCIColor:v7];

  return v8;
}

- (IFColor)initWithWhite:(double)a3 alpha:(double)a4
{
  v5 = [objc_alloc(MEMORY[0x1E695F610]) initWithRed:+[IFColor deviceRGBColorSpace](IFColor green:"deviceRGBColorSpace") blue:a3 alpha:a3 colorSpace:{a3, a4}];
  v6 = [(IFColor *)self initWithCIColor:v5];

  return v6;
}

- (IFColor)initWithCGColor:(CGColor *)a3
{
  v4 = [objc_alloc(MEMORY[0x1E695F610]) initWithCGColor:a3];
  v5 = [(IFColor *)self initWithCIColor:v4];

  return v5;
}

- (IFColor)initWithCIColor:(id)a3
{
  v5 = a3;
  v6 = [(IFColor *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ciColor, a3);
    v8 = MEMORY[0x1E696AFB0];
    v9 = [v5 stringRepresentation];
    v10 = [v8 _IF_UUIDWithString:v9];
    digest = v7->_digest;
    v7->_digest = v10;
  }

  return v7;
}

- (IFColor)initWithSystemColor:(int64_t)a3 appearance:(int64_t)a4 contrast:(int64_t)a5 vibrancy:(int64_t)a6
{
  v17 = *MEMORY[0x1E69E9840];
  switch(a3)
  {
    case 11:
      v13 = [(IFColor *)self initWithWhite:1.0 alpha:1.0];
      goto LABEL_10;
    case 12:
      v13 = [(IFColor *)self initWithWhite:0.0 alpha:1.0];
LABEL_10:
      v11 = v13;
      break;
    default:
      v14 = 0;
      v7 = [MEMORY[0x1E6999378] colorWithName:0 designSystem:&v14 palette:? colorScheme:? contrast:? styling:? displayGamut:? error:?];
      v8 = v14;
      if (!v7)
      {
        v9 = IFDefaultLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v8 localizedDescription];
          *buf = 138412290;
          v16 = v10;
        }
      }

      v11 = -[IFColor initWithCGColor:](self, "initWithCGColor:", [v7 cgColor]);

      break;
  }

  return v11;
}

- (id)_initWithColorStr:(id)a3 appearance:(int64_t)a4 contrast:(int64_t)a5 vibrancy:(int64_t)a6
{
  v17 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (![v10 compare:@"systemBlackColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:12 appearance:a4 contrast:a5 vibrancy:a6];
LABEL_34:
    self = v13;
    v12 = self;
    goto LABEL_35;
  }

  if (![v10 compare:@"systemWhiteColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:11 appearance:a4 contrast:a5 vibrancy:a6];
    goto LABEL_34;
  }

  if (![v10 compare:@"systemRedColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:0 appearance:a4 contrast:a5 vibrancy:a6];
    goto LABEL_34;
  }

  if (![v10 compare:@"systemOrangeColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:1 appearance:a4 contrast:a5 vibrancy:a6];
    goto LABEL_34;
  }

  if (![v10 compare:@"systemYellowColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:2 appearance:a4 contrast:a5 vibrancy:a6];
    goto LABEL_34;
  }

  if (![v10 compare:@"systemGreenColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:3 appearance:a4 contrast:a5 vibrancy:a6];
    goto LABEL_34;
  }

  if (![v10 compare:@"systemMintColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:5 appearance:a4 contrast:a5 vibrancy:a6];
    goto LABEL_34;
  }

  if (![v10 compare:@"systemTealColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:4 appearance:a4 contrast:a5 vibrancy:a6];
    goto LABEL_34;
  }

  if (![v10 compare:@"systemCyanColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:6 appearance:a4 contrast:a5 vibrancy:a6];
    goto LABEL_34;
  }

  if (![v10 compare:@"systemBlueColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:7 appearance:a4 contrast:a5 vibrancy:a6];
    goto LABEL_34;
  }

  if (![v10 compare:@"systemIndigoColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:8 appearance:a4 contrast:a5 vibrancy:a6];
    goto LABEL_34;
  }

  if (![v10 compare:@"systemPurpleColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:9 appearance:a4 contrast:a5 vibrancy:a6];
    goto LABEL_34;
  }

  if (![v10 compare:@"systemPinkColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:10 appearance:a4 contrast:a5 vibrancy:a6];
    goto LABEL_34;
  }

  if (![v10 compare:@"systemBrownColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:14 appearance:a4 contrast:a5 vibrancy:a6];
    goto LABEL_34;
  }

  if (![v10 compare:@"systemGrayColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:13 appearance:a4 contrast:a5 vibrancy:a6];
    goto LABEL_34;
  }

  v11 = IFDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v10;
    _os_log_impl(&dword_1B9DEC000, v11, OS_LOG_TYPE_DEFAULT, "Unknown color: %@", &v15, 0xCu);
  }

  v12 = 0;
LABEL_35:

  return v12;
}

- (IFColor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IFColor;
  v5 = [(IFColor *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"digest"];
    digest = v5->_digest;
    v5->_digest = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ciColor"];
    ciColor = v5->_ciColor;
    v5->_ciColor = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  digest = self->_digest;
  v5 = a3;
  [v5 encodeObject:digest forKey:@"digest"];
  [v5 encodeObject:self->_ciColor forKey:@"ciColor"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NSUUID *)self->_digest copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(CIColor *)self->_ciColor copy];
  v8 = v4[1];
  v4[1] = v7;

  return v4;
}

- (CGColor)cgColor
{
  v2 = CGColorCreate([(CIColor *)self->_ciColor colorSpace], [(CIColor *)self->_ciColor components]);

  return CFAutorelease(v2);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(IFColor *)self digest];
      v6 = [(IFColor *)v4 digest];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)blendColorWithFraction:(double)a3 ofColor:(id)a4
{
  v6 = a4;
  v7 = self;
  v8 = v7;
  if (a3 >= 1.0)
  {
    v33 = v6;
  }

  else if (a3 <= 0.0)
  {
    v33 = v7;
  }

  else
  {
    v9 = [v6 ciColor];
    [v9 red];
    v11 = v10;
    v12 = [(IFColor *)v8 ciColor];
    [v12 red];
    v14 = (1.0 - a3) * v13 + v11 * a3;

    v15 = [v6 ciColor];
    [v15 green];
    v17 = v16;
    v18 = [(IFColor *)v8 ciColor];
    [v18 green];
    v20 = (1.0 - a3) * v19 + v17 * a3;

    v21 = [v6 ciColor];
    [v21 blue];
    v23 = v22;
    v24 = [(IFColor *)v8 ciColor];
    [v24 blue];
    v26 = (1.0 - a3) * v25 + v23 * a3;

    v27 = [v6 ciColor];
    [v27 alpha];
    v29 = v28;
    v30 = [(IFColor *)v8 ciColor];
    [v30 alpha];
    v32 = (1.0 - a3) * v31 + v29 * a3;

    v33 = [[IFColor alloc] initWithRed:v14 green:v20 blue:v26 alpha:v32];
  }

  v34 = v33;

  return v34;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v18.receiver = self;
  v18.super_class = IFColor;
  v4 = [(IFColor *)&v18 description];
  v5 = [(IFColor *)self ciColor];
  [v5 red];
  v7 = v6;
  v8 = [(IFColor *)self ciColor];
  [v8 green];
  v10 = v9;
  v11 = [(IFColor *)self ciColor];
  [v11 blue];
  v13 = v12;
  v14 = [(IFColor *)self ciColor];
  [v14 alpha];
  v16 = [v3 stringWithFormat:@"%@ - %f, %f, %f, %f", v4, v7, v10, v13, v15];

  return v16;
}

+ (id)borderColorForAppearance:(int64_t)a3
{
  if ((a3 - 1) > 1)
  {
    v4 = [[IFColor alloc] initWithWhite:0.0 alpha:0.13];
  }

  else
  {
    v3 = [MEMORY[0x1E6999378] colorWithName:20 designSystem:0 palette:0 colorScheme:1 contrast:0 styling:0 displayGamut:0 error:0];
    v4 = -[IFColor initWithCGColor:]([IFColor alloc], "initWithCGColor:", [v3 cgColor]);
  }

  return v4;
}

@end