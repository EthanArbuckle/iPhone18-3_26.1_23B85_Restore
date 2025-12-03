@interface TextFieldCollectionViewCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation TextFieldCollectionViewCell

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1BA351794(change);
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.super.isa) + 0x190);
  selfCopy = self;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.super.isa) + 0x198);
  selfCopy = self;
  v3();
}

- (void)textFieldDidEndEditing:(id)editing
{
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.super.isa) + 0x1A0);
  selfCopy = self;
  v3();
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_1BA352C4C(fieldCopy, location, length);

  return length & 1;
}

@end