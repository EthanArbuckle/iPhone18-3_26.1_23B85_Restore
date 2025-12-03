@interface ChromeApertureSlider.Coordinator
- (void)apertureValueChanged:(id)changed;
@end

@implementation ChromeApertureSlider.Coordinator

- (void)apertureValueChanged:(id)changed
{
  v3 = self->parent[24];
  changedCopy = changed;
  sub_1A3A2EA60();
  v5 = sub_1A3A2EA60();
  v6 = sub_1A39A12B8(v5, v3);

  [changedCopy apertureValue];
  v8 = v7;
  v9 = v6[153];
  v10 = v6[154];
  __swift_project_boxed_opaque_existential_1(v6 + 150, v9);
  (*(v10 + 8))(v8, 0, 0, 4, v6, v9, v10);
}

@end