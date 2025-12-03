@interface HUSignificantEventOffsetPickerCell
+ (id)_defaultOffsetDateComponentOptions;
- (HUSignificantEventOffsetPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (HUSignificantEventOffsetPickerDelegate)delegate;
- (NSDateComponents)selectedOffset;
- (id)_titleForOffsetComponents:(id)components;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)_updateOffsetDateComponentOptions;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)setCurrentOffset:(id)offset;
- (void)setSignificantEvent:(id)event;
@end

@implementation HUSignificantEventOffsetPickerCell

- (HUSignificantEventOffsetPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v34.receiver = self;
  v34.super_class = HUSignificantEventOffsetPickerCell;
  v4 = [(HUSignificantEventOffsetPickerCell *)&v34 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_significantEvent, *MEMORY[0x277CD0FA8]);
    v6 = objc_opt_new();
    currentOffset = v5->_currentOffset;
    v5->_currentOffset = v6;

    objc_storeStrong(&v5->_selectedOffset, v5->_currentOffset);
    v8 = objc_alloc(MEMORY[0x277D75840]);
    v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    pickerView = v5->_pickerView;
    v5->_pickerView = v9;

    pickerView = [(HUSignificantEventOffsetPickerCell *)v5 pickerView];
    [pickerView setDataSource:v5];

    pickerView2 = [(HUSignificantEventOffsetPickerCell *)v5 pickerView];
    [pickerView2 setDelegate:v5];

    pickerView3 = [(HUSignificantEventOffsetPickerCell *)v5 pickerView];
    [pickerView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    [(HUSignificantEventOffsetPickerCell *)v5 _updateOffsetDateComponentOptions];
    contentView = [(HUSignificantEventOffsetPickerCell *)v5 contentView];
    pickerView4 = [(HUSignificantEventOffsetPickerCell *)v5 pickerView];
    [contentView addSubview:pickerView4];

    array = [MEMORY[0x277CBEB18] array];
    pickerView5 = [(HUSignificantEventOffsetPickerCell *)v5 pickerView];
    topAnchor = [pickerView5 topAnchor];
    contentView2 = [(HUSignificantEventOffsetPickerCell *)v5 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v21];

    pickerView6 = [(HUSignificantEventOffsetPickerCell *)v5 pickerView];
    bottomAnchor = [pickerView6 bottomAnchor];
    contentView3 = [(HUSignificantEventOffsetPickerCell *)v5 contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v26];

    pickerView7 = [(HUSignificantEventOffsetPickerCell *)v5 pickerView];
    centerXAnchor = [pickerView7 centerXAnchor];
    contentView4 = [(HUSignificantEventOffsetPickerCell *)v5 contentView];
    layoutMarginsGuide = [contentView4 layoutMarginsGuide];
    centerXAnchor2 = [layoutMarginsGuide centerXAnchor];
    v32 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v32];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v5;
}

- (NSDateComponents)selectedOffset
{
  pickerView = [(HUSignificantEventOffsetPickerCell *)self pickerView];
  v4 = [pickerView selectedRowInComponent:0];

  if (v4 == -1)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  }

  else
  {
    offsetDateComponentOptions = [(HUSignificantEventOffsetPickerCell *)self offsetDateComponentOptions];
    v6 = [offsetDateComponentOptions objectAtIndexedSubscript:v4];
  }

  return v6;
}

- (void)setCurrentOffset:(id)offset
{
  offsetCopy = offset;
  currentOffset = self->_currentOffset;
  v9 = offsetCopy;
  v7 = currentOffset;
  if (v7 == v9)
  {

    goto LABEL_8;
  }

  if (!v9)
  {

    goto LABEL_7;
  }

  v8 = [(NSDateComponents *)v9 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_currentOffset, offset);
    [(HUSignificantEventOffsetPickerCell *)self _updateOffsetDateComponentOptions];
  }

LABEL_8:
}

- (void)setSignificantEvent:(id)event
{
  eventCopy = event;
  significantEvent = self->_significantEvent;
  v10 = eventCopy;
  v7 = significantEvent;
  if (v7 == v10)
  {

    pickerView = v10;
LABEL_8:

    goto LABEL_9;
  }

  if (!v10)
  {

    goto LABEL_7;
  }

  v8 = [(NSString *)v10 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_significantEvent, event);
    pickerView = [(HUSignificantEventOffsetPickerCell *)self pickerView];
    [pickerView reloadAllComponents];
    goto LABEL_8;
  }

LABEL_9:
}

+ (id)_defaultOffsetDateComponentOptions
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__HUSignificantEventOffsetPickerCell__defaultOffsetDateComponentOptions__block_invoke_2;
  v4[3] = &unk_277DBFBF8;
  v5 = &__block_literal_global_159;
  v2 = __72__HUSignificantEventOffsetPickerCell__defaultOffsetDateComponentOptions__block_invoke_2(v4);

  return v2;
}

id __72__HUSignificantEventOffsetPickerCell__defaultOffsetDateComponentOptions__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v5 setHour:a2];
  [v5 setMinute:a3];

  return v5;
}

uint64_t __72__HUSignificantEventOffsetPickerCell__defaultOffsetDateComponentOptions__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__HUSignificantEventOffsetPickerCell__defaultOffsetDateComponentOptions__block_invoke_3;
  block[3] = &unk_277DB84B0;
  v5 = *(a1 + 32);
  if (_MergedGlobals_1_3 != -1)
  {
    dispatch_once(&_MergedGlobals_1_3, block);
  }

  v1 = qword_281120D98;
  v2 = qword_281120D98;

  return v1;
}

