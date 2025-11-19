@interface CKComposeNavbarManagerContentView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation CKComposeNavbarManagerContentView

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = CKComposeNavbarManagerContentView;
  [(CKComposeNavbarManagerContentView *)&v13 layoutSubviews];
  [(CKComposeNavbarManagerContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CKComposeNavbarManagerContentView *)self canvasView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(CKComposeNavbarManagerContentView *)self canvasView];
  [v12 setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v13.receiver = self;
  v13.super_class = CKComposeNavbarManagerContentView;
  [(CKComposeNavbarManagerContentView *)&v13 sizeThatFits:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  v8 = [(CKComposeNavbarManagerContentView *)self canvasView];
  [v8 sizeThatFits:{v5, v7}];
  v10 = v9;

  v11 = v5;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end