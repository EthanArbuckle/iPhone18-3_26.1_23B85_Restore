@interface CKDetailsChildViewControllerCell
- (CKDetailsChildViewControllerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setChildViewControllerView:(id)a3;
@end

@implementation CKDetailsChildViewControllerCell

- (CKDetailsChildViewControllerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = CKDetailsChildViewControllerCell;
  v4 = [(CKDetailsCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CKDetailsChildViewControllerCell *)v4 setShouldUseLayoutMargins:1];
    [(CKDetailsChildViewControllerCell *)v5 setSelectionStyle:0];
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(CKDetailsChildViewControllerCell *)v5 setBackgroundColor:v6];
  }

  return v5;
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = CKDetailsChildViewControllerCell;
  [(CKDetailsCell *)&v16 layoutSubviews];
  v3 = [(CKDetailsChildViewControllerCell *)self contentView];
  [v3 bounds];
  x = v4;
  y = v6;
  width = v8;
  height = v10;

  v12 = [(CKDetailsChildViewControllerCell *)self childViewControllerView];
  if ([(CKDetailsChildViewControllerCell *)self shouldUseLayoutMargins])
  {
    v13 = [(CKDetailsChildViewControllerCell *)self contentView];
    [v13 layoutMargins];
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

  [v12 setFrame:{x, y, width, height}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKDetailsChildViewControllerCell;
  [(CKDetailsCell *)&v3 prepareForReuse];
  [(CKDetailsChildViewControllerCell *)self setShouldUseLayoutMargins:1];
}

- (void)setChildViewControllerView:(id)a3
{
  v5 = a3;
  childViewControllerView = self->_childViewControllerView;
  if (childViewControllerView != v5)
  {
    v8 = v5;
    [(UIView *)childViewControllerView removeFromSuperview];
    objc_storeStrong(&self->_childViewControllerView, a3);
    v7 = [(CKDetailsChildViewControllerCell *)self contentView];
    [v7 addSubview:self->_childViewControllerView];

    v5 = v8;
  }
}

@end