void __72__HUSignificantEventOffsetPickerCell__defaultOffsetDateComponentOptions__block_invoke_3(uint64_t a1)
{
  v19[15] = *MEMORY[0x277D85DE8];
  v18 = (*(*(a1 + 32) + 16))();
  v19[0] = v18;
  v17 = (*(*(a1 + 32) + 16))();
  v19[1] = v17;
  v16 = (*(*(a1 + 32) + 16))();
  v19[2] = v16;
  v15 = (*(*(a1 + 32) + 16))();
  v19[3] = v15;
  v14 = (*(*(a1 + 32) + 16))();
  v19[4] = v14;
  v2 = (*(*(a1 + 32) + 16))();
  v19[5] = v2;
  v3 = (*(*(a1 + 32) + 16))();
  v19[6] = v3;
  v4 = (*(*(a1 + 32) + 16))();
  v19[7] = v4;
  v5 = (*(*(a1 + 32) + 16))();
  v19[8] = v5;
  v6 = (*(*(a1 + 32) + 16))();
  v19[9] = v6;
  v7 = (*(*(a1 + 32) + 16))();
  v19[10] = v7;
  v8 = (*(*(a1 + 32) + 16))();
  v19[11] = v8;
  v9 = (*(*(a1 + 32) + 16))();
  v19[12] = v9;
  v10 = (*(*(a1 + 32) + 16))();
  v19[13] = v10;
  v11 = (*(*(a1 + 32) + 16))();
  v19[14] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:15];
  v13 = qword_281120D98;
  qword_281120D98 = v12;
}

- (void)_updateOffsetDateComponentOptions
{
  _defaultOffsetDateComponentOptions = [objc_opt_class() _defaultOffsetDateComponentOptions];
  v5 = [_defaultOffsetDateComponentOptions mutableCopy];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0x7FFFFFFFFFFFFFFFLL;
  currentOffset = [(HUSignificantEventOffsetPickerCell *)self currentOffset];

  if (!currentOffset)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUSignificantEventOffsetPickerCell.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"self.currentOffset != nil"}];
  }

  currentOffset2 = [(HUSignificantEventOffsetPickerCell *)self currentOffset];
  v10 = [currentCalendar dateByAddingComponents:currentOffset2 toDate:v7 options:0];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __71__HUSignificantEventOffsetPickerCell__updateOffsetDateComponentOptions__block_invoke;
  v20[3] = &unk_277DBFC20;
  v11 = currentCalendar;
  v21 = v11;
  v12 = v7;
  v22 = v12;
  v13 = v10;
  v23 = v13;
  v26 = &v28;
  v27 = &v32;
  v14 = v5;
  v24 = v14;
  v15 = currentOffset2;
  v25 = v15;
  [_defaultOffsetDateComponentOptions enumerateObjectsUsingBlock:v20];
  if ((v29[3] & 1) == 0)
  {
    [v14 addObject:v15];
    v16 = [v14 count] - 1;
    v33[3] = v16;
  }

  [(HUSignificantEventOffsetPickerCell *)self setOffsetDateComponentOptions:v14];
  pickerView = [(HUSignificantEventOffsetPickerCell *)self pickerView];
  [pickerView reloadAllComponents];

  pickerView2 = [(HUSignificantEventOffsetPickerCell *)self pickerView];
  [pickerView2 selectRow:v33[3] inComponent:0 animated:0];

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
}

void __71__HUSignificantEventOffsetPickerCell__updateOffsetDateComponentOptions__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = [*(a1 + 32) dateByAddingComponents:a2 toDate:*(a1 + 40) options:0];
  v7 = [*(a1 + 48) compare:?];
  if (v7 == -1)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
    [*(a1 + 56) insertObject:*(a1 + 64) atIndex:a3];
  }

  else
  {
    if (v7)
    {
      goto LABEL_6;
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  *(*(*(a1 + 80) + 8) + 24) = a3;
  *a4 = 1;
LABEL_6:
}

- (id)_titleForOffsetComponents:(id)components
{
  v4 = MEMORY[0x277CD1EC0];
  componentsCopy = components;
  significantEvent = [(HUSignificantEventOffsetPickerCell *)self significantEvent];
  v7 = [v4 hf_localizedStringForSignficantEvent:significantEvent offset:componentsCopy];

  return v7;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v4 = [(HUSignificantEventOffsetPickerCell *)self offsetDateComponentOptions:view];
  v5 = [v4 count];

  return v5;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v7 = [(HUSignificantEventOffsetPickerCell *)self offsetDateComponentOptions:view];
  v8 = [v7 objectAtIndexedSubscript:row];
  v9 = [(HUSignificantEventOffsetPickerCell *)self _titleForOffsetComponents:v8];

  return v9;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  v6 = [(HUSignificantEventOffsetPickerCell *)self delegate:view];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate = [(HUSignificantEventOffsetPickerCell *)self delegate];
    selectedOffset = [(HUSignificantEventOffsetPickerCell *)self selectedOffset];
    [delegate significantEventOffsetPicker:self didSelectOffset:selectedOffset];
  }
}

- (HUSignificantEventOffsetPickerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end