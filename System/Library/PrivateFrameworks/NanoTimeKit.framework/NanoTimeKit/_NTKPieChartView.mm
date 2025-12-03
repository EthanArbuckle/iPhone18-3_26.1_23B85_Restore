@interface _NTKPieChartView
- (_NTKPieChartView)initWithFrame:(CGRect)frame;
- (void)setProgress:(double)progress animated:(BOOL)animated;
@end

@implementation _NTKPieChartView

- (_NTKPieChartView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = _NTKPieChartView;
  v3 = [(_NTKPieChartView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(_NTKPieChartView *)v3 setBackgroundColor:clearColor];

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v7 = v6;
    layer = [(_NTKPieChartView *)v3 layer];
    [layer setContentsScale:v7];
  }

  return v3;
}

- (void)setProgress:(double)progress animated:(BOOL)animated
{
  if (animated)
  {
    layer = [(_NTKPieChartView *)self layer];
    [layer setProgress:progress];
  }

  else
  {
    [MEMORY[0x277D75D18] setAnimationsEnabled:0];
    layer2 = [(_NTKPieChartView *)self layer];
    [layer2 setProgress:progress];

    v7 = MEMORY[0x277D75D18];

    [v7 setAnimationsEnabled:1];
  }
}

@end