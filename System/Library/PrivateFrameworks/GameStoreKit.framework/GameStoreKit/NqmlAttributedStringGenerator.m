@interface NqmlAttributedStringGenerator
- (_TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator)init;
- (void)parser:(id)a3 didEndElement:(unint64_t)a4;
- (void)parser:(id)a3 didFindCharacters:(id)a4;
- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
- (void)parserDidEndDocument:(id)a3;
@end

@implementation NqmlAttributedStringGenerator

- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5
{
  v7 = a3;
  v8 = self;
  sub_24ECB5984(a4);
}

- (void)parser:(id)a3 didEndElement:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_24ECB60E8(a4);
}

- (void)parser:(id)a3 didFindCharacters:(id)a4
{
  sub_24F92B0D8();
  v6 = a3;
  v7 = self;
  sub_24ECB68E4();
}

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_24ECB6F54();
}

- (void)parserDidEndDocument:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24ECB7134();
}

- (_TtC12GameStoreKitP33_C27E3859FAA7A34F42420BC6F58DAC0B29NqmlAttributedStringGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end