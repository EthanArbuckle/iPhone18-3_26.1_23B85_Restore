@interface DULanguageTaggingResponse
- (NSArray)languageTags;
- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setLanguageTags:(id)a3;
- (void)setResponseDebugInfo:(id)a3;
@end

@implementation DULanguageTaggingResponse

- (NSArray)languageTags
{
  sub_232BD876C();
  v2 = sub_232CE9FD0();

  return v2;
}

- (void)setLanguageTags:(id)a3
{
  v4 = sub_232CE9FE0();
  v5 = self;
  sub_232BD880C(v4);
}

- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo
{
  v2 = sub_232BD890C();

  return v2;
}

- (void)setResponseDebugInfo:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_232BD89A4(a3);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_232BD97A4(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BD9898(v4);
}

@end