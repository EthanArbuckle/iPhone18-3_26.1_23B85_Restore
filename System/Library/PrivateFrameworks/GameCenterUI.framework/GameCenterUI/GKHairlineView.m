@interface GKHairlineView
+ (id)hairlineViewForAlignment:(int64_t)a3;
- (CGSize)intrinsicContentSize;
- (GKHairlineView)init;
- (void)sizeToFit;
@end

@implementation GKHairlineView

+ (id)hairlineViewForAlignment:(int64_t)a3
{
  v4 = objc_alloc_init(GKHairlineView);
  [(GKHairlineView *)v4 setAlignment:a3];

  return v4;
}

- (GKHairlineView)init
{
  v6.receiver = self;
  v6.super_class = GKHairlineView;
  v2 = [(GKHairlineView *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D0C868] sharedPalette];
    v4 = [v3 separatorLineColor];
    [(GKHairlineView *)v2 setBackgroundColor:v4];

    [(GKHairlineView *)v2 setAutoresizingMask:2];
    v2->_alignment = 0;
  }

  return v2;
}

- (CGSize)intrinsicContentSize
{
  if (self->_alignment)
  {
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 scale];
    v3 = *MEMORY[0x277D77260];
    v5 = 1.0 / v4;
  }

  else
  {
    v5 = *MEMORY[0x277D77260];
    v2 = [MEMORY[0x277D759A0] mainScreen];
    [v2 scale];
    v3 = 1.0 / v6;
  }

  v7 = v5;
  v8 = v3;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)sizeToFit
{
  v13 = [(GKHairlineView *)self superview];
  [(GKHairlineView *)self frame];
  if (v13)
  {
    v4 = v3;
    alignment = self->_alignment;
    [v13 bounds];
    v6 = CGRectGetWidth(v15) + -18.0;
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 scale];
    v9 = 1.0 / v8;

    if (alignment)
    {
      v10 = v6;
    }

    else
    {
      v10 = v9;
    }

    if (alignment)
    {
      v6 = v9;
    }

    [v13 bounds];
    [(GKHairlineView *)self setFrame:round(v12 + (v11 - v6) * 0.5), v4, v6, v10];
  }
}

@end