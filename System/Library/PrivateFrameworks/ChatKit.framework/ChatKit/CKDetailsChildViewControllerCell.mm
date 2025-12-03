@interface CKDetailsChildViewControllerCell
- (CKDetailsChildViewControllerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setChildViewControllerView:(id)view;
@end

@implementation CKDetailsChildViewControllerCell

- (CKDetailsChildViewControllerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CKDetailsChildViewControllerCell;
  v4 = [(CKDetailsCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CKDetailsChildViewControllerCell *)v4 setShouldUseLayoutMargins:1];
    [(CKDetailsChildViewControllerCell *)v5 setSelectionStyle:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(CKDetailsChildViewControllerCell *)v5 setBackgroundColor:clearColor];
  }

  return v5;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = CKDetailsChildViewControllerCell;
  [(CKDetailsCell *)&v16 layoutSubviews];
  contentView = [(CKDetailsChildViewControllerCell *)self contentView];
  [contentView bounds];
  x = v4;
  y = v6;
  width = v8;
  height = v10;

  childViewControllerView = [(CKDetailsChildViewControllerCell *)self childViewControllerView];
  if ([(CKDetailsChildViewControllerCell *)self shouldUseLayoutMargins])
  {
    contentView2 = [(CKDetailsChildViewControllerCell *)self contentView];
    [contentView2 layoutMargins];
    v15 = v14;

    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v18 = CGRectInset(v17, v15, 0.0);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
  }

  [childViewControllerView setFrame:{x, y, width, height}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKDetailsChildViewControllerCell;
  [(CKDetailsCell *)&v3 prepareForReuse];
  [(CKDetailsChildViewControllerCell *)self setShouldUseLayoutMargins:1];
}

- (void)setChildViewControllerView:(id)view
{
  viewCopy = view;
  childViewControllerView = self->_childViewControllerView;
  if (childViewControllerView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)childViewControllerView removeFromSuperview];
    objc_storeStrong(&self->_childViewControllerView, view);
    contentView = [(CKDetailsChildViewControllerCell *)self contentView];
    [contentView addSubview:self->_childViewControllerView];

    viewCopy = v8;
  }
}

@end