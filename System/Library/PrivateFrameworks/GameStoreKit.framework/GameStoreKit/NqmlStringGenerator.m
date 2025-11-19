@interface NqmlStringGenerator
- (_TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator)init;
- (void)parser:(id)a3 didEndElement:(unint64_t)a4;
- (void)parser:(id)a3 didEndListOfStyle:(unint64_t)a4;
- (void)parser:(id)a3 didFindCharacters:(id)a4;
- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5;
- (void)parser:(id)a3 didStartListOfStyle:(unint64_t)a4;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
- (void)parserDidEndDocument:(id)a3;
- (void)parserDidEndListElement:(id)a3;
- (void)parserDidFindNewline:(id)a3;
- (void)parserDidStartDocument:(id)a3;
- (void)parserDidStartListElement:(id)a3;
@end

@implementation NqmlStringGenerator

- (void)parserDidStartDocument:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E909010();
}

- (void)parserDidEndDocument:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E909164();
}

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_24E90920C();
}

- (void)parser:(id)a3 didStartElement:(unint64_t)a4 attributes:(id)a5
{
  type metadata accessor for NqmlAttributeName(0);
  sub_24E909FA4(&qword_27F2126A0, type metadata accessor for NqmlAttributeName);
  v8 = sub_24F92AE38();
  v9 = a3;
  v10 = self;
  sub_24E9093EC(a4, v8);
}

- (void)parser:(id)a3 didEndElement:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_24E9097FC(a4);
}

- (void)parser:(id)a3 didFindCharacters:(id)a4
{
  sub_24F92B0D8();
  v6 = a3;
  v7 = self;
  sub_24E9098D8();
}

- (void)parserDidFindNewline:(id)a3
{
  v3 = self;
  sub_24E907C20();
}

- (void)parser:(id)a3 didStartListOfStyle:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_24E909ACC(a4);
}

- (void)parserDidStartListElement:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E909C78();
}

- (void)parserDidEndListElement:(id)a3
{
  v7 = self;
  sub_24E907C20();
  v3 = *(&v7->super.isa + OBJC_IVAR____TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator_orderedListTracker);
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

- (void)parser:(id)a3 didEndListOfStyle:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_24E909EBC();
}

- (_TtC12GameStoreKitP33_E5F5E586AE13EFB872781773A0CDC19F19NqmlStringGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end