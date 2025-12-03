@interface RemovingNQMLStringGenerator
- (_TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator)init;
- (void)parser:(id)parser didFindCharacters:(id)characters;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parserDidFindNewline:(id)newline;
@end

@implementation RemovingNQMLStringGenerator

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  parserCopy = parser;
  occurredCopy = occurred;
  selfCopy = self;
  sub_24E8EBE1C();
}

- (void)parser:(id)parser didFindCharacters:(id)characters
{
  v6 = sub_24F92B0D8();
  v8 = v7;
  parserCopy = parser;
  selfCopy = self;
  sub_24E8EBFEC(v6, v8);
}

- (void)parserDidFindNewline:(id)newline
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_configuration);
  v5 = *&self->parser[OBJC_IVAR____TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator_configuration];
  swift_beginAccess();
  selfCopy = self;
  MEMORY[0x253050C20](v4, v5);
  swift_endAccess();
}

- (_TtC12GameStoreKitP33_BF66825AF5EE6D24DC510025E980ABCC27RemovingNQMLStringGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end