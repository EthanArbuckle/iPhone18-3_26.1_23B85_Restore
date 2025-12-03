@interface ICCalculateAccessibilityController
- (ICCalculateAccessibilityController)init;
- (ICCalculateAccessibilityController)initWithNote:(id)note;
- (ICNote)note;
- (id)getValueForPencilKitAttachmentAtRange:(_NSRange)range;
@end

@implementation ICCalculateAccessibilityController

- (ICCalculateAccessibilityController)initWithNote:(id)note
{
  noteCopy = note;
  v4 = sub_1D4191B38();

  return v4;
}

- (ICNote)note
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (id)getValueForPencilKitAttachmentAtRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  sub_1D438BCFC(location, length);
  v7 = v6;

  if (v7)
  {
    v8 = sub_1D4419C14();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (ICCalculateAccessibilityController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end