@interface SUUICategoryTableViewCell
- (CGSize)expectedImageSize;
- (SUUICategoryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setExpectedImageSize:(CGSize)size;
- (void)setFrame:(CGRect)frame;
@end

@implementation SUUICategoryTableViewCell

- (SUUICategoryTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v15.receiver = self;
  v15.super_class = SUUICategoryTableViewCell;
  v4 = [(SUUICategoryTableViewCell *)&v15 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(SUUICategoryTableViewCell *)v4 textLabel];
    v7 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [textLabel setFont:v7];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [textLabel setTextColor:secondaryLabelColor];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [textLabel setBackgroundColor:clearColor];

    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v5->_separatorView;
    v5->_separatorView = v10;

    v12 = v5->_separatorView;
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [(UIView *)v12 setBackgroundColor:separatorColor];

    [(SUUICategoryTableViewCell *)v5 addSubview:v5->_separatorView];
    v5->_layoutNeedsLayout = 1;
  }

  return v5;
}

- (void)setExpectedImageSize:(CGSize)size
{
  if (self->_expectedImageSize.width != size.width || self->_expectedImageSize.height != size.height)
  {
    self->_expectedImageSize = size;
    [(SUUICategoryTableViewCell *)self setNeedsLayout];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(SUUICategoryTableViewCell *)self bounds];
  if (v9 != width || v8 != height)
  {
    self->_layoutNeedsLayout = 1;
  }

  v11.receiver = self;
  v11.super_class = SUUICategoryTableViewCell;
  [(SUUICategoryTableViewCell *)&v11 setBounds:x, y, width, height];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    imageView = [(SUUICategoryTableViewCell *)self imageView];
    image = [imageView image];

    if (image)
    {
      [imageView frame];
      v10 = v9;
      [imageView setFrame:{15.0, (v6 - v11) * 0.5}];
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

    textLabel = [(SUUICategoryTableViewCell *)self textLabel];
    v15 = textLabel;
    if (textLabel)
    {
      [textLabel sizeToFit];
      [v15 frame];
      [v15 setFrame:{v12, (v6 - v16) * 0.5, v4 - v12 + -15.0}];
    }

    separatorView = self->_separatorView;
    if (separatorView)
    {
      [(UIView *)separatorView frame];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
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