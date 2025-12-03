@interface CertInfoGradientLabel
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIFont)font;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)setGradient:(id)gradient;
@end

@implementation CertInfoGradientLabel

- (void)dealloc
{
  patternColor = self->_patternColor;
  if (patternColor)
  {
    CFRelease(patternColor);
  }

  v4.receiver = self;
  v4.super_class = CertInfoGradientLabel;
  [(CertInfoGradientLabel *)&v4 dealloc];
}

- (UIFont)font
{
  font = self->_font;
  if (font)
  {
    v3 = font;
  }

  else
  {
    v3 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  text = self->_text;
  v4 = [(CertInfoGradientLabel *)self font:fits.width];
  [(NSString *)text _legacy_sizeWithFont:v4 constrainedToSize:4 lineBreakMode:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setGradient:(id)gradient
{
  v14 = *MEMORY[0x277D85DE8];
  gradientCopy = gradient;
  if (self->_gradient != gradientCopy)
  {
    objc_storeStrong(&self->_gradient, gradient);
    patternColor = self->_patternColor;
    if (patternColor)
    {
      CFRelease(patternColor);
    }

    self->_patternColor = 0;
    if ([(UIImage *)self->_gradient CGImage])
    {
      Pattern = CGColorSpaceCreatePattern(0);
      [(UIImage *)self->_gradient scale];
      memset(&v12, 0, sizeof(v12));
      v8 = *(MEMORY[0x277CBF2C0] + 16);
      *&v13.a = *MEMORY[0x277CBF2C0];
      *&v13.c = v8;
      *&v13.tx = *(MEMORY[0x277CBF2C0] + 32);
      CGAffineTransformScale(&v12, &v13, 1.0 / v9, -1.0 / v9);
      v13 = v12;
      v10 = CGPatternCreateWithImage2();
      *&v13.a = xmmword_2433CA2D0;
      *&v13.c = unk_2433CA2E0;
      self->_patternColor = CGColorCreateWithPattern(Pattern, v10, &v13.a);
      if (Pattern)
      {
        CFRelease(Pattern);
      }

      if (v10)
      {
        CFRelease(v10);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)drawRect:(CGRect)rect
{
  v13 = *MEMORY[0x277D85DE8];
  CurrentContext = UIGraphicsGetCurrentContext();
  text = [(CertInfoGradientLabel *)self text];
  font = [(CertInfoGradientLabel *)self font];
  [(CertInfoGradientLabel *)self bounds];
  v8 = v7;
  v10 = v9;
  v12[0] = xmmword_2433CA2F0;
  v12[1] = unk_2433CA300;
  CGContextSetFillColor(CurrentContext, v12);
  [text _legacy_drawAtPoint:font withFont:{v8, v10}];
  CGContextSetFillColorWithColor(CurrentContext, [(CertInfoGradientLabel *)self _patternColor]);
  CGContextSaveGState(CurrentContext);
  v14.width = v8;
  v14.height = v10;
  CGContextSetPatternPhase(CurrentContext, v14);
  [text _legacy_drawAtPoint:font withFont:{v8, v10}];
  CGContextRestoreGState(CurrentContext);

  v11 = *MEMORY[0x277D85DE8];
}

@end