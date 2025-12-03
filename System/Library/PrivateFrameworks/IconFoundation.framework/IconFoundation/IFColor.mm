@interface IFColor
+ (CGColorSpace)deviceDisplayP3ColorSpace;
+ (CGColorSpace)deviceExtendedDisplayP3ColorSpace;
+ (CGColorSpace)deviceExtendedRGBColorSpace;
+ (CGColorSpace)deviceGreyColorSpace;
+ (CGColorSpace)deviceRGBColorSpace;
+ (CGColorSpace)deviceSRGBColorSpace;
+ (id)black;
+ (id)borderColorForAppearance:(int64_t)appearance;
+ (id)white;
- (BOOL)isEqual:(id)equal;
- (CGColor)cgColor;
- (IFColor)initWithCGColor:(CGColor *)color;
- (IFColor)initWithCIColor:(id)color;
- (IFColor)initWithCoder:(id)coder;
- (IFColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha;
- (IFColor)initWithSystemColor:(int64_t)color appearance:(int64_t)appearance contrast:(int64_t)contrast vibrancy:(int64_t)vibrancy;
- (IFColor)initWithWhite:(double)white alpha:(double)alpha;
- (id)_initWithColorStr:(id)str appearance:(int64_t)appearance contrast:(int64_t)contrast vibrancy:(int64_t)vibrancy;
- (id)blendColorWithFraction:(double)fraction ofColor:(id)color;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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
  block[4] = self;
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
  block[4] = self;
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

- (IFColor)initWithRed:(double)red green:(double)green blue:(double)blue alpha:(double)alpha
{
  v7 = [objc_alloc(MEMORY[0x1E695F610]) initWithRed:+[IFColor deviceRGBColorSpace](IFColor green:"deviceRGBColorSpace") blue:red alpha:green colorSpace:{blue, alpha}];
  v8 = [(IFColor *)self initWithCIColor:v7];

  return v8;
}

- (IFColor)initWithWhite:(double)white alpha:(double)alpha
{
  v5 = [objc_alloc(MEMORY[0x1E695F610]) initWithRed:+[IFColor deviceRGBColorSpace](IFColor green:"deviceRGBColorSpace") blue:white alpha:white colorSpace:{white, alpha}];
  v6 = [(IFColor *)self initWithCIColor:v5];

  return v6;
}

- (IFColor)initWithCGColor:(CGColor *)color
{
  v4 = [objc_alloc(MEMORY[0x1E695F610]) initWithCGColor:color];
  v5 = [(IFColor *)self initWithCIColor:v4];

  return v5;
}

- (IFColor)initWithCIColor:(id)color
{
  colorCopy = color;
  v6 = [(IFColor *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ciColor, color);
    v8 = MEMORY[0x1E696AFB0];
    stringRepresentation = [colorCopy stringRepresentation];
    v10 = [v8 _IF_UUIDWithString:stringRepresentation];
    digest = v7->_digest;
    v7->_digest = v10;
  }

  return v7;
}

- (IFColor)initWithSystemColor:(int64_t)color appearance:(int64_t)appearance contrast:(int64_t)contrast vibrancy:(int64_t)vibrancy
{
  v17 = *MEMORY[0x1E69E9840];
  switch(color)
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
          localizedDescription = [v8 localizedDescription];
          *buf = 138412290;
          v16 = localizedDescription;
        }
      }

      v11 = -[IFColor initWithCGColor:](self, "initWithCGColor:", [v7 cgColor]);

      break;
  }

  return v11;
}

