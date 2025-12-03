@interface DURawDocument
- (BOOL)isEqual:(id)equal;
- (NSArray)documentUIElements;
- (NSArray)keywords;
- (_TtC21DocumentUnderstanding18DUDocumentHTMLData)documentHTMLData;
- (_TtC21DocumentUnderstanding21DUDocumentMessageData)documentMessageData;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setDocumentHTMLData:(id)data;
- (void)setDocumentMessageData:(id)data;
- (void)setDocumentUIElements:(id)elements;
- (void)setKeywords:(id)keywords;
@end

@implementation DURawDocument

- (NSArray)keywords
{
  if (sub_232BF2510())
  {
    v2 = sub_232CE9FD0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setKeywords:(id)keywords
{
  if (keywords)
  {
    v4 = sub_232CE9FE0();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_232BF2590(v4);
}

- (_TtC21DocumentUnderstanding21DUDocumentMessageData)documentMessageData
{
  v2 = sub_232BF2EE8();

  return v2;
}

- (void)setDocumentMessageData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  sub_232BF2F88(data);
}

- (NSArray)documentUIElements
{
  if (sub_232BF30BC())
  {
    type metadata accessor for DUDocumentUIElement();
    v2 = sub_232CE9FD0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setDocumentUIElements:(id)elements
{
  elementsCopy = elements;
  if (elements)
  {
    type metadata accessor for DUDocumentUIElement();
    elementsCopy = sub_232CE9FE0();
  }

  selfCopy = self;
  sub_232BF313C(elementsCopy);
}

- (_TtC21DocumentUnderstanding18DUDocumentHTMLData)documentHTMLData
{
  v2 = sub_232BF31F4();

  return v2;
}

- (void)setDocumentHTMLData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  sub_232BF3294(data);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_232BF34F8();
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_232BF3814(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_232CEA420();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_232BF3908();

  sub_232B13790(v8, &qword_27DDC68C8, &qword_232CF6210);
  return v6 & 1;
}

@end