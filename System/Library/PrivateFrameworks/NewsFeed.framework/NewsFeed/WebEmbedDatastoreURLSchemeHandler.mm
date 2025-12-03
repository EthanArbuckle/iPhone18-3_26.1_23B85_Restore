@interface WebEmbedDatastoreURLSchemeHandler
- (NSString)description;
- (WKURLSchemeTask)task;
- (_TtC8NewsFeed33WebEmbedDatastoreURLSchemeHandler)init;
- (void)cancel;
- (void)start;
@end

@implementation WebEmbedDatastoreURLSchemeHandler

- (WKURLSchemeTask)task
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (NSString)description
{

  v2 = sub_1D726203C();

  return v2;
}

- (void)start
{
  selfCopy = self;
  sub_1D5E3C3B8();
}

- (void)cancel
{
  v3 = OBJC_IVAR____TtC8NewsFeed33WebEmbedDatastoreURLSchemeHandler_loadTask;
  if (*(&self->super.isa + OBJC_IVAR____TtC8NewsFeed33WebEmbedDatastoreURLSchemeHandler_loadTask))
  {
    sub_1D5BA6EF4();
    selfCopy = self;

    sub_1D726296C();
  }

  else
  {
    selfCopy2 = self;
  }

  *(&self->super.isa + v3) = 0;
}

- (_TtC8NewsFeed33WebEmbedDatastoreURLSchemeHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end