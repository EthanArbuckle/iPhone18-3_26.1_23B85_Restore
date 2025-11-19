@interface PaperDocumentHeaderView
- (_TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView)initWithCoder:(id)a3;
- (_TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
- (void)layoutMarginsDidChange;
@end

@implementation PaperDocumentHeaderView

- (_TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_stackView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_moreButton) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_toggleThumbnailsButton) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_isCompact) = 1;
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(PaperDocumentHeaderView *)&v4 didMoveToWindow];
  v3 = [v2 window];
  if (v3)
  {

    sub_2152F17AC();
  }
}

- (void)layoutMarginsDidChange
{
  v2 = self;
  sub_215315310();
}

- (_TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end