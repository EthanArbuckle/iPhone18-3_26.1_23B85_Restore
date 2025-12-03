@interface CNFRegLearnMoreButton
+ (id)roundedButtonWithText:(id)text color:(id)color;
- (CGRect)imageRectForContentRect:(CGRect)rect;
- (CGRect)titleRectForContentRect:(CGRect)rect;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CNFRegLearnMoreButton)initWithFrame:(CGRect)frame style:(int64_t)style text:(id)text;
- (void)_setupArrowImageForCurrentStyle;
- (void)_setupLearnMoreTextForCurrentStyle;
- (void)drawRect:(CGRect)rect;
@end

@implementation CNFRegLearnMoreButton

+ (id)roundedButtonWithText:(id)text color:(id)color
{
  v5 = MEMORY[0x277D75220];
  colorCopy = color;
  textCopy = text;
  v8 = [v5 buttonWithType:1];
  LODWORD(v9) = -0.5;
  [v8 setCharge:v9];
  [v8 setAutoresizingMask:5];
  titleLabel = [v8 titleLabel];
  v11 = [MEMORY[0x277D74300] fontWithName:@"Helvetica Neue Light" size:14.0];
  [titleLabel setFont:v11];

  titleLabel2 = [v8 titleLabel];
  [titleLabel2 setNumberOfLines:1];

  [v8 setContentEdgeInsets:{0.0, 6.0, 0.0, 6.0}];
  [v8 setTitleEdgeInsets:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTitle:textCopy forState:0];

  [v8 setTitleColor:colorCopy forState:0];
  [v8 sizeToFit];

  return v8;
}

- (CNFRegLearnMoreButton)initWithFrame:(CGRect)frame style:(int64_t)style text:(id)text
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  textCopy = text;
  v16.receiver = self;
  v16.super_class = CNFRegLearnMoreButton;
  height = [(CNFRegLearnMoreButton *)&v16 initWithFrame:x, y, width, height];
  v13 = height;
  if (height)
  {
    [(CNFRegLearnMoreButton *)height setStyle:style];
    [(CNFRegLearnMoreButton *)v13 setButtonText:textCopy];
    [(CNFRegLearnMoreButton *)v13 setUsesImage:style != 1];
    [(CNFRegLearnMoreButton *)v13 setAlwaysUnderline:style == 1];
    [(CNFRegLearnMoreButton *)v13 _setupLearnMoreTextForCurrentStyle];
    [(CNFRegLearnMoreButton *)v13 _setupArrowImageForCurrentStyle];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CNFRegLearnMoreButton *)v13 setBackgroundColor:clearColor];
  }

  return v13;
}

- (void)_setupLearnMoreTextForCurrentStyle
{
  v21 = +[CNFRegAppearanceController globalAppearanceController];
  v3 = 0.0;
  if ([(CNFRegLearnMoreButton *)self usesImage])
  {
    v4 = 5.0;
  }

  else
  {
    v4 = 0.0;
  }

  [(CNFRegLearnMoreButton *)self setTitleEdgeInsets:0.0, 0.0, 0.0, v4];
  v5 = self->_buttonText;
  if (!v5)
  {
    v6 = CommunicationsSetupUIBundle();
    v7 = CNFRegStringTableName();
    v5 = [v6 localizedStringForKey:@"FACETIME_SPLASH_LEARN_MORE" value:&stru_2856D3978 table:v7];
  }

  [(CNFRegLearnMoreButton *)self setTitle:v5 forState:0];
  v8 = [MEMORY[0x277D74300] boldSystemFontOfSize:15.0];
  learnMoreTextColor = [v21 learnMoreTextColor];
  learnMoreTextColorSelected = [v21 learnMoreTextColorSelected];
  learnMoreShadowColor = [v21 learnMoreShadowColor];
  v12 = 1.0;
  if ([(CNFRegLearnMoreButton *)self style]== 1)
  {
    tableHeaderTextColor = [v21 tableHeaderTextColor];

    tableHeaderTextColorSelected = [v21 tableHeaderTextColorSelected];

    tableHeaderTextShadowColor = [v21 tableHeaderTextShadowColor];

    [v21 tableHeaderTextShadowOffset];
    v3 = v16;
    v12 = v17;
    learnMoreTextColorSelected = tableHeaderTextColorSelected;
    learnMoreShadowColor = tableHeaderTextShadowColor;
    learnMoreTextColor = tableHeaderTextColor;
  }

  [(CNFRegLearnMoreButton *)self setTitleColor:learnMoreTextColor forState:0];
  [(CNFRegLearnMoreButton *)self setTitleColor:learnMoreTextColorSelected forState:1];
  titleLabel = [(CNFRegLearnMoreButton *)self titleLabel];
  [titleLabel setFont:v8];

  titleLabel2 = [(CNFRegLearnMoreButton *)self titleLabel];
  [titleLabel2 setLineBreakMode:4];

  if (learnMoreShadowColor)
  {
    [(CNFRegLearnMoreButton *)self setTitleShadowColor:learnMoreShadowColor forState:0];
    titleLabel3 = [(CNFRegLearnMoreButton *)self titleLabel];
    [titleLabel3 setShadowOffset:{v3, v12}];
  }
}

- (void)_setupArrowImageForCurrentStyle
{
  if ([(CNFRegLearnMoreButton *)self usesImage])
  {
    v5 = +[CNFRegAppearanceController globalAppearanceController];
    learnMoreArrowImage = [v5 learnMoreArrowImage];
    learnMoreArrowImagePressed = [v5 learnMoreArrowImagePressed];
    [(CNFRegLearnMoreButton *)self setImage:learnMoreArrowImage forState:0];
    [(CNFRegLearnMoreButton *)self setImage:learnMoreArrowImagePressed forState:1];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v11.receiver = self;
  v11.super_class = CNFRegLearnMoreButton;
  [(CNFRegLearnMoreButton *)&v11 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  v8 = [(CNFRegLearnMoreButton *)self imageForState:[(CNFRegLearnMoreButton *)self state]];
  if (v8)
  {
    v5 = v5 + 5.0;
  }

  v9 = v5;
  v10 = v7;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGRect)imageRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [(CNFRegLearnMoreButton *)self imageForState:[(CNFRegLearnMoreButton *)self state]];
  v9 = v8;
  if (v8)
  {
    [v8 size];
    v11 = v10;
    v13 = v12;
    [(CNFRegLearnMoreButton *)self imageEdgeInsets];
    v15 = x + v14;
    v17 = y + v16;
    v19 = width - (v14 + v18);
    v21 = height - (v16 + v20);
    v28.origin.x = v15;
    v28.origin.y = v17;
    v28.size.width = v19;
    v28.size.height = v21;
    v22 = CGRectGetMaxX(v28) - v11;
    v29.origin.x = v15;
    v29.origin.y = v17;
    v29.size.width = v19;
    v29.size.height = v21;
    v23 = floor(CGRectGetMidY(v29) + v13 * -0.5);
  }

  else
  {
    v22 = *MEMORY[0x277CBF3A0];
    v23 = *(MEMORY[0x277CBF3A0] + 8);
    v11 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v24 = v22;
  v25 = v23;
  v26 = v11;
  v27 = v13;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)titleRectForContentRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v42[2] = *MEMORY[0x277D85DE8];
  state = [(CNFRegLearnMoreButton *)self state];
  v9 = [(CNFRegLearnMoreButton *)self titleForState:state];
  v10 = v9;
  if (v9 && [v9 length])
  {
    v11 = [(CNFRegLearnMoreButton *)self imageForState:state];
    v12 = v11;
    v13 = MEMORY[0x277CBF3A8];
    v14 = *MEMORY[0x277CBF3A8];
    v15 = *MEMORY[0x277CBF3A8];
    if (v11)
    {
      [v11 size];
      v15 = v16;
    }

    [(CNFRegLearnMoreButton *)self titleEdgeInsets];
    v18 = x + v17;
    v20 = y + v19;
    v22 = width - (v17 + v21);
    v24 = height - (v19 + v23);
    _lineBreakMode = [(CNFRegLearnMoreButton *)self _lineBreakMode];
    v43.origin.x = v18;
    v43.origin.y = v20;
    v43.size.width = v22;
    v43.size.height = v24;
    v26 = CGRectGetWidth(v43);
    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
    v28 = [defaultParagraphStyle mutableCopy];

    [v28 setLineBreakMode:_lineBreakMode];
    v41[0] = *MEMORY[0x277D740A8];
    _font = [(CNFRegLearnMoreButton *)self _font];
    v41[1] = *MEMORY[0x277D74118];
    v42[0] = _font;
    v42[1] = v28;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];

    if ([v10 length])
    {
      [v10 boundingRectWithSize:1 options:v30 attributes:0 context:{v26 - v15, 1.79769313e308}];
      v14 = v31;
      v33 = v32;
    }

    else
    {
      v33 = *(v13 + 8);
    }

    v44.origin.x = v18;
    v44.origin.y = v20;
    v44.size.width = v22;
    v44.size.height = v24;
    v34 = CGRectGetMaxX(v44) - v15 - v14;
    v45.origin.x = v18;
    v45.origin.y = v20;
    v45.size.width = v22;
    v45.size.height = v24;
    v35 = floor(CGRectGetMidY(v45) + v33 * -0.5);
  }

  else
  {
    v34 = *MEMORY[0x277CBF3A0];
    v35 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v33 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v36 = *MEMORY[0x277D85DE8];
  v37 = v34;
  v38 = v35;
  v39 = v14;
  v40 = v33;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v34[2] = *MEMORY[0x277D85DE8];
  v8 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v8 learnMoreButtonDrawsUnderline] && ((-[CNFRegLearnMoreButton isHighlighted](self, "isHighlighted") & 1) != 0 || (-[CNFRegLearnMoreButton isSelected](self, "isSelected") & 1) != 0 || -[CNFRegLearnMoreButton alwaysUnderline](self, "alwaysUnderline")))
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    titleLabel = [(CNFRegLearnMoreButton *)self titleLabel];
    [(CNFRegLearnMoreButton *)self bounds];
    v12 = v11;
    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
    v14 = [defaultParagraphStyle mutableCopy];

    [v14 setLineBreakMode:4];
    v33[0] = *MEMORY[0x277D740A8];
    font = [titleLabel font];
    v33[1] = *MEMORY[0x277D74118];
    v34[0] = font;
    v34[1] = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

    text = [titleLabel text];
    if ([text length])
    {
      text2 = [titleLabel text];
      [(CNFRegLearnMoreButton *)self bounds];
      [text2 boundingRectWithSize:1 options:v16 attributes:0 context:{v19, v20}];
      v22 = v21;
    }

    else
    {
      v22 = *MEMORY[0x277CBF3A8];
    }

    [titleLabel center];
    v23 = v22 * 0.5;
    v25 = v24 - v22 * 0.5;
    [titleLabel center];
    v27 = v23 + v26;
    textColor = [titleLabel textColor];
    CGContextSetStrokeColorWithColor(CurrentContext, [textColor CGColor]);

    CGContextSetLineWidth(CurrentContext, 1.5);
    CGContextMoveToPoint(CurrentContext, v25, v12 + -1.5);
    CGContextAddLineToPoint(CurrentContext, v27, v12 + -1.5);
    CGContextStrokePath(CurrentContext);
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    CGContextSetStrokeColorWithColor(CurrentContext, [whiteColor CGColor]);

    CGContextSetLineWidth(CurrentContext, 1.0);
    v30 = v12 + -0.5;
    CGContextMoveToPoint(CurrentContext, v25, v30);
    CGContextAddLineToPoint(CurrentContext, v27, v30);
    CGContextStrokePath(CurrentContext);
  }

  v32.receiver = self;
  v32.super_class = CNFRegLearnMoreButton;
  [(CNFRegLearnMoreButton *)&v32 drawRect:x, y, width, height];

  v31 = *MEMORY[0x277D85DE8];
}

@end