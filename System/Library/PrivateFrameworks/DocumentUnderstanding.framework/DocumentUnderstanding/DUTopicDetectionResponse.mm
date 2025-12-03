@interface DUTopicDetectionResponse
- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setResponseDebugInfo:(id)info;
@end

@implementation DUTopicDetectionResponse

- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo
{
  v2 = sub_232C0F980();

  return v2;
}

- (void)setResponseDebugInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_232C0FA20(info);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_232C10640(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_232C10734(coderCopy);
}

@end