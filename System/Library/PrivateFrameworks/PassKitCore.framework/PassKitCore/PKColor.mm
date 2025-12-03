@interface PKColor
+ (id)colorFromString:(id)string;
+ (id)colorWithH:(double)h S:(double)s B:(double)b A:(double)a;
+ (id)colorWithR:(double)r G:(double)g B:(double)b A:(double)a;
+ (id)matchingColorFromColor:(CGColor *)color;
- (BOOL)isEqual:(id)equal;
- (CGColor)CGColor;
- (NSString)string;
- (PKColor)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKColor

- (CGColor)CGColor
{
  v7 = *MEMORY[0x1E69E9840];
  result = atomic_load(&self->_colorRef);
  if (!result)
  {
    v4 = *&self->_blue;
    v6[0] = *&self->_red;
    v6[1] = v4;
    if (qword_1ED6D1820 != -1)
    {
      dispatch_once(&qword_1ED6D1820, &__block_literal_global_23);
    }

    result = CGColorCreate(_MergedGlobals_195, v6);
    if (result)
    {
      v5 = 0;
      atomic_compare_exchange_strong(&self->_colorRef, &v5, result);
      if (v5)
      {
        CFRelease(result);
        return v5;
      }
    }
  }

  return result;
}

- (void)dealloc
{
  v3 = atomic_load(&self->_colorRef);
  if (v3)
  {
    CFRelease(v3);
  }

  v4.receiver = self;
  v4.super_class = PKColor;
  [(PKColor *)&v4 dealloc];
}

+ (id)matchingColorFromColor:(CGColor *)color
{
  if (!color)
  {
    goto LABEL_13;
  }

  colorCopy = color;
  if (qword_1ED6D1820 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v4 = _MergedGlobals_195;
    if (CGColorSpaceGetNumberOfComponents(_MergedGlobals_195) == 3)
    {
      break;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    dispatch_once(&qword_1ED6D1820, &__block_literal_global_23);
  }

  if (CGColorGetColorSpace(colorCopy) == v4)
  {
    CopyByMatchingToColorSpace = CFRetain(colorCopy);
  }

  else
  {
    CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v4, kCGRenderingIntentPerceptual, colorCopy, 0);
  }

  v6 = CopyByMatchingToColorSpace;
  if (CopyByMatchingToColorSpace)
  {
    Components = CGColorGetComponents(CopyByMatchingToColorSpace);
    v8 = objc_alloc_init(PKColor);
    v9 = 0;
    v8->_red = *Components;
    v8->_green = Components[1];
    v8->_blue = Components[2];
    v8->_alpha = Components[3];
    atomic_compare_exchange_strong(&v8->_colorRef, &v9, v6);
    if (v9)
    {
      CFRelease(v6);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)colorWithR:(double)r G:(double)g B:(double)b A:(double)a
{
  v6 = objc_alloc_init(PKColor);
  v7.f64[0] = r;
  v7.f64[1] = g;
  __asm { FMOV            V1.2D, #1.0 }

  *&v6->_red = vbicq_s8(vbslq_s8(vcgtq_f64(v7, _Q1), _Q1, v7), vcltzq_f64(v7));
  v7.f64[0] = b;
  v7.f64[1] = a;
  *&v6->_blue = vbicq_s8(vbslq_s8(vcgtq_f64(v7, _Q1), _Q1, v7), vcltzq_f64(v7));

  return v6;
}

+ (id)colorWithH:(double)h S:(double)s B:(double)b A:(double)a
{
  if (h <= 1.0)
  {
    hCopy = h;
  }

  else
  {
    hCopy = 1.0;
  }

  v7 = h < 0.0;
  v8 = 0.0;
  if (v7)
  {
    hCopy = 0.0;
  }

  if (s <= 1.0)
  {
    sCopy = s;
  }

  else
  {
    sCopy = 1.0;
  }

  if (s >= 0.0)
  {
    v10 = sCopy;
  }

  else
  {
    v10 = 0.0;
  }

  if (b <= 1.0)
  {
    bCopy = b;
  }

  else
  {
    bCopy = 1.0;
  }

  if (b >= 0.0)
  {
    v12 = bCopy;
  }

  else
  {
    v12 = 0.0;
  }

  if (hCopy == 1.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = hCopy * 6.0;
  }

  v14 = v13;
  v15 = v14;
  v16 = (1.0 - v10) * v12;
  v17 = (v14 - v14);
  v18 = v12 * (1.0 - v10 * v17);
  v19 = v12 * (1.0 - v10 * (1.0 - v17));
  v20 = v16;
  v21 = v18;
  v22 = v19;
  if (v15 == 5)
  {
    v23 = v12;
  }

  else
  {
    v23 = 0.0;
  }

  if (v15 == 5)
  {
    v24 = v20;
  }

  else
  {
    v24 = 0.0;
  }

  if (v15 == 5)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0.0;
  }

  if (v15 == 4)
  {
    v23 = v22;
    v24 = v20;
    v25 = v12;
  }

  if (v15 == 3)
  {
    v23 = v20;
    v24 = v21;
    v25 = v12;
  }

  if (v15 == 2)
  {
    v26 = v20;
  }

  else
  {
    v26 = 0.0;
  }

  if (v15 == 2)
  {
    v27 = v12;
  }

  else
  {
    v27 = 0.0;
  }

  if (v15 == 2)
  {
    v8 = v22;
  }

  if (v15 == 1)
  {
    v28 = v12;
  }

  else
  {
    v21 = v26;
    v28 = v27;
  }

  if (v15 == 1)
  {
    v8 = v20;
  }

  if (v15)
  {
    v12 = v21;
    v22 = v28;
    v20 = v8;
  }

  if (v15 <= 2)
  {
    v29 = v12;
  }

  else
  {
    v29 = v23;
  }

  if (v15 <= 2)
  {
    v30 = v20;
  }

  else
  {
    v22 = v24;
    v30 = v25;
  }

  return [self colorWithR:v29 G:v22 B:v30 A:{a, v20}];
}

+ (id)colorFromString:(id)string
{
  if (string)
  {
    v3 = MEMORY[0x1E696AE88];
    stringCopy = string;
    v5 = [[v3 alloc] initWithString:stringCopy];

    v15 = 0;
    if ([v5 scanString:@"#" intoString:0] && objc_msgSend(v5, "scanHexInt:", &v15) && objc_msgSend(v5, "isAtEnd"))
    {
      v6 = [PKColor colorWithR:(BYTE2(v15) / 255.0) G:(BYTE1(v15) / 255.0) B:(v15 / 255.0) A:1.0];
LABEL_15:

      goto LABEL_17;
    }

    [v5 setScanLocation:0];
    v14 = 0;
    v7 = objc_msgSend(v5, "scanUpToString:intoString:", @"("), &v14;
    v8 = v14;
    if (v7 && [v5 scanString:@"(" intoString:0)]
    {
      v13 = 0;
      v9 = [v5 scanUpToString:@"" intoString:?], &v13);
      v10 = v13;
      if (v9 && [v5 scanString:@"" intoString:?], 0) && objc_msgSend(v5, "isAtEnd"))
      {
        v11 = [v10 componentsSeparatedByString:{@", "}];
        v6 = _ColorWithColorSpaceAndComponents(v8, v11);

LABEL_14:
        goto LABEL_15;
      }
    }

    else
    {
      v10 = 0;
    }

    [v5 setScanLocation:0];
    v6 = 0;
    goto LABEL_14;
  }

  v6 = 0;
LABEL_17:

  return v6;
}

