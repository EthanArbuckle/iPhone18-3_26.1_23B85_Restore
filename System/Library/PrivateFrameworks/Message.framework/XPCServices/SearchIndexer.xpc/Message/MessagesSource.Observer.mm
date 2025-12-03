@interface MessagesSource.Observer
- (_TtCC17IMAPSearchIndexer14MessagesSourceP33_E1A8B391650F3B1F0F6653DD7702EDFA8Observer)init;
- (void)controllerDidChangeContent:(id)content;
@end

@implementation MessagesSource.Observer

- (void)controllerDidChangeContent:(id)content
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) == 1)
    {
      v6 = *(Strong + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange);
      v5 = *(Strong + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange + 8);
      selfCopy = self;

      v6(v7);
    }

    else
    {
    }
  }
}

- (_TtCC17IMAPSearchIndexer14MessagesSourceP33_E1A8B391650F3B1F0F6653DD7702EDFA8Observer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end