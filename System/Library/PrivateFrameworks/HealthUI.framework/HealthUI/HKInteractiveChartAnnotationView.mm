@interface HKInteractiveChartAnnotationView
- (BOOL)_dataSourceHasNoData;
- (CGSize)intrinsicContentSize;
- (HKInteractiveChartAnnotationView)initWithCoder:(id)coder;
- (HKInteractiveChartAnnotationView)initWithContext:(int64_t)context;
- (HKInteractiveChartAnnotationViewDataSourceProtocol)dataSource;
- (HKInteractiveChartAnnotationViewDelegate)delegate;
- (NSTimer)deferredNoDataTimer;
- (UIButton)infoButton;
- (double)_leadingMargin;
- (void)_buildStandardAnnotationViews;
- (void)_cancelDeferredDataReload;
- (void)_configureLayout;
- (void)_invalidateLayout;
- (void)_removeViewsForRebuild;
- (void)_updateRightMarginViewWithInfoButton;
- (void)handleCurrentTimeGesture:(id)gesture;
- (void)infoButtonPressed:(id)pressed;
- (void)layoutSubviews;
- (void)reloadData;
- (void)scheduleDeferredDataReload;
- (void)setShowsInfoButton:(BOOL)button;
- (void)showNoDataStatus;
@end

@implementation HKInteractiveChartAnnotationView

- (HKInteractiveChartAnnotationView)initWithContext:(int64_t)context
{
  v8.receiver = self;
  v8.super_class = HKInteractiveChartAnnotationView;
  v4 = [(HKInteractiveChartAnnotationView *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(HKInteractiveChartAnnotationView *)v4 setContext:context];
    [(HKInteractiveChartAnnotationView *)v5 setTranslatesAutoresizingMaskIntoConstraints:context == 0];
    layer = [(HKInteractiveChartAnnotationView *)v5 layer];
    [layer setCornerRadius:10.0];

    [(HKInteractiveChartAnnotationView *)v5 setClipsToBounds:1];
    v5->_showsInfoButton = 0;
    [(HKInteractiveChartAnnotationView *)v5 setDeferredNoDataTimer:0];
    [(HKInteractiveChartAnnotationView *)v5 setPreservesSuperviewLayoutMargins:1];
    [(HKInteractiveChartAnnotationView *)v5 _configureLayout];
  }

  return v5;
}

