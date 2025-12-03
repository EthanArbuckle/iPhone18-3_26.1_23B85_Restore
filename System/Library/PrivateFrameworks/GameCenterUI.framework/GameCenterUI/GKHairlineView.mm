@interface GKHairlineView
+ (id)hairlineViewForAlignment:(int64_t)alignment;
- (CGSize)intrinsicContentSize;
- (GKHairlineView)init;
- (void)sizeToFit;
@end

@implementation GKHairlineView

+ (id)hairlineViewForAlignment:(int64_t)alignment
{
  v4 = objc_alloc_init(GKHairlineView);
  [(GKHairlineView *)v4 setAlignment:alignment];

  return v4;
}

- (GKHairlineView)init
{
  v6.receiver = self;
  v6.super_class = GKHairlineView;
  v2 = [(GKHairlineView *)&v6 init];
  if (v2)
  {
    mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
    separatorLineColor = [mEMORY[0x277D0C868] separatorLineColor];
    [(GKHairlineView *)v2 setBackgroundColor:separatorLineColor];

    [(GKHairlineView *)v2 setAutoresizingMask:2];
    v2->_alignment = 0;
  }

  return v2;
}

- (CGSize)intrinsicContentSize
{
  if (self->_alignment)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v3 = *MEMORY[0x277D77260];
    v5 = 1.0 / v4;
  }

  else
  {
    v5 = *MEMORY[0x277D77260];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
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
  superview = [(GKHairlineView *)self superview];
  [(GKHairlineView *)self frame];
  if (superview)
  {
    v4 = v3;
    alignment = self->_alignment;
    [superview bounds];
    v6 = CGRectGetWidth(v15) + -18.0;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
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

    [superview bounds];
    [(GKHairlineView *)self setFrame:round(v12 + (v11 - v6) * 0.5), v4, v6, v10];
  }
}

@end