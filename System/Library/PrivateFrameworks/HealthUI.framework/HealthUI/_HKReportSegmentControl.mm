@interface _HKReportSegmentControl
- (CGSize)intrinsicContentSize;
- (_HKReportSegmentControl)initWithBackgroundColor:(id)color dividerColor:(id)dividerColor rightControl:(id)control;
- (void)layoutSubviews;
@end

@implementation _HKReportSegmentControl

- (_HKReportSegmentControl)initWithBackgroundColor:(id)color dividerColor:(id)dividerColor rightControl:(id)control
{
  v24[2] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  dividerColorCopy = dividerColor;
  controlCopy = control;
  v23.receiver = self;
  v23.super_class = _HKReportSegmentControl;
  v11 = [(_HKReportSegmentControl *)&v23 init];
  if (v11)
  {
    v22 = controlCopy;
    v12 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v13 = [v12 localizedStringForKey:@"REPORT_FORMATTED" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v24[0] = v13;
    v14 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v15 = [v14 localizedStringForKey:@"REPORT_RAW" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v24[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];

    v17 = [objc_alloc(MEMORY[0x1E69DCF38]) initWithItems:v16];
    segmentControl = v11->_segmentControl;
    v11->_segmentControl = v17;

    [(_HKReportSegmentControl *)v11 addSubview:v11->_segmentControl];
    [(UISegmentedControl *)v11->_segmentControl setSelectedSegmentIndex:0];
    v19 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 1.0, 0.5}];
    dividerView = v11->_dividerView;
    v11->_dividerView = v19;

    [(UIView *)v11->_dividerView setBackgroundColor:dividerColorCopy];
    [(_HKReportSegmentControl *)v11 addSubview:v11->_dividerView];
    objc_storeStrong(&v11->_rightControl, control);
    if (v11->_rightControl)
    {
      [(_HKReportSegmentControl *)v11 addSubview:?];
    }

    [(_HKReportSegmentControl *)v11 setBackgroundColor:colorCopy];

    controlCopy = v22;
  }

  return v11;
}

- (CGSize)intrinsicContentSize
{
  [(UISegmentedControl *)self->_segmentControl frame];
  v3 = v2;
  v5 = v4 + 12.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  [(_HKReportSegmentControl *)self frame];
  v4 = v3;
  v6 = v5;
  layoutMarginsGuide = [(_HKReportSegmentControl *)self layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  v9 = v8;
  v11 = v10;

  [(UISegmentedControl *)self->_segmentControl frame];
  v13 = v12;
  [(UIView *)self->_dividerView frame];
  v15 = v14;
  [(UISegmentedControl *)self->_segmentControl setFrame:v4 * 0.5 - (v11 + v11) / 3.0 * 0.5, v6 * 0.5 - v13 * 0.5, (v11 + v11) / 3.0, v13];
  [(UISegmentedControl *)self->_segmentControl setWidth:0 forSegmentAtIndex:v11 / 3.0];
  [(UISegmentedControl *)self->_segmentControl setWidth:1 forSegmentAtIndex:v11 / 3.0];
  v16 = v6 - v15;
  [(UIView *)self->_dividerView setFrame:0.0, v16, v4, v15];
  rightControl = self->_rightControl;
  if (rightControl)
  {
    [(HKBarButtonItemControl *)rightControl intrinsicContentSize];
    v19 = v18 + -10.0;
    v20 = self->_rightControl;
    v21 = v9 + v11 - v18 + -16.0;

    [(HKBarButtonItemControl *)v20 setFrame:v21, 0.0, v19, v16];
  }
}

@end