- (HKInteractiveChartAnnotationView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HKInteractiveChartAnnotationView;
  return [(HKInteractiveChartAnnotationView *)&v4 initWithFrame:coder, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
}

- (UIButton)infoButton
{
  infoButton = self->_infoButton;
  if (!infoButton)
  {
    v4 = [MEMORY[0x1E69DC738] hk_currentValueViewInfoButtonWithTarget:self action:sel_infoButtonPressed_];
    v5 = self->_infoButton;
    self->_infoButton = v4;

    v6 = [MEMORY[0x1E696AEC0] hk_chartAccessibilityIdentifier:@"Info"];
    [(UIButton *)self->_infoButton setAccessibilityIdentifier:v6];

    [(UIButton *)self->_infoButton setHidden:1];
    infoButton = self->_infoButton;
  }

  return infoButton;
}

- (void)_configureLayout
{
  v3 = [[_HKAnnotationColumnLayout alloc] initWithContext:[(HKInteractiveChartAnnotationView *)self context]];
  [(HKInteractiveChartAnnotationView *)self setColumnLayout:v3];

  v4 = [MEMORY[0x1E696AEC0] hk_chartLollipopAccessibilityIdentifier:@"Columns"];
  columnLayout = [(HKInteractiveChartAnnotationView *)self columnLayout];
  [columnLayout setAccessibilityIdentifier:v4];

  v6 = objc_alloc_init(_HKDateContentLayout);
  [(HKInteractiveChartAnnotationView *)self setDateContentLayout:v6];

  columnLayout2 = [(HKInteractiveChartAnnotationView *)self columnLayout];
  dateContentLayout = [(HKInteractiveChartAnnotationView *)self dateContentLayout];
  [dateContentLayout setContentView:columnLayout2];

  v9 = [MEMORY[0x1E696AEC0] hk_chartLollipopAccessibilityIdentifier:@"DateAndContent"];
  dateContentLayout2 = [(HKInteractiveChartAnnotationView *)self dateContentLayout];
  [dateContentLayout2 setAccessibilityIdentifier:v9];

  v11 = objc_alloc_init(_HKBodyMarginsLayout);
  [(HKInteractiveChartAnnotationView *)self setBodyMarginsLayout:v11];

  dateContentLayout3 = [(HKInteractiveChartAnnotationView *)self dateContentLayout];
  bodyMarginsLayout = [(HKInteractiveChartAnnotationView *)self bodyMarginsLayout];
  [bodyMarginsLayout setBodyView:dateContentLayout3];

  bodyMarginsLayout2 = [(HKInteractiveChartAnnotationView *)self bodyMarginsLayout];
  [bodyMarginsLayout2 setTranslatesAutoresizingMaskIntoConstraints:1];

  v15 = [MEMORY[0x1E696AEC0] hk_chartLollipopAccessibilityIdentifier:@"BodyMargins"];
  bodyMarginsLayout3 = [(HKInteractiveChartAnnotationView *)self bodyMarginsLayout];
  [bodyMarginsLayout3 setAccessibilityIdentifier:v15];

  bodyMarginsLayout4 = [(HKInteractiveChartAnnotationView *)self bodyMarginsLayout];
  [(HKInteractiveChartAnnotationView *)self addSubview:bodyMarginsLayout4];
}

- (void)setShowsInfoButton:(BOOL)button
{
  if (self->_showsInfoButton != button)
  {
    buttonCopy = button;
    self->_showsInfoButton = button;
    infoButton = [(HKInteractiveChartAnnotationView *)self infoButton];
    [infoButton setHidden:!buttonCopy];
  }
}

- (void)reloadData
{
  [(HKInteractiveChartAnnotationView *)self _cancelDeferredDataReload];
  if ([(HKInteractiveChartAnnotationView *)self _dataSourceHasNoData])
  {

    [(HKInteractiveChartAnnotationView *)self showNoDataStatus];
  }

  else
  {

    [(HKInteractiveChartAnnotationView *)self _buildStandardAnnotationViews];
  }
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = HKInteractiveChartAnnotationView;
  [(HKInteractiveChartAnnotationView *)&v13 layoutSubviews];
  [(HKInteractiveChartAnnotationView *)self bounds];
  v4 = v3;
  v6 = v5;
  bodyMarginsLayout = [(HKInteractiveChartAnnotationView *)self bodyMarginsLayout];
  [bodyMarginsLayout systemLayoutSizeFittingSize:{1.79769313e308, 1.79769313e308}];
  v9 = v8;

  [(HKInteractiveChartAnnotationView *)self _leadingMargin];
  v11 = v10;
  if (v9 + 2.0 + 2.0 > v6)
  {
    v9 = v6 + -4.0;
  }

  bodyMarginsLayout2 = [(HKInteractiveChartAnnotationView *)self bodyMarginsLayout];
  [bodyMarginsLayout2 setFrame:{v11, v6 + -2.0 - v9, v4 + v11 * -2.0, v9}];
}

- (CGSize)intrinsicContentSize
{
  bodyMarginsLayout = [(HKInteractiveChartAnnotationView *)self bodyMarginsLayout];
  [bodyMarginsLayout systemLayoutSizeFittingSize:{1.79769313e308, 1.79769313e308}];
  v5 = v4;
  v7 = v6;

  [(HKInteractiveChartAnnotationView *)self _leadingMargin];
  v9 = v5 + v8 * 2.0;
  v10 = v7 + 2.0 + 2.0;
  result.height = v10;
  result.width = v9;
  return result;
}

- (double)_leadingMargin
{
  if (([(HKInteractiveChartAnnotationView *)self context]| 2) != 2)
  {
    return 15.0;
  }

  [(HKInteractiveChartAnnotationView *)self layoutMargins];
  result = 16.0;
  if (v3 >= 16.0)
  {
    return v3;
  }

  return result;
}

- (void)_updateRightMarginViewWithInfoButton
{
  showsInfoButton = [(HKInteractiveChartAnnotationView *)self showsInfoButton];
  if (showsInfoButton)
  {
    infoButton = [(HKInteractiveChartAnnotationView *)self infoButton];
  }

  else
  {
    infoButton = 0;
  }

  bodyMarginsLayout = [(HKInteractiveChartAnnotationView *)self bodyMarginsLayout];
  [bodyMarginsLayout setRightMarginView:infoButton];

  if (showsInfoButton)
  {
  }
}

- (void)_buildStandardAnnotationViews
{
  dataSource = [(HKInteractiveChartAnnotationView *)self dataSource];
  showSeparators = [dataSource showSeparators];
  columnLayout = [(HKInteractiveChartAnnotationView *)self columnLayout];
  [columnLayout setIncludeSeparators:showSeparators];

  dataSource2 = [(HKInteractiveChartAnnotationView *)self dataSource];
  LOBYTE(showSeparators) = objc_opt_respondsToSelector();

  if (showSeparators)
  {
    dataSource3 = [(HKInteractiveChartAnnotationView *)self dataSource];
    reverseColumnsInRightToLeftLayoutDirection = [dataSource3 reverseColumnsInRightToLeftLayoutDirection];
    columnLayout2 = [(HKInteractiveChartAnnotationView *)self columnLayout];
    [columnLayout2 setReverseColumnsInRightToLeftLayoutDirection:reverseColumnsInRightToLeftLayoutDirection];
  }

  dataSource4 = [(HKInteractiveChartAnnotationView *)self dataSource];
  v11 = [dataSource4 numberOfValuesForAnnotationView:self];

  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      dataSource5 = [(HKInteractiveChartAnnotationView *)self dataSource];
      v14 = [dataSource5 valueViewForColumnAtIndex:i orientation:0];

      columnLayout3 = [(HKInteractiveChartAnnotationView *)self columnLayout];
      [columnLayout3 setColumnView:v14 atIndex:i];
    }
  }

  columnLayout4 = [(HKInteractiveChartAnnotationView *)self columnLayout];
  [columnLayout4 clearViewsFromIndex:v11];

  columnLayout5 = [(HKInteractiveChartAnnotationView *)self columnLayout];
  dateContentLayout = [(HKInteractiveChartAnnotationView *)self dateContentLayout];
  [dateContentLayout setContentView:columnLayout5];

  dataSource6 = [(HKInteractiveChartAnnotationView *)self dataSource];
  v28 = [dataSource6 dateViewWithOrientation:1];

  dateContentLayout2 = [(HKInteractiveChartAnnotationView *)self dateContentLayout];
  v21 = dateContentLayout2;
  if (v28)
  {
    [dateContentLayout2 setDateView:v28];

    [v28 removeAllGestureRecognizers];
    v21 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleCurrentTimeGesture_];
    [v28 addGestureRecognizer:v21];
    [v28 setUserInteractionEnabled:1];
    v22 = [MEMORY[0x1E696AEC0] hk_chartLollipopAccessibilityIdentifier:@"Date"];
    [v28 setAccessibilityIdentifier:v22];
  }

  else
  {
    [dateContentLayout2 setDateView:0];
  }

  dataSource7 = [(HKInteractiveChartAnnotationView *)self dataSource];
  v24 = [dataSource7 leftMarginViewWithOrientation:0];

  bodyMarginsLayout = [(HKInteractiveChartAnnotationView *)self bodyMarginsLayout];
  [bodyMarginsLayout setLeftMarginView:v24];

  dateContentLayout3 = [(HKInteractiveChartAnnotationView *)self dateContentLayout];
  bodyMarginsLayout2 = [(HKInteractiveChartAnnotationView *)self bodyMarginsLayout];
  [bodyMarginsLayout2 setBodyView:dateContentLayout3];

  [(HKInteractiveChartAnnotationView *)self _updateRightMarginViewWithInfoButton];
  [(HKInteractiveChartAnnotationView *)self _invalidateLayout];
}

