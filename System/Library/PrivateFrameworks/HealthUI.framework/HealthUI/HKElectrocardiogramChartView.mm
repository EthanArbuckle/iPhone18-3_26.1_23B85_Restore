@interface HKElectrocardiogramChartView
+ (NSArray)defaultGridOptions;
+ (NSArray)printedGridOptions;
- (BOOL)isDisplayingControlSignal;
- (CGSize)gridSize;
- (CGSize)intrinsicContentSize;
- (CGSize)lastSize;
- (HKElectrocardiogramChartView)initWithGridSize:(CGSize)a3;
- (HKElectrocardiogramChartView)initWithGridSize:(CGSize)a3 gridOptions:(id)a4;
- (NSArray)gridOptions;
- (UIColor)lineColor;
- (double)lineWidth;
- (void)_setUpUI;
- (void)_updateChartForSizeChange;
- (void)displayElectrocardiogram:(id)a3 allowsScrolling:(BOOL)a4;
- (void)layoutSubviews;
- (void)setDisplayControlSignal:(BOOL)a3;
- (void)setLineColor:(id)a3;
- (void)setLineWidth:(double)a3;
- (void)setWaveformPath:(id)a3;
- (void)setWaveformPaths:(id)a3;
@end

@implementation HKElectrocardiogramChartView

+ (NSArray)defaultGridOptions
{
  v16[4] = *MEMORY[0x1E69E9840];
  v2 = [HKElectrocardiogramGridOptions alloc];
  v3 = [MEMORY[0x1E69DC888] hk_electrocardiogramChartMajorGridlineColor];
  v4 = [(HKElectrocardiogramGridOptions *)v2 initWithUnitMultiple:30 axis:1 lineColor:v3 lineWidth:HKUICeilToScreenScale(0.5)];
  v16[0] = v4;
  v5 = [HKElectrocardiogramGridOptions alloc];
  v6 = [MEMORY[0x1E69DC888] hk_electrocardiogramChartMajorGridlineColor];
  v7 = [(HKElectrocardiogramGridOptions *)v5 initWithUnitMultiple:25 axis:2 lineColor:v6 lineWidth:HKUICeilToScreenScale(0.5)];
  v16[1] = v7;
  v8 = [HKElectrocardiogramGridOptions alloc];
  v9 = [MEMORY[0x1E69DC888] hk_electrocardiogramChartMinorGridlineColor];
  v10 = [(HKElectrocardiogramGridOptions *)v8 initWithUnitMultiple:5 axis:3 lineColor:v9 lineWidth:HKUICeilToScreenScale(0.25)];
  v16[2] = v10;
  v11 = [HKElectrocardiogramGridOptions alloc];
  v12 = [MEMORY[0x1E69DC888] hk_electrocardiogramChartVeryMinorGridlineColor];
  v13 = [(HKElectrocardiogramGridOptions *)v11 initWithUnitMultiple:1 axis:3 lineColor:v12 lineWidth:HKUICeilToScreenScale(0.25)];
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

- (HKElectrocardiogramChartView)initWithGridSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [objc_opt_class() defaultGridOptions];
  v7 = [(HKElectrocardiogramChartView *)self initWithGridSize:v6 gridOptions:width, height];

  return v7;
}

