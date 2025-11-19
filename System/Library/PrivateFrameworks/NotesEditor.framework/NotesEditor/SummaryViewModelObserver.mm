@interface SummaryViewModelObserver
- (_TtC11NotesEditorP33_0207DD35BB3512C3C1BFE341EADC3AD924SummaryViewModelObserver)init;
- (void)viewModelDidUpdate:(id)a3;
@end

@implementation SummaryViewModelObserver

- (void)viewModelDidUpdate:(id)a3
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  v8 = self;
  sub_2153B4B48();

  (*(v5 + 8))(v7, v4);
}

- (_TtC11NotesEditorP33_0207DD35BB3512C3C1BFE341EADC3AD924SummaryViewModelObserver)init
{
  *(&self->super.isa + OBJC_IVAR____TtC11NotesEditorP33_0207DD35BB3512C3C1BFE341EADC3AD924SummaryViewModelObserver_isShowingPlaceholder) = 0;
  v3 = (&self->super.isa + OBJC_IVAR____TtC11NotesEditorP33_0207DD35BB3512C3C1BFE341EADC3AD924SummaryViewModelObserver_delegate);
  v4 = type metadata accessor for SummaryViewModelObserver();
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(SummaryViewModelObserver *)&v6 init];
}

@end