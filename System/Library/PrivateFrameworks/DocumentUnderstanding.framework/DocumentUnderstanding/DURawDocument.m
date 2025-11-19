@interface DURawDocument
- (BOOL)isEqual:(id)a3;
- (NSArray)documentUIElements;
- (NSArray)keywords;
- (_TtC21DocumentUnderstanding18DUDocumentHTMLData)documentHTMLData;
- (_TtC21DocumentUnderstanding21DUDocumentMessageData)documentMessageData;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDocumentHTMLData:(id)a3;
- (void)setDocumentMessageData:(id)a3;
- (void)setDocumentUIElements:(id)a3;
- (void)setKeywords:(id)a3;
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

- (void)setKeywords:(id)a3
{
  if (a3)
  {
    v4 = sub_232CE9FE0();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_232BF2590(v4);
}

- (_TtC21DocumentUnderstanding21DUDocumentMessageData)documentMessageData
{
  v2 = sub_232BF2EE8();

  return v2;
}

- (void)setDocumentMessageData:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_232BF2F88(a3);
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

- (void)setDocumentUIElements:(id)a3
{
  v3 = a3;
  if (a3)
  {
    type metadata accessor for DUDocumentUIElement();
    v3 = sub_232CE9FE0();
  }

  v5 = self;
  sub_232BF313C(v3);
}

- (_TtC21DocumentUnderstanding18DUDocumentHTMLData)documentHTMLData
{
  v2 = sub_232BF31F4();

  return v2;
}

- (void)setDocumentHTMLData:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_232BF3294(a3);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BF34F8();
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_232BF3814(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_232CEA420();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_232BF3908();

  sub_232B13790(v8, &qword_27DDC68C8, &qword_232CF6210);
  return v6 & 1;
}

@end