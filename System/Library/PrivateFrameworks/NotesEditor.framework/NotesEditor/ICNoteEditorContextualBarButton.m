@interface ICNoteEditorContextualBarButton
- (BOOL)accessibilityScroll:(int64_t)a3;
- (NSString)largeContentTitle;
- (_TtC11NotesEditor31ICNoteEditorContextualBarButton)initWithCoder:(id)a3;
- (_TtC11NotesEditor31ICNoteEditorContextualBarButton)initWithFrame:(CGRect)a3;
- (void)accessibilityElementDidBecomeFocused;
- (void)updateColoration;
@end

@implementation ICNoteEditorContextualBarButton

- (void)updateColoration
{
  v6 = self;
  v2 = [(ICNoteEditorContextualBarButton *)v6 window];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 tintColor];
    [(ICNoteEditorContextualBarButton *)v6 setTintColor:v4];

    v5 = [objc_opt_self() clearColor];
    [(ICNoteEditorContextualBarButton *)v6 setBackgroundColor:v5];
  }
}

- (void)accessibilityElementDidBecomeFocused
{
  v2 = self;
  sub_215351624();
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = self;
    v6 = sub_2153270FC(v5, a3);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (NSString)largeContentTitle
{
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v2 = v9.receiver;
  v3 = [(ICNoteEditorContextualBarButton *)&v9 largeContentTitle];
  if (v3)
  {
    v4 = v3;
    sub_2154A1D6C();

LABEL_4:
    v7 = sub_2154A1D2C();

    goto LABEL_5;
  }

  sub_21535185C();
  v6 = v5;

  if (v6)
  {
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (_TtC11NotesEditor31ICNoteEditorContextualBarButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC11NotesEditor31ICNoteEditorContextualBarButton_accessibilityContextualBarButtonDelegate) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(ICMorphableButton *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC11NotesEditor31ICNoteEditorContextualBarButton)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC11NotesEditor31ICNoteEditorContextualBarButton_accessibilityContextualBarButtonDelegate) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(ICMorphableButton *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end