- (void)_invalidateLayout
{
  [(HKInteractiveChartAnnotationView *)self invalidateIntrinsicContentSize];

  [(HKInteractiveChartAnnotationView *)self setNeedsLayout];
}

- (void)_removeViewsForRebuild
{
  columnLayout = [(HKInteractiveChartAnnotationView *)self columnLayout];
  [columnLayout clearViews];

  dateContentLayout = [(HKInteractiveChartAnnotationView *)self dateContentLayout];
  [dateContentLayout setContentView:0];

  dateContentLayout2 = [(HKInteractiveChartAnnotationView *)self dateContentLayout];
  [dateContentLayout2 setDateView:0];

  bodyMarginsLayout = [(HKInteractiveChartAnnotationView *)self bodyMarginsLayout];
  [bodyMarginsLayout setLeftMarginView:0];

  bodyMarginsLayout2 = [(HKInteractiveChartAnnotationView *)self bodyMarginsLayout];
  [bodyMarginsLayout2 setBodyView:0];

  bodyMarginsLayout3 = [(HKInteractiveChartAnnotationView *)self bodyMarginsLayout];
  [bodyMarginsLayout3 setRightMarginView:0];
}

- (void)scheduleDeferredDataReload
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E695DFF0];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __62__HKInteractiveChartAnnotationView_scheduleDeferredDataReload__block_invoke;
  v8 = &unk_1E81B5F30;
  objc_copyWeak(&v9, &location);
  v4 = [v3 scheduledTimerWithTimeInterval:0 repeats:&v5 block:0.35];
  [(HKInteractiveChartAnnotationView *)self setDeferredNoDataTimer:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __62__HKInteractiveChartAnnotationView_scheduleDeferredDataReload__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained deferredNoDataTimer];

    if (v6 == v3)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__HKInteractiveChartAnnotationView_scheduleDeferredDataReload__block_invoke_2;
      block[3] = &unk_1E81B55A8;
      block[4] = v5;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)_cancelDeferredDataReload
{
  deferredNoDataTimer = [(HKInteractiveChartAnnotationView *)self deferredNoDataTimer];

  if (deferredNoDataTimer)
  {
    deferredNoDataTimer2 = [(HKInteractiveChartAnnotationView *)self deferredNoDataTimer];
    [deferredNoDataTimer2 invalidate];

    [(HKInteractiveChartAnnotationView *)self setDeferredNoDataTimer:0];
  }
}

