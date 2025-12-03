@interface SUUIComposeTextField
- (BOOL)textField:(id)field shouldInsertText:(id)text replacingRange:(_NSRange)range;
- (SUUIComposeTextField)initWithConfiguration:(id)configuration style:(int64_t)style;
- (id)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_textChanged:(id)changed;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setText:(id)text;
@end

@implementation SUUIComposeTextField

- (SUUIComposeTextField)initWithConfiguration:(id)configuration style:(int64_t)style
{
  configurationCopy = configuration;
  v25.receiver = self;
  v25.super_class = SUUIComposeTextField;
  v8 = [(SUUIComposeTextField *)&v25 initWithFrame:0.0, 0.0, 0.0, 44.0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_configuration, configuration);
    v9->_style = style;
    v10 = [objc_opt_class() labelFontForStyle:style];
    label = [(SUUIComposeTextFieldConfiguration *)v9->_configuration label];
    if (label)
    {
      v12 = objc_alloc_init(MEMORY[0x277D756B8]);
      label = v9->_label;
      v9->_label = v12;

      [(UILabel *)v9->_label setFont:v10];
      [(UILabel *)v9->_label setText:label];
      v14 = v9->_label;
      v15 = [objc_opt_class() labelColorForStyle:style];
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
    placeholder = [configurationCopy placeholder];
    [(UITextField *)v20 setPlaceholder:placeholder];

    [(UITextField *)v9->_textField setClipsToBounds:0];
    value = [(SUUIComposeTextFieldConfiguration *)v9->_configuration value];
    [(SUUIComposeTextField *)v9 setText:value];

    [(SUUIComposeTextField *)v9 addSubview:v9->_textField];
    [(UITextField *)v9->_textField sizeToFit];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SUUIComposeTextField *)v9 setBackgroundColor:systemBackgroundColor];
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

- (void)setText:(id)text
{
  textCopy = text;
  v4 = [textCopy length];
  if (v4 <= [(SUUIComposeTextFieldConfiguration *)self->_configuration maxLength])
  {
    v6 = textCopy;
  }

  else
  {
    v5 = [textCopy substringToIndex:{-[SUUIComposeTextFieldConfiguration maxLength](self->_configuration, "maxLength")}];

    v6 = v5;
  }

  v8 = v6;
  [(UITextField *)self->_textField setText:v6];
  self->_currentTextLength = [v8 length];
}

- (void)drawRect:(CGRect)rect
{
  v4 = 0;
  if ([(SUUIComposeTextFieldConfiguration *)self->_configuration columnIndex:rect.origin.x])
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
  labelColor = [MEMORY[0x277D75348] labelColor];
  v21 = [labelColor colorWithAlphaComponent:0.2];
  [v21 set];

  effectiveUserInterfaceLayoutDirection = [(SUUIComposeTextField *)self effectiveUserInterfaceLayoutDirection];
  v23 = effectiveUserInterfaceLayoutDirection;
  if (v7 > 0.0)
  {
    v24 = v17 - v5;
    if (effectiveUserInterfaceLayoutDirection == 1)
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SUUIComposeTextField;
  v5 = [(SUUIComposeTextField *)&v8 hitTest:event withEvent:test.x, test.y];
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
  effectiveUserInterfaceLayoutDirection = [(SUUIComposeTextField *)self effectiveUserInterfaceLayoutDirection];
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
    if (effectiveUserInterfaceLayoutDirection == 1)
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
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v22 = CGRectWithFlippedOriginRelativeToBoundingRect(v22, v25, v26, v23, v28, v5, v7, v9);
  }

  textField = self->_textField;

  [(UITextField *)textField setFrame:v22, v25, v26];
}

- (BOOL)textField:(id)field shouldInsertText:(id)text replacingRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
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
    maxLength = [(SUUIComposeTextFieldConfiguration *)self->_configuration maxLength];
  }

  else
  {
    maxLength = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = [textCopy length] - length + currentTextLength;
  if (v11 <= maxLength)
  {
    self->_currentTextLength = v11 & ~(v11 >> 63);
  }

  v12 = v11 <= maxLength;

  return v12;
}

- (void)_textChanged:(id)changed
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