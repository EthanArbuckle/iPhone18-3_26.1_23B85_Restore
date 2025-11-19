@interface CSRegionsDebugView
- (CSRegionsDebugView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setRegions:(id)a3;
@end

@implementation CSRegionsDebugView

- (CSRegionsDebugView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CSRegionsDebugView;
  v3 = [(CSRegionsDebugView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(CSRegionsDebugView *)v3 setBackgroundColor:v4];

    [(CSRegionsDebugView *)v3 bs_setHitTestingDisabled:1];
  }

  return v3;
}

- (void)setRegions:(id)a3
{
  v5 = a3;
  if (self->_regions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_regions, a3);
    [(CSRegionsDebugView *)self setNeedsDisplay];
    v5 = v6;
  }
}

- (void)drawRect:(CGRect)a3
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