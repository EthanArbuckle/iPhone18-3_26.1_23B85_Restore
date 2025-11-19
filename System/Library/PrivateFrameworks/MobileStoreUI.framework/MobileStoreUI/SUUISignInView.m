@interface SUUISignInView
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_borderPathWithSize:(CGSize)a3;
+ (id)_fontDescriptorWithViewElement:(id)a3 defaultTextStyle:(id)a4 bold:(BOOL)a5;
+ (id)_labelWithViewElement:(id)a3;
+ (id)_textFieldWithViewElement:(id)a3;
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUISignInView)initWithFrame:(CGRect)a3;
- (SUUISignInViewDelegate)delegate;
- (double)_layoutLabels;
- (id)_accountNameText;
- (id)_applePasswordText;
- (void)_clearFieldsAndLabels;
- (void)_layoutTextFieldsOffsetX:(double)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
@end

@implementation SUUISignInView

- (SUUISignInView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = SUUISignInView;
  v3 = [(SUUISignInView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    borderColor = v3->_borderColor;
    v3->_borderColor = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    labels = v3->_labels;
    v3->_labels = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    textFields = v3->_textFields;
    v3->_textFields = v8;

    v10 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    viewFontDescriptors = v3->_viewFontDescriptors;
    v3->_viewFontDescriptors = v10;
  }

  return v3;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = [a4 firstChildForElementType:{138, a5}];
  if (v7)
  {
    v8 = [a1 _fontDescriptorWithViewElement:v7 defaultTextStyle:*MEMORY[0x277D76938] bold:1];
    v9 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:0.0];
    [v9 _scaledValueForValue:50.0];
    v11 = v10 + v10;
  }

  else
  {
    a3 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v12 = a3;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v6 = a3;
  [(SUUISignInView *)self _clearFieldsAndLabels];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__SUUISignInView_reloadWithViewElement_width_context___block_invoke;
  v17[3] = &unk_2798F5B20;
  v17[4] = self;
  [(SUUIViewElement *)v6 enumerateChildrenUsingBlock:v17];
  v7 = [(SUUIViewElement *)v6 style];
  v8 = [v7 ikBackgroundColor];
  v9 = [v8 color];

  if (!v9)
  {
    v9 = [MEMORY[0x277D75348] whiteColor];
  }

  [(SUUISignInView *)self setBackgroundColor:v9];
  v10 = [v7 ikBorderColor];
  v11 = [v10 color];
  borderColor = self->_borderColor;
  self->_borderColor = v11;

  if (!self->_borderColor)
  {
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    v14 = self->_borderColor;
    self->_borderColor = v13;
  }

  viewElement = self->_viewElement;
  self->_viewElement = v6;
  v16 = v6;

  [(SUUISignInView *)self setNeedsLayout];
}

void __54__SUUISignInView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 elementType];
  if (v3 == 140)
  {
    v9 = *(a1 + 32);
    v4 = (a1 + 32);
    v6 = 432;
    if ([*(v9 + 432) count] > 1)
    {
      goto LABEL_8;
    }

    v7 = [objc_opt_class() _textFieldWithViewElement:v11];
    [v7 setDelegate:*v4];
    v8 = 0;
    goto LABEL_7;
  }

  if (v3 == 138)
  {
    v5 = *(a1 + 32);
    v4 = (a1 + 32);
    v6 = 424;
    if ([*(v5 + 424) count] <= 1)
    {
      v7 = [objc_opt_class() _labelWithViewElement:v11];
      v8 = 1;
LABEL_7:
      [*v4 addSubview:v7];
      [*(*v4 + v6) addObject:v7];
      v10 = [objc_opt_class() _fontDescriptorWithViewElement:v11 defaultTextStyle:*MEMORY[0x277D76938] bold:v8];

      [*(*v4 + 56) setObject:v10 forKey:v7];
    }
  }

LABEL_8:
}

- (BOOL)becomeFirstResponder
{
  v3.receiver = self;
  v3.super_class = SUUISignInView;
  return [(SUUISignInView *)&v3 becomeFirstResponder];
}

