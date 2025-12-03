@interface NqmlStringGenerator
- (_TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator)init;
- (void)parser:(id)parser didEndElement:(unint64_t)element;
- (void)parser:(id)parser didEndListOfStyle:(unint64_t)style;
- (void)parser:(id)parser didFindCharacters:(id)characters;
- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes;
- (void)parser:(id)parser didStartListOfStyle:(unint64_t)style;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parserDidEndDocument:(id)document;
- (void)parserDidEndListElement:(id)element;
- (void)parserDidFindNewline:(id)newline;
- (void)parserDidStartDocument:(id)document;
- (void)parserDidStartListElement:(id)element;
@end

@implementation NqmlStringGenerator

- (void)parserDidStartDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  sub_24E909010();
}

- (void)parserDidEndDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  sub_24E909164();
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  parserCopy = parser;
  occurredCopy = occurred;
  selfCopy = self;
  sub_24E90920C();
}

- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes
{
  type metadata accessor for NqmlAttributeName(0);
  sub_24E909FA4(&qword_27F2126A0, type metadata accessor for NqmlAttributeName);
  v8 = sub_24F92AE38();
  parserCopy = parser;
  selfCopy = self;
  sub_24E9093EC(element, v8);
}

- (void)parser:(id)parser didEndElement:(unint64_t)element
{
  parserCopy = parser;
  selfCopy = self;
  sub_24E9097FC(element);
}

- (void)parser:(id)parser didFindCharacters:(id)characters
{
  sub_24F92B0D8();
  parserCopy = parser;
  selfCopy = self;
  sub_24E9098D8();
}

- (void)parserDidFindNewline:(id)newline
{
  selfCopy = self;
  sub_24E907C20();
}

- (void)parser:(id)parser didStartListOfStyle:(unint64_t)style
{
  parserCopy = parser;
  selfCopy = self;
  sub_24E909ACC(style);
}

- (void)parserDidStartListElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  sub_24E909C78();
}

- (void)parserDidEndListElement:(id)element
{
  selfCopy = self;
  sub_24E907C20();
  v3 = *(&selfCopy->super.isa + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_orderedListTracker);
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
      return;
    }

    *(v3 + 16) = v6;
  }
}

- (void)parser:(id)parser didEndListOfStyle:(unint64_t)style
{
  parserCopy = parser;
  selfCopy = self;
  sub_24E909EBC();
}

- (_TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end