@interface CLKUIWheelsOfTimeButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)_getMaxTextBounds;
- (CLKUIWheelsOfTimeButton)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)touchEdgeInsets;
- (__CFAttributedString)_newAttributedString:(id)string withFont:(id)font usingKerning:(double)kerning textColor:(id)color;
- (id)_createButtonImage:(__CFAttributedString *)image;
- (void)setButtonText:(id)text selectedFont:(id)font selectedTextColor:(id)color unselectedFont:(id)unselectedFont unselectedTextColor:(id)textColor kerning:(double)kerning;
@end

@implementation CLKUIWheelsOfTimeButton

- (CLKUIWheelsOfTimeButton)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = CLKUIWheelsOfTimeButton;
  v3 = [(CLKUIWheelsOfTimeButton *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(CLKUIWheelsOfTimeButton *)v3 layer];
    [layer setCornerRadius:3.0];

    layer2 = [(CLKUIWheelsOfTimeButton *)v4 layer];
    [layer2 setBorderWidth:0.0];

    titleLabel = [(CLKUIWheelsOfTimeButton *)v4 titleLabel];
    [titleLabel setHidden:1];
  }

  return v4;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(CLKUIWheelsOfTimeButton *)self bounds];
  top = self->_touchEdgeInsets.top;
  left = self->_touchEdgeInsets.left;
  v10 = v9 + left;
  v12 = v11 + top;
  v14 = v13 - (left + self->_touchEdgeInsets.right);
  v16 = v15 - (top + self->_touchEdgeInsets.bottom);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(*&v10, *&v17);
}

- (CGRect)_getMaxTextBounds
{
  [(CLKUIWheelsOfTimeButton *)self bounds];

  return CGRectInset(*&v2, 0.5, 0.5);
}

- (__CFAttributedString)_newAttributedString:(id)string withFont:(id)font usingKerning:(double)kerning textColor:(id)color
{
  stringCopy = string;
  fontCopy = font;
  valuePtr = kerning;
  colorCopy = color;
  v13 = *MEMORY[0x1E695E480];
  Mutable = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v37.location = 0;
  v37.length = 0;
  CFAttributedStringReplaceString(Mutable, v37, stringCopy);
  Length = CFAttributedStringGetLength(Mutable);
  v16 = *MEMORY[0x1E69659D8];
  cGColor = [colorCopy CGColor];
  v38.location = 0;
  v38.length = Length;
  CFAttributedStringSetAttribute(Mutable, v38, v16, cGColor);
  if (kerning != 0.0)
  {
    v18 = CFNumberCreate(v13, kCFNumberFloatType, &valuePtr);
    v39.length = CFAttributedStringGetLength(Mutable);
    v39.location = 0;
    CFAttributedStringSetAttribute(Mutable, v39, *MEMORY[0x1E6965A18], v18);
    CFRelease(v18);
  }

  [fontCopy pointSize];
  v20 = v19;
  v21 = v19 * 0.5;
  [(CLKUIWheelsOfTimeButton *)self _getMaxTextBounds];
  v23 = v22;
  v25 = v24;
  v26 = fontCopy;
  v27 = *MEMORY[0x1E6965658];
  for (i = v26; ; i = v34)
  {
    v40.length = CFAttributedStringGetLength(Mutable);
    v40.location = 0;
    CFAttributedStringSetAttribute(Mutable, v40, v27, i);
    v29 = CTLineCreateWithAttributedString(Mutable);
    BoundsWithOptions = CTLineGetBoundsWithOptions(v29, 8uLL);
    width = BoundsWithOptions.size.width;
    height = BoundsWithOptions.size.height;
    CFRelease(v29);
    v32 = width <= v23 && height <= v25;
    v20 = v20 + -0.5;
    if (v32 || v20 < v21)
    {
      break;
    }

    v34 = [v26 fontWithSize:v20];
  }

  return Mutable;
}

- (void)setButtonText:(id)text selectedFont:(id)font selectedTextColor:(id)color unselectedFont:(id)unselectedFont unselectedTextColor:(id)textColor kerning:(double)kerning
{
  textColorCopy = textColor;
  unselectedFontCopy = unselectedFont;
  colorCopy = color;
  fontCopy = font;
  textCopy = text;
  [(CLKUIWheelsOfTimeButton *)self setAccessibilityLabel:textCopy];
  v19 = [(CLKUIWheelsOfTimeButton *)self _newAttributedString:textCopy withFont:fontCopy usingKerning:colorCopy textColor:kerning];

  v22 = [(CLKUIWheelsOfTimeButton *)self _createButtonImage:v19];
  [(CLKUIWheelsOfTimeButton *)self setImage:v22 forState:4];
  CFRelease(v19);
  v20 = [(CLKUIWheelsOfTimeButton *)self _newAttributedString:textCopy withFont:unselectedFontCopy usingKerning:textColorCopy textColor:kerning];

  v21 = [(CLKUIWheelsOfTimeButton *)self _createButtonImage:v20];
  [(CLKUIWheelsOfTimeButton *)self setImage:v21 forState:0];
  CFRelease(v20);
}

- (id)_createButtonImage:(__CFAttributedString *)image
{
  [(CLKUIWheelsOfTimeButton *)self bounds];
  v6 = v5;
  v8 = v7;
  mEMORY[0x1E695B530] = [MEMORY[0x1E695B530] sharedRenderingContext];
  device = [mEMORY[0x1E695B530] device];
  [device screenScale];
  v12 = v11;
  v28.width = v6;
  v28.height = v8;
  UIGraphicsBeginImageContextWithOptions(v28, 0, v12);

  CurrentContext = UIGraphicsGetCurrentContext();
  v14 = *(MEMORY[0x1E695EFD0] + 16);
  *&v26.a = *MEMORY[0x1E695EFD0];
  *&v26.c = v14;
  *&v26.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGContextSetTextMatrix(CurrentContext, &v26);
  [(CLKUIWheelsOfTimeButton *)self bounds];
  CGContextTranslateCTM(CurrentContext, 0.0, v15);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  v16 = CTLineCreateWithAttributedString(image);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v16, 8uLL);
  x = BoundsWithOptions.origin.x;
  y = BoundsWithOptions.origin.y;
  width = BoundsWithOptions.size.width;
  height = BoundsWithOptions.size.height;
  [(CLKUIWheelsOfTimeButton *)self bounds];
  v22 = (v21 - width) * 0.5;
  [(CLKUIWheelsOfTimeButton *)self bounds];
  CGContextSetTextPosition(CurrentContext, v22 - x, (v23 - height) * 0.5 - y);
  CTLineDraw(v16, CurrentContext);
  CFRelease(v16);
  v24 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v24;
}

- (UIEdgeInsets)touchEdgeInsets
{
  top = self->_touchEdgeInsets.top;
  left = self->_touchEdgeInsets.left;
  bottom = self->_touchEdgeInsets.bottom;
  right = self->_touchEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end