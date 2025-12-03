@interface _WDTwoPartDateRangeManualEntryItem
- (_WDTwoPartDateRangeManualEntryItem)initWithMaximumEndDate:(id)date;
- (id)generateValue;
- (id)tableViewCells;
- (void)_endItemDidChange;
- (void)_setupEntryItems;
- (void)_startItemDidChange;
- (void)manualEntryItemDidUpdate:(id)update;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
@end

@implementation _WDTwoPartDateRangeManualEntryItem

- (_WDTwoPartDateRangeManualEntryItem)initWithMaximumEndDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = _WDTwoPartDateRangeManualEntryItem;
  v6 = [(_WDTwoPartDateRangeManualEntryItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_maximumEndDate, date);
    [(_WDTwoPartDateRangeManualEntryItem *)v7 _setupEntryItems];
  }

  return v7;
}

- (id)tableViewCells
{
  tableViewCells = [(WDAddDataManualEntryItem *)self->_startItem tableViewCells];
  tableViewCells2 = [(WDAddDataManualEntryItem *)self->_endItem tableViewCells];
  v5 = [tableViewCells arrayByAddingObjectsFromArray:tableViewCells2];

  return v5;
}

- (void)_setupEntryItems
{
  maximumEndDate = self->_maximumEndDate;
  v4 = HABundle();
  v5 = [v4 localizedStringForKey:@"STARTS" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v6 = [WDAddDataManualEntryItem dateTimeItemWithMaximumDate:maximumEndDate highlightWhenEditing:1 displayName:v5];
  startItem = self->_startItem;
  self->_startItem = v6;

  v8 = self->_maximumEndDate;
  v9 = HABundle();
  v10 = [v9 localizedStringForKey:@"ENDS" value:&stru_1F3823B88 table:@"AddDataLocalization"];
  v11 = [WDAddDataManualEntryItem dateTimeItemWithMaximumDate:v8 highlightWhenEditing:1 displayName:v10];
  endItem = self->_endItem;
  self->_endItem = v11;

  [(WDAddDataManualEntryItem *)self->_startItem setDelegate:self];
  v13 = self->_endItem;

  [(WDAddDataManualEntryItem *)v13 setDelegate:self];
}

- (void)manualEntryItemDidUpdate:(id)update
{
  if (self->_startItem == update)
  {
    [(_WDTwoPartDateRangeManualEntryItem *)self _startItemDidChange];
  }

  else
  {
    [(_WDTwoPartDateRangeManualEntryItem *)self _endItemDidChange];
  }

  [(WDAddDataManualEntryItem *)self _didUpdateValue];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  delegate = [(WDAddDataManualEntryItem *)self delegate];
  [delegate presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)_startItemDidChange
{
  generateValue = [(WDAddDataManualEntryItem *)self->_startItem generateValue];
  generateValue2 = [(WDAddDataManualEntryItem *)self->_endItem generateValue];
  IsLarger = HKUIObjectIsLarger();

  if (IsLarger)
  {
    [(WDAddDataManualEntryItem *)self->_endItem setValue:generateValue];
  }
}

- (void)_endItemDidChange
{
  generateValue = [(WDAddDataManualEntryItem *)self->_endItem generateValue];
  generateValue2 = [(WDAddDataManualEntryItem *)self->_startItem generateValue];
  IsSmaller = HKUIObjectIsSmaller();

  if (IsSmaller)
  {
    [(WDAddDataManualEntryItem *)self->_startItem setValue:generateValue];
  }
}

- (id)generateValue
{
  generateValue = [(WDAddDataManualEntryItem *)self->_startItem generateValue];
  generateValue2 = [(WDAddDataManualEntryItem *)self->_endItem generateValue];
  v5 = [MEMORY[0x1E69A4520] valueRangeWithMinValue:generateValue maxValue:generateValue2];

  return v5;
}

@end