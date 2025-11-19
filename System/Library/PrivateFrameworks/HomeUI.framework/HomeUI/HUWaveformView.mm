@interface HUWaveformView
- (HUWaveformView)initWithFrame:(CGRect)a3 waveformColor:(id)a4 backgroundColor:(id)a5;
- (NSArray)powerLevels;
- (float)audioLevelForFlamesView:(id)a3;
- (void)appendPowerLevel:(double)a3;
- (void)clearPowerLevels;
- (void)layoutSubviews;
- (void)setWaveformColor:(id)a3;
@end

@implementation HUWaveformView

- (HUWaveformView)initWithFrame:(CGRect)a3 waveformColor:(id)a4 backgroundColor:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = a5;
  v24.receiver = self;
  v24.super_class = HUWaveformView;
  v14 = [(HUWaveformView *)&v24 initWithFrame:x, y, width, height];
  if (v14)
  {
    v15 = objc_opt_new();
    waveformSlices = v14->_waveformSlices;
    v14->_waveformSlices = v15;

    objc_storeStrong(&v14->_waveformColor, a4);
    objc_storeStrong(&v14->_backgroundColor, a5);
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v17 = _MergedGlobals_1_0;
    v29 = _MergedGlobals_1_0;
    if (!_MergedGlobals_1_0)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __getSUICFlamesViewClass_block_invoke;
      v25[3] = &unk_277DB7768;
      v25[4] = &v26;
      __getSUICFlamesViewClass_block_invoke(v25);
      v17 = v27[3];
    }

    v18 = v17;
    _Block_object_dispose(&v26, 8);
    v19 = [v17 alloc];
    v20 = [MEMORY[0x277D759A0] mainScreen];
    v21 = [v19 initWithFrame:v20 screen:2 fidelity:{x, y, width, height}];
    flamesView = v14->_flamesView;
    v14->_flamesView = v21;

    [(SUICFlamesView *)v14->_flamesView setDelegate:v14];
    [(SUICFlamesView *)v14->_flamesView setMode:1];
    [(SUICFlamesView *)v14->_flamesView setState:1];
    [(SUICFlamesView *)v14->_flamesView setDictationColor:v12];
    [(HUWaveformView *)v14 addSubview:v14->_flamesView];
  }

  return v14;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = HUWaveformView;
  [(HUWaveformView *)&v6 layoutSubviews];
  v3 = [(HUWaveformView *)self layer];
  [v3 setOpaque:1];

  v4 = [(HUWaveformView *)self flamesView];
  [(HUWaveformView *)self bounds];
  [v4 setFrame:?];

  v5 = [(HUWaveformView *)self flamesView];
  [v5 setNeedsLayout];
}

- (void)setWaveformColor:(id)a3
{
  objc_storeStrong(&self->_waveformColor, a3);
  v5 = a3;
  [(SUICFlamesView *)self->_flamesView setDictationColor:v5];
}

- (void)appendPowerLevel:(double)a3
{
  v6 = [(HUWaveformView *)self audioPowerLevels];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(HUWaveformView *)self setAudioPowerLevels:?];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v6 addObject:v5];
}

- (void)clearPowerLevels
{
  [(HUWaveformView *)self setAudioPowerLevels:0];
  v3 = [(HUWaveformView *)self waveformSlices];
  [v3 removeAllObjects];

  [(HUWaveformView *)self setNeedsLayout];
}

- (NSArray)powerLevels
{
  v2 = [(HUWaveformView *)self audioPowerLevels];
  v3 = [v2 copy];

  return v3;
}

- (float)audioLevelForFlamesView:(id)a3
{
  v3 = [(HUWaveformView *)self audioPowerLevels];
  v4 = [v3 lastObject];
  [v4 floatValue];
  v6 = v5;

  return v6;
}

@end