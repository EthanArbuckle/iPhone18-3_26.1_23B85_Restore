@interface HKElectrocardiogramChartView
+ (NSArray)defaultGridOptions;
+ (NSArray)printedGridOptions;
- (BOOL)isDisplayingControlSignal;
- (CGSize)gridSize;
- (CGSize)intrinsicContentSize;
- (CGSize)lastSize;
- (HKElectrocardiogramChartView)initWithGridSize:(CGSize)size;
- (HKElectrocardiogramChartView)initWithGridSize:(CGSize)size gridOptions:(id)options;
- (NSArray)gridOptions;
- (UIColor)lineColor;
- (double)lineWidth;
- (void)_setUpUI;
- (void)_updateChartForSizeChange;
- (void)displayElectrocardiogram:(id)electrocardiogram allowsScrolling:(BOOL)scrolling;
- (void)layoutSubviews;
- (void)setDisplayControlSignal:(BOOL)signal;
- (void)setLineColor:(id)color;
- (void)setLineWidth:(double)width;
- (void)setWaveformPath:(id)path;
- (void)setWaveformPaths:(id)paths;
@end

@implementation HKElectrocardiogramChartView

+ (NSArray)defaultGridOptions
{
  v16[4] = *MEMORY[0x1E69E9840];
  v2 = [HKElectrocardiogramGridOptions alloc];
  hk_electrocardiogramChartMajorGridlineColor = [MEMORY[0x1E69DC888] hk_electrocardiogramChartMajorGridlineColor];
  v4 = [(HKElectrocardiogramGridOptions *)v2 initWithUnitMultiple:30 axis:1 lineColor:hk_electrocardiogramChartMajorGridlineColor lineWidth:HKUICeilToScreenScale(0.5)];
  v16[0] = v4;
  v5 = [HKElectrocardiogramGridOptions alloc];
  hk_electrocardiogramChartMajorGridlineColor2 = [MEMORY[0x1E69DC888] hk_electrocardiogramChartMajorGridlineColor];
  v7 = [(HKElectrocardiogramGridOptions *)v5 initWithUnitMultiple:25 axis:2 lineColor:hk_electrocardiogramChartMajorGridlineColor2 lineWidth:HKUICeilToScreenScale(0.5)];
  v16[1] = v7;
  v8 = [HKElectrocardiogramGridOptions alloc];
  hk_electrocardiogramChartMinorGridlineColor = [MEMORY[0x1E69DC888] hk_electrocardiogramChartMinorGridlineColor];
  v10 = [(HKElectrocardiogramGridOptions *)v8 initWithUnitMultiple:5 axis:3 lineColor:hk_electrocardiogramChartMinorGridlineColor lineWidth:HKUICeilToScreenScale(0.25)];
  v16[2] = v10;
  v11 = [HKElectrocardiogramGridOptions alloc];
  hk_electrocardiogramChartVeryMinorGridlineColor = [MEMORY[0x1E69DC888] hk_electrocardiogramChartVeryMinorGridlineColor];
  v13 = [(HKElectrocardiogramGridOptions *)v11 initWithUnitMultiple:1 axis:3 lineColor:hk_electrocardiogramChartVeryMinorGridlineColor lineWidth:HKUICeilToScreenScale(0.25)];
  v16[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:4];

  return v14;
}

+ (NSArray)printedGridOptions
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = [HKElectrocardiogramGridOptions alloc];
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:0.8 alpha:1.0];
  v4 = [(HKElectrocardiogramGridOptions *)v2 initWithUnitMultiple:5 axis:3 lineColor:v3 lineWidth:0.5];
  v10[0] = v4;
  v5 = [HKElectrocardiogramGridOptions alloc];
  v6 = [MEMORY[0x1E69DC888] colorWithWhite:0.9 alpha:1.0];
  v7 = [(HKElectrocardiogramGridOptions *)v5 initWithUnitMultiple:1 axis:3 lineColor:v6 lineWidth:0.5];
  v10[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  return v8;
}