- (BOOL)_dataSourceHasNoData
{
  selfCopy = self;
  dataSource = [(HKInteractiveChartAnnotationView *)self dataSource];
  LOBYTE(selfCopy) = [dataSource numberOfValuesForAnnotationView:selfCopy] == 0;

  return selfCopy;
}

- (void)showNoDataStatus
{
  v27[2] = *MEMORY[0x1E69E9840];
  dataSource = [(HKInteractiveChartAnnotationView *)self dataSource];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || (-[HKInteractiveChartAnnotationView dataSource](self, "dataSource"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 pendingData], v5, (v6 & 1) == 0))
  {
    [(HKInteractiveChartAnnotationView *)self _removeViewsForRebuild];
    v7 = objc_alloc(MEMORY[0x1E69DCC10]);
    v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v26[0] = *MEMORY[0x1E69DB648];
    hk_chartCurrentValueValueFont = [MEMORY[0x1E69DB878] hk_chartCurrentValueValueFont];
    v27[0] = hk_chartCurrentValueValueFont;
    v26[1] = *MEMORY[0x1E69DB650];
    hk_chartLollipopValueColor = [MEMORY[0x1E69DC888] hk_chartLollipopValueColor];
    v27[1] = hk_chartLollipopValueColor;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

    v12 = objc_alloc(MEMORY[0x1E696AAB0]);
    v13 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v14 = [v13 localizedStringForKey:@"CHART_NO_DATA" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v15 = [v12 initWithString:v14 attributes:v11];

    [v8 setAttributedText:v15];
    [v8 setAdjustsFontSizeToFitWidth:1];
    [v8 setMinimumScaleFactor:0.1];
    columnLayout = [(HKInteractiveChartAnnotationView *)self columnLayout];
    [columnLayout addColumnView:v8];

    columnLayout2 = [(HKInteractiveChartAnnotationView *)self columnLayout];
    dateContentLayout = [(HKInteractiveChartAnnotationView *)self dateContentLayout];
    [dateContentLayout setContentView:columnLayout2];

    dataSource2 = [(HKInteractiveChartAnnotationView *)self dataSource];
    v20 = [dataSource2 dateViewWithOrientation:1];

    if (v20)
    {
      dateContentLayout2 = [(HKInteractiveChartAnnotationView *)self dateContentLayout];
      [dateContentLayout2 setDateView:v20];

      [v20 removeAllGestureRecognizers];
      v22 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_handleCurrentTimeGesture_];
      [v20 addGestureRecognizer:v22];
      [v20 setUserInteractionEnabled:1];
      v23 = [MEMORY[0x1E696AEC0] hk_chartLollipopAccessibilityIdentifier:@"Date"];
      [v20 setAccessibilityIdentifier:v23];
    }

    dateContentLayout3 = [(HKInteractiveChartAnnotationView *)self dateContentLayout];
    bodyMarginsLayout = [(HKInteractiveChartAnnotationView *)self bodyMarginsLayout];
    [bodyMarginsLayout setBodyView:dateContentLayout3];

    [(HKInteractiveChartAnnotationView *)self _updateRightMarginViewWithInfoButton];
    [(HKInteractiveChartAnnotationView *)self _invalidateLayout];
  }
}

- (void)infoButtonPressed:(id)pressed
{
  delegate = [(HKInteractiveChartAnnotationView *)self delegate];
  [delegate didTapOnInfoButtonFromCurrentValueView:self];
}

- (void)handleCurrentTimeGesture:(id)gesture
{
  delegate = [(HKInteractiveChartAnnotationView *)self delegate];
  [delegate didTapOnDateFromCurrentValueView:self];
}

- (HKInteractiveChartAnnotationViewDataSourceProtocol)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HKInteractiveChartAnnotationViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSTimer)deferredNoDataTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_deferredNoDataTimer);

  return WeakRetained;
}

@end