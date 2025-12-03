@interface ICNoteEditorContextualBarButtonItem
- (BOOL)selectionStateActive;
- (_TtC11NotesEditor35ICNoteEditorContextualBarButtonItem)initWithCoder:(id)coder;
- (_TtC11NotesEditor35ICNoteEditorContextualBarButtonItem)initWithFrame:(CGRect)frame;
- (void)setSelectionStateActive:(BOOL)active;
@end

@implementation ICNoteEditorContextualBarButtonItem

- (BOOL)selectionStateActive
{
  v3 = OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_selectionStateActive;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setSelectionStateActive:(BOOL)active
{
  v5 = OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_selectionStateActive;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = active;
}

- (_TtC11NotesEditor35ICNoteEditorContextualBarButtonItem)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_observations) = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_selectionStateActive) = 0;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_accessibilityContextualBarButtonDelegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

- (_TtC11NotesEditor35ICNoteEditorContextualBarButtonItem)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end