@interface CEKDynamicTickCell
- (CEKDynamicTickCell)initWithFrame:(CGRect)a3;
- (void)_applyContentConfiguration;
- (void)layoutSubviews;
- (void)setContentConfiguration:(id)a3;
@end

@implementation CEKDynamicTickCell

- (CEKDynamicTickCell)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = CEKDynamicTickCell;
  v3 = [(CEKDynamicTickCell *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v11 = [(CEKDynamicTickCell *)self _textLabel];
  v12 = [(CEKDynamicTickCell *)self _imageView];
  UIRectGetCenter();
  [v11 setCenter:?];
  [v11 setBounds:{v4, v6, v8, v10}];
  UIRectGetCenter();
  [v12 setCenter:?];
  [v12 setBounds:{v4, v6, v8, v10}];
}

- (void)setContentConfiguration:(id)a3
{
  v5 = a3;
  if (self->_contentConfiguration != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contentConfiguration, a3);
    [(CEKDynamicTickCell *)self _applyContentConfiguration];
    v5 = v6;
  }
}

- (void)_applyContentConfiguration
{
  v9 = [(CEKDynamicTickCell *)self contentConfiguration];
  v3 = [v9 image];
  v4 = [v9 text];
  v5 = [(CEKDynamicTickCell *)self _imageView];
  v6 = [(CEKDynamicTickCell *)self _textLabel];
  if (v3)
  {
    [v5 setImage:v3];
    [v6 setText:0];
  }

  else
  {
    [v5 setImage:0];
    [v6 setText:v4];
    v7 = [v9 font];
    [v6 setFont:v7];

    v8 = [(CEKDynamicTickCell *)self tintColor];
    [v6 setTextColor:v8];
  }
}

@end