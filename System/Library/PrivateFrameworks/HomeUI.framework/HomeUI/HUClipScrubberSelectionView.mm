@interface HUClipScrubberSelectionView
+ (id)selectionView;
- (HUClipScrubberSelectionView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)updateFrameToMatchView:(id)view;
@end

@implementation HUClipScrubberSelectionView

- (HUClipScrubberSelectionView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = HUClipScrubberSelectionView;
  v3 = [(HUClipScrubberSelectionView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUClipScrubberSelectionView *)v3 setOpaque:0];
  }

  return v4;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:rect.origin.x cornerRadius:{rect.origin.y, rect.size.width, rect.size.height, 8.0}];
  [v9 setUsesEvenOddFillRule:1];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v12 = CGRectInset(v11, 5.0, 4.0);
  v7 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v12.origin.x cornerRadius:{v12.origin.y, v12.size.width, v12.size.height, 8.0}];
  [v9 appendPath:v7];
  systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
  [systemYellowColor setFill];

  [v9 fill];
}

- (void)updateFrameToMatchView:(id)view
{
  viewCopy = view;
  [viewCopy frame];
  v11 = CGRectInset(v10, -4.0, 4.0);
  [(HUClipScrubberSelectionView *)self setFrame:v11.origin.x, v11.origin.y, v11.size.width, v11.size.height];
  [viewCopy center];
  [(HUClipScrubberSelectionView *)self setCenter:?];
  superview = [(HUClipScrubberSelectionView *)self superview];
  superview2 = [viewCopy superview];
  v6 = [superview isEqual:superview2];

  if (v6)
  {
    superview3 = [viewCopy superview];
    [superview3 insertSubview:self below:viewCopy];
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