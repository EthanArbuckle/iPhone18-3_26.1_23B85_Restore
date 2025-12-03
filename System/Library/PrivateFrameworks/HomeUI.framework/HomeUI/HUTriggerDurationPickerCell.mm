@interface HUTriggerDurationPickerCell
+ (id)_defaultDurationOptions;
- (HUTriggerDurationPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUTriggerDurationPickerDelegate)delegate;
- (NSNumber)currentDuration;
- (id)pickerDurationValue;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)_updateDurationOptions;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)setCurrentDuration:(id)duration;
@end

@implementation HUTriggerDurationPickerCell

- (HUTriggerDurationPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v33.receiver = self;
  v33.super_class = HUTriggerDurationPickerCell;
  v4 = [(HUTriggerDurationPickerCell *)&v33 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[HUTriggerDurationPickerValue valueWithNoDuration];
    currentDurationValue = v4->_currentDurationValue;
    v4->_currentDurationValue = v5;

    v7 = objc_alloc(MEMORY[0x277D75840]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    pickerView = v4->_pickerView;
    v4->_pickerView = v8;

    pickerView = [(HUTriggerDurationPickerCell *)v4 pickerView];
    [pickerView setDataSource:v4];

    pickerView2 = [(HUTriggerDurationPickerCell *)v4 pickerView];
    [pickerView2 setDelegate:v4];

    pickerView3 = [(HUTriggerDurationPickerCell *)v4 pickerView];
    [pickerView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(HUTriggerDurationPickerCell *)v4 _updateDurationOptions];
    contentView = [(HUTriggerDurationPickerCell *)v4 contentView];
    pickerView4 = [(HUTriggerDurationPickerCell *)v4 pickerView];
    [contentView addSubview:pickerView4];

    array = [MEMORY[0x277CBEB18] array];
    pickerView5 = [(HUTriggerDurationPickerCell *)v4 pickerView];
    topAnchor = [pickerView5 topAnchor];
    contentView2 = [(HUTriggerDurationPickerCell *)v4 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v20];

    pickerView6 = [(HUTriggerDurationPickerCell *)v4 pickerView];
    bottomAnchor = [pickerView6 bottomAnchor];
    contentView3 = [(HUTriggerDurationPickerCell *)v4 contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v25];

    pickerView7 = [(HUTriggerDurationPickerCell *)v4 pickerView];
    centerXAnchor = [pickerView7 centerXAnchor];
    contentView4 = [(HUTriggerDurationPickerCell *)v4 contentView];
    layoutMarginsGuide = [contentView4 layoutMarginsGuide];
    centerXAnchor2 = [layoutMarginsGuide centerXAnchor];
    v31 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v31];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v4;
}

- (id)pickerDurationValue
{
  pickerView = [(HUTriggerDurationPickerCell *)self pickerView];
  v4 = [pickerView selectedRowInComponent:0];

  if (v4 == -1)
  {
    v6 = +[HUTriggerDurationPickerValue valueWithNoDuration];
  }

  else
  {
    durationOptions = [(HUTriggerDurationPickerCell *)self durationOptions];
    v6 = [durationOptions objectAtIndexedSubscript:v4];
  }

  return v6;
}

- (NSNumber)currentDuration
{
  currentDurationValue = [(HUTriggerDurationPickerCell *)self currentDurationValue];
  duration = [currentDurationValue duration];

  return duration;
}

- (void)setCurrentDuration:(id)duration
{
  durationCopy = duration;
  currentDurationValue = [(HUTriggerDurationPickerCell *)self currentDurationValue];
  duration = [currentDurationValue duration];
  v10 = durationCopy;
  v7 = duration;
  if (v7 == v10)
  {

    goto LABEL_8;
  }

  if (!v10)
  {

    goto LABEL_7;
  }

  v8 = [v10 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    v9 = [[HUTriggerDurationPickerValue alloc] initWithDuration:v10];
    [(HUTriggerDurationPickerCell *)self setCurrentDurationValue:v9];

    [(HUTriggerDurationPickerCell *)self _updateDurationOptions];
  }

LABEL_8:
}

+ (id)_defaultDurationOptions
{
  if (_MergedGlobals_1_6 != -1)
  {
    dispatch_once(&_MergedGlobals_1_6, &__block_literal_global_230);
  }

  v3 = qword_281120DC8;

  return v3;
}

void __54__HUTriggerDurationPickerCell__defaultDurationOptions__block_invoke()
{
  v6 = [MEMORY[0x277CBEB18] array];
  v0 = +[HUTriggerDurationPickerValue valueWithNoDuration];
  [v6 addObject:v0];

  for (i = 1; i < 0xF1; i += v3)
  {
    v2 = [HUTriggerDurationPickerValue valueWithDuration:i * 60.0];
    [v6 addObject:v2];

    if (i < 5)
    {
      v3 = 1;
    }

    else
    {
      v3 = 5;
    }

    if (i >= 0x3C)
    {
      v3 = 60;
    }
  }

  v4 = [v6 copy];
  v5 = qword_281120DC8;
  qword_281120DC8 = v4;
}

- (void)_updateDurationOptions
{
  _defaultDurationOptions = [objc_opt_class() _defaultDurationOptions];
  v4 = [_defaultDurationOptions mutableCopy];
  currentDurationValue = [(HUTriggerDurationPickerCell *)self currentDurationValue];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0x7FFFFFFFFFFFFFFFLL;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __53__HUTriggerDurationPickerCell__updateDurationOptions__block_invoke;
  v14 = &unk_277DC2390;
  v6 = currentDurationValue;
  v15 = v6;
  v17 = &v19;
  v18 = &v23;
  v7 = v4;
  v16 = v7;
  [_defaultDurationOptions enumerateObjectsUsingBlock:&v11];
  if ((v20[3] & 1) == 0)
  {
    [v7 addObject:{v6, v11, v12, v13, v14, v15}];
    v8 = [v7 count] - 1;
    v24[3] = v8;
  }

  [(HUTriggerDurationPickerCell *)self setDurationOptions:v7, v11, v12, v13, v14];
  pickerView = [(HUTriggerDurationPickerCell *)self pickerView];
  [pickerView reloadAllComponents];

  pickerView2 = [(HUTriggerDurationPickerCell *)self pickerView];
  [pickerView2 selectRow:v24[3] inComponent:0 animated:0];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

void __53__HUTriggerDurationPickerCell__updateDurationOptions__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 duration];
  v9 = [*(a1 + 32) duration];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __53__HUTriggerDurationPickerCell__updateDurationOptions__block_invoke_2;
  v15 = &unk_277DB78F8;
  v16 = *(a1 + 32);
  v10 = v7;
  v17 = v10;
  if (v8)
  {
    v11 = -1;
  }

  else
  {
    v11 = v9 != 0;
  }

  if (v8 && v9)
  {
    v11 = __53__HUTriggerDurationPickerCell__updateDurationOptions__block_invoke_2(&v12);
  }

  if (v11 == -1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 40) insertObject:*(a1 + 32) atIndex:{a3, v12, v13, v14, v15, v16, v17}];
    goto LABEL_11;
  }

  if (!v11)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
LABEL_11:
    *(*(*(a1 + 56) + 8) + 24) = a3;
    *a4 = 1;
  }
}

uint64_t __53__HUTriggerDurationPickerCell__updateDurationOptions__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) duration];
  v3 = [*(a1 + 40) duration];
  v4 = [v2 compare:v3];

  return v4;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v4 = [(HUTriggerDurationPickerCell *)self durationOptions:view];
  v5 = [v4 count];

  return v5;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v6 = MEMORY[0x277CD19F8];
  v7 = [(HUTriggerDurationPickerCell *)self durationOptions:view];
  v8 = [v7 objectAtIndexedSubscript:row];
  duration = [v8 duration];
  v10 = [v6 hf_naturalLanguageTurnOffAfterDuration:duration style:0];

  return v10;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  v6 = [(HUTriggerDurationPickerCell *)self pickerDurationValue:view];
  [(HUTriggerDurationPickerCell *)self setCurrentDurationValue:v6];

  delegate = [(HUTriggerDurationPickerCell *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(HUTriggerDurationPickerCell *)self delegate];
    currentDuration = [(HUTriggerDurationPickerCell *)self currentDuration];
    [delegate2 durationPicker:self didSelectDuration:currentDuration];
  }
}

- (HUTriggerDurationPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end