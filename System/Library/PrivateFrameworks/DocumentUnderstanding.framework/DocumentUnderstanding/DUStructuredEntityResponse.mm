@interface DUStructuredEntityResponse
- (NSArray)structuredEntities;
- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setResponseDebugInfo:(id)a3;
- (void)setStructuredEntities:(id)a3;
@end

@implementation DUStructuredEntityResponse

- (NSArray)structuredEntities
{
  if (sub_232C09034())
  {
    type metadata accessor for DUStructuredEntity();
    v2 = sub_232CE9FD0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setStructuredEntities:(id)a3
{
  v3 = a3;
  if (a3)
  {
    type metadata accessor for DUStructuredEntity();
    v3 = sub_232CE9FE0();
  }

  v5 = self;
  sub_232C090E8(v3);
}

- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo
{
  v2 = sub_232C091E8();

  return v2;
}

- (void)setResponseDebugInfo:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_232C09288(a3);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_232C0973C(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232C09830();
}

@end