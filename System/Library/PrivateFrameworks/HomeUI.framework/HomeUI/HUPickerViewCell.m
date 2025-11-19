@interface HUPickerViewCell
- (BOOL)_canSelectValueAtIndex:(int64_t)a3;
- (HUPickerCellDelegate)delegate;
- (HUPickerViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)pickerView:(id)a3 attributedTitleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5;
- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)prepareForReuse;
- (void)reloadPickerView;
- (void)setSelectedIndex:(int64_t)a3 animated:(BOOL)a4;
@end

@implementation HUPickerViewCell

- (HUPickerViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v32.receiver = self;
  v32.super_class = HUPickerViewCell;
  v4 = [(HUPickerViewCell *)&v32 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D75840]);
    [(HUPickerViewCell *)v4 setPickerView:v5];

    v6 = [(HUPickerViewCell *)v4 pickerView];
    [v6 setDelegate:v4];

    v7 = [(HUPickerViewCell *)v4 pickerView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(HUPickerViewCell *)v4 contentView];
    v9 = [(HUPickerViewCell *)v4 pickerView];
    [v8 addSubview:v9];

    v10 = [MEMORY[0x277CBEB18] array];
    v11 = [(HUPickerViewCell *)v4 pickerView];
    v12 = [v11 topAnchor];
    v13 = [(HUPickerViewCell *)v4 contentView];
    v14 = [v13 topAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    [v10 addObject:v15];

    v16 = [(HUPickerViewCell *)v4 pickerView];
    v17 = [v16 bottomAnchor];
    v18 = [(HUPickerViewCell *)v4 contentView];
    v19 = [v18 bottomAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];
    [v10 addObject:v20];

    v21 = [(HUPickerViewCell *)v4 pickerView];
    v22 = [v21 leadingAnchor];
    v23 = [(HUPickerViewCell *)v4 contentView];
    v24 = [v23 leadingAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    [v10 addObject:v25];

    v26 = [(HUPickerViewCell *)v4 pickerView];
    v27 = [v26 trailingAnchor];
    v28 = [(HUPickerViewCell *)v4 contentView];
    v29 = [v28 trailingAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    [v10 addObject:v30];

    [MEMORY[0x277CCAAD0] activateConstraints:v10];
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
  v2 = [(HUPickerViewCell *)self pickerView];
  [v2 reloadAllComponents];
}

- (void)setSelectedIndex:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:0];
  selectedIndexPath = self->_selectedIndexPath;
  self->_selectedIndexPath = v7;

  v9 = [(HUPickerViewCell *)self pickerView];
  [v9 selectRow:a3 inComponent:0 animated:v4];

  v10 = [(HUPickerViewCell *)self delegate];
  [v10 pickerViewCell:self didSelectValueAtIndex:a3];
}

- (BOOL)_canSelectValueAtIndex:(int64_t)a3
{
  v5 = [(HUPickerViewCell *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
    return (a3 & 0x8000000000000000) == 0 && self->_numberOfValues > a3;
  }

  v7 = [(HUPickerViewCell *)self delegate];
  v8 = [v7 pickerViewCell:self canSelectValueAtIndex:a3];

  return v8;
}

- (int64_t)pickerView:(id)a3 numberOfRowsInComponent:(int64_t)a4
{
  v5 = [(HUPickerViewCell *)self delegate:a3];
  self->_numberOfValues = [v5 numberOfValuesForPickerViewCell:self];

  return self->_numberOfValues;
}

- (id)pickerView:(id)a3 titleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = [(HUPickerViewCell *)self delegate:a3];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(HUPickerViewCell *)self delegate];
    v10 = [v9 pickerViewCell:self titleForValueAtIndex:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)pickerView:(id)a3 attributedTitleForRow:(int64_t)a4 forComponent:(int64_t)a5
{
  v7 = [(HUPickerViewCell *)self delegate:a3];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(HUPickerViewCell *)self delegate];
    v10 = [v9 pickerViewCell:self attributedTitleForValueAtIndex:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  if (![(HUPickerViewCell *)self _canSelectValueAtIndex:a4])
  {
    v8 = [(NSIndexPath *)self->_selectedIndexPath row];
    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v8 > a4)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }

      v10 = a4;
      while (v10 < self->_numberOfValues)
      {
        if ([(HUPickerViewCell *)self _canSelectValueAtIndex:v10])
        {
          v13 = [(HUPickerViewCell *)self pickerView];
          [v13 selectRow:v10 inComponent:0 animated:1];

          goto LABEL_11;
        }

        v10 += v9;
        if (v10 < 0)
        {
          break;
        }
      }
    }
  }

  v10 = a4;
LABEL_11:
  v11 = [MEMORY[0x277CCAA70] indexPathForRow:v10 inSection:a5];
  selectedIndexPath = self->_selectedIndexPath;
  self->_selectedIndexPath = v11;

  v14 = [(HUPickerViewCell *)self delegate];
  [v14 pickerViewCell:self didSelectValueAtIndex:v10];
}

- (HUPickerCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end