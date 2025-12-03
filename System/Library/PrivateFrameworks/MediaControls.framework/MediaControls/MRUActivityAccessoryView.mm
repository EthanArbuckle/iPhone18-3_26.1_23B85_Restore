@interface MRUActivityAccessoryView
- (CGPoint)contentOffset;
- (CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode;
- (MRUActivityAccessoryView)initWithContentView:(id)view size:(CGSize)size;
- (UIEdgeInsets)contentInsets;
- (void)layoutSubviews;
@end

@implementation MRUActivityAccessoryView

- (MRUActivityAccessoryView)initWithContentView:(id)view size:(CGSize)size
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = MRUActivityAccessoryView;
  v9 = [(MRUActivityAccessoryView *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentView, view);
    v10->_size.width = width;
    v10->_size.height = height;
    [(MRUActivityAccessoryView *)v10 addSubview:viewCopy];
  }

  return v10;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = MRUActivityAccessoryView;
  [(MRUActivityAccessoryView *)&v9 layoutSubviews];
  [(MRUActivityAccessoryView *)self bounds];
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  v10.origin.x = v5 + left;
  v10.origin.y = v6 + top;
  v10.size.width = v7 - (left + self->_contentInsets.right);
  v10.size.height = v8 - (top + self->_contentInsets.bottom);
  v11 = CGRectOffset(v10, self->_contentOffset.x, self->_contentOffset.y);
  [(UIView *)self->_contentView setFrame:v11.origin.x, v11.origin.y, v11.size.width, v11.size.height];
}

- (CGSize)sizeThatFits:(CGSize)fits forLayoutMode:(int64_t)mode
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGPoint)contentOffset
{
  x = self->_contentOffset.x;
  y = self->_contentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end