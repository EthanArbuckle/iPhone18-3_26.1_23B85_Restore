@interface DUTopicDetectionResponse
- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setResponseDebugInfo:(id)a3;
@end

@implementation DUTopicDetectionResponse

- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo
{
  v2 = sub_232C0F980();

  return v2;
}

- (void)setResponseDebugInfo:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_232C0FA20(a3);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_232C10640(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232C10734(v4);
}

@end