- (HKElectrocardiogramChartView)initWithGridSize:(CGSize)a3 gridOptions:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = HKElectrocardiogramChartView;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = [(HKElectrocardiogramChartView *)&v20 initWithFrame:*MEMORY[0x1E695F058], v9, v10, v11];
  if (v12)
  {
    v13 = [[HKElectrocardiogramGridView alloc] initWithUnitSize:v7 grids:width, height];
    gridView = v12->_gridView;
    v12->_gridView = v13;

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
  v3 = [(HKElectrocardiogramChartView *)self waveformView];
  [v3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  v8 = [(HKElectrocardiogramChartView *)self gridView];
  [v8 majorGridSize];
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
  v3 = [(HKElectrocardiogramChartView *)self gridView];
  [(HKElectrocardiogramChartView *)self addSubview:v3];

  v4 = [(HKElectrocardiogramChartView *)self waveformContainerView];
  v5 = [(HKElectrocardiogramChartView *)self waveformView];
  [v4 addSubview:v5];

  v6 = [(HKElectrocardiogramChartView *)self waveformContainerView];
  [(HKElectrocardiogramChartView *)self addSubview:v6];

  v7 = [(HKElectrocardiogramChartView *)self waveformContainerView];
  [v7 setClipsToBounds:1];

  v8 = [(HKElectrocardiogramChartView *)self gridView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(HKElectrocardiogramChartView *)self waveformView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(HKElectrocardiogramChartView *)self waveformContainerView];
  [v10 hk_alignConstraintsWithView:self];

  v11 = [(HKElectrocardiogramChartView *)self gridView];
  [v11 hk_alignConstraintsWithView:self];

  v12 = [(HKElectrocardiogramChartView *)self waveformView];
  v13 = [v12 leftAnchor];
  v14 = [(HKElectrocardiogramChartView *)self waveformContainerView];
  v15 = [v14 leftAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [(HKElectrocardiogramChartView *)self waveformView];
  v18 = [v17 centerYAnchor];
  v19 = [(HKElectrocardiogramChartView *)self waveformContainerView];
  v20 = [v19 centerYAnchor];
  v21 = [v18 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v25 = [(HKElectrocardiogramChartView *)self waveformView];
  v22 = [v25 heightAnchor];
  [(HKElectrocardiogramChartView *)self pointsPerMillivolt];
  v24 = [v22 constraintEqualToConstant:v23 * 3.0999999];
  [v24 setActive:1];
}

- (CGSize)gridSize
{
  v2 = [(HKElectrocardiogramChartView *)self gridView];
  [v2 unitSize];
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
  v2 = [(HKElectrocardiogramChartView *)self gridView];
  v3 = [v2 grids];

  return v3;
}

- (BOOL)isDisplayingControlSignal
{
  v2 = [(HKElectrocardiogramChartView *)self gridView];
  v3 = [v2 controlSignalPath];
  v4 = v3 != 0;

  return v4;
}

- (void)setDisplayControlSignal:(BOOL)a3
{
  if (a3)
  {
    v24 = objc_alloc_init(MEMORY[0x1E69DC728]);
    [v24 moveToPoint:{0.0, 0.0}];
    [(HKElectrocardiogramChartView *)self pointsPerSecond];
    v5 = (v4 + v4) / 9.0;
    [(HKElectrocardiogramChartView *)self controlSignalDuration];
    [v24 addLineToPoint:{v6 * v5, 0.0}];
    [(HKElectrocardiogramChartView *)self pointsPerSecond];
    v8 = (v7 + v7) / 9.0;
    [(HKElectrocardiogramChartView *)self controlSignalDuration];
    v10 = v9 * v8;
    [(HKElectrocardiogramChartView *)self pointsPerMillivolt];
    [v24 addLineToPoint:{v10, -v11}];
    [(HKElectrocardiogramChartView *)self pointsPerSecond];
    v13 = v12 * 7.0 / 9.0;
    [(HKElectrocardiogramChartView *)self controlSignalDuration];
    v15 = v14 * v13;
    [(HKElectrocardiogramChartView *)self pointsPerMillivolt];
    [v24 addLineToPoint:{v15, -v16}];
    [(HKElectrocardiogramChartView *)self pointsPerSecond];
    v18 = v17 * 7.0 / 9.0;
    [(HKElectrocardiogramChartView *)self controlSignalDuration];
    [v24 addLineToPoint:{v19 * v18, 0.0}];
    [(HKElectrocardiogramChartView *)self pointsPerSecond];
    v21 = v20 * 9.0 / 9.0;
    [(HKElectrocardiogramChartView *)self controlSignalDuration];
    [v24 addLineToPoint:{v22 * v21, 0.0}];
    v23 = [(HKElectrocardiogramChartView *)self gridView];
    [v23 setControlSignalPath:v24];
  }

  else
  {
    v24 = [(HKElectrocardiogramChartView *)self gridView];
    [v24 setControlSignalPath:0];
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
    v12 = [HKGradientView hk_verticalWaveformMaskGradientWithInsetLocation:(v11 + v11) / v10];
    [v12 setFrame:{v4, v6, v8, v10}];
    v13 = [(HKElectrocardiogramChartView *)self waveformContainerView];
    [v13 setMaskView:v12];
  }

  else
  {
    v12 = [(HKElectrocardiogramChartView *)self waveformContainerView];
    [v12 setMaskView:0];
  }

  [(HKElectrocardiogramChartView *)self _updateChartForSizeChange];
}

- (void)setWaveformPath:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v7 count:1];

  [(HKElectrocardiogramChartView *)self setWaveformPaths:v6, v7, v8];
}

- (void)setWaveformPaths:(id)a3
{
  v4 = a3;
  v5 = [(HKElectrocardiogramChartView *)self waveformView];
  [v5 setPaths:v4];
}

- (void)displayElectrocardiogram:(id)a3 allowsScrolling:(BOOL)a4
{
  v4 = a4;
  [(HKElectrocardiogramChartView *)self setSample:a3];
  [(HKElectrocardiogramChartView *)self setAllowsScrolling:v4];
  if (v4)
  {
    v6 = [(HKElectrocardiogramChartView *)self sample];
    [(HKElectrocardiogramChartView *)self pointsPerSecond];
    v8 = v7;
    [(HKElectrocardiogramChartView *)self pointsPerMillivolt];
    LODWORD(v9) = -1081711002;
    LODWORD(v10) = 1073951539;
    v13 = [v6 hk_waveformPathsWithPointsPerSecond:v8 pointsPerMillivolt:v11 minimumValueInMillivolts:v9 maximumValueInMillivolts:v10];

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
  v3 = [(HKElectrocardiogramChartView *)self sample];
  if (v3)
  {
    v30 = v3;
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
      v14 = [(HKElectrocardiogramChartView *)self sample];
      v15 = [v14 samplingFrequency];
      v16 = [MEMORY[0x1E696C510] hertzUnit];
      [v15 doubleValueForUnit:v16];
      v18 = v17;

      v19 = v18 * 0.04;
      [(HKElectrocardiogramChartView *)self lastSize];
      v21 = v20;
      [(HKElectrocardiogramChartView *)self gridSize];
      v23 = (v19 * (v21 / v22));
      v24 = [(HKElectrocardiogramChartView *)self sample];
      [(HKElectrocardiogramChartView *)self lastSize];
      v26 = v25;
      [(HKElectrocardiogramChartView *)self pointsPerMillivolt];
      LODWORD(v27) = -1081711002;
      LODWORD(v28) = 1073951539;
      v30 = [v24 hk_waveformPathsWithNumberOfValues:v23 fitToWidth:v26 pointsPerMillivolt:v29 minimumValueInMillivolts:v27 maximumValueInMillivolts:v28];

      [(HKElectrocardiogramChartView *)self setWaveformPaths:v30];
    }

    v3 = v30;
  }
}

- (double)lineWidth
{
  v2 = [(HKElectrocardiogramChartView *)self waveformView];
  [v2 lineWidth];
  v4 = v3;

  return v4;
}

- (void)setLineWidth:(double)a3
{
  v4 = [(HKElectrocardiogramChartView *)self waveformView];
  [v4 setLineWidth:a3];
}

- (UIColor)lineColor
{
  v2 = [(HKElectrocardiogramChartView *)self waveformView];
  v3 = [v2 lineColor];

  return v3;
}

- (void)setLineColor:(id)a3
{
  v4 = a3;
  v5 = [(HKElectrocardiogramChartView *)self waveformView];
  [v5 setLineColor:v4];
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