@interface DUUserInterfaceUnderstandingResponse
- (NSArray)foundEntities;
- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setFoundEntities:(id)entities;
- (void)setResponseDebugInfo:(id)info;
@end

@implementation DUUserInterfaceUnderstandingResponse

- (NSArray)foundEntities
{
  sub_232C165EC();
  type metadata accessor for DUUserInterfaceUnderstandingResult();
  v2 = sub_232CE9FD0();

  return v2;
}

- (void)setFoundEntities:(id)entities
{
  type metadata accessor for DUUserInterfaceUnderstandingResult();
  v4 = sub_232CE9FE0();
  selfCopy = self;
  sub_232C16694(v4);
}

- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo
{
  v2 = sub_232C16794();

  return v2;
}

- (void)setResponseDebugInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_232C1682C(info);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_232C16C48(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_232C16D3C(coderCopy);
}

@end