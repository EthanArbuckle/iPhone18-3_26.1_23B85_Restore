@interface _NTKPieChartView
- (_NTKPieChartView)initWithFrame:(CGRect)a3;
- (void)setProgress:(double)a3 animated:(BOOL)a4;
@end

@implementation _NTKPieChartView

- (_NTKPieChartView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = _NTKPieChartView;
  v3 = [(_NTKPieChartView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(_NTKPieChartView *)v3 setBackgroundColor:v4];

    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 scale];
    v7 = v6;
    v8 = [(_NTKPieChartView *)v3 layer];
    [v8 setContentsScale:v7];
  }

  return v3;
}

- (void)setProgress:(double)a3 animated:(BOOL)a4
{
  if (a4)
  {
    v8 = [(_NTKPieChartView *)self layer];
    [v8 setProgress:a3];
  }

  else
  {
    [MEMORY[0x277D75D18] setAnimationsEnabled:0];
    v6 = [(_NTKPieChartView *)self layer];
    [v6 setProgress:a3];

    v7 = MEMORY[0x277D75D18];

    [v7 setAnimationsEnabled:1];
  }
}

@end