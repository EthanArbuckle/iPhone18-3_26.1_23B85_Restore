@interface CKComposeNavbarManagerContentView
- (CGSize)sizeThatFits:(CGSize)fits;
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
  canvasView = [(CKComposeNavbarManagerContentView *)self canvasView];
  [canvasView setFrame:{v4, v6, v8, v10}];

  canvasView2 = [(CKComposeNavbarManagerContentView *)self canvasView];
  [canvasView2 setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v13.receiver = self;
  v13.super_class = CKComposeNavbarManagerContentView;
  [(CKComposeNavbarManagerContentView *)&v13 sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  canvasView = [(CKComposeNavbarManagerContentView *)self canvasView];
  [canvasView sizeThatFits:{v5, v7}];
  v10 = v9;

  v11 = v5;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end