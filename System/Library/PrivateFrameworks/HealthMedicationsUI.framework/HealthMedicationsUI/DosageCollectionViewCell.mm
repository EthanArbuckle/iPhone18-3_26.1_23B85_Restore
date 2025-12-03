@interface DosageCollectionViewCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (void)doneTapped;
- (void)textFieldChanged:(id)changed;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)timePickerChanged:(id)changed;
- (void)valueLabelTapped:(id)tapped;
@end

@implementation DosageCollectionViewCell

- (void)timePickerChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_228316290();
}

- (void)textFieldChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_2283141AC(changedCopy);
}

- (void)valueLabelTapped:(id)tapped
{
  selfCopy = self;
  v3 = sub_228312440();
  [v3 becomeFirstResponder];
}

- (void)doneTapped
{
  selfCopy = self;
  v2 = sub_228312440();
  [v2 resignFirstResponder];
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  LOBYTE(self) = _s19HealthMedicationsUI24DosageCollectionViewCellC27textFieldShouldBeginEditingySbSo06UITextI0CF_0();

  return self & 1;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  _s19HealthMedicationsUI24DosageCollectionViewCellC24textFieldDidBeginEditingyySo06UITextI0CF_0(editingCopy);
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  sub_228392000();
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = _s19HealthMedicationsUI24DosageCollectionViewCellC9textField_24shouldChangeCharactersIn17replacementStringSbSo06UITextI0C_So8_NSRangeVSStF_0(fieldCopy, location, length);

  return length & 1;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  _s19HealthMedicationsUI24DosageCollectionViewCellC22textFieldDidEndEditingyySo06UITextI0CF_0();
}

@end