- (HKElectrocardiogramChartView)initWithGridSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  defaultGridOptions = [objc_opt_class() defaultGridOptions];
  height = [(HKElectrocardiogramChartView *)self initWithGridSize:defaultGridOptions gridOptions:width, height];

  return height;
}

- (HKElectrocardiogramChartView)initWithGridSize:(CGSize)size gridOptions:(id)options
{
  height = size.height;
  width = size.width;
  optionsCopy = options;
  v20.receiver = self;
  v20.super_class = HKElectrocardiogramChartView;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = [(HKElectrocardiogramChartView *)&v20 initWithFrame:*MEMORY[0x1E695F058], v9, v10, v11];
  if (v12)
  {
    height = [[HKElectrocardiogramGridView alloc] initWithUnitSize:optionsCopy grids:width, height];
    gridView = v12->_gridView;
    v12->_gridView = height;

    v15 = [[HKElectrocardiogramWaveformView alloc] initWithFrame:v8, v9, v10, v11];
    waveformView = v12->_waveformView;
    v12->_waveformView = v15;

    v17 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v8, v9, v10, v11}];
    waveformContainerView = v12->_waveformContainerView;
    v12->_waveformContainerView = v17;

    v12->_lastSize = *MEMORY[0x1E695F060];
    [(HKElectrocardiogramChartView *)v12 _setUpUI];
  }

  return v12;
}

