@interface ChromeIntensitySlider.Coordinator
- (void)intensityValueChanged:(id)a3;
@end

@implementation ChromeIntensitySlider.Coordinator

- (void)intensityValueChanged:(id)a3
{
  v3 = self->parent[8];
  v4 = a3;
  sub_1A3A2EA60();
  v5 = sub_1A3A2EA60();
  v6 = sub_1A39A12B8(v5, v3);

  [v4 value];
  v8 = v7;
  v9 = v6[153];
  v10 = v6[154];
  __swift_project_boxed_opaque_existential_1(v6 + 150, v9);
  (*(v10 + 8))(v8, 0, 0, 88, v6, v9, v10);
}

@end