@interface CEKDynamicTickCell
- (CEKDynamicTickCell)initWithFrame:(CGRect)frame;
- (void)_applyContentConfiguration;
- (void)layoutSubviews;
- (void)setContentConfiguration:(id)configuration;
@end

@implementation CEKDynamicTickCell

- (CEKDynamicTickCell)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = CEKDynamicTickCell;
  v3 = [(CEKDynamicTickCell *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    textLabel = v3->__textLabel;
    v3->__textLabel = v9;

    [(UILabel *)v3->__textLabel setTextAlignment:1];
    [(UILabel *)v3->__textLabel setLineBreakMode:2];
    [(CEKDynamicTickCell *)v3 addSubview:v3->__textLabel];
    v11 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v5, v6, v7, v8}];
    imageView = v3->__imageView;
    v3->__imageView = v11;

    [(CEKDynamicTickCell *)v3 addSubview:v3->__imageView];
    v13 = v3;
  }

  return v3;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CEKDynamicTickCell;
  [(CEKDynamicTickCell *)&v13 layoutSubviews];
  [(CEKDynamicTickCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _textLabel = [(CEKDynamicTickCell *)self _textLabel];
  _imageView = [(CEKDynamicTickCell *)self _imageView];
  UIRectGetCenter();
  [_textLabel setCenter:?];
  [_textLabel setBounds:{v4, v6, v8, v10}];
  UIRectGetCenter();
  [_imageView setCenter:?];
  [_imageView setBounds:{v4, v6, v8, v10}];
}

- (void)setContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_contentConfiguration != configurationCopy)
  {
    v6 = configurationCopy;
    objc_storeStrong(&self->_contentConfiguration, configuration);
    [(CEKDynamicTickCell *)self _applyContentConfiguration];
    configurationCopy = v6;
  }
}

- (void)_applyContentConfiguration
{
  contentConfiguration = [(CEKDynamicTickCell *)self contentConfiguration];
  image = [contentConfiguration image];
  text = [contentConfiguration text];
  _imageView = [(CEKDynamicTickCell *)self _imageView];
  _textLabel = [(CEKDynamicTickCell *)self _textLabel];
  if (image)
  {
    [_imageView setImage:image];
    [_textLabel setText:0];
  }

  else
  {
    [_imageView setImage:0];
    [_textLabel setText:text];
    font = [contentConfiguration font];
    [_textLabel setFont:font];

    tintColor = [(CEKDynamicTickCell *)self tintColor];
    [_textLabel setTextColor:tintColor];
  }
}

@end