- (NSString)string
{
  v3 = &unk_1ADB99000;
  v4 = self->_red * 255.0;
  LODWORD(v3) = llroundf(v4);
  v5 = self->_green * 255.0;
  LODWORD(v2) = llroundf(v5);
  v6 = 0x1E696A000uLL;
  v7 = self->_blue * 255.0;
  LODWORD(v6) = llroundf(v7);
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"rgba(%d, %d, %d, %.2f)", v3, v2, v6, *&self->_alpha];
}

- (unint64_t)hash
{
  v2 = self->_red * 255.0;
  v3 = llroundf(v2);
  v4 = self->_green * 255.0;
  v5 = llroundf(v4);
  v6 = self->_blue * 255.0;
  v7 = self->_alpha * 255.0;
  return (v5 << 16) | (v3 << 24) | (llroundf(v6) << 8) | llroundf(v7);
}

- (PKColor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKColor;
  v5 = [(PKColor *)&v11 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"red"];
    v5->_red = v6;
    [coderCopy decodeFloatForKey:@"green"];
    v5->_green = v7;
    [coderCopy decodeFloatForKey:@"blue"];
    v5->_blue = v8;
    [coderCopy decodeFloatForKey:@"alpha"];
    v5->_alpha = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  red = self->_red;
  coderCopy = coder;
  *&v5 = red;
  [coderCopy encodeFloat:@"red" forKey:v5];
  green = self->_green;
  *&green = green;
  [coderCopy encodeFloat:@"green" forKey:green];
  blue = self->_blue;
  *&blue = blue;
  [coderCopy encodeFloat:@"blue" forKey:blue];
  alpha = self->_alpha;
  *&alpha = alpha;
  [coderCopy encodeFloat:@"alpha" forKey:alpha];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if (self)
      {
        LOBYTE(self) = self->_red == v5[1] && self->_green == v5[2] && self->_blue == v5[3] && self->_alpha == v5[4];
      }
    }

    else
    {
      LOBYTE(self) = 0;
    }
  }

  return self;
}

@end