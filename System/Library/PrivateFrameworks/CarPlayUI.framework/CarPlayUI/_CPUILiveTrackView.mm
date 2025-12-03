@interface _CPUILiveTrackView
- (_CPUILiveTrackView)initWithFrame:(CGRect)frame;
- (void)_updateGradient;
- (void)setErasedPercentage:(double)percentage;
@end

@implementation _CPUILiveTrackView

- (_CPUILiveTrackView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = _CPUILiveTrackView;
  v3 = [(_CPUILiveTrackView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_erasedPercentage = 0.25;
    layer = [(_CPUILiveTrackView *)v3 layer];
    [layer setStartPoint:{0.0, 0.5}];
    [layer setEndPoint:{1.0, 0.5}];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(_CPUILiveTrackView *)v4 setBackgroundColor:clearColor];

    [(_CPUILiveTrackView *)v4 _updateGradient];
  }

  return v4;
}

- (void)setErasedPercentage:(double)percentage
{
  percentageCopy = 1.0;
  if (percentage > 1.0)
  {
    v4 = 1;
  }

  else
  {
    percentageCopy = percentage;
    v4 = percentage < 0.0;
  }

  v5 = fmax(percentageCopy, 0.0);
  if (v4)
  {
    percentage = v5;
  }

  if (vabdd_f64(percentage, self->_erasedPercentage) > 0.00000011920929)
  {
    self->_erasedPercentage = percentage;
    [(_CPUILiveTrackView *)self _updateGradient];
  }
}

- (void)_updateGradient
{
  v13[4] = *MEMORY[0x277D85DE8];
  v2 = self->_erasedPercentage * 0.5;
  layer = [(_CPUILiveTrackView *)self layer];
  systemFillColor = [MEMORY[0x277D75348] systemFillColor];
  v13[0] = [systemFillColor CGColor];
  clearColor = [MEMORY[0x277D75348] clearColor];
  v13[1] = [clearColor CGColor];
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  v13[2] = [clearColor2 CGColor];
  systemFillColor2 = [MEMORY[0x277D75348] systemFillColor];
  v13[3] = [systemFillColor2 CGColor];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  [layer setColors:v8];

  v12[0] = &unk_2855D85F0;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:0.5 - v2];
  v12[1] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v2 + 0.5];
  v12[2] = v10;
  v12[3] = &unk_2855D8600;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  [layer setLocations:v11];
}

@end