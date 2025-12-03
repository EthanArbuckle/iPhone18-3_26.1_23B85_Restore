@interface FAPickerSelectMemberHook
- (BOOL)shouldMatchElement:(id)element;
- (BOOL)shouldMatchModel:(id)model;
- (FAPickerSelectMemberHook)init;
- (RUIServerHookDelegate)delegate;
- (id)activateAction;
- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion;
- (void)processObjectModel:(id)model completion:(id)completion;
- (void)setActivateAction:(id)action;
- (void)setDelegate:(id)delegate;
@end

@implementation FAPickerSelectMemberHook

- (RUIServerHookDelegate)delegate
{
  v3 = OBJC_IVAR___FAPickerSelectMemberHook_delegate;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setDelegate:(id)delegate
{
  v5 = OBJC_IVAR___FAPickerSelectMemberHook_delegate;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = delegate;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (id)activateAction
{
  v2 = (self + OBJC_IVAR___FAPickerSelectMemberHook_activateAction);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21BBB1C7C;
    aBlock[3] = &block_descriptor_17;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setActivateAction:(id)action
{
  v4 = _Block_copy(action);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_21BC61B18;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___FAPickerSelectMemberHook_activateAction);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_21BB5AEC4(v7);
}

- (BOOL)shouldMatchElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  v6 = sub_21BC5FD10(elementCopy);

  return v6 & 1;
}

- (BOOL)shouldMatchModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  v6 = sub_21BC5FDBC(modelCopy);

  return v6 & 1;
}

- (void)processElement:(id)element attributes:(id)attributes objectModel:(id)model completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = sub_21BE2890C();
  modelCopy = model;
  selfCopy = self;
  sub_21BC604DC(modelCopy, v9);

  v12 = selfCopy + OBJC_IVAR___FAPickerSelectMemberHook_activateAction;
  swift_beginAccess();
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 1);

    v13(modelCopy);
    sub_21BB5AEC4(v13);
  }

  v8[2](v8, 1, 0);

  _Block_release(v8);
}

- (void)processObjectModel:(id)model completion:(id)completion
{
  v6 = _Block_copy(completion);
  modelCopy = model;
  selfCopy = self;
  v9 = sub_21BBB5D24(MEMORY[0x277D84F90]);
  sub_21BC604DC(modelCopy, v9);

  v6[2](v6, 1, 0);

  _Block_release(v6);
}

- (FAPickerSelectMemberHook)init
{
  *(self + OBJC_IVAR___FAPickerSelectMemberHook_delegate) = 0;
  v3 = (self + OBJC_IVAR___FAPickerSelectMemberHook_activateAction);
  v4 = type metadata accessor for FAPickerSelectMemberHook();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(FAPickerSelectMemberHook *)&v6 init];
}

@end