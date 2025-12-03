@interface DUDocument
- (BOOL)isEqual:(id)equal;
- (NSArray)documentUIElements;
- (NSArray)keywords;
- (_TtC21DocumentUnderstanding10DUDocument)initWithText:(id)text maxLength:(int64_t)length;
- (_TtC21DocumentUnderstanding18DUDocumentHTMLData)documentHTMLData;
- (_TtC21DocumentUnderstanding21DUDocumentMessageData)documentMessageData;
- (id)copyWithZone:(void *)zone;
- (id)rawCopy;
- (void)encodeWithCoder:(id)coder;
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

- (_TtC21DocumentUnderstanding10DUDocument)initWithText:(id)text maxLength:(int64_t)length
{
  if (text)
  {
    v5 = sub_232CE9D50();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return DUDocument.init(text:maxLength:)(v5, v6, length);
}

- (id)rawCopy
{
  selfCopy = self;
  v3 = sub_232B591FC();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_232B592B4();
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_232B59448(v6);

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

  v6 = sub_232B596E8(v8);

  sub_232B598F4(v8);
  return v6 & 1;
}

@end