@interface DUStructuredEntityResponse
- (NSArray)structuredEntities;
- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setResponseDebugInfo:(id)info;
- (void)setStructuredEntities:(id)entities;
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

- (void)setStructuredEntities:(id)entities
{
  entitiesCopy = entities;
  if (entities)
  {
    type metadata accessor for DUStructuredEntity();
    entitiesCopy = sub_232CE9FE0();
  }

  selfCopy = self;
  sub_232C090E8(entitiesCopy);
}

- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo
{
  v2 = sub_232C091E8();

  return v2;
}

- (void)setResponseDebugInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_232C09288(info);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_232C0973C(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_232C09830();
}

@end