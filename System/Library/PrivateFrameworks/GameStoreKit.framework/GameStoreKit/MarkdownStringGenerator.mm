@interface MarkdownStringGenerator
- (_TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator)init;
- (void)parser:(id)parser didEndElement:(unint64_t)element;
- (void)parser:(id)parser didFindCharacters:(id)characters;
- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parserDidFindNewline:(id)newline;
@end

@implementation MarkdownStringGenerator

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  parserCopy = parser;
  occurredCopy = occurred;
  selfCopy = self;
  sub_24F26DEF8();
}

- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes
{
  v6 = 0xE200000000000000;
  v7 = 32382;
  v8 = 0xE000000000000000;
  v9 = 95;
  if (element == 1)
  {
    v8 = 0xE100000000000000;
  }

  else
  {
    v9 = 0;
  }

  if (element != 3)
  {
    v7 = v9;
    v6 = v8;
  }

  if (element)
  {
    v10 = v7;
  }

  else
  {
    v10 = 10794;
  }

  if (element)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0xE200000000000000;
  }

  swift_beginAccess();
  selfCopy = self;
  MEMORY[0x253050C20](v10, v11);
  swift_endAccess();
}

- (void)parser:(id)parser didEndElement:(unint64_t)element
{
  v5 = 0xE200000000000000;
  v6 = 32382;
  v7 = 0xE000000000000000;
  v8 = 95;
  if (element == 1)
  {
    v7 = 0xE100000000000000;
  }

  else
  {
    v8 = 0;
  }

  if (element != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (element)
  {
    v9 = v6;
  }

  else
  {
    v9 = 10794;
  }

  if (element)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  swift_beginAccess();
  selfCopy = self;
  MEMORY[0x253050C20](v9, v10);
  swift_endAccess();
}

- (void)parser:(id)parser didFindCharacters:(id)characters
{
  v6 = sub_24F92B0D8();
  v8 = v7;
  parserCopy = parser;
  selfCopy = self;
  sub_24F26E0C8(v6, v8);
}

- (void)parserDidFindNewline:(id)newline
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_configuration);
  v5 = *&self->parser[OBJC_IVAR____TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator_configuration];
  swift_beginAccess();
  selfCopy = self;
  MEMORY[0x253050C20](v4, v5);
  swift_endAccess();
}

- (_TtC12GameStoreKitP33_FC1DFA0E314ACDA2FAD6107330E2351423MarkdownStringGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end