@interface SUUIDeveloperInfoLineItemView
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIDeveloperInfoLineItemView)initWithLabel:(id)a3 value:(id)a4;
- (UIEdgeInsets)contentInset;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SUUIDeveloperInfoLineItemView

- (SUUIDeveloperInfoLineItemView)initWithLabel:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = SUUIDeveloperInfoLineItemView;
  v8 = [(SUUIDeveloperInfoLineItemView *)&v26 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    labelLabel = v8->_labelLabel;
    v8->_labelLabel = v9;

    v11 = v8->_labelLabel;
    v12 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [(UILabel *)v11 setFont:v12];

    [(UILabel *)v8->_labelLabel setNumberOfLines:2];
    [(UILabel *)v8->_labelLabel setTextAlignment:1];
    v13 = v8->_labelLabel;
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
    [(UILabel *)v13 setTextColor:v14];

    [(UILabel *)v8->_labelLabel setText:v6];
    [(SUUIDeveloperInfoLineItemView *)v8 addSubview:v8->_labelLabel];
    v15 = objc_alloc_init(MEMORY[0x277D756B8]);
    valueLabel = v8->_valueLabel;
    v8->_valueLabel = v15;

    v17 = v8->_valueLabel;
    v18 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [(UILabel *)v17 setFont:v18];

    [(UILabel *)v8->_valueLabel setNumberOfLines:0];
    [(UILabel *)v8->_valueLabel setTextAlignment:1];
    v19 = v8->_valueLabel;
    v20 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
    [(UILabel *)v19 setTextColor:v20];

    [(UILabel *)v8->_valueLabel setText:v7];
    [(SUUIDeveloperInfoLineItemView *)v8 addSubview:v8->_valueLabel];
    v21 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v8->_separatorView;
    v8->_separatorView = v21;

    v23 = v8->_separatorView;
    v24 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v23 setBackgroundColor:v24];

    [(SUUIDeveloperInfoLineItemView *)v8 addSubview:v8->_separatorView];
  }

  return v8;
}

- (void)layoutSubviews
{
  [(SUUIDeveloperInfoLineItemView *)self bounds];
  top = self->_contentInset.top;
  v5 = v4 - self->_contentInset.left - self->_contentInset.right;
  labelLabel = self->_labelLabel;
  if (labelLabel)
  {
    [(UILabel *)labelLabel frame];
    left = self->_contentInset.left;
    [(UILabel *)self->_labelLabel sizeThatFits:v5, 1.79769313e308];
    v9 = v8;
    [(UILabel *)self->_labelLabel setFrame:left, top, v5, v8];
    v17.origin.x = left;
    v17.origin.y = top;
    v17.size.width = v5;
    v17.size.height = v9;
    top = CGRectGetMaxY(v17);
  }

  valueLabel = self->_valueLabel;
  if (valueLabel)
  {
    [(UILabel *)valueLabel frame];
    v11 = self->_contentInset.left;
    if (self->_labelLabel)
    {
      top = top + 3.0;
    }

    [(UILabel *)self->_valueLabel sizeThatFits:v5, 1.79769313e308];
    v13 = v12;
    [(UILabel *)self->_valueLabel setFrame:v11, top, v5, v12];
    v18.origin.x = v11;
    v18.origin.y = top;
    v18.size.width = v5;
    v18.size.height = v13;
    CGRectGetMaxY(v18);
  }

  v14 = [MEMORY[0x277D759A0] mainScreen];
  [v14 scale];

  separatorView = self->_separatorView;

  [(UIView *)separatorView setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  labelLabel = self->_labelLabel;
  v5 = a3;
  [(UILabel *)labelLabel setBackgroundColor:v5];
  [(UILabel *)self->_valueLabel setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUIDeveloperInfoLineItemView;
  [(SUUIDeveloperInfoLineItemView *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = self->_contentInset.top + self->_contentInset.bottom;
  v6 = a3.width - self->_contentInset.left - self->_contentInset.right;
  labelLabel = self->_labelLabel;
  if (labelLabel)
  {
    [(UILabel *)labelLabel sizeThatFits:v6, 1.79769313e308];
    v5 = v5 + v8;
  }

  valueLabel = self->_valueLabel;
  if (valueLabel)
  {
    [(UILabel *)valueLabel sizeThatFits:v6, 1.79769313e308];
    v5 = v5 + v10;
  }

  if (self->_labelLabel && self->_valueLabel)
  {
    v5 = v5 + 3.0;
  }

  v11 = width;
  v12 = v5;
  result.height = v12;
  result.width = v11;
  return result;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end