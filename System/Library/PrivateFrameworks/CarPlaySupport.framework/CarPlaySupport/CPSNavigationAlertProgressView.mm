@interface CPSNavigationAlertProgressView
- (CGSize)intrinsicContentSize;
- (CPSNavigationAlertProgressView)initWithFrame:(CGRect)frame;
@end

@implementation CPSNavigationAlertProgressView

- (CPSNavigationAlertProgressView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v19 = a2;
  v20 = 0;
  v18.receiver = self;
  v18.super_class = CPSNavigationAlertProgressView;
  v17 = [(CPSNavigationAlertProgressView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v20 = v17;
  objc_storeStrong(&v20, v17);
  if (v17)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CPSNavigationAlertProgressView *)v20 setBackgroundColor:?];
    *&v3 = MEMORY[0x277D82BD8](clearColor).n128_u64[0];
    [(CPSNavigationAlertProgressView *)v20 intrinsicContentSize];
    v11 = v4 / 2.0;
    layer = [(CPSNavigationAlertProgressView *)v20 layer];
    [layer setCornerRadius:v11];
    *&v5 = MEMORY[0x277D82BD8](layer).n128_u64[0];
    layer2 = [(CPSNavigationAlertProgressView *)v20 layer];
    [layer2 setMaskedCorners:15];
    *&v6 = MEMORY[0x277D82BD8](layer2).n128_u64[0];
    v14 = *MEMORY[0x277CDA138];
    layer3 = [(CPSNavigationAlertProgressView *)v20 layer];
    [layer3 setCornerCurve:v14];
    *&v7 = MEMORY[0x277D82BD8](layer3).n128_u64[0];
    layer4 = [(CPSNavigationAlertProgressView *)v20 layer];
    [layer4 setMasksToBounds:1];
    MEMORY[0x277D82BD8](layer4);
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