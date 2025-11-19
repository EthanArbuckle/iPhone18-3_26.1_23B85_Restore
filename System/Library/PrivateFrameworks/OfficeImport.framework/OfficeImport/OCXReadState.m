@interface OCXReadState
- (id)OCXReadRelationshipForNode:(_xmlNode *)a3 attributeName:(const char *)a4 packagePart:(id)a5;
- (id)OCXReadRelationshipForNode:(_xmlNode *)a3 packagePart:(id)a4;
- (id)OCXReadRequiredRelationshipForNode:(_xmlNode *)a3 attributeName:(const char *)a4 packagePart:(id)a5;
- (id)OCXReadRequiredRelationshipForNode:(_xmlNode *)a3 packagePart:(id)a4;
@end

@implementation OCXReadState

- (id)OCXReadRelationshipForNode:(_xmlNode *)a3 attributeName:(const char *)a4 packagePart:(id)a5
{
  v8 = a5;
  v9 = CXXmlHasNsPropWithFallbackNs(a3, a4, self->super.mOCXRelationshipsNamespace);
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initWithValueOfXmlAttribute:v9];
    v11 = [v8 relationshipForIdentifier:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)OCXReadRelationshipForNode:(_xmlNode *)a3 packagePart:(id)a4
{
  v4 = [(OCXReadState *)self OCXReadRelationshipForNode:a3 attributeName:"id" packagePart:a4];

  return v4;
}

- (id)OCXReadRequiredRelationshipForNode:(_xmlNode *)a3 attributeName:(const char *)a4 packagePart:(id)a5
{
  v6 = [(OCXReadState *)self OCXReadRelationshipForNode:a3 attributeName:a4 packagePart:a5];
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:@"OCXException" format:{@"Could not find required relationship: %s", a4}];
  }

  return v6;
}

- (id)OCXReadRequiredRelationshipForNode:(_xmlNode *)a3 packagePart:(id)a4
{
  v4 = [(OCXReadState *)self OCXReadRelationshipForNode:a3 attributeName:"id" packagePart:a4];
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:@"OCXException" format:@"Could not find required relationship: id"];
  }

  return v4;
}

@end