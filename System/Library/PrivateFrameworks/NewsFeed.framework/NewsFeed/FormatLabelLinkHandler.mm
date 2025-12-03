@interface FormatLabelLinkHandler
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (_TtC8NewsFeed22FormatLabelLinkHandler)init;
- (void)didTap:(id)tap;
@end

@implementation FormatLabelLinkHandler

- (void)didTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_1D6CABB78(tapCopy);
}

- (_TtC8NewsFeed22FormatLabelLinkHandler)init
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_tapGestureRecognizer) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_link) = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_linkBlock);
  *v4 = 0;
  v4[1] = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(FormatLabelLinkHandler *)&v6 init];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_1D6CABF14(beginCopy);

  return self & 1;
}

@end