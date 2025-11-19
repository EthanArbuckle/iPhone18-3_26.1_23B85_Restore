@interface CKBrowserSwitcherFooterAccessoryCell
- (CKBrowserSwitcherFooterAccessoryCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CKBrowserSwitcherFooterAccessoryCell

- (CKBrowserSwitcherFooterAccessoryCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CKBrowserSwitcherFooterAccessoryCell;
  v3 = [(CKBrowserSwitcherFooterAccessoryCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 theme];
    v8 = [v7 browserAppStripSeperatorBackgroundColor];
    [v5 setBackgroundColor:v8];

    [(CKBrowserSwitcherFooterAccessoryCell *)v3 addSubview:v5];
    [(CKBrowserSwitcherFooterAccessoryCell *)v3 setSeperatorView:v5];
  }

  return v3;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = CKBrowserSwitcherFooterAccessoryCell;
  [(CKBrowserSwitcherFooterAccessoryCell *)&v25 layoutSubviews];
  [(CKBrowserSwitcherFooterAccessoryCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKBrowserSwitcherFooterAccessoryCell *)self seperatorView];
  [(CKBrowserSwitcherFooterAccessoryCell *)self bringSubviewToFront:v11];

  v12 = [(CKBrowserSwitcherFooterAccessoryCell *)self seperatorView];
  v13 = [v12 layer];
  [v13 setCornerRadius:v8];

  v14 = [(CKBrowserSwitcherFooterAccessoryCell *)self seperatorView];
  v15 = [v14 layer];
  [v15 setMasksToBounds:1];

  [(CKBrowserSwitcherFooterAccessoryCell *)self minHeight];
  v17 = v16;
  [(CKBrowserSwitcherFooterAccessoryCell *)self maxHeight];
  if (v10 >= (v17 + v18) * 0.5)
  {
    v19 = 8.0;
  }

  else
  {
    v19 = 6.0;
  }

  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  v27 = CGRectInset(v26, 0.0, v19);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v24 = [(CKBrowserSwitcherFooterAccessoryCell *)self seperatorView];
  [v24 setFrame:{x, y, width, height}];
}

@end