- (BOOL)resignFirstResponder
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_textFields;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 isFirstResponder])
        {
          v9 = [v8 resignFirstResponder];

          return v9;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11.receiver = self;
  v11.super_class = SUUISignInView;
  return [(SUUISignInView *)&v11 resignFirstResponder];
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = SUUISignInView;
  [(SUUISignInView *)&v18 layoutSubviews];
  if (!self->_borderView)
  {
    v3 = [SUUIShapeView alloc];
    v4 = [(SUUIShapeView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    borderView = self->_borderView;
    self->_borderView = v4;

    [(SUUIShapeView *)self->_borderView setUserInteractionEnabled:0];
    [(SUUISignInView *)self addSubview:self->_borderView];
  }

  [(SUUISignInView *)self _layoutLabels];
  [(SUUISignInView *)self _layoutTextFieldsOffsetX:?];
  v6 = [(SUUIShapeView *)self->_borderView layer];
  [v6 setStrokeColor:{-[UIColor CGColor](self->_borderColor, "CGColor")}];
  v7 = [MEMORY[0x277D75348] clearColor];
  [v6 setFillColor:{objc_msgSend(v7, "CGColor")}];

  v8 = [MEMORY[0x277D759A0] mainScreen];
  [v8 scale];
  v10 = 1.0 / v9;

  [v6 setLineWidth:v10];
  [(SUUISignInView *)self bounds];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v15 = CGRectGetWidth(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v16 = CGRectGetHeight(v20);
  [(SUUIShapeView *)self->_borderView setFrame:0.0, 0.0, v15, v16];
  v17 = [objc_opt_class() _borderPathWithSize:{v15, v16}];
  [v6 setPath:{objc_msgSend(v17, "CGPath")}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [(NSMutableArray *)self->_labels firstObject:a3.width];
  if (v5)
  {
    v6 = [(NSMapTable *)self->_viewFontDescriptors objectForKey:v5];
    v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];
    [v7 _scaledValueForValue:50.0];
    v9 = v8 + v8;
    v17 = 0;
    v10 = [(SUUIViewElement *)self->_viewElement style];
    SUUIViewElementMarginForStyle(v10, &v17);
    v12 = v11;
    v14 = v13;

    if (v17)
    {
      width = width - (v12 + v14);
    }
  }

  else
  {
    width = *MEMORY[0x277CBF3A8];
    v9 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v15 = width;
  v16 = v9;
  result.height = v16;
  result.width = v15;
  return result;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v6 = [a5 isEqualToString:{@"\n", a4.location, a4.length}];
  if (v6)
  {
    v7 = [(SUUISignInView *)self _accountNameText];
    v8 = [(SUUISignInView *)self _applePasswordText];
    if ([v7 length])
    {
      if ([v8 length])
      {
        v9 = [(SUUISignInView *)self delegate];
        if (v9)
        {
          v10 = v9;
          v11 = [(SUUISignInView *)self delegate];
          v12 = [v11 conformsToProtocol:&unk_286C17E28];

          if (v12)
          {
            v13 = [(SUUISignInView *)self delegate];
            [v13 signInEntryComplete:self accountName:v7 password:v8];
          }
        }
      }
    }

    [(SUUISignInView *)self resignFirstResponder];
  }

  return v6 ^ 1;
}

+ (id)_borderPathWithSize:(CGSize)a3
{
  width = a3.width;
  v4 = a3.height * 0.5;
  v5 = a3.height * 0.5 + -1.0;
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v8 = 1.0 / v7;
  v12 = 1.0 / v7;

  v9 = [MEMORY[0x277D75208] bezierPath];
  [v9 moveToPoint:{0.0, v5}];
  [v9 addLineToPoint:{0.0, 5.0}];
  [v9 addArcWithCenter:1 radius:5.0 startAngle:5.0 endAngle:5.0 clockwise:{3.14159265, 4.71238898}];
  [v9 addLineToPoint:{width + -5.0, 0.0}];
  [v9 addArcWithCenter:1 radius:width + -5.0 startAngle:5.0 endAngle:5.0 clockwise:{4.71238898, 0.0}];
  [v9 addLineToPoint:{width, v5}];
  [v9 moveToPoint:{width, v5 + v8}];
  v10 = v4 * 2.0 + -5.0;
  [v9 addLineToPoint:{width, v10}];
  [v9 addArcWithCenter:1 radius:width + -5.0 startAngle:v10 endAngle:5.0 clockwise:{0.0, 1.57079633}];
  [v9 addLineToPoint:{5.0, v4 + v4}];
  [v9 addArcWithCenter:1 radius:5.0 startAngle:v10 endAngle:5.0 clockwise:{1.57079633, 3.14159265}];
  [v9 addLineToPoint:{0.0, v5 + v8}];
  [v9 moveToPoint:{v12, v5}];
  [v9 lineToPoint:{width - v12, v5}];

  return v9;
}

+ (id)_fontDescriptorWithViewElement:(id)a3 defaultTextStyle:(id)a4 bold:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  if (!v7 || ([v7 style], v9 = objc_claimAutoreleasedReturnValue(), SUUIViewElementFontWithStyle(v9), v10 = objc_claimAutoreleasedReturnValue(), v9, objc_msgSend(v10, "fontDescriptor"), v11 = objc_claimAutoreleasedReturnValue(), v10, !v11))
  {
    v12 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:v8];
    v11 = v12;
    if (v5)
    {
      v13 = [v12 fontDescriptorWithSymbolicTraits:2];

      v11 = v13;
    }
  }

  return v11;
}

+ (id)_labelWithViewElement:(id)a3
{
  v3 = MEMORY[0x277D756B8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v7 = [v4 text];
  v8 = [v7 attributedString];
  [v6 setAttributedText:v8];

  v9 = [v4 style];

  v10 = [v9 ikColor];
  v11 = [v10 color];

  if (!v11)
  {
    v11 = [MEMORY[0x277D75348] blackColor];
  }

  [v6 setTextColor:v11];

  return v6;
}

+ (id)_textFieldWithViewElement:(id)a3
{
  v3 = a3;
  v4 = [SUUISignInTextView alloc];
  v5 = [(SUUISignInTextView *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = [v3 keyboardType];
  if ([v3 isSecure])
  {
    [(SUUISignInTextView *)v5 setSecureTextEntry:1];
  }

  [(SUUISignInTextView *)v5 setKeyboardType:v6];
  v7 = [v3 style];
  v8 = [v7 ikColor];
  v9 = [v8 color];

  if (!v9)
  {
    v9 = [MEMORY[0x277D75348] blackColor];
  }

  [(SUUISignInTextView *)v5 setTextColor:v9];
  v10 = [v3 placeholderText];
  if (v10)
  {
    v11 = [v3 placeholderText];
  }

  else
  {
    v11 = &stru_286AECDE0;
  }

  v12 = objc_alloc(MEMORY[0x277CBEAC0]);
  v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  v14 = [v12 initWithObjectsAndKeys:{v13, *MEMORY[0x277D740C0], 0}];

  v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v11 attributes:v14];
  [(SUUISignInTextView *)v5 setAttributedPlaceholder:v15];

  return v5;
}

- (id)_accountNameText
{
  if ([(NSMutableArray *)self->_textFields count])
  {
    v3 = [(NSMutableArray *)self->_textFields objectAtIndex:0];
    v4 = [v3 text];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_applePasswordText
{
  if ([(NSMutableArray *)self->_textFields count]< 2)
  {
    v4 = 0;
  }

  else
  {
    v3 = [(NSMutableArray *)self->_textFields objectAtIndex:1];
    v4 = [v3 text];
  }

  return v4;
}

- (void)_clearFieldsAndLabels
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = self->_labels;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v17 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_labels removeAllObjects];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = self->_textFields;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) removeFromSuperview];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }

  [(NSMutableArray *)self->_textFields removeAllObjects];
  [(NSMapTable *)self->_viewFontDescriptors removeAllObjects];
}

- (double)_layoutLabels
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = self->_labels;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    v7 = 0.0;
    v8 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_viewFontDescriptors objectForKey:v10, v22];
        v12 = [MEMORY[0x277D74300] fontWithDescriptor:v11 size:0.0];
        [v10 setFont:v12];
        [v10 sizeThatFits:{1.79769313e308, 1.79769313e308}];
        v14 = v13;
        v16 = v15;
        [v12 _scaledValueForValue:29.0];
        v18 = v17;
        [v10 _firstBaselineOffsetFromTop];
        [v10 setFrame:{12.0, v8 + v18 - v19, v14, v16}];
        [v12 _scaledValueForValue:50.0];
        v8 = v8 + v20;
        v7 = fmax(v7, v14);
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (void)_layoutTextFieldsOffsetX:(double)a3
{
  v29 = *MEMORY[0x277D85DE8];
  [(SUUISignInView *)self bounds];
  Width = CGRectGetWidth(v30);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_textFields;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = Width - a3 + -22.0 + -12.0;
    v9 = *v25;
    v10 = a3 + 22.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [(NSMapTable *)self->_viewFontDescriptors objectForKey:v13];
        v15 = [MEMORY[0x277D74300] fontWithDescriptor:v14 size:0.0];
        [v13 setFont:v15];
        v16 = [v13 _placeholderLabel];
        [v13 sizeThatFits:{v8, 1.79769313e308}];
        v18 = v17;
        [v15 _scaledValueForValue:29.0];
        v20 = v19;
        [v16 _firstBaselineOffsetFromTop];
        [v13 setFrame:{v10, v11 + v20 - v21, v8, v18}];
        [v15 _scaledValueForValue:50.0];
        v11 = v11 + v22;
      }

      v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }
}

- (SUUISignInViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end