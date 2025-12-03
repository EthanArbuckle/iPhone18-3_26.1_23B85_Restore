@interface HUPickerViewCell
- (BOOL)_canSelectValueAtIndex:(int64_t)index;
- (HUPickerCellDelegate)delegate;
- (HUPickerViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)pickerView:(id)view attributedTitleForRow:(int64_t)row forComponent:(int64_t)component;
- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component;
- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)prepareForReuse;
- (void)reloadPickerView;
- (void)setSelectedIndex:(int64_t)index animated:(BOOL)animated;
@end

@implementation HUPickerViewCell

- (HUPickerViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v32.receiver = self;
  v32.super_class = HUPickerViewCell;
  v4 = [(HUPickerViewCell *)&v32 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75840]);
    [(HUPickerViewCell *)v4 setPickerView:v5];

    pickerView = [(HUPickerViewCell *)v4 pickerView];
    [pickerView setDelegate:v4];

    pickerView2 = [(HUPickerViewCell *)v4 pickerView];
    [pickerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(HUPickerViewCell *)v4 contentView];
    pickerView3 = [(HUPickerViewCell *)v4 pickerView];
    [contentView addSubview:pickerView3];

    array = [MEMORY[0x277CBEB18] array];
    pickerView4 = [(HUPickerViewCell *)v4 pickerView];
    topAnchor = [pickerView4 topAnchor];
    contentView2 = [(HUPickerViewCell *)v4 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [array addObject:v15];

    pickerView5 = [(HUPickerViewCell *)v4 pickerView];
    bottomAnchor = [pickerView5 bottomAnchor];
    contentView3 = [(HUPickerViewCell *)v4 contentView];
    bottomAnchor2 = [contentView3 bottomAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [array addObject:v20];

    pickerView6 = [(HUPickerViewCell *)v4 pickerView];
    leadingAnchor = [pickerView6 leadingAnchor];
    contentView4 = [(HUPickerViewCell *)v4 contentView];
    leadingAnchor2 = [contentView4 leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [array addObject:v25];

    pickerView7 = [(HUPickerViewCell *)v4 pickerView];
    trailingAnchor = [pickerView7 trailingAnchor];
    contentView5 = [(HUPickerViewCell *)v4 contentView];
    trailingAnchor2 = [contentView5 trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [array addObject:v30];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HUPickerViewCell;
  [(HUPickerViewCell *)&v4 prepareForReuse];
  selectedIndexPath = self->_selectedIndexPath;
  self->_selectedIndexPath = 0;
}

- (void)reloadPickerView
{
  pickerView = [(HUPickerViewCell *)self pickerView];
  [pickerView reloadAllComponents];
}

- (void)setSelectedIndex:(int64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = [MEMORY[0x277CCAA70] indexPathForRow:index inSection:0];
  selectedIndexPath = self->_selectedIndexPath;
  self->_selectedIndexPath = v7;

  pickerView = [(HUPickerViewCell *)self pickerView];
  [pickerView selectRow:index inComponent:0 animated:animatedCopy];

  delegate = [(HUPickerViewCell *)self delegate];
  [delegate pickerViewCell:self didSelectValueAtIndex:index];
}

- (BOOL)_canSelectValueAtIndex:(int64_t)index
{
  delegate = [(HUPickerViewCell *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return (index & 0x8000000000000000) == 0 && self->_numberOfValues > index;
  }

  delegate2 = [(HUPickerViewCell *)self delegate];
  v8 = [delegate2 pickerViewCell:self canSelectValueAtIndex:index];

  return v8;
}

- (int64_t)pickerView:(id)view numberOfRowsInComponent:(int64_t)component
{
  v5 = [(HUPickerViewCell *)self delegate:view];
  self->_numberOfValues = [v5 numberOfValuesForPickerViewCell:self];

  return self->_numberOfValues;
}

- (id)pickerView:(id)view titleForRow:(int64_t)row forComponent:(int64_t)component
{
  v7 = [(HUPickerViewCell *)self delegate:view];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate = [(HUPickerViewCell *)self delegate];
    v10 = [delegate pickerViewCell:self titleForValueAtIndex:row];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)pickerView:(id)view attributedTitleForRow:(int64_t)row forComponent:(int64_t)component
{
  v7 = [(HUPickerViewCell *)self delegate:view];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate = [(HUPickerViewCell *)self delegate];
    v10 = [delegate pickerViewCell:self attributedTitleForValueAtIndex:row];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  if (![(HUPickerViewCell *)self _canSelectValueAtIndex:row])
  {
    v8 = [(NSIndexPath *)self->_selectedIndexPath row];
    if ((row & 0x8000000000000000) == 0)
    {
      if (v8 > row)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }

      rowCopy2 = row;
      while (rowCopy2 < self->_numberOfValues)
      {
        if ([(HUPickerViewCell *)self _canSelectValueAtIndex:rowCopy2])
        {
          pickerView = [(HUPickerViewCell *)self pickerView];
          [pickerView selectRow:rowCopy2 inComponent:0 animated:1];

          goto LABEL_11;
        }

        rowCopy2 += v9;
        if (rowCopy2 < 0)
        {
          break;
        }
      }
    }
  }

  rowCopy2 = row;
LABEL_11:
  v11 = [MEMORY[0x277CCAA70] indexPathForRow:rowCopy2 inSection:component];
  selectedIndexPath = self->_selectedIndexPath;
  self->_selectedIndexPath = v11;

  delegate = [(HUPickerViewCell *)self delegate];
  [delegate pickerViewCell:self didSelectValueAtIndex:rowCopy2];
}

- (HUPickerCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end