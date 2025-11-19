@interface HKSimpleDataEntryItem
- (HKSimpleDataEntryItemDelegate)delegate;
- (HKSimpleDataEntryItemToolbarDelegate)toolbarDelegate;
- (id)accessoryToolbar;
- (id)cell;
- (id)formattedKeyAndValue;
- (void)beginEditing;
- (void)toolbarDoneButtonPressed:(id)a3;
- (void)toolbarNextButtonPressed:(id)a3;
- (void)toolbarPrevButtonPressed:(id)a3;
- (void)updateCellDisplay;
@end

@implementation HKSimpleDataEntryItem

- (void)beginEditing
{
  v2 = [(HKSimpleDataEntryItem *)self cell];
  [v2 beginEditing];
}

- (id)accessoryToolbar
{
  v21[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD180]);
  [v3 setAutoresizingMask:18];
  v4 = [(HKSimpleDataEntryItem *)self toolbarDelegate];
  v5 = objc_opt_respondsToSelector();

  v6 = [(HKSimpleDataEntryItem *)self toolbarDelegate];
  v7 = objc_opt_respondsToSelector();

  v8 = [(HKSimpleDataEntryItem *)self toolbarDelegate];
  v9 = objc_opt_respondsToSelector();

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v5)
  {
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:103 target:self action:sel_toolbarPrevButtonPressed_];
    v12 = HKHealthTintColor();
    [v11 setTintColor:v12];

    [v10 addObject:v11];
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }

    v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:6 target:0 action:0];
    [v13 setWidth:1.0];
    [v10 addObject:v13];
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v14 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:104 target:self action:sel_toolbarNextButtonPressed_];
  v15 = HKHealthTintColor();
  [v14 setTintColor:v15];

  [v10 addObject:v14];
LABEL_6:
  if (v9)
  {
    v16 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    v17 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_toolbarDoneButtonPressed_];
    v18 = HKHealthTintColor();
    [v17 setTintColor:v18];

    v21[0] = v16;
    v21[1] = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    [v10 addObjectsFromArray:v19];
  }

  [v3 setItems:v10];

  return v3;
}

- (void)toolbarPrevButtonPressed:(id)a3
{
  v4 = [(HKSimpleDataEntryItem *)self toolbarDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HKSimpleDataEntryItem *)self toolbarDelegate];
    [v6 dataEntryItemPrevPressed:self];
  }
}

- (void)toolbarNextButtonPressed:(id)a3
{
  v4 = [(HKSimpleDataEntryItem *)self toolbarDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HKSimpleDataEntryItem *)self toolbarDelegate];
    [v6 dataEntryItemNextPressed:self];
  }
}

- (void)toolbarDoneButtonPressed:(id)a3
{
  v4 = [(HKSimpleDataEntryItem *)self toolbarDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(HKSimpleDataEntryItem *)self toolbarDelegate];
    [v6 dataEntryItemDonePressed:self];
  }
}

- (HKSimpleDataEntryItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HKSimpleDataEntryItemToolbarDelegate)toolbarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_toolbarDelegate);

  return WeakRetained;
}

- (id)formattedKeyAndValue
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return MEMORY[0x1E695E0F8];
}

- (id)cell
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)updateCellDisplay
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();

  NSRequestConcreteImplementation();
}

@end