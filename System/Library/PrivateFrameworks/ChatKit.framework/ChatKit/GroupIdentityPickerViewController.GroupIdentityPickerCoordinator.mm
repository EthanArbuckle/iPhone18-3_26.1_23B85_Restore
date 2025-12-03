@interface GroupIdentityPickerViewController.GroupIdentityPickerCoordinator
- (_TtCV7ChatKit33GroupIdentityPickerViewController30GroupIdentityPickerCoordinator)init;
- (void)dismissIdentityPicker:(id)picker;
- (void)visualIdentityPicker:(id)picker didUpdatePhotoForVisualIdentity:(id)identity withContactImage:(id)image;
- (void)visualIdentityPicker:presentationControllerWillDismiss:;
- (void)visualIdentityPickerDidCancel:(id)cancel;
@end

@implementation GroupIdentityPickerViewController.GroupIdentityPickerCoordinator

- (void)visualIdentityPickerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_190B29050(cancelCopy);
}

- (void)visualIdentityPicker:(id)picker didUpdatePhotoForVisualIdentity:(id)identity withContactImage:(id)image
{
  pickerCopy = picker;
  identityCopy = identity;
  imageCopy = image;
  selfCopy = self;
  sub_190B29140(pickerCopy, identityCopy);
}

- (void)dismissIdentityPicker:(id)picker
{
  pickerCopy = picker;
  selfCopy = self;
  sub_190B28F50(pickerCopy);
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