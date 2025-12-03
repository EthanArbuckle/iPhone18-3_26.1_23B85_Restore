@interface OCXReadState
- (id)OCXReadRelationshipForNode:(_xmlNode *)node attributeName:(const char *)name packagePart:(id)part;
- (id)OCXReadRelationshipForNode:(_xmlNode *)node packagePart:(id)part;
- (id)OCXReadRequiredRelationshipForNode:(_xmlNode *)node attributeName:(const char *)name packagePart:(id)part;
- (id)OCXReadRequiredRelationshipForNode:(_xmlNode *)node packagePart:(id)part;
@end

@implementation OCXReadState

- (id)OCXReadRelationshipForNode:(_xmlNode *)node attributeName:(const char *)name packagePart:(id)part
{
  partCopy = part;
  v9 = CXXmlHasNsPropWithFallbackNs(node, name, self->super.mOCXRelationshipsNamespace);
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithValueOfXmlAttribute:v9];
    v11 = [partCopy relationshipForIdentifier:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)OCXReadRelationshipForNode:(_xmlNode *)node packagePart:(id)part
{
  v4 = [(OCXReadState *)self OCXReadRelationshipForNode:node attributeName:"id" packagePart:part];

  return v4;
}

- (id)OCXReadRequiredRelationshipForNode:(_xmlNode *)node attributeName:(const char *)name packagePart:(id)part
{
  v6 = [(OCXReadState *)self OCXReadRelationshipForNode:node attributeName:name packagePart:part];
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:@"OCXException" format:{@"Could not find required relationship: %s", name}];
  }

  return v6;
}

- (id)OCXReadRequiredRelationshipForNode:(_xmlNode *)node packagePart:(id)part
{
  v4 = [(OCXReadState *)self OCXReadRelationshipForNode:node attributeName:"id" packagePart:part];
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:@"OCXException" format:@"Could not find required relationship: id"];
  }

  return v4;
}

@end