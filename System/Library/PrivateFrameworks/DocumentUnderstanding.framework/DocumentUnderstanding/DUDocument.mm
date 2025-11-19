@interface DUDocument
- (BOOL)isEqual:(id)a3;
- (NSArray)documentUIElements;
- (NSArray)keywords;
- (_TtC21DocumentUnderstanding10DUDocument)initWithText:(id)a3 maxLength:(int64_t)a4;
- (_TtC21DocumentUnderstanding18DUDocumentHTMLData)documentHTMLData;
- (_TtC21DocumentUnderstanding21DUDocumentMessageData)documentMessageData;
- (id)copyWithZone:(void *)a3;
- (id)rawCopy;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DUDocument

- (NSArray)keywords
{
  if (sub_232B582AC())
  {
    v2 = sub_232CE9FD0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (_TtC21DocumentUnderstanding21DUDocumentMessageData)documentMessageData
{
  v2 = sub_232B58674();

  return v2;
}

- (NSArray)documentUIElements
{
  if (sub_232B586E8())
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

- (_TtC21DocumentUnderstanding18DUDocumentHTMLData)documentHTMLData
{
  v2 = sub_232B58760();

  return v2;
}

- (_TtC21DocumentUnderstanding10DUDocument)initWithText:(id)a3 maxLength:(int64_t)a4
{
  if (a3)
  {
    v5 = sub_232CE9D50();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return DUDocument.init(text:maxLength:)(v5, v6, a4);
}

- (id)rawCopy
{
  v2 = self;
  v3 = sub_232B591FC();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232B592B4();
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_232B59448(v6);

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

  v6 = sub_232B596E8(v8);

  sub_232B598F4(v8);
  return v6 & 1;
}

@end