- (id)_initWithColorStr:(id)str appearance:(int64_t)appearance contrast:(int64_t)contrast vibrancy:(int64_t)vibrancy
{
  v17 = *MEMORY[0x1E69E9840];
  strCopy = str;
  if (![strCopy compare:@"systemBlackColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:12 appearance:appearance contrast:contrast vibrancy:vibrancy];
LABEL_34:
    self = v13;
    selfCopy = self;
    goto LABEL_35;
  }

  if (![strCopy compare:@"systemWhiteColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:11 appearance:appearance contrast:contrast vibrancy:vibrancy];
    goto LABEL_34;
  }

  if (![strCopy compare:@"systemRedColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:0 appearance:appearance contrast:contrast vibrancy:vibrancy];
    goto LABEL_34;
  }

  if (![strCopy compare:@"systemOrangeColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:1 appearance:appearance contrast:contrast vibrancy:vibrancy];
    goto LABEL_34;
  }

  if (![strCopy compare:@"systemYellowColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:2 appearance:appearance contrast:contrast vibrancy:vibrancy];
    goto LABEL_34;
  }

  if (![strCopy compare:@"systemGreenColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:3 appearance:appearance contrast:contrast vibrancy:vibrancy];
    goto LABEL_34;
  }

  if (![strCopy compare:@"systemMintColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:5 appearance:appearance contrast:contrast vibrancy:vibrancy];
    goto LABEL_34;
  }

  if (![strCopy compare:@"systemTealColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:4 appearance:appearance contrast:contrast vibrancy:vibrancy];
    goto LABEL_34;
  }

  if (![strCopy compare:@"systemCyanColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:6 appearance:appearance contrast:contrast vibrancy:vibrancy];
    goto LABEL_34;
  }

  if (![strCopy compare:@"systemBlueColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:7 appearance:appearance contrast:contrast vibrancy:vibrancy];
    goto LABEL_34;
  }

  if (![strCopy compare:@"systemIndigoColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:8 appearance:appearance contrast:contrast vibrancy:vibrancy];
    goto LABEL_34;
  }

  if (![strCopy compare:@"systemPurpleColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:9 appearance:appearance contrast:contrast vibrancy:vibrancy];
    goto LABEL_34;
  }

  if (![strCopy compare:@"systemPinkColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:10 appearance:appearance contrast:contrast vibrancy:vibrancy];
    goto LABEL_34;
  }

  if (![strCopy compare:@"systemBrownColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:14 appearance:appearance contrast:contrast vibrancy:vibrancy];
    goto LABEL_34;
  }

  if (![strCopy compare:@"systemGrayColor"])
  {
    v13 = [(IFColor *)self initWithSystemColor:13 appearance:appearance contrast:contrast vibrancy:vibrancy];
    goto LABEL_34;
  }

  v11 = IFDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = strCopy;
    _os_log_impl(&dword_1B9DEC000, v11, OS_LOG_TYPE_DEFAULT, "Unknown color: %@", &v15, 0xCu);
  }

  selfCopy = 0;
LABEL_35:

  return selfCopy;
}

- (IFColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = IFColor;
  v5 = [(IFColor *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"digest"];
    digest = v5->_digest;
    v5->_digest = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ciColor"];
    ciColor = v5->_ciColor;
    v5->_ciColor = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  digest = self->_digest;
  coderCopy = coder;
  [coderCopy encodeObject:digest forKey:@"digest"];
  [coderCopy encodeObject:self->_ciColor forKey:@"ciColor"];
}

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      digest = [(IFColor *)self digest];
      digest2 = [(IFColor *)equalCopy digest];
      v7 = [digest isEqual:digest2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)blendColorWithFraction:(double)fraction ofColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  v8 = selfCopy;
  if (fraction >= 1.0)
  {
    v33 = colorCopy;
  }

  else if (fraction <= 0.0)
  {
    v33 = selfCopy;
  }

  else
  {
    ciColor = [colorCopy ciColor];
    [ciColor red];
    v11 = v10;
    ciColor2 = [(IFColor *)v8 ciColor];
    [ciColor2 red];
    v14 = (1.0 - fraction) * v13 + v11 * fraction;

    ciColor3 = [colorCopy ciColor];
    [ciColor3 green];
    v17 = v16;
    ciColor4 = [(IFColor *)v8 ciColor];
    [ciColor4 green];
    v20 = (1.0 - fraction) * v19 + v17 * fraction;

    ciColor5 = [colorCopy ciColor];
    [ciColor5 blue];
    v23 = v22;
    ciColor6 = [(IFColor *)v8 ciColor];
    [ciColor6 blue];
    v26 = (1.0 - fraction) * v25 + v23 * fraction;

    ciColor7 = [colorCopy ciColor];
    [ciColor7 alpha];
    v29 = v28;
    ciColor8 = [(IFColor *)v8 ciColor];
    [ciColor8 alpha];
    v32 = (1.0 - fraction) * v31 + v29 * fraction;

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
  ciColor = [(IFColor *)self ciColor];
  [ciColor red];
  v7 = v6;
  ciColor2 = [(IFColor *)self ciColor];
  [ciColor2 green];
  v10 = v9;
  ciColor3 = [(IFColor *)self ciColor];
  [ciColor3 blue];
  v13 = v12;
  ciColor4 = [(IFColor *)self ciColor];
  [ciColor4 alpha];
  v16 = [v3 stringWithFormat:@"%@ - %f, %f, %f, %f", v4, v7, v10, v13, v15];

  return v16;
}

+ (id)borderColorForAppearance:(int64_t)appearance
{
  if ((appearance - 1) > 1)
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