- (CGSize)intrinsicContentSize
{
  waveformView = [(HKElectrocardiogramChartView *)self waveformView];
  [waveformView intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  gridView = [(HKElectrocardiogramChartView *)self gridView];
  [gridView majorGridSize];
  v10 = v9;
  v12 = v11;

  v13 = v10 * ceil(v5 / v10);
  v14 = v12 * ceil(v7 / v12);
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)_setUpUI
{
  gridView = [(HKElectrocardiogramChartView *)self gridView];
  [(HKElectrocardiogramChartView *)self addSubview:gridView];

  waveformContainerView = [(HKElectrocardiogramChartView *)self waveformContainerView];
  waveformView = [(HKElectrocardiogramChartView *)self waveformView];
  [waveformContainerView addSubview:waveformView];

  waveformContainerView2 = [(HKElectrocardiogramChartView *)self waveformContainerView];
  [(HKElectrocardiogramChartView *)self addSubview:waveformContainerView2];

  waveformContainerView3 = [(HKElectrocardiogramChartView *)self waveformContainerView];
  [waveformContainerView3 setClipsToBounds:1];

  gridView2 = [(HKElectrocardiogramChartView *)self gridView];
  [gridView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  waveformView2 = [(HKElectrocardiogramChartView *)self waveformView];
  [waveformView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  waveformContainerView4 = [(HKElectrocardiogramChartView *)self waveformContainerView];
  [waveformContainerView4 hk_alignConstraintsWithView:self];

  gridView3 = [(HKElectrocardiogramChartView *)self gridView];
  [gridView3 hk_alignConstraintsWithView:self];

  waveformView3 = [(HKElectrocardiogramChartView *)self waveformView];
  leftAnchor = [waveformView3 leftAnchor];
  waveformContainerView5 = [(HKElectrocardiogramChartView *)self waveformContainerView];
  leftAnchor2 = [waveformContainerView5 leftAnchor];
  v16 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  [v16 setActive:1];

  waveformView4 = [(HKElectrocardiogramChartView *)self waveformView];
  centerYAnchor = [waveformView4 centerYAnchor];
  waveformContainerView6 = [(HKElectrocardiogramChartView *)self waveformContainerView];
  centerYAnchor2 = [waveformContainerView6 centerYAnchor];
  v21 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v21 setActive:1];

  waveformView5 = [(HKElectrocardiogramChartView *)self waveformView];
  heightAnchor = [waveformView5 heightAnchor];
  [(HKElectrocardiogramChartView *)self pointsPerMillivolt];
  v24 = [heightAnchor constraintEqualToConstant:v23 * 3.0999999];
  [v24 setActive:1];
}

- (CGSize)gridSize
{
  gridView = [(HKElectrocardiogramChartView *)self gridView];
  [gridView unitSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (NSArray)gridOptions
{
  gridView = [(HKElectrocardiogramChartView *)self gridView];
  grids = [gridView grids];

  return grids;
}

- (BOOL)isDisplayingControlSignal
{
  gridView = [(HKElectrocardiogramChartView *)self gridView];
  controlSignalPath = [gridView controlSignalPath];
  v4 = controlSignalPath != 0;

  return v4;
}

- (void)setDisplayControlSignal:(BOOL)signal
{
  if (signal)
  {
    gridView2 = objc_alloc_init(MEMORY[0x1E69DC728]);
    [gridView2 moveToPoint:{0.0, 0.0}];
    [(HKElectrocardiogramChartView *)self pointsPerSecond];
    v5 = (v4 + v4) / 9.0;
    [(HKElectrocardiogramChartView *)self controlSignalDuration];
    [gridView2 addLineToPoint:{v6 * v5, 0.0}];
    [(HKElectrocardiogramChartView *)self pointsPerSecond];
    v8 = (v7 + v7) / 9.0;
    [(HKElectrocardiogramChartView *)self controlSignalDuration];
    v10 = v9 * v8;
    [(HKElectrocardiogramChartView *)self pointsPerMillivolt];
    [gridView2 addLineToPoint:{v10, -v11}];
    [(HKElectrocardiogramChartView *)self pointsPerSecond];
    v13 = v12 * 7.0 / 9.0;
    [(HKElectrocardiogramChartView *)self controlSignalDuration];
    v15 = v14 * v13;
    [(HKElectrocardiogramChartView *)self pointsPerMillivolt];
    [gridView2 addLineToPoint:{v15, -v16}];
    [(HKElectrocardiogramChartView *)self pointsPerSecond];
    v18 = v17 * 7.0 / 9.0;
    [(HKElectrocardiogramChartView *)self controlSignalDuration];
    [gridView2 addLineToPoint:{v19 * v18, 0.0}];
    [(HKElectrocardiogramChartView *)self pointsPerSecond];
    v21 = v20 * 9.0 / 9.0;
    [(HKElectrocardiogramChartView *)self controlSignalDuration];
    [gridView2 addLineToPoint:{v22 * v21, 0.0}];
    gridView = [(HKElectrocardiogramChartView *)self gridView];
    [gridView setControlSignalPath:gridView2];
  }

  else
  {
    gridView2 = [(HKElectrocardiogramChartView *)self gridView];
    [gridView2 setControlSignalPath:0];
  }
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = HKElectrocardiogramChartView;
  [(HKElectrocardiogramChartView *)&v14 layoutSubviews];
  if ([(HKElectrocardiogramChartView *)self isEdgeMaskEnabled])
  {
    [(HKElectrocardiogramChartView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(HKElectrocardiogramChartView *)self gridSize];
    waveformContainerView2 = [HKGradientView hk_verticalWaveformMaskGradientWithInsetLocation:(v11 + v11) / v10];
    [waveformContainerView2 setFrame:{v4, v6, v8, v10}];
    waveformContainerView = [(HKElectrocardiogramChartView *)self waveformContainerView];
    [waveformContainerView setMaskView:waveformContainerView2];
  }

  else
  {
    waveformContainerView2 = [(HKElectrocardiogramChartView *)self waveformContainerView];
    [waveformContainerView2 setMaskView:0];
  }

  [(HKElectrocardiogramChartView *)self _updateChartForSizeChange];
}

- (void)setWaveformPath:(id)path
{
  v8 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v4 = MEMORY[0x1E695DEC8];
  pathCopy2 = path;
  v6 = [v4 arrayWithObjects:&pathCopy count:1];

  [(HKElectrocardiogramChartView *)self setWaveformPaths:v6, pathCopy, v8];
}

- (void)setWaveformPaths:(id)paths
{
  pathsCopy = paths;
  waveformView = [(HKElectrocardiogramChartView *)self waveformView];
  [waveformView setPaths:pathsCopy];
}

- (void)displayElectrocardiogram:(id)electrocardiogram allowsScrolling:(BOOL)scrolling
{
  scrollingCopy = scrolling;
  [(HKElectrocardiogramChartView *)self setSample:electrocardiogram];
  [(HKElectrocardiogramChartView *)self setAllowsScrolling:scrollingCopy];
  if (scrollingCopy)
  {
    sample = [(HKElectrocardiogramChartView *)self sample];
    [(HKElectrocardiogramChartView *)self pointsPerSecond];
    v8 = v7;
    [(HKElectrocardiogramChartView *)self pointsPerMillivolt];
    LODWORD(v9) = -1081711002;
    LODWORD(v10) = 1073951539;
    v13 = [sample hk_waveformPathsWithPointsPerSecond:v8 pointsPerMillivolt:v11 minimumValueInMillivolts:v9 maximumValueInMillivolts:v10];

    if (v13)
    {
      v12 = v13;
    }

    else
    {
      v12 = MEMORY[0x1E695E0F0];
    }

    [(HKElectrocardiogramChartView *)self setWaveformPaths:v12];
  }

  else
  {
    [(HKElectrocardiogramChartView *)self setWaveformPaths:MEMORY[0x1E695E0F0]];
    [(HKElectrocardiogramChartView *)self setLastSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

    [(HKElectrocardiogramChartView *)self _updateChartForSizeChange];
  }
}

- (void)_updateChartForSizeChange
{
  sample = [(HKElectrocardiogramChartView *)self sample];
  if (sample)
  {
    v30 = sample;
    if (![(HKElectrocardiogramChartView *)self allowsScrolling])
    {
      [(HKElectrocardiogramChartView *)self lastSize];
      v5 = v4;
      v7 = v6;
      [(HKElectrocardiogramChartView *)self bounds];
      v9 = v8;
      v11 = v10;

      if (v5 == v9 && v7 == v11)
      {
        return;
      }

      [(HKElectrocardiogramChartView *)self bounds];
      [(HKElectrocardiogramChartView *)self setLastSize:v12, v13];
      sample2 = [(HKElectrocardiogramChartView *)self sample];
      samplingFrequency = [sample2 samplingFrequency];
      hertzUnit = [MEMORY[0x1E696C510] hertzUnit];
      [samplingFrequency doubleValueForUnit:hertzUnit];
      v18 = v17;

      v19 = v18 * 0.04;
      [(HKElectrocardiogramChartView *)self lastSize];
      v21 = v20;
      [(HKElectrocardiogramChartView *)self gridSize];
      v23 = (v19 * (v21 / v22));
      sample3 = [(HKElectrocardiogramChartView *)self sample];
      [(HKElectrocardiogramChartView *)self lastSize];
      v26 = v25;
      [(HKElectrocardiogramChartView *)self pointsPerMillivolt];
      LODWORD(v27) = -1081711002;
      LODWORD(v28) = 1073951539;
      v30 = [sample3 hk_waveformPathsWithNumberOfValues:v23 fitToWidth:v26 pointsPerMillivolt:v29 minimumValueInMillivolts:v27 maximumValueInMillivolts:v28];

      [(HKElectrocardiogramChartView *)self setWaveformPaths:v30];
    }

    sample = v30;
  }
}

- (double)lineWidth
{
  waveformView = [(HKElectrocardiogramChartView *)self waveformView];
  [waveformView lineWidth];
  v4 = v3;

  return v4;
}

- (void)setLineWidth:(double)width
{
  waveformView = [(HKElectrocardiogramChartView *)self waveformView];
  [waveformView setLineWidth:width];
}

- (UIColor)lineColor
{
  waveformView = [(HKElectrocardiogramChartView *)self waveformView];
  lineColor = [waveformView lineColor];

  return lineColor;
}

- (void)setLineColor:(id)color
{
  colorCopy = color;
  waveformView = [(HKElectrocardiogramChartView *)self waveformView];
  [waveformView setLineColor:colorCopy];
}

- (CGSize)lastSize
{
  width = self->_lastSize.width;
  height = self->_lastSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end