@interface ICNoteEditorContextualMenuButton
- (ICNoteEditorContextualMenuButton)initWithCoder:(id)a3;
- (ICNoteEditorContextualMenuButton)initWithFrame:(CGRect)a3;
- (NSArray)accessibilityCustomContent;
- (NSArray)accessibilityElements;
- (UIImage)largeContentImage;
- (_TtP11NotesEditor53ICNoteEditorContextualMenuButtonAccessibilityDelegate_)accessibilityDelegate;
- (void)buttonPressedHandler;
- (void)setActiveContext:(id)a3;
- (void)setActiveContexts:(id)a3;
@end

@implementation ICNoteEditorContextualMenuButton

- (_TtP11NotesEditor53ICNoteEditorContextualMenuButtonAccessibilityDelegate_)accessibilityDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (ICNoteEditorContextualMenuButton)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___ICNoteEditorContextualMenuButton_activeContexts) = MEMORY[0x277D84FA0];
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

- (void)setActiveContext:(id)a3
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A548);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_2154BDB50;
    v6 = self;
    *(v5 + 32) = [a3 integerValue];
  }

  else
  {
    v7 = self;
    v5 = MEMORY[0x277D84F90];
  }

  ICNoteEditorContextualMenuButton.setActiveContexts(_:)(v5);
}

- (void)setActiveContexts:(id)a3
{
  sub_2151A6C9C(0, &qword_2811994B0);
  v4 = sub_2154A1F4C();
  v5 = self;
  ICNoteEditorContextualMenuButton.setActiveContextsAsNumbers(_:)(v4);
}

- (void)buttonPressedHandler
{
  v2 = self;
  sub_2153D8084();
}

- (NSArray)accessibilityElements
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A340);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2154BDB50;
  v4 = *(self + OBJC_IVAR___ICNoteEditorContextualMenuButton_button);
  *(v3 + 56) = type metadata accessor for ICMorphableButton();
  *(v3 + 32) = v4;
  v5 = v4;
  v6 = sub_2154A1F3C();

  return v6;
}

- (NSArray)accessibilityCustomContent
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = self;
    v5 = [Strong accessibilityCustomContentFor_];
    swift_unknownObjectRelease();
    sub_2151A6C9C(0, &qword_27CA5C4D0);
    sub_2154A1F4C();

    Strong = sub_2154A1F3C();
  }

  return Strong;
}

- (UIImage)largeContentImage
{
  v2 = [*(self + OBJC_IVAR___ICNoteEditorContextualMenuButton_button) largeContentImage];

  return v2;
}

- (ICNoteEditorContextualMenuButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end