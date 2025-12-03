@interface HKEmergencyCardMultilineTextTableItem
- (HKEmergencyCardRowHeightChangeDelegate)rowHeightChangeDelegate;
- (double)_cellFittedHeightWithWidth:(double)width;
- (double)tableView:(id)view estimatedHeightForRowAtIndex:(int64_t)index;
- (double)tableView:(id)view heightForRowAtIndex:(int64_t)index;
- (id)_editableCell;
- (id)_multilineStringValue;
- (id)_placeholderText;
- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index;
- (void)_updateMultilineStringValueWithValue:(id)value;
- (void)commitEditing;
- (void)medicalIDEditorCell:(id)cell didChangeHeight:(double)height keepRectVisible:(CGRect)visible inView:(id)view;
- (void)medicalIDEditorCellDidBeginEditing:(id)editing keepRectVisible:(CGRect)visible inView:(id)view;
- (void)medicalIDEditorCellDidChangeSelection:(id)selection keepRectVisible:(CGRect)visible inView:(id)view;
- (void)medicalIDEditorCellDidChangeValue:(id)value;
- (void)setData:(id)data;
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
    title = [(HKEmergencyCardTableItem *)self title];
    [(HKMedicalIDEditorMultilineStringCell *)self->_editableCell setLabel:title];

    _placeholderText = [(HKEmergencyCardMultilineTextTableItem *)self _placeholderText];
    [(HKMedicalIDEditorMultilineStringCell *)self->_editableCell setPlaceholder:_placeholderText];

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

- (id)tableView:(id)view cellForRowAtIndex:(int64_t)index
{
  viewCopy = view;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    _editableCell = [(HKEmergencyCardMultilineTextTableItem *)self _editableCell];
  }

  else
  {
    v7 = +[_HKMedicalIDMultilineStringCell defaultReuseIdentifier];
    _editableCell = [viewCopy dequeueReusableCellWithIdentifier:v7];

    title = [(HKEmergencyCardTableItem *)self title];
    titleLabel = [_editableCell titleLabel];
    [titleLabel setText:title];

    _multilineStringValue = [(HKEmergencyCardMultilineTextTableItem *)self _multilineStringValue];
    detailLabel = [_editableCell detailLabel];
    [detailLabel setText:_multilineStringValue];
  }

  return _editableCell;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndex:(int64_t)index
{
  viewCopy = view;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    [viewCopy frame];
    [(HKEmergencyCardMultilineTextTableItem *)self _cellFittedHeightWithWidth:v6];
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E69DE3D0];
  }

  return v8;
}

- (double)tableView:(id)view heightForRowAtIndex:(int64_t)index
{
  viewCopy = view;
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    [viewCopy frame];
    [(HKEmergencyCardMultilineTextTableItem *)self _cellFittedHeightWithWidth:v6];
    v8 = v7;
  }

  else
  {
    v8 = *MEMORY[0x1E69DE3D0];
  }

  return v8;
}

- (double)_cellFittedHeightWithWidth:(double)width
{
  _editableCell = [(HKEmergencyCardMultilineTextTableItem *)self _editableCell];
  [_editableCell layoutIfNeeded];

  _editableCell2 = [(HKEmergencyCardMultilineTextTableItem *)self _editableCell];
  [_editableCell2 sizeThatFits:{width, 1.79769313e308}];
  v8 = v7;

  return v8;
}

- (void)setData:(id)data
{
  v6.receiver = self;
  v6.super_class = HKEmergencyCardMultilineTextTableItem;
  [(HKEmergencyCardTableItem *)&v6 setData:data];
  if ([(HKEmergencyCardTableItem *)self isInEditMode])
  {
    _editableCell = [(HKEmergencyCardMultilineTextTableItem *)self _editableCell];
    _multilineStringValue = [(HKEmergencyCardMultilineTextTableItem *)self _multilineStringValue];
    [_editableCell setStringValue:_multilineStringValue];
  }
}

- (void)medicalIDEditorCellDidChangeValue:(id)value
{
  _editableCell = [(HKEmergencyCardMultilineTextTableItem *)self _editableCell];
  stringValue = [_editableCell stringValue];

  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v6 = [stringValue stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (![v6 length])
  {

    v6 = 0;
  }

  [(HKEmergencyCardMultilineTextTableItem *)self _updateMultilineStringValueWithValue:v6];
}

- (void)medicalIDEditorCell:(id)cell didChangeHeight:(double)height keepRectVisible:(CGRect)visible inView:(id)view
{
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_rowHeightChangeDelegate);
  [WeakRetained tableItem:self heightDidChangeForRowIndex:0 keepRectVisible:viewCopy inView:{x, y, width, height}];
}

- (void)medicalIDEditorCellDidBeginEditing:(id)editing keepRectVisible:(CGRect)visible inView:(id)view
{
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_rowHeightChangeDelegate);
  [WeakRetained tableItemDidBeginEditing:self keepRectVisible:viewCopy inView:{x, y, width, height}];
}

- (void)medicalIDEditorCellDidChangeSelection:(id)selection keepRectVisible:(CGRect)visible inView:(id)view
{
  height = visible.size.height;
  width = visible.size.width;
  y = visible.origin.y;
  x = visible.origin.x;
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_rowHeightChangeDelegate);
  [WeakRetained tableItemDidChangeSelection:self keepRectVisible:viewCopy inView:{x, y, width, height}];
}

- (void)commitEditing
{
  _editableCell = [(HKEmergencyCardMultilineTextTableItem *)self _editableCell];
  [_editableCell commitEditing];
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

- (void)_updateMultilineStringValueWithValue:(id)value
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