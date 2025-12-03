@interface GKTopClipView
- (GKTopClipView)initWithFrame:(CGRect)frame;
@end

@implementation GKTopClipView

- (GKTopClipView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = GKTopClipView;
  v3 = [(GKTopClipView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    mEMORY[0x277D0C868] = [MEMORY[0x277D0C868] sharedPalette];
    windowBackgroundColor = [mEMORY[0x277D0C868] windowBackgroundColor];
    [(GKTopClipView *)v3 setBackgroundColor:windowBackgroundColor];
  }

  return v3;
}

@end