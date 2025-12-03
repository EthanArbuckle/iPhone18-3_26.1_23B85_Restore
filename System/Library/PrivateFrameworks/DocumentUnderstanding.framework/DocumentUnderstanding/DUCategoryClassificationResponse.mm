@interface DUCategoryClassificationResponse
- (NSArray)categories;
- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setCategories:(id)categories;
- (void)setResponseDebugInfo:(id)info;
@end

@implementation DUCategoryClassificationResponse

- (NSArray)categories
{
  sub_232B4AE2C();
  type metadata accessor for DUCategoryResult();
  v2 = sub_232CE9FD0();

  return v2;
}

- (void)setCategories:(id)categories
{
  type metadata accessor for DUCategoryResult();
  v4 = sub_232CE9FE0();
  selfCopy = self;
  sub_232B4AED4(v4);
}

- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo
{
  v2 = sub_232B4AFD4();

  return v2;
}

- (void)setResponseDebugInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_232B4B06C(info);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_232B4CB04(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_232B4CBF8(coderCopy);
}

@end