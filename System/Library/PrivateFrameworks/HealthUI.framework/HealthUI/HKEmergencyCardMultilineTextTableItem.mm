@interface HKEmergencyCardMultilineTextTableItem
- (HKEmergencyCardRowHeightChangeDelegate)rowHeightChangeDelegate;
- (double)_cellFittedHeightWithWidth:(double)a3;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndex:(int64_t)a4;
- (double)tableView:(id)a3 heightForRowAtIndex:(int64_t)a4;
- (id)_editableCell;
- (id)_multilineStringValue;
- (id)_placeholderText;
- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4;
- (void)_updateMultilineStringValueWithValue:(id)a3;
- (void)commitEditing;
- (void)medicalIDEditorCell:(id)a3 didChangeHeight:(double)a4 keepRectVisible:(CGRect)a5 inView:(id)a6;
- (void)medicalIDEditorCellDidBeginEditing:(id)a3 keepRectVisible:(CGRect)a4 inView:(id)a5;
- (void)medicalIDEditorCellDidChangeSelection:(id)a3 keepRectVisible:(CGRect)a4 inView:(id)a5;
- (void)medicalIDEditorCellDidChangeValue:(id)a3;
- (void)setData:(id)a3;
@end

@implementation HKEmergencyCardMultilineTextTableItem

- (id)_editableCell
{
  editableCell = self->_editableCell;
  if (!editableCell)
  {
    v4 = objc_alloc_init(HKMedicalIDEditorMultilineStringCell);
    v5 = self->_editableCell;
    self->_editableCell = v4;

    [(HKMedicalIDEditorMultilineStringCell *)self->_editableCell setSeparatorInset:0.0, 47.0, 0.0, 0.0];
    v6 = [(HKEmergencyCardTableItem *)self title];
    [(HKMedicalIDEditorMultilineStringCell *)self->_editableCell setLabel:v6];

    v7 = [(HKEmergencyCardMultilineTextTableItem *)self _placeholderText];
    [(HKMedicalIDEditorMultilineStringCell *)self->_editableCell setPlaceholder:v7];

    [(HKMedicalIDEditorCell *)self->_editableCell setEditDelegate:self];
    [(HKMedicalIDEditorMultilineStringCell *)self->_editableCell setHeightChangeDelegate:self];
    v8 = objc_alloc_init(_HKCustomInsetCellLayoutManager);
    [(_HKCustomInsetCellLayoutManager *)v8 setTopInset:12.0];
    [(HKMedicalIDEditorMultilineStringCell *)self->_editableCell setLayoutManager:v8];
    [(HKEmergencyCardMultilineTextTableItem *)self _configureEditableCell:self->_editableCell];

    editableCell = self->_editableCell;
  }

  return editableCell;
}

- (id)tableView:(id)a3 cellForRowAtIndex:(int64_t)a4
{
  v5 = a3;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    v6 = [(HKEmergencyCardMultilineTextTableItem *)self _editableCell];
  }

  else
  {
    v7 = +[_HKMedicalIDMultilineStringCell defaultReuseIdentifier];
    v6 = [v5 dequeueReusableCellWithIdentifier:v7];

    v8 = [(HKEmergencyCardTableItem *)self title];
    v9 = [v6 titleLabel];
    [v9 setText:v8];

    v10 = [(HKEmergencyCardMultilineTextTableItem *)self _multilineStringValue];
    v11 = [v6 detailLabel];
    [v11 setText:v10];
  }

  return v6;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndex:(int64_t)a4
{
  v5 = a3;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    [v5 frame];
    [(HKEmergencyCardMultilineTextTableItem *)self _cellFittedHeightWithWidth:v6];
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E69DE3D0];
  }

  return v8;
}

- (double)tableView:(id)a3 heightForRowAtIndex:(int64_t)a4
{
  v5 = a3;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    [v5 frame];
    [(HKEmergencyCardMultilineTextTableItem *)self _cellFittedHeightWithWidth:v6];
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E69DE3D0];
  }

  return v8;
}

- (double)_cellFittedHeightWithWidth:(double)a3
{
  v5 = [(HKEmergencyCardMultilineTextTableItem *)self _editableCell];
  [v5 layoutIfNeeded];

  v6 = [(HKEmergencyCardMultilineTextTableItem *)self _editableCell];
  [v6 sizeThatFits:{a3, 1.79769313e308}];
  v8 = v7;

  return v8;
}

- (void)setData:(id)a3
{
  v6.receiver = self;
  v6.super_class = HKEmergencyCardMultilineTextTableItem;
  [(HKEmergencyCardTableItem *)&v6 setData:a3];
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    v4 = [(HKEmergencyCardMultilineTextTableItem *)self _editableCell];
    v5 = [(HKEmergencyCardMultilineTextTableItem *)self _multilineStringValue];
    [v4 setStringValue:v5];
  }
}

- (void)medicalIDEditorCellDidChangeValue:(id)a3
{
  v4 = [(HKEmergencyCardMultilineTextTableItem *)self _editableCell];
  v7 = [v4 stringValue];

  v5 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v6 = [v7 stringByTrimmingCharactersInSet:v5];

  if (![v6 length])
  {

    v6 = 0;
  }

  [(HKEmergencyCardMultilineTextTableItem *)self _updateMultilineStringValueWithValue:v6];
}

- (void)medicalIDEditorCell:(id)a3 didChangeHeight:(double)a4 keepRectVisible:(CGRect)a5 inView:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a6;
  WeakRetained = objc_loadWeakRetained(&self->_rowHeightChangeDelegate);
  [WeakRetained tableItem:self heightDidChangeForRowIndex:0 keepRectVisible:v11 inView:{x, y, width, height}];
}

- (void)medicalIDEditorCellDidBeginEditing:(id)a3 keepRectVisible:(CGRect)a4 inView:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_rowHeightChangeDelegate);
  [WeakRetained tableItemDidBeginEditing:self keepRectVisible:v10 inView:{x, y, width, height}];
}

- (void)medicalIDEditorCellDidChangeSelection:(id)a3 keepRectVisible:(CGRect)a4 inView:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_rowHeightChangeDelegate);
  [WeakRetained tableItemDidChangeSelection:self keepRectVisible:v10 inView:{x, y, width, height}];
}

- (void)commitEditing
{
  v2 = [(HKEmergencyCardMultilineTextTableItem *)self _editableCell];
  [v2 commitEditing];
}

- (HKEmergencyCardRowHeightChangeDelegate)rowHeightChangeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_rowHeightChangeDelegate);

  return WeakRetained;
}

- (id)_multilineStringValue
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)_updateMultilineStringValueWithValue:(id)a3
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();

  NSRequestConcreteImplementation();
}

- (id)_placeholderText
{
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

@end