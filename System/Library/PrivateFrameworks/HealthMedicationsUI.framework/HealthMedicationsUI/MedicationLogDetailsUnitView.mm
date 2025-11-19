@interface MedicationLogDetailsUnitView
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (void)didChangeText:(id)a3;
- (void)textFieldDidBeginEditing:(id)a3;
@end

@implementation MedicationLogDetailsUnitView

- (void)didChangeText:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_228392F90();
  swift_unknownObjectRelease();
  sub_228215A00();

  __swift_destroy_boxed_opaque_existential_0(v5);
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_228216830(v4);
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  sub_228392000();
  v9 = a3;
  v10 = self;
  LOBYTE(length) = sub_228216B18(v9, location, length);

  return length & 1;
}

@end