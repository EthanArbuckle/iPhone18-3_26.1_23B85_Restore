@interface NQMLStringGenerator
- (_TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator)init;
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

@implementation NQMLStringGenerator

- (void)parserDidStartDocument:(id)document
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BADA1240;
  v5 = *MEMORY[0x1E69DB688];
  *(inited + 32) = *MEMORY[0x1E69DB688];
  v6 = self + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_configuration;
  v7 = *&self->configuration[OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_configuration + 8];
  v8 = sub_1BAD053C8(0, &qword_1EBC29A00);
  *(inited + 40) = v7;
  v9 = *MEMORY[0x1E69DB648];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = *(v6 + 2);
  *(inited + 104) = sub_1BAD053C8(0, &qword_1EDBA58E0);
  *(inited + 80) = v10;
  selfCopy = self;
  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v10;
  v16 = sub_1BAD1FADC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2A3E0);
  swift_arrayDestroy();
  sub_1BAD91F78(v16);
}

- (void)parserDidEndDocument:(id)document
{
  documentCopy = document;
  selfCopy = self;
  sub_1BAD9397C();
}

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  parserCopy = parser;
  occurredCopy = occurred;
  selfCopy = self;
  sub_1BAD93A24();
}

- (void)parser:(id)parser didStartElement:(unint64_t)element attributes:(id)attributes
{
  type metadata accessor for NQMLAttributeName(0);
  sub_1BAD947E8(&qword_1EBC2A068, type metadata accessor for NQMLAttributeName);
  v8 = sub_1BAD9CE98();
  parserCopy = parser;
  selfCopy = self;
  sub_1BAD93C04(element, v8);
}

- (void)parser:(id)parser didEndElement:(unint64_t)element
{
  parserCopy = parser;
  selfCopy = self;
  sub_1BAD94060(element);
}

- (void)parser:(id)parser didFindCharacters:(id)characters
{
  sub_1BAD9CF68();
  parserCopy = parser;
  selfCopy = self;
  sub_1BAD9413C();
}

- (void)parserDidFindNewline:(id)newline
{
  selfCopy = self;
  sub_1BAD9234C();
}

- (void)parser:(id)parser didStartListOfStyle:(unint64_t)style
{
  parserCopy = parser;
  selfCopy = self;
  sub_1BAD94330(style);
}

- (void)parserDidStartListElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  sub_1BAD944DC();
}

- (void)parserDidEndListElement:(id)element
{
  selfCopy = self;
  sub_1BAD9234C();
  v3 = *(&selfCopy->super.isa + OBJC_IVAR____TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator_orderedListTracker);
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
  sub_1BAD94700();
}

- (_TtC5JetUIP33_F1C4EBA6165AEBFE43471B55508F17DF19NQMLStringGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end