@interface ICNoteEditorContextualBarButton
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (NSString)largeContentTitle;
- (_TtC11NotesEditor31ICNoteEditorContextualBarButton)initWithCoder:(id)coder;
- (_TtC11NotesEditor31ICNoteEditorContextualBarButton)initWithFrame:(CGRect)frame;
- (void)accessibilityElementDidBecomeFocused;
- (void)updateColoration;
@end

@implementation ICNoteEditorContextualBarButton

- (void)updateColoration
{
  selfCopy = self;
  window = [(ICNoteEditorContextualBarButton *)selfCopy window];
  if (window)
  {
    v3 = window;
    tintColor = [window tintColor];
    [(ICNoteEditorContextualBarButton *)selfCopy setTintColor:tintColor];

    clearColor = [objc_opt_self() clearColor];
    [(ICNoteEditorContextualBarButton *)selfCopy setBackgroundColor:clearColor];
  }
}

- (void)accessibilityElementDidBecomeFocused
{
  selfCopy = self;
  sub_215351624();
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    v6 = sub_2153270FC(selfCopy, scroll);
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
  largeContentTitle = [(ICNoteEditorContextualBarButton *)&v9 largeContentTitle];
  if (largeContentTitle)
  {
    v4 = largeContentTitle;
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

- (_TtC11NotesEditor31ICNoteEditorContextualBarButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC11NotesEditor31ICNoteEditorContextualBarButton_accessibilityContextualBarButtonDelegate) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(ICMorphableButton *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC11NotesEditor31ICNoteEditorContextualBarButton)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC11NotesEditor31ICNoteEditorContextualBarButton_accessibilityContextualBarButtonDelegate) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(ICMorphableButton *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end