@interface PanEaterGestureRecognizer
- (_TtC11NotesEditor25PanEaterGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)reset;
@end

@implementation PanEaterGestureRecognizer

- (void)reset
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for PanEaterGestureRecognizer();
  v2 = v5.receiver;
  [(PanEaterGestureRecognizer *)&v5 reset];
  v3 = *&v2[OBJC_IVAR____TtC11NotesEditor25PanEaterGestureRecognizer_touch];
  *&v2[OBJC_IVAR____TtC11NotesEditor25PanEaterGestureRecognizer_touch] = 0;

  v4 = &v2[OBJC_IVAR____TtC11NotesEditor25PanEaterGestureRecognizer_startPoint];
  *v4 = 0;
  *(v4 + 1) = 0;
}

- (_TtC11NotesEditor25PanEaterGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_215316E98(v6, action);
}

@end