@interface HUWaveformView
- (HUWaveformView)initWithFrame:(CGRect)frame waveformColor:(id)color backgroundColor:(id)backgroundColor;
- (NSArray)powerLevels;
- (float)audioLevelForFlamesView:(id)view;
- (void)appendPowerLevel:(double)level;
- (void)clearPowerLevels;
- (void)layoutSubviews;
- (void)setWaveformColor:(id)color;
@end

@implementation HUWaveformView

- (HUWaveformView)initWithFrame:(CGRect)frame waveformColor:(id)color backgroundColor:(id)backgroundColor
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  v24.receiver = self;
  v24.super_class = HUWaveformView;
  height = [(HUWaveformView *)&v24 initWithFrame:x, y, width, height];
  if (height)
  {
    v15 = objc_opt_new();
    waveformSlices = height->_waveformSlices;
    height->_waveformSlices = v15;

    objc_storeStrong(&height->_waveformColor, color);
    objc_storeStrong(&height->_backgroundColor, backgroundColor);
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
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    v21 = [v19 initWithFrame:mainScreen screen:2 fidelity:{x, y, width, height}];
    flamesView = height->_flamesView;
    height->_flamesView = v21;

    [(SUICFlamesView *)height->_flamesView setDelegate:height];
    [(SUICFlamesView *)height->_flamesView setMode:1];
    [(SUICFlamesView *)height->_flamesView setState:1];
    [(SUICFlamesView *)height->_flamesView setDictationColor:colorCopy];
    [(HUWaveformView *)height addSubview:height->_flamesView];
  }

  return height;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = HUWaveformView;
  [(HUWaveformView *)&v6 layoutSubviews];
  layer = [(HUWaveformView *)self layer];
  [layer setOpaque:1];

  flamesView = [(HUWaveformView *)self flamesView];
  [(HUWaveformView *)self bounds];
  [flamesView setFrame:?];

  flamesView2 = [(HUWaveformView *)self flamesView];
  [flamesView2 setNeedsLayout];
}

- (void)setWaveformColor:(id)color
{
  objc_storeStrong(&self->_waveformColor, color);
  colorCopy = color;
  [(SUICFlamesView *)self->_flamesView setDictationColor:colorCopy];
}

- (void)appendPowerLevel:(double)level
{
  audioPowerLevels = [(HUWaveformView *)self audioPowerLevels];
  if (!audioPowerLevels)
  {
    audioPowerLevels = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(HUWaveformView *)self setAudioPowerLevels:?];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:level];
  [audioPowerLevels addObject:v5];
}

- (void)clearPowerLevels
{
  [(HUWaveformView *)self setAudioPowerLevels:0];
  waveformSlices = [(HUWaveformView *)self waveformSlices];
  [waveformSlices removeAllObjects];

  [(HUWaveformView *)self setNeedsLayout];
}

- (NSArray)powerLevels
{
  audioPowerLevels = [(HUWaveformView *)self audioPowerLevels];
  v3 = [audioPowerLevels copy];

  return v3;
}

- (float)audioLevelForFlamesView:(id)view
{
  audioPowerLevels = [(HUWaveformView *)self audioPowerLevels];
  lastObject = [audioPowerLevels lastObject];
  [lastObject floatValue];
  v6 = v5;

  return v6;
}

@end