@interface HUWheelControlView
- (BOOL)isDisabled;
- (HUControlViewDelegate)delegate;
- (HUWheelControlView)initWithFrame:(CGRect)frame;
- (HUWheelControlViewDelegate)wheelDelegate;
- (id)_formatValue:(id)value;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (id)value;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)_generateWheelValues;
- (void)_setupConstraints;
- (void)_updateUIToReachable;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)setCustomValues:(id)values;
- (void)setDisabled:(BOOL)disabled;
- (void)setValue:(id)value;
- (void)setValueFormatter:(id)formatter;
- (void)setValues:(id)values;
@end

@implementation HUWheelControlView

- (HUWheelControlView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v14.receiver = self;
  v14.super_class = HUWheelControlView;
  v7 = [(HUWheelControlView *)&v14 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D75840]) initWithFrame:{x, y, width, height}];
    [(HUWheelControlView *)v7 setPickerView:v8];

    pickerView = [(HUWheelControlView *)v7 pickerView];
    [pickerView setTranslatesAutoresizingMaskIntoConstraints:0];

    pickerView2 = [(HUWheelControlView *)v7 pickerView];
    [pickerView2 setDelegate:v7];

    pickerView3 = [(HUWheelControlView *)v7 pickerView];
    [pickerView3 setDataSource:v7];

    [(HUWheelControlView *)v7 addSubview:v7->_pickerView];
    [(HUWheelControlView *)v7 setLayoutMargins:4.0, 4.0, 4.0, 4.0];
    [(HUWheelControlView *)v7 _setupConstraints];
    pickerView4 = [(HUWheelControlView *)v7 pickerView];
    [pickerView4 setUserInteractionEnabled:0];
  }

  return v7;
}

- (void)setValueFormatter:(id)formatter
{
  formatterCopy = formatter;
  if (([(NSFormatter *)self->_valueFormatter isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_valueFormatter, formatter);
    pickerView = [(HUWheelControlView *)self pickerView];
    [pickerView reloadComponent:0];
  }
}

- (void)setValues:(id)values
{
  valuesCopy = values;
  if (![(NSArray *)self->_values isEqualToArray:?])
  {
    objc_storeStrong(&self->_values, values);
    [(HUWheelControlView *)self _generateWheelValues];
  }
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v4 = [(HUWheelControlView *)self wheelValues:view];
  v5 = [v4 count];

  return v5;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v7 = [(HUWheelControlView *)self wheelValues:view];
  v8 = [v7 objectAtIndex:row];

  v9 = [(HUWheelControlView *)self _formatValue:v8];

  return v9;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  v6 = [(HUWheelControlView *)self delegate:view];
  [v6 controlViewDidBeginUserInteraction:self];

  delegate = [(HUWheelControlView *)self delegate];
  value = [(HUWheelControlView *)self value];
  [delegate controlView:self valueDidChange:value];

  wheelDelegate = [(HUWheelControlView *)self wheelDelegate];
  value2 = [(HUWheelControlView *)self value];
  [wheelDelegate wheelControlView:self didUpdateValue:value2];

  delegate2 = [(HUWheelControlView *)self delegate];
  [delegate2 controlViewDidEndUserInteraction:self];
}

- (void)setCustomValues:(id)values
{
  objc_storeStrong(&self->_customValues, values);

  [(HUWheelControlView *)self _generateWheelValues];
}

- (id)value
{
  pickerView = [(HUWheelControlView *)self pickerView];
  v4 = [pickerView selectedRowInComponent:0];

  wheelValues = [(HUWheelControlView *)self wheelValues];
  v6 = [wheelValues objectAtIndex:v4];

  return v6;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  wheelValues = [(HUWheelControlView *)self wheelValues];
  v6 = [wheelValues indexOfObject:valueCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  pickerView = [(HUWheelControlView *)self pickerView];
  [pickerView selectRow:v7 inComponent:0 animated:1];

  wheelDelegate = [(HUWheelControlView *)self wheelDelegate];
  [wheelDelegate wheelControlView:self didUpdateValue:valueCopy];

  [(HUWheelControlView *)self _updateUIToReachable];
}

- (BOOL)isDisabled
{
  pickerView = [(HUWheelControlView *)self pickerView];
  isUserInteractionEnabled = [pickerView isUserInteractionEnabled];

  return isUserInteractionEnabled ^ 1;
}

- (void)setDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  pickerView = [(HUWheelControlView *)self pickerView];
  [pickerView setUserInteractionEnabled:!disabledCopy];

  if (disabledCopy)
  {
    v6 = 0.25;
  }

  else
  {
    v6 = 1.0;
  }

  pickerView2 = [(HUWheelControlView *)self pickerView];
  [pickerView2 setAlpha:v6];
}

- (void)_generateWheelValues
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  values = [(HUWheelControlView *)self values];
  v5 = [v3 setWithArray:values];

  customValues = [(HUWheelControlView *)self customValues];
  v7 = [customValues count];

  if (v7)
  {
    customValues2 = [(HUWheelControlView *)self customValues];
    [v5 unionSet:customValues2];
  }

  v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"doubleValue" ascending:1];
  v13[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v5 sortedArrayUsingDescriptors:v10];
  [(HUWheelControlView *)self setWheelValues:v11];

  pickerView = [(HUWheelControlView *)self pickerView];
  [pickerView reloadComponent:0];
}

- (void)_setupConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  pickerView = [(HUWheelControlView *)self pickerView];
  leadingAnchor = [pickerView leadingAnchor];
  layoutMarginsGuide = [(HUWheelControlView *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v7];

  pickerView2 = [(HUWheelControlView *)self pickerView];
  trailingAnchor = [pickerView2 trailingAnchor];
  layoutMarginsGuide2 = [(HUWheelControlView *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v12];

  pickerView3 = [(HUWheelControlView *)self pickerView];
  topAnchor = [pickerView3 topAnchor];
  layoutMarginsGuide3 = [(HUWheelControlView *)self layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v17];

  layoutMarginsGuide4 = [(HUWheelControlView *)self layoutMarginsGuide];
  heightAnchor = [layoutMarginsGuide4 heightAnchor];
  pickerView4 = [(HUWheelControlView *)self pickerView];
  heightAnchor2 = [pickerView4 heightAnchor];
  v22 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];
  [array addObject:v22];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
}

- (id)_formatValue:(id)value
{
  valueCopy = value;
  valueFormatter = [(HUWheelControlView *)self valueFormatter];
  v6 = [valueFormatter stringForObjectValue:valueCopy];

  return v6;
}

- (void)_updateUIToReachable
{
  pickerView = [(HUWheelControlView *)self pickerView];
  [pickerView setUserInteractionEnabled:1];
}

- (HUControlViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HUWheelControlViewDelegate)wheelDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_wheelDelegate);

  return WeakRetained;
}

@end