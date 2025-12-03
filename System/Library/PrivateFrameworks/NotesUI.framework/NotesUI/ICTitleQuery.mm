@interface ICTitleQuery
- (_TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery)init;
- (_TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery)initWithDrawing:(id)drawing;
- (void)start;
- (void)titleQuery:(id)query didUpdateWithItem:(id)item;
@end

@implementation ICTitleQuery

- (void)titleQuery:(id)query didUpdateWithItem:(id)item
{
  selfCopy = self;
  transcribedTitle = [(PKTitleQuery *)selfCopy transcribedTitle];
  if (transcribedTitle)
  {
    v6 = transcribedTitle;
    v7 = sub_1D4419C54();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  sub_1D4315444(v7, v9);
}

- (void)start
{
  selfCopy = self;
  sub_1D431525C();
}

- (_TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery)initWithDrawing:(id)drawing
{
  v4 = sub_1D4419B14();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  drawingCopy = drawing;
  sub_1D4419B04();

  return sub_1D4315930(v6);
}

- (_TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_drawingUUID) = 0;
  v4 = OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_continuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F50);
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  *(&self->super.super.isa + OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_resumed) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_timer) = 0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(ICTitleQuery *)&v7 init];
}

@end