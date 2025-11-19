@interface DosageCollectionViewCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (void)doneTapped;
- (void)textFieldChanged:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)timePickerChanged:(id)a3;
- (void)valueLabelTapped:(id)a3;
@end

@implementation DosageCollectionViewCell

- (void)timePickerChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_228316290();
}

- (void)textFieldChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2283141AC(v4);
}

- (void)valueLabelTapped:(id)a3
{
  v4 = self;
  v3 = sub_228312440();
  [v3 becomeFirstResponder];
}

- (void)doneTapped
{
  v3 = self;
  v2 = sub_228312440();
  [v2 resignFirstResponder];
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = _s19HealthMedicationsUI24DosageCollectionViewCellC27textFieldShouldBeginEditingySbSo06UITextI0CF_0();

  return self & 1;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  _s19HealthMedicationsUI24DosageCollectionViewCellC24textFieldDidBeginEditingyySo06UITextI0CF_0(v4);
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  sub_228392000();
  v9 = a3;
  v10 = self;
  LOBYTE(length) = _s19HealthMedicationsUI24DosageCollectionViewCellC9textField_24shouldChangeCharactersIn17replacementStringSbSo06UITextI0C_So8_NSRangeVSStF_0(v9, location, length);

  return length & 1;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  _s19HealthMedicationsUI24DosageCollectionViewCellC22textFieldDidEndEditingyySo06UITextI0CF_0();
}

@end