@interface HUClipScrubberSelectionView
+ (id)selectionView;
- (HUClipScrubberSelectionView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)updateFrameToMatchView:(id)a3;
@end

@implementation HUClipScrubberSelectionView

- (HUClipScrubberSelectionView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = HUClipScrubberSelectionView;
  v3 = [(HUClipScrubberSelectionView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUClipScrubberSelectionView *)v3 setOpaque:0];
  }

  return v4;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:a3.origin.x cornerRadius:{a3.origin.y, a3.size.width, a3.size.height, 8.0}];
  [v9 setUsesEvenOddFillRule:1];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v12 = CGRectInset(v11, 5.0, 4.0);
  v7 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v12.origin.x cornerRadius:{v12.origin.y, v12.size.width, v12.size.height, 8.0}];
  [v9 appendPath:v7];
  v8 = [MEMORY[0x277D75348] systemYellowColor];
  [v8 setFill];

  [v9 fill];
}

- (void)updateFrameToMatchView:(id)a3
{
  v8 = a3;
  [v8 frame];
  v11 = CGRectInset(v10, -4.0, 4.0);
  [(HUClipScrubberSelectionView *)self setFrame:v11.origin.x, v11.origin.y, v11.size.width, v11.size.height];
  [v8 center];
  [(HUClipScrubberSelectionView *)self setCenter:?];
  v4 = [(HUClipScrubberSelectionView *)self superview];
  v5 = [v8 superview];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [v8 superview];
    [v7 insertSubview:self below:v8];
  }

  [(HUClipScrubberSelectionView *)self setNeedsDisplay];
}

+ (id)selectionView
{
  v2 = [HUClipScrubberSelectionView alloc];
  v3 = [(HUClipScrubberSelectionView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  return v3;
}

@end