@interface MSCMSCompressedData
+ (id)decodeMessageSecurityObject:(id)object options:(id)options error:(id *)error;
- (MSCMSCompressedData)init;
- (MSCMSCompressedData)initWithDataContent:(id)content error:(id *)error;
- (MSCMSMessage)embeddedContent;
- (MSOID)contentType;
- (MSOID)type;
- (NSData)dataContent;
- (id)encodeMessageSecurityObject:(id *)object;
- (void)setContentType:(id)type;
- (void)setDataContent:(id)content;
- (void)setEmbeddedContent:(id)content;
- (void)setType:(id)type;
@end

@implementation MSCMSCompressedData

- (MSOID)type
{
  v3 = OBJC_IVAR___MSCMSCompressedData_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(id)type
{
  v5 = OBJC_IVAR___MSCMSCompressedData_type;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = type;
  typeCopy = type;
}

- (NSData)dataContent
{
  v2 = (self + OBJC_IVAR___MSCMSCompressedData_dataContent);
  swift_beginAccess();
  v3 = 0;
  v4 = v2[1];
  if (v4 >> 60 != 15)
  {
    v5 = *v2;
    sub_258CA85E0(v5, v4);
    v6 = sub_258CBEA60();
    sub_258CA8728(v5, v4);
    v3 = v6;
  }

  return v3;
}

- (void)setDataContent:(id)content
{
  contentCopy = content;
  if (content)
  {
    selfCopy = self;
    v6 = contentCopy;
    contentCopy = sub_258CBEA80();
    v8 = v7;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0xF000000000000000;
  }

  v10 = (self + OBJC_IVAR___MSCMSCompressedData_dataContent);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = contentCopy;
  v10[1] = v8;
  sub_258CA8728(v11, v12);
}

- (MSCMSMessage)embeddedContent
{
  v3 = OBJC_IVAR___MSCMSCompressedData_embeddedContent;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setEmbeddedContent:(id)content
{
  v5 = OBJC_IVAR___MSCMSCompressedData_embeddedContent;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = content;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (MSOID)contentType
{
  v3 = OBJC_IVAR___MSCMSCompressedData_contentType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentType:(id)type
{
  v5 = OBJC_IVAR___MSCMSCompressedData_contentType;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = type;
  typeCopy = type;
}

- (MSCMSCompressedData)initWithDataContent:(id)content error:(id *)error
{
  contentCopy = content;
  v5 = sub_258CBEA80();
  v7 = v6;

  return MSCMSCompressedData.init(dataContent:)(v5, v7);
}

- (id)encodeMessageSecurityObject:(id *)object
{
  selfCopy = self;
  v4 = MSCMSCompressedData.encodeSecurityObject()();
  v6 = v5;

  v7 = sub_258CBEA60();
  sub_258CA82B8(v4, v6);

  return v7;
}

+ (id)decodeMessageSecurityObject:(id)object options:(id)options error:(id *)error
{
  objectCopy = object;
  optionsCopy = options;
  v8 = sub_258CBEA80();
  v10 = v9;

  v11 = sub_258CB200C(v8, v10, options);
  sub_258CA82B8(v8, v10);

  return v11;
}

- (MSCMSCompressedData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end