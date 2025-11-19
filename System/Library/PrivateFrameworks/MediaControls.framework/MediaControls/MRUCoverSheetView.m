@interface MRUCoverSheetView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
@end

@implementation MRUCoverSheetView

- (void)layoutSubviews
{
  v19 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = MRUCoverSheetView;
  [(MRUCoverSheetView *)&v14 layoutSubviews];
  [(MRUCoverSheetView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_contentView setFrame:?];
  v11 = MCLogCategoryDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v20.origin.x = v4;
    v20.origin.y = v6;
    v20.size.width = v8;
    v20.size.height = v10;
    v13 = NSStringFromCGRect(v20);
    *buf = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v13;
    _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ frame: %{public}@", buf, 0x16u);
  }
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v7 = v5;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    [(MRUCoverSheetView *)self addSubview:self->_contentView];
    contentView = [(MRUCoverSheetView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](contentView, v5);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIView *)self->_contentView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end