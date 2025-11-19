@interface GroupIdentityPickerViewController.GroupIdentityPickerCoordinator
- (_TtCV7ChatKit33GroupIdentityPickerViewController30GroupIdentityPickerCoordinator)init;
- (void)dismissIdentityPicker:(id)a3;
- (void)visualIdentityPicker:(id)a3 didUpdatePhotoForVisualIdentity:(id)a4 withContactImage:(id)a5;
- (void)visualIdentityPicker:presentationControllerWillDismiss:;
- (void)visualIdentityPickerDidCancel:(id)a3;
@end

@implementation GroupIdentityPickerViewController.GroupIdentityPickerCoordinator

- (void)visualIdentityPickerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190B29050(v4);
}

- (void)visualIdentityPicker:(id)a3 didUpdatePhotoForVisualIdentity:(id)a4 withContactImage:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_190B29140(v8, v9);
}

- (void)dismissIdentityPicker:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190B28F50(v4);
}

- (_TtCV7ChatKit33GroupIdentityPickerViewController30GroupIdentityPickerCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)visualIdentityPicker:presentationControllerWillDismiss:
{
  if (qword_1EAD51A68 != -1)
  {
    swift_once();
  }

  v0 = sub_190D53040();
  __swift_project_value_buffer(v0, qword_1EAD9DC20);
  oslog = sub_190D53020();
  v1 = sub_190D576C0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_19020E000, oslog, v1, "visualIdentityPicker.presentationControllerWillDismiss", v2, 2u);
    MEMORY[0x193AF7A40](v2, -1, -1);
  }
}

@end