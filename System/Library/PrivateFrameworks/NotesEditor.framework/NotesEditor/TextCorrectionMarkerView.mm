@interface TextCorrectionMarkerView
- (CGRect)frame;
- (_TtC11NotesEditor24TextCorrectionMarkerView)initWithCoder:(id)a3;
- (_TtC11NotesEditor24TextCorrectionMarkerView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
- (void)textViewLayoutDidChange:(id)a3;
@end

@implementation TextCorrectionMarkerView

- (_TtC11NotesEditor24TextCorrectionMarkerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TextCorrectionMarkerView_markers) = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TextCorrectionMarkerView_minimumMarkerWidth) = 0x4034000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TextCorrectionMarkerView_markerYOffset) = 0xC020000000000000;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(TextCorrectionMarkerView *)&v11 initWithFrame:x, y, width, height];
  [(TextCorrectionMarkerView *)v9 setOpaque:0];
  [(TextCorrectionMarkerView *)v9 setUserInteractionEnabled:0];

  return v9;
}

- (_TtC11NotesEditor24TextCorrectionMarkerView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TextCorrectionMarkerView_markers) = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TextCorrectionMarkerView_minimumMarkerWidth) = 0x4034000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC11NotesEditor24TextCorrectionMarkerView_markerYOffset) = 0xC020000000000000;
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(TextCorrectionMarkerView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v7 = v8.receiver;
  [(TextCorrectionMarkerView *)&v8 setFrame:x, y, width, height];
  [v7 ic_setNeedsDisplay];
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_21538F110(x, y, width, height);
}

- (void)textViewLayoutDidChange:(id)a3
{
  v4 = sub_21549E19C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549E16C();
  v8 = self;
  sub_21538EC84();
  [(TextCorrectionMarkerView *)v8 ic_setNeedsDisplay];

  (*(v5 + 8))(v7, v4);
}

@end