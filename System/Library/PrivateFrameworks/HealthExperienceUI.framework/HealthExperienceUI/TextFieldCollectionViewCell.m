@interface TextFieldCollectionViewCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation TextFieldCollectionViewCell

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BA351794(a3);
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.super.isa) + 0x190);
  v4 = self;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.super.isa) + 0x198);
  v4 = self;
  v3();
}

- (void)textFieldDidEndEditing:(id)a3
{
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.super.isa) + 0x1A0);
  v4 = self;
  v3();
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v9 = a3;
  v10 = self;
  LOBYTE(length) = sub_1BA352C4C(v9, location, length);

  return length & 1;
}

@end