@interface HUWheelControlView
- (BOOL)isDisabled;
- (HUControlViewDelegate)delegate;
- (HUWheelControlView)initWithFrame:(CGRect)a3;
- (HUWheelControlViewDelegate)wheelDelegate;
- (id)_formatValue:(id)a3;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (id)value;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)_generateWheelValues;
- (void)_setupConstraints;
- (void)_updateUIToReachable;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)setCustomValues:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setValue:(id)a3;
- (void)setValueFormatter:(id)a3;
- (void)setValues:(id)a3;
@end

@implementation HUWheelControlView

- (HUWheelControlView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14.receiver = self;
  v14.super_class = HUWheelControlView;
  v7 = [(HUWheelControlView *)&v14 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D75840]) initWithFrame:{x, y, width, height}];
    [(HUWheelControlView *)v7 setPickerView:v8];

    v9 = [(HUWheelControlView *)v7 pickerView];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(HUWheelControlView *)v7 pickerView];
    [v10 setDelegate:v7];

    v11 = [(HUWheelControlView *)v7 pickerView];
    [v11 setDataSource:v7];

    [(HUWheelControlView *)v7 addSubview:v7->_pickerView];
    [(HUWheelControlView *)v7 setLayoutMargins:4.0, 4.0, 4.0, 4.0];
    [(HUWheelControlView *)v7 _setupConstraints];
    v12 = [(HUWheelControlView *)v7 pickerView];
    [v12 setUserInteractionEnabled:0];
  }

  return v7;
}

- (void)setValueFormatter:(id)a3
{
  v6 = a3;
  if (([(NSFormatter *)self->_valueFormatter isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_valueFormatter, a3);
    v5 = [(HUWheelControlView *)self pickerView];
    [v5 reloadComponent:0];
  }
}

- (void)setValues:(id)a3
{
  v5 = a3;
  if (![(NSArray *)self->_values isEqualToArray:?])
  {
    objc_storeStrong(&self->_values, a3);
    [(HUWheelControlView *)self _generateWheelValues];
  }
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v4 = [(HUWheelControlView *)self wheelValues:a3];
  v5 = [v4 count];

  return v5;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = [(HUWheelControlView *)self wheelValues:a3];
  v8 = [v7 objectAtIndex:a4];

  v9 = [(HUWheelControlView *)self _formatValue:v8];

  return v9;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  v6 = [(HUWheelControlView *)self delegate:a3];
  [v6 controlViewDidBeginUserInteraction:self];

  v7 = [(HUWheelControlView *)self delegate];
  v8 = [(HUWheelControlView *)self value];
  [v7 controlView:self valueDidChange:v8];

  v9 = [(HUWheelControlView *)self wheelDelegate];
  v10 = [(HUWheelControlView *)self value];
  [v9 wheelControlView:self didUpdateValue:v10];

  v11 = [(HUWheelControlView *)self delegate];
  [v11 controlViewDidEndUserInteraction:self];
}

- (void)setCustomValues:(id)a3
{
  objc_storeStrong(&self->_customValues, a3);

  [(HUWheelControlView *)self _generateWheelValues];
}

- (id)value
{
  v3 = [(HUWheelControlView *)self pickerView];
  v4 = [v3 selectedRowInComponent:0];

  v5 = [(HUWheelControlView *)self wheelValues];
  v6 = [v5 objectAtIndex:v4];

  return v6;
}

- (void)setValue:(id)a3
{
  v4 = a3;
  v5 = [(HUWheelControlView *)self wheelValues];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = [(HUWheelControlView *)self pickerView];
  [v8 selectRow:v7 inComponent:0 animated:1];

  v9 = [(HUWheelControlView *)self wheelDelegate];
  [v9 wheelControlView:self didUpdateValue:v4];

  [(HUWheelControlView *)self _updateUIToReachable];
}

- (BOOL)isDisabled
{
  v2 = [(HUWheelControlView *)self pickerView];
  v3 = [v2 isUserInteractionEnabled];

  return v3 ^ 1;
}

- (void)setDisabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUWheelControlView *)self pickerView];
  [v5 setUserInteractionEnabled:!v3];

  if (v3)
  {
    v6 = 0.25;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = [(HUWheelControlView *)self pickerView];
  [v7 setAlpha:v6];
}

- (void)_generateWheelValues
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  v4 = [(HUWheelControlView *)self values];
  v5 = [v3 setWithArray:v4];

  v6 = [(HUWheelControlView *)self customValues];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(HUWheelControlView *)self customValues];
    [v5 unionSet:v8];
  }

  v9 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"doubleValue" ascending:1];
  v13[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v5 sortedArrayUsingDescriptors:v10];
  [(HUWheelControlView *)self setWheelValues:v11];

  v12 = [(HUWheelControlView *)self pickerView];
  [v12 reloadComponent:0];
}

- (void)_setupConstraints
{
  v23 = [MEMORY[0x277CBEB18] array];
  v3 = [(HUWheelControlView *)self pickerView];
  v4 = [v3 leadingAnchor];
  v5 = [(HUWheelControlView *)self layoutMarginsGuide];
  v6 = [v5 leadingAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  [v23 addObject:v7];

  v8 = [(HUWheelControlView *)self pickerView];
  v9 = [v8 trailingAnchor];
  v10 = [(HUWheelControlView *)self layoutMarginsGuide];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [v23 addObject:v12];

  v13 = [(HUWheelControlView *)self pickerView];
  v14 = [v13 topAnchor];
  v15 = [(HUWheelControlView *)self layoutMarginsGuide];
  v16 = [v15 topAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  [v23 addObject:v17];

  v18 = [(HUWheelControlView *)self layoutMarginsGuide];
  v19 = [v18 heightAnchor];
  v20 = [(HUWheelControlView *)self pickerView];
  v21 = [v20 heightAnchor];
  v22 = [v19 constraintGreaterThanOrEqualToAnchor:v21];
  [v23 addObject:v22];

  [MEMORY[0x277CCAAD0] activateConstraints:v23];
}

- (id)_formatValue:(id)a3
{
  v4 = a3;
  v5 = [(HUWheelControlView *)self valueFormatter];
  v6 = [v5 stringForObjectValue:v4];

  return v6;
}

- (void)_updateUIToReachable
{
  v2 = [(HUWheelControlView *)self pickerView];
  [v2 setUserInteractionEnabled:1];
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