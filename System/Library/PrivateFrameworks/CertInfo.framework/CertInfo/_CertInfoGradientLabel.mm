@interface _CertInfoGradientLabel
- (CGSize)sizeThatFits:(CGSize)fits;
- (_CertInfoGradientLabel)initWithTrusted:(BOOL)trusted;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
@end

@implementation _CertInfoGradientLabel

- (_CertInfoGradientLabel)initWithTrusted:(BOOL)trusted
{
  trustedCopy = trusted;
  v26 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = _CertInfoGradientLabel;
  v4 = [(_CertInfoGradientLabel *)&v24 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v4)
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CertInfo"];
    v7 = v6;
    if (trustedCopy)
    {
      v8 = @"TRUSTED";
    }

    else
    {
      v8 = @"NOT_TRUSTED";
    }

    v9 = [v6 localizedStringForKey:v8 value:&stru_28561D260 table:@"CertInfo"];
    text = v4->_text;
    v4->_text = v9;

    v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:15.0];
    font = v4->_font;
    v4->_font = v11;

    [(_CertInfoGradientLabel *)v4 setBackgroundColor:0];
    [(_CertInfoGradientLabel *)v4 setOpaque:0];
    if (trustedCopy)
    {
      v13 = [MEMORY[0x277D755B8] imageNamed:@"TrustedCheckmark" inBundle:v5];
      checkImage = v4->_checkImage;
      v4->_checkImage = v13;

      v15 = @"TrustedTextGradient";
    }

    else
    {
      v15 = @"NotTrustedTextGradient";
    }

    v16 = [MEMORY[0x277D755B8] imageNamed:v15 inBundle:v5];
    if ([v16 CGImage])
    {
      Pattern = CGColorSpaceCreatePattern(0);
      [v16 scale];
      memset(&v23, 0, sizeof(v23));
      v18 = *(MEMORY[0x277CBF2C0] + 16);
      *&v25.a = *MEMORY[0x277CBF2C0];
      *&v25.c = v18;
      *&v25.tx = *(MEMORY[0x277CBF2C0] + 32);
      CGAffineTransformScale(&v23, &v25, 1.0 / v19, -1.0 / v19);
      v25 = v23;
      v20 = CGPatternCreateWithImage2();
      *&v25.a = xmmword_2433CA370;
      *&v25.c = unk_2433CA380;
      v4->_patternColor = CGColorCreateWithPattern(Pattern, v20, &v25.a);
      if (Pattern)
      {
        CFRelease(Pattern);
      }

      if (v20)
      {
        CFRelease(v20);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)dealloc
{
  patternColor = self->_patternColor;
  if (patternColor)
  {
    CFRelease(patternColor);
  }

  v4.receiver = self;
  v4.super_class = _CertInfoGradientLabel;
  [(_CertInfoGradientLabel *)&v4 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(NSString *)self->_text _legacy_sizeWithFont:self->_font constrainedToSize:4 lineBreakMode:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
  v5 = v4;
  v7 = v6;
  checkImage = self->_checkImage;
  if (checkImage)
  {
    [(UIImage *)checkImage size];
    v5 = v5 + v9 + 2.0;
  }

  v10 = v5;
  v11 = v7;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)drawRect:(CGRect)rect
{
  v18 = *MEMORY[0x277D85DE8];
  CurrentContext = UIGraphicsGetCurrentContext();
  [(_CertInfoGradientLabel *)self bounds];
  v7 = v6;
  checkImage = self->_checkImage;
  if (checkImage)
  {
    [(UIImage *)checkImage size];
    v10 = v9;
    v12 = v11;
    v13 = self->_checkImage;
    [(_CertInfoGradientLabel *)self bounds];
    [(UIImage *)v13 drawAtPoint:0.0, (v14 - v12) * 0.5];
    v15 = v10 + 2.0;
  }

  else
  {
    v15 = v5;
  }

  v17[0] = xmmword_2433CA390;
  v17[1] = unk_2433CA3A0;
  CGContextSetFillColor(CurrentContext, v17);
  [(NSString *)self->_text _legacy_drawAtPoint:self->_font withFont:v15, v7];
  CGContextSetFillColorWithColor(CurrentContext, self->_patternColor);
  CGContextSaveGState(CurrentContext);
  v19.width = v15;
  v19.height = v7;
  CGContextSetPatternPhase(CurrentContext, v19);
  [(NSString *)self->_text _legacy_drawAtPoint:self->_font withFont:v15, v7];
  CGContextRestoreGState(CurrentContext);
  v16 = *MEMORY[0x277D85DE8];
}

@end