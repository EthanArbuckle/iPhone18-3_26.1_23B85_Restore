@interface NqmlAttributedStringGenerator
- (_TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator)init;
- (void)parser:(id)parser didEndElement:(unint64_t)element;
- (void)parser:(id)parser didFindCharacters:(id)characters;
- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parserDidEndDocument:(id)document;
@end

@implementation NqmlAttributedStringGenerator

- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes
{
  parserCopy = parser;
  selfCopy = self;
  sub_24ECB5984(element);
}

- (void)parser:(id)parser didEndElement:(unint64_t)element
{
  parserCopy = parser;
  selfCopy = self;
  sub_24ECB60E8(element);
}

- (void)parser:(id)parser didFindCharacters:(id)characters
{
  sub_24F92B0D8();
  parserCopy = parser;
  selfCopy = self;
  sub_24ECB68E4();
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  parserCopy = parser;
  occurredCopy = occurred;
  selfCopy = self;
  sub_24ECB6F54();
}

- (void)parserDidEndDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  sub_24ECB7134();
}

- (_TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end