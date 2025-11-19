@interface SUUICategoryTableViewCell
- (CGSize)expectedImageSize;
- (SUUICategoryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)a3;
- (void)setExpectedImageSize:(CGSize)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation SUUICategoryTableViewCell

- (SUUICategoryTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v15.receiver = self;
  v15.super_class = SUUICategoryTableViewCell;
  v4 = [(SUUICategoryTableViewCell *)&v15 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(SUUICategoryTableViewCell *)v4 textLabel];
    v7 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [v6 setFont:v7];

    v8 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v6 setTextColor:v8];

    v9 = [MEMORY[0x277D75348] clearColor];
    [v6 setBackgroundColor:v9];

    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v5->_separatorView;
    v5->_separatorView = v10;

    v12 = v5->_separatorView;
    v13 = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v12 setBackgroundColor:v13];

    [(SUUICategoryTableViewCell *)v5 addSubview:v5->_separatorView];
    v5->_layoutNeedsLayout = 1;
  }

  return v5;
}

- (void)setExpectedImageSize:(CGSize)a3
{
  if (self->_expectedImageSize.width != a3.width || self->_expectedImageSize.height != a3.height)
  {
    self->_expectedImageSize = a3;
    [(SUUICategoryTableViewCell *)self setNeedsLayout];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SUUICategoryTableViewCell *)self bounds];
  if (v9 != width || v8 != height)
  {
    self->_layoutNeedsLayout = 1;
  }

  v11.receiver = self;
  v11.super_class = SUUICategoryTableViewCell;
  [(SUUICategoryTableViewCell *)&v11 setBounds:x, y, width, height];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(SUUICategoryTableViewCell *)self frame];
  if (v9 != width || v8 != height)
  {
    self->_layoutNeedsLayout = 1;
  }

  v11.receiver = self;
  v11.super_class = SUUICategoryTableViewCell;
  [(SUUICategoryTableViewCell *)&v11 setFrame:x, y, width, height];
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = SUUICategoryTableViewCell;
  [(SUUICategoryTableViewCell *)&v21 layoutSubviews];
  if (self->_layoutNeedsLayout)
  {
    [(SUUICategoryTableViewCell *)self bounds];
    v4 = v3;
    v6 = v5;
    v7 = [(SUUICategoryTableViewCell *)self imageView];
    v8 = [v7 image];

    if (v8)
    {
      [v7 frame];
      v10 = v9;
      [v7 setFrame:{15.0, (v6 - v11) * 0.5}];
      v12 = v10 + 15.0 + 15.0;
    }

    else
    {
      width = self->_expectedImageSize.width;
      v12 = 15.0;
      if (width > 0.0)
      {
        v12 = width + 15.0 + 15.0;
      }
    }

    v14 = [(SUUICategoryTableViewCell *)self textLabel];
    v15 = v14;
    if (v14)
    {
      [v14 sizeToFit];
      [v15 frame];
      [v15 setFrame:{v12, (v6 - v16) * 0.5, v4 - v12 + -15.0}];
    }

    separatorView = self->_separatorView;
    if (separatorView)
    {
      [(UIView *)separatorView frame];
      v18 = [MEMORY[0x277D759A0] mainScreen];
      [v18 scale];
      v20 = 1.0 / v19;

      [(UIView *)self->_separatorView setFrame:15.0, v6 - v20, v4 + -15.0, v20];
    }
  }

  self->_layoutNeedsLayout = 0;
}

- (CGSize)expectedImageSize
{
  width = self->_expectedImageSize.width;
  height = self->_expectedImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end