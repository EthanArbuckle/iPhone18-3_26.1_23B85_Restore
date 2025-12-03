@interface CSRegionsDebugView
- (CSRegionsDebugView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setRegions:(id)regions;
@end

@implementation CSRegionsDebugView

- (CSRegionsDebugView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = CSRegionsDebugView;
  v3 = [(CSRegionsDebugView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(CSRegionsDebugView *)v3 setBackgroundColor:clearColor];

    [(CSRegionsDebugView *)v3 bs_setHitTestingDisabled:1];
  }

  return v3;
}

- (void)setRegions:(id)regions
{
  regionsCopy = regions;
  if (self->_regions != regionsCopy)
  {
    v6 = regionsCopy;
    objc_storeStrong(&self->_regions, regions);
    [(CSRegionsDebugView *)self setNeedsDisplay];
    regionsCopy = v6;
  }
}

- (void)drawRect:(CGRect)rect
{
  v16 = *MEMORY[0x277D85DE8];
  CurrentContext = UIGraphicsGetCurrentContext();
  v5 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.3];
  CGContextSetFillColorWithColor(CurrentContext, [v5 CGColor]);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_regions;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) extent];
        CGContextFillRect(CurrentContext, v17);
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end