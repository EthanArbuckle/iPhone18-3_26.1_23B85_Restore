@interface DUUserInterfaceUnderstandingResponse
- (NSArray)foundEntities;
- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setFoundEntities:(id)a3;
- (void)setResponseDebugInfo:(id)a3;
@end

@implementation DUUserInterfaceUnderstandingResponse

- (NSArray)foundEntities
{
  sub_232C165EC();
  type metadata accessor for DUUserInterfaceUnderstandingResult();
  v2 = sub_232CE9FD0();

  return v2;
}

- (void)setFoundEntities:(id)a3
{
  type metadata accessor for DUUserInterfaceUnderstandingResult();
  v4 = sub_232CE9FE0();
  v5 = self;
  sub_232C16694(v4);
}

- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo
{
  v2 = sub_232C16794();

  return v2;
}

- (void)setResponseDebugInfo:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_232C1682C(a3);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_232C16C48(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232C16D3C(v4);
}

@end