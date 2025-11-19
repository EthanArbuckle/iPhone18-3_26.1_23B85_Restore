@interface _CPUILiveTrackView
- (_CPUILiveTrackView)initWithFrame:(CGRect)a3;
- (void)_updateGradient;
- (void)setErasedPercentage:(double)a3;
@end

@implementation _CPUILiveTrackView

- (_CPUILiveTrackView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _CPUILiveTrackView;
  v3 = [(_CPUILiveTrackView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_erasedPercentage = 0.25;
    v5 = [(_CPUILiveTrackView *)v3 layer];
    [v5 setStartPoint:{0.0, 0.5}];
    [v5 setEndPoint:{1.0, 0.5}];
    v6 = [MEMORY[0x277D75348] clearColor];
    [(_CPUILiveTrackView *)v4 setBackgroundColor:v6];

    [(_CPUILiveTrackView *)v4 _updateGradient];
  }

  return v4;
}

- (void)setErasedPercentage:(double)a3
{
  v3 = 1.0;
  if (a3 > 1.0)
  {
    v4 = 1;
  }

  else
  {
    v3 = a3;
    v4 = a3 < 0.0;
  }

  v5 = fmax(v3, 0.0);
  if (v4)
  {
    a3 = v5;
  }

  if (vabdd_f64(a3, self->_erasedPercentage) > 0.00000011920929)
  {
    self->_erasedPercentage = a3;
    [(_CPUILiveTrackView *)self _updateGradient];
  }
}

- (void)_updateGradient
{
  v13[4] = *MEMORY[0x277D85DE8];
  v2 = self->_erasedPercentage * 0.5;
  v3 = [(_CPUILiveTrackView *)self layer];
  v4 = [MEMORY[0x277D75348] systemFillColor];
  v13[0] = [v4 CGColor];
  v5 = [MEMORY[0x277D75348] clearColor];
  v13[1] = [v5 CGColor];
  v6 = [MEMORY[0x277D75348] clearColor];
  v13[2] = [v6 CGColor];
  v7 = [MEMORY[0x277D75348] systemFillColor];
  v13[3] = [v7 CGColor];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  [v3 setColors:v8];

  v12[0] = &unk_2855D85F0;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:0.5 - v2];
  v12[1] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v2 + 0.5];
  v12[2] = v10;
  v12[3] = &unk_2855D8600;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  [v3 setLocations:v11];
}

@end