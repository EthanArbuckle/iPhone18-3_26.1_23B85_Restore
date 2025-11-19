@interface SUUIComposeTextField
- (BOOL)textField:(id)a3 shouldInsertText:(id)a4 replacingRange:(_NSRange)a5;
- (SUUIComposeTextField)initWithConfiguration:(id)a3 style:(int64_t)a4;
- (id)delegate;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_textChanged:(id)a3;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
- (void)setText:(id)a3;
@end

@implementation SUUIComposeTextField

- (SUUIComposeTextField)initWithConfiguration:(id)a3 style:(int64_t)a4
{
  v7 = a3;
  v25.receiver = self;
  v25.super_class = SUUIComposeTextField;
  v8 = [(SUUIComposeTextField *)&v25 initWithFrame:0.0, 0.0, 0.0, 44.0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configuration, a3);
    v9->_style = a4;
    v10 = [objc_opt_class() labelFontForStyle:a4];
    v11 = [(SUUIComposeTextFieldConfiguration *)v9->_configuration label];
    if (v11)
    {
      v12 = objc_alloc_init(MEMORY[0x277D756B8]);
      label = v9->_label;
      v9->_label = v12;

      [(UILabel *)v9->_label setFont:v10];
      [(UILabel *)v9->_label setText:v11];
      v14 = v9->_label;
      v15 = [objc_opt_class() labelColorForStyle:a4];
      [(UILabel *)v14 setTextColor:v15];

      [(UILabel *)v9->_label sizeToFit];
      [(SUUIComposeTextField *)v9 addSubview:v9->_label];
    }

    v16 = objc_alloc_init(MEMORY[0x277D75BB8]);
    textField = v9->_textField;
    v9->_textField = v16;

    [(UITextField *)v9->_textField addTarget:v9 action:sel__textChanged_ forControlEvents:0x20000];
    [(UITextField *)v9->_textField setAutocapitalizationType:2];
    [(UITextField *)v9->_textField setAutocorrectionType:0];
    [(UITextField *)v9->_textField setDelegate:v9];
    v18 = v9->_textField;
    v19 = [objc_opt_class() labelFontForStyle:v9->_style];
    [(UITextField *)v18 setFont:v19];

    [(UITextField *)v9->_textField setKeyboardType:0];
    v20 = v9->_textField;
    v21 = [v7 placeholder];
    [(UITextField *)v20 setPlaceholder:v21];

    [(UITextField *)v9->_textField setClipsToBounds:0];
    v22 = [(SUUIComposeTextFieldConfiguration *)v9->_configuration value];
    [(SUUIComposeTextField *)v9 setText:v22];

    [(SUUIComposeTextField *)v9 addSubview:v9->_textField];
    [(UITextField *)v9->_textField sizeToFit];
    v23 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SUUIComposeTextField *)v9 setBackgroundColor:v23];
  }

  return v9;
}

- (void)dealloc
{
  [(UITextField *)self->_textField removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SUUIComposeTextField;
  [(SUUIComposeTextField *)&v3 dealloc];
}

- (void)setText:(id)a3
{
  v7 = a3;
  v4 = [v7 length];
  if (v4 <= [(SUUIComposeTextFieldConfiguration *)self->_configuration maxLength])
  {
    v6 = v7;
  }

  else
  {
    v5 = [v7 substringToIndex:{-[SUUIComposeTextFieldConfiguration maxLength](self->_configuration, "maxLength")}];

    v6 = v5;
  }

  v8 = v6;
  [(UITextField *)self->_textField setText:v6];
  self->_currentTextLength = [v8 length];
}

- (void)drawRect:(CGRect)a3
{
  v4 = 0;
  if ([(SUUIComposeTextFieldConfiguration *)self->_configuration columnIndex:a3.origin.x])
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 15.0;
  }

  [(SUUIComposeTextFieldConfiguration *)self->_configuration borderInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(SUUIComposeTextField *)self bounds];
  v46 = v15;
  v47 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [MEMORY[0x277D75348] labelColor];
  v21 = [v20 colorWithAlphaComponent:0.2];
  [v21 set];

  v22 = [(SUUIComposeTextField *)self effectiveUserInterfaceLayoutDirection];
  v23 = v22;
  if (v7 > 0.0)
  {
    v24 = v17 - v5;
    if (v22 == 1)
    {
      v25 = CGRectWithFlippedOriginRelativeToBoundingRect(v5, 0.0, v24, v7, v47, v46, v17, v19);
      v4 = v26;
      v7 = v27;
    }

    else
    {
      v25 = v5;
    }

    v28 = v4;
    v29 = v7;
    UIRectFillUsingBlendMode(*(&v24 - 2), kCGBlendModeNormal);
  }

  if (v11 > 0.0)
  {
    v30 = v17 - v5;
    v31 = v19 - v11;
    if (v23 == 1)
    {
      v5 = CGRectWithFlippedOriginRelativeToBoundingRect(v5, v31, v30, v11, v47, v46, v17, v19);
      v11 = v32;
    }

    v33 = v5;
    v34 = v11;
    UIRectFillUsingBlendMode(*(&v31 - 1), kCGBlendModeNormal);
  }

  if (v9 > 0.0)
  {
    v35 = 0;
    if (v23 == 1)
    {
      v36 = CGRectWithFlippedOriginRelativeToBoundingRect(0.0, 0.0, v9, v19, v47, v46, v17, v19);
      v9 = v38;
    }

    else
    {
      v37 = v19;
      v36 = 0.0;
    }

    v39 = v9;
    UIRectFillUsingBlendMode(*(&v35 - 1), kCGBlendModeNormal);
  }

  if (v13 > 0.0)
  {
    v40 = v17 - v13;
    v41 = 0;
    if (v23 == 1)
    {
      v40 = CGRectWithFlippedOriginRelativeToBoundingRect(v40, 0.0, v13, v19, v47, v46, v17, v19);
      v13 = v42;
      v19 = v43;
    }

    v44 = v13;
    v45 = v19;

    UIRectFillUsingBlendMode(*&v40, kCGBlendModeNormal);
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = SUUIComposeTextField;
  v5 = [(SUUIComposeTextField *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self)
  {
    v6 = self->_textField;

    v5 = v6;
  }

  return v5;
}

- (void)layoutSubviews
{
  [(SUUIComposeTextField *)self bounds];
  v28 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [(SUUIComposeTextField *)self effectiveUserInterfaceLayoutDirection];
  label = self->_label;
  if (label)
  {
    [(UILabel *)label frame];
    width = v30.size.width;
    height = v30.size.height;
    v14 = (v9 - v30.size.height) * 0.5;
    v15 = floorf(v14);
    v16 = 15.0;
    v30.origin.x = 15.0;
    v30.origin.y = v15;
    MaxX = CGRectGetMaxX(v30);
    v18 = 4.0;
    if (v10 == 1)
    {
      v16 = CGRectWithFlippedOriginRelativeToBoundingRect(15.0, v15, width, height, v28, v5, v7, v9);
      v18 = 4.0;
      v15 = v19;
      width = v20;
      height = v21;
    }

    v22 = MaxX + v18;
    [(UILabel *)self->_label setFrame:v16, v15, width, height];
  }

  else
  {
    v22 = 15.0;
  }

  [(UITextField *)self->_textField frame];
  v24 = (v9 - v23) * 0.5;
  v25 = floorf(v24);
  v26 = v7 + -15.0 - v22;
  if (v10 == 1)
  {
    v22 = CGRectWithFlippedOriginRelativeToBoundingRect(v22, v25, v26, v23, v28, v5, v7, v9);
  }

  textField = self->_textField;

  [(UITextField *)textField setFrame:v22, v25, v26];
}

- (BOOL)textField:(id)a3 shouldInsertText:(id)a4 replacingRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v8 = a4;
  if (self->_currentTextLength <= location + length)
  {
    currentTextLength = location + length;
  }

  else
  {
    currentTextLength = self->_currentTextLength;
  }

  if ([(SUUIComposeTextFieldConfiguration *)self->_configuration maxLength])
  {
    v10 = [(SUUIComposeTextFieldConfiguration *)self->_configuration maxLength];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = [v8 length] - length + currentTextLength;
  if (v11 <= v10)
  {
    self->_currentTextLength = v11 & ~(v11 >> 63);
  }

  v12 = v11 <= v10;

  return v12;
}

- (void)_textChanged:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeTextFieldValidityChanged:self];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end