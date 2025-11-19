@interface CLKUIWheelsOfTimeButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)_getMaxTextBounds;
- (CLKUIWheelsOfTimeButton)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)touchEdgeInsets;
- (__CFAttributedString)_newAttributedString:(id)a3 withFont:(id)a4 usingKerning:(double)a5 textColor:(id)a6;
- (id)_createButtonImage:(__CFAttributedString *)a3;
- (void)setButtonText:(id)a3 selectedFont:(id)a4 selectedTextColor:(id)a5 unselectedFont:(id)a6 unselectedTextColor:(id)a7 kerning:(double)a8;
@end

@implementation CLKUIWheelsOfTimeButton

- (CLKUIWheelsOfTimeButton)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CLKUIWheelsOfTimeButton;
  v3 = [(CLKUIWheelsOfTimeButton *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CLKUIWheelsOfTimeButton *)v3 layer];
    [v5 setCornerRadius:3.0];

    v6 = [(CLKUIWheelsOfTimeButton *)v4 layer];
    [v6 setBorderWidth:0.0];

    v7 = [(CLKUIWheelsOfTimeButton *)v4 titleLabel];
    [v7 setHidden:1];
  }

  return v4;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
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

- (__CFAttributedString)_newAttributedString:(id)a3 withFont:(id)a4 usingKerning:(double)a5 textColor:(id)a6
{
  v10 = a3;
  v11 = a4;
  valuePtr = a5;
  v12 = a6;
  v13 = *MEMORY[0x1E695E480];
  Mutable = CFAttributedStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v37.location = 0;
  v37.length = 0;
  CFAttributedStringReplaceString(Mutable, v37, v10);
  Length = CFAttributedStringGetLength(Mutable);
  v16 = *MEMORY[0x1E69659D8];
  v17 = [v12 CGColor];
  v38.location = 0;
  v38.length = Length;
  CFAttributedStringSetAttribute(Mutable, v38, v16, v17);
  if (a5 != 0.0)
  {
    v18 = CFNumberCreate(v13, kCFNumberFloatType, &valuePtr);
    v39.length = CFAttributedStringGetLength(Mutable);
    v39.location = 0;
    CFAttributedStringSetAttribute(Mutable, v39, *MEMORY[0x1E6965A18], v18);
    CFRelease(v18);
  }

  [v11 pointSize];
  v20 = v19;
  v21 = v19 * 0.5;
  [(CLKUIWheelsOfTimeButton *)self _getMaxTextBounds];
  v23 = v22;
  v25 = v24;
  v26 = v11;
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

- (void)setButtonText:(id)a3 selectedFont:(id)a4 selectedTextColor:(id)a5 unselectedFont:(id)a6 unselectedTextColor:(id)a7 kerning:(double)a8
{
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  [(CLKUIWheelsOfTimeButton *)self setAccessibilityLabel:v18];
  v19 = [(CLKUIWheelsOfTimeButton *)self _newAttributedString:v18 withFont:v17 usingKerning:v16 textColor:a8];

  v22 = [(CLKUIWheelsOfTimeButton *)self _createButtonImage:v19];
  [(CLKUIWheelsOfTimeButton *)self setImage:v22 forState:4];
  CFRelease(v19);
  v20 = [(CLKUIWheelsOfTimeButton *)self _newAttributedString:v18 withFont:v15 usingKerning:v14 textColor:a8];

  v21 = [(CLKUIWheelsOfTimeButton *)self _createButtonImage:v20];
  [(CLKUIWheelsOfTimeButton *)self setImage:v21 forState:0];
  CFRelease(v20);
}

- (id)_createButtonImage:(__CFAttributedString *)a3
{
  [(CLKUIWheelsOfTimeButton *)self bounds];
  v6 = v5;
  v8 = v7;
  v9 = [MEMORY[0x1E695B530] sharedRenderingContext];
  v10 = [v9 device];
  [v10 screenScale];
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
  v16 = CTLineCreateWithAttributedString(a3);
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