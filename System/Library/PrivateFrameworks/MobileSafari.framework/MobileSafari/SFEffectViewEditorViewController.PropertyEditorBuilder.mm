@interface SFEffectViewEditorViewController.PropertyEditorBuilder
- (void)addEditableProperty:(id)property editHandler:(id)handler;
@end

@implementation SFEffectViewEditorViewController.PropertyEditorBuilder

- (void)addEditableProperty:(id)property editHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_18B989454;
  *(v8 + 24) = v7;
  swift_beginAccess();
  v9 = *self->editableProperties;
  propertyCopy = property;
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *self->editableProperties = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_18B9B56CC(0, v9[2] + 1, 1, v9);
    *self->editableProperties = v9;
  }

  v13 = v9[2];
  v12 = v9[3];
  if (v13 >= v12 >> 1)
  {
    v9 = sub_18B9B56CC((v12 > 1), v13 + 1, 1, v9);
  }

  v9[2] = v13 + 1;
  v14 = &v9[3 * v13];
  v14[4] = propertyCopy;
  v14[5] = sub_18B9875C0;
  v14[6] = v8;
  *self->editableProperties = v9;
  swift_endAccess();
}

@end