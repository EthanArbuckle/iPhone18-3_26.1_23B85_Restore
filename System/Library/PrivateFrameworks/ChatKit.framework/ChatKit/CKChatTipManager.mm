@interface CKChatTipManager
- (BOOL)presentingBottomAlignedTip;
- (BOOL)presentingTip;
- (BOOL)presentingTopAlignedTip;
- (_TtC7ChatKit16CKChatTipManager)init;
- (_TtC7ChatKit16CKChatTipManager)initWithChatController:(id)controller;
- (double)tipHeight;
- (id)presentTranslationTipWithLanguages:(id)languages;
- (void)chatControllerDidDisappear;
- (void)dismissTipIfPresented;
- (void)undoOrEditMessageUsed;
@end

@implementation CKChatTipManager

- (_TtC7ChatKit16CKChatTipManager)initWithChatController:(id)controller
{
  controllerCopy = controller;
  v4 = sub_190B44AB0(controllerCopy);

  return v4;
}

- (void)chatControllerDidDisappear
{
  selfCopy = self;
  sub_190B3E888();
}

- (void)undoOrEditMessageUsed
{
  v3 = sub_190D53710();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  v9[0] = sub_190B3CEC8();
  v9[1] = v8;
  (*(v4 + 104))(v6, *MEMORY[0x1E6982AE0], v3);
  sub_190B44D54();
  sub_190D53520();

  (*(v4 + 8))(v6, v3);
}

- (void)dismissTipIfPresented
{
  selfCopy = self;
  sub_190B42B5C();
}

- (BOOL)presentingTip
{
  selfCopy = self;
  if (sub_190B42E6C())
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_190B43164();
  }

  return v3 & 1;
}

- (BOOL)presentingTopAlignedTip
{
  selfCopy = self;
  v3 = sub_190B42E6C();

  return v3 & 1;
}

- (BOOL)presentingBottomAlignedTip
{
  selfCopy = self;
  v3 = sub_190B43164();

  return v3 & 1;
}

- (double)tipHeight
{
  selfCopy = self;
  sub_190B432B4();
  v4 = v3;

  return v4;
}

- (_TtC7ChatKit16CKChatTipManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)presentTranslationTipWithLanguages:(id)languages
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_190D519C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
  sub_190B4C634(&qword_1EAD46BD0, MEMORY[0x1E6969770]);
  v8 = sub_190D56D90();
  selfCopy = self;
  CKChatTipManager.presentTranslationTip(languages:)(v8, v6);

  v10 = *(v7 - 8);
  v11 = (*(v10 + 48))(v6, 1, v7);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_190D51940();
    (*(v10 + 8))(v6, v7);
    v12 = v13;
  }

  return v12;
}

@end