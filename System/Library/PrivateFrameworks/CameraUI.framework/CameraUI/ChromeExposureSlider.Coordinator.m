@interface ChromeExposureSlider.Coordinator
- (_TtCV8CameraUI20ChromeExposureSlider11Coordinator)init;
- (void)exposureValueChanged:(id)a3;
@end

@implementation ChromeExposureSlider.Coordinator

- (void)exposureValueChanged:(id)a3
{
  v4 = self->parent[OBJC_IVAR____TtCV8CameraUI20ChromeExposureSlider11Coordinator_parent + 16];
  v5 = a3;
  v12 = self;
  v6 = sub_1A3A2EA60();
  v7 = sub_1A39A12B8(v6, v4);

  [v5 exposureValue];
  v9 = v8;
  v10 = v7[153];
  v11 = v7[154];
  __swift_project_boxed_opaque_existential_1(v7 + 150, v10);
  (*(v11 + 8))(v9, 0, 0, 28, v7, v10, v11);
}

- (_TtCV8CameraUI20ChromeExposureSlider11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end