@interface CPSNavigationAlertProgressView
- (CGSize)intrinsicContentSize;
- (CPSNavigationAlertProgressView)initWithFrame:(CGRect)a3;
@end

@implementation CPSNavigationAlertProgressView

- (CPSNavigationAlertProgressView)initWithFrame:(CGRect)a3
{
  v21 = a3;
  v19 = a2;
  v20 = 0;
  v18.receiver = self;
  v18.super_class = CPSNavigationAlertProgressView;
  v17 = [(CPSNavigationAlertProgressView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v20 = v17;
  objc_storeStrong(&v20, v17);
  if (v17)
  {
    v10 = [MEMORY[0x277D75348] clearColor];
    [(CPSNavigationAlertProgressView *)v20 setBackgroundColor:?];
    *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    [(CPSNavigationAlertProgressView *)v20 intrinsicContentSize];
    v11 = v4 / 2.0;
    v12 = [(CPSNavigationAlertProgressView *)v20 layer];
    [v12 setCornerRadius:v11];
    *&v5 = MEMORY[0x277D82BD8](v12).n128_u64[0];
    v13 = [(CPSNavigationAlertProgressView *)v20 layer];
    [v13 setMaskedCorners:15];
    *&v6 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    v14 = *MEMORY[0x277CDA138];
    v15 = [(CPSNavigationAlertProgressView *)v20 layer];
    [v15 setCornerCurve:v14];
    *&v7 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    v16 = [(CPSNavigationAlertProgressView *)v20 layer];
    [v16 setMasksToBounds:1];
    MEMORY[0x277D82BD8](v16);
  }

  v9 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(&v20, 0);
  return v9;
}

- (CGSize)intrinsicContentSize
{
  CGSizeMake_9();
  result.height = v3;
  result.width = v2;
  return result;
}

@end