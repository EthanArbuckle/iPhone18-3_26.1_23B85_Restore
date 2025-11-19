@interface CNFRegLearnMoreButton
+ (id)roundedButtonWithText:(id)a3 color:(id)a4;
- (CGRect)imageRectForContentRect:(CGRect)a3;
- (CGRect)titleRectForContentRect:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CNFRegLearnMoreButton)initWithFrame:(CGRect)a3 style:(int64_t)a4 text:(id)a5;
- (void)_setupArrowImageForCurrentStyle;
- (void)_setupLearnMoreTextForCurrentStyle;
- (void)drawRect:(CGRect)a3;
@end

@implementation CNFRegLearnMoreButton

+ (id)roundedButtonWithText:(id)a3 color:(id)a4
{
  v5 = MEMORY[0x277D75220];
  v6 = a4;
  v7 = a3;
  v8 = [v5 buttonWithType:1];
  LODWORD(v9) = -0.5;
  [v8 setCharge:v9];
  [v8 setAutoresizingMask:5];
  v10 = [v8 titleLabel];
  v11 = [MEMORY[0x277D74300] fontWithName:@"Helvetica Neue Light" size:14.0];
  [v10 setFont:v11];

  v12 = [v8 titleLabel];
  [v12 setNumberOfLines:1];

  [v8 setContentEdgeInsets:{0.0, 6.0, 0.0, 6.0}];
  [v8 setTitleEdgeInsets:{0.0, 0.0, 0.0, 0.0}];
  [v8 setTitle:v7 forState:0];

  [v8 setTitleColor:v6 forState:0];
  [v8 sizeToFit];

  return v8;
}

- (CNFRegLearnMoreButton)initWithFrame:(CGRect)a3 style:(int64_t)a4 text:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CNFRegLearnMoreButton;
  v12 = [(CNFRegLearnMoreButton *)&v16 initWithFrame:x, y, width, height];
  v13 = v12;
  if (v12)
  {
    [(CNFRegLearnMoreButton *)v12 setStyle:a4];
    [(CNFRegLearnMoreButton *)v13 setButtonText:v11];
    [(CNFRegLearnMoreButton *)v13 setUsesImage:a4 != 1];
    [(CNFRegLearnMoreButton *)v13 setAlwaysUnderline:a4 == 1];
    [(CNFRegLearnMoreButton *)v13 _setupLearnMoreTextForCurrentStyle];
    [(CNFRegLearnMoreButton *)v13 _setupArrowImageForCurrentStyle];
    v14 = [MEMORY[0x277D75348] clearColor];
    [(CNFRegLearnMoreButton *)v13 setBackgroundColor:v14];
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
  v9 = [v21 learnMoreTextColor];
  v10 = [v21 learnMoreTextColorSelected];
  v11 = [v21 learnMoreShadowColor];
  v12 = 1.0;
  if ([(CNFRegLearnMoreButton *)self style]== 1)
  {
    v13 = [v21 tableHeaderTextColor];

    v14 = [v21 tableHeaderTextColorSelected];

    v15 = [v21 tableHeaderTextShadowColor];

    [v21 tableHeaderTextShadowOffset];
    v3 = v16;
    v12 = v17;
    v10 = v14;
    v11 = v15;
    v9 = v13;
  }

  [(CNFRegLearnMoreButton *)self setTitleColor:v9 forState:0];
  [(CNFRegLearnMoreButton *)self setTitleColor:v10 forState:1];
  v18 = [(CNFRegLearnMoreButton *)self titleLabel];
  [v18 setFont:v8];

  v19 = [(CNFRegLearnMoreButton *)self titleLabel];
  [v19 setLineBreakMode:4];

  if (v11)
  {
    [(CNFRegLearnMoreButton *)self setTitleShadowColor:v11 forState:0];
    v20 = [(CNFRegLearnMoreButton *)self titleLabel];
    [v20 setShadowOffset:{v3, v12}];
  }
}

- (void)_setupArrowImageForCurrentStyle
{
  if ([(CNFRegLearnMoreButton *)self usesImage])
  {
    v5 = +[CNFRegAppearanceController globalAppearanceController];
    v3 = [v5 learnMoreArrowImage];
    v4 = [v5 learnMoreArrowImagePressed];
    [(CNFRegLearnMoreButton *)self setImage:v3 forState:0];
    [(CNFRegLearnMoreButton *)self setImage:v4 forState:1];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v11.receiver = self;
  v11.super_class = CNFRegLearnMoreButton;
  [(CNFRegLearnMoreButton *)&v11 sizeThatFits:a3.width, a3.height];
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

- (CGRect)imageRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (CGRect)titleRectForContentRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v42[2] = *MEMORY[0x277D85DE8];
  v8 = [(CNFRegLearnMoreButton *)self state];
  v9 = [(CNFRegLearnMoreButton *)self titleForState:v8];
  v10 = v9;
  if (v9 && [v9 length])
  {
    v11 = [(CNFRegLearnMoreButton *)self imageForState:v8];
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
    v25 = [(CNFRegLearnMoreButton *)self _lineBreakMode];
    v43.origin.x = v18;
    v43.origin.y = v20;
    v43.size.width = v22;
    v43.size.height = v24;
    v26 = CGRectGetWidth(v43);
    v27 = [MEMORY[0x277D74248] defaultParagraphStyle];
    v28 = [v27 mutableCopy];

    [v28 setLineBreakMode:v25];
    v41[0] = *MEMORY[0x277D740A8];
    v29 = [(CNFRegLearnMoreButton *)self _font];
    v41[1] = *MEMORY[0x277D74118];
    v42[0] = v29;
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

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v34[2] = *MEMORY[0x277D85DE8];
  v8 = +[CNFRegAppearanceController globalAppearanceController];
  if ([v8 learnMoreButtonDrawsUnderline] && ((-[CNFRegLearnMoreButton isHighlighted](self, "isHighlighted") & 1) != 0 || (-[CNFRegLearnMoreButton isSelected](self, "isSelected") & 1) != 0 || -[CNFRegLearnMoreButton alwaysUnderline](self, "alwaysUnderline")))
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    v10 = [(CNFRegLearnMoreButton *)self titleLabel];
    [(CNFRegLearnMoreButton *)self bounds];
    v12 = v11;
    v13 = [MEMORY[0x277D74248] defaultParagraphStyle];
    v14 = [v13 mutableCopy];

    [v14 setLineBreakMode:4];
    v33[0] = *MEMORY[0x277D740A8];
    v15 = [v10 font];
    v33[1] = *MEMORY[0x277D74118];
    v34[0] = v15;
    v34[1] = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

    v17 = [v10 text];
    if ([v17 length])
    {
      v18 = [v10 text];
      [(CNFRegLearnMoreButton *)self bounds];
      [v18 boundingRectWithSize:1 options:v16 attributes:0 context:{v19, v20}];
      v22 = v21;
    }

    else
    {
      v22 = *MEMORY[0x277CBF3A8];
    }

    [v10 center];
    v23 = v22 * 0.5;
    v25 = v24 - v22 * 0.5;
    [v10 center];
    v27 = v23 + v26;
    v28 = [v10 textColor];
    CGContextSetStrokeColorWithColor(CurrentContext, [v28 CGColor]);

    CGContextSetLineWidth(CurrentContext, 1.5);
    CGContextMoveToPoint(CurrentContext, v25, v12 + -1.5);
    CGContextAddLineToPoint(CurrentContext, v27, v12 + -1.5);
    CGContextStrokePath(CurrentContext);
    v29 = [MEMORY[0x277D75348] whiteColor];
    CGContextSetStrokeColorWithColor(CurrentContext, [v29 CGColor]);

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