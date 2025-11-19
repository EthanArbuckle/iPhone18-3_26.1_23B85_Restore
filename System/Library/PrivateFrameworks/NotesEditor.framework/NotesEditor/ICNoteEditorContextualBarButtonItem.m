@interface ICNoteEditorContextualBarButtonItem
- (BOOL)selectionStateActive;
- (_TtC11NotesEditor35ICNoteEditorContextualBarButtonItem)initWithCoder:(id)a3;
- (_TtC11NotesEditor35ICNoteEditorContextualBarButtonItem)initWithFrame:(CGRect)a3;
- (void)setSelectionStateActive:(BOOL)a3;
@end

@implementation ICNoteEditorContextualBarButtonItem

- (BOOL)selectionStateActive
{
  v3 = OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_selectionStateActive;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setSelectionStateActive:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_selectionStateActive;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (_TtC11NotesEditor35ICNoteEditorContextualBarButtonItem)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_observations) = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_selectionStateActive) = 0;
  *(&self->super.super._responderFlags + OBJC_IVAR____TtC11NotesEditor35ICNoteEditorContextualBarButtonItem_accessibilityContextualBarButtonDelegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

- (_TtC11NotesEditor35ICNoteEditorContextualBarButtonItem)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end