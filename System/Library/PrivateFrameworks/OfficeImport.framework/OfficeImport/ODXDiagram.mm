@interface ODXDiagram
+ (_xmlNode)nodeForRelationship:(id)relationship part:(id)part state:(id)state;
+ (_xmlNode)nodeForRelationshipName:(const char *)name relIdsNode:(_xmlNode *)node part:(id)part state:(id)state;
+ (id)readFromParentNode:(_xmlNode *)node state:(id)state;
@end

@implementation ODXDiagram

+ (id)readFromParentNode:(_xmlNode *)node state:(id)state
{
  stateCopy = state;
  oDXDiagramNamespace = [stateCopy ODXDiagramNamespace];
  v8 = OCXFindChild(node, oDXDiagramNamespace, "relIds");

  if (!v8)
  {
    officeArtState = [stateCopy officeArtState];
    oAXMainNamespace = [officeArtState OAXMainNamespace];
    v8 = OCXFirstChild(node, oAXMainNamespace, "relIds");
  }

  officeArtState2 = [stateCopy officeArtState];
  packagePart = [officeArtState2 packagePart];

  v13 = objc_alloc_init(ODDDiagram);
  officeArtState3 = [stateCopy officeArtState];
  v15 = [self nodeForRelationshipName:"qs" relIdsNode:v8 part:packagePart state:officeArtState3];

  styleDefinition = [(ODDDiagram *)v13 styleDefinition];
  [ODXStyleDefinition readNode:v15 definition:styleDefinition state:stateCopy];

  officeArtState4 = [stateCopy officeArtState];
  v18 = [self nodeForRelationshipName:"cs" relIdsNode:v8 part:packagePart state:officeArtState4];

  colorTransform = [(ODDDiagram *)v13 colorTransform];
  [ODXColorTransform readNode:v18 transform:colorTransform state:stateCopy];

  officeArtState5 = [stateCopy officeArtState];
  v21 = [self nodeForRelationshipName:"dm" relIdsNode:v8 part:packagePart state:officeArtState5];

  [ODXData readNode:v21 toDiagram:v13 state:stateCopy];
  v22 = [ODXDrawing readDrawingRelationshipIdFromDataNode:v21 state:stateCopy];
  if ([v22 length])
  {
    v23 = [packagePart relationshipForIdentifier:v22];
    officeArtState6 = [stateCopy officeArtState];
    v25 = [self nodeForRelationship:v23 part:packagePart state:officeArtState6];

    [ODXDrawing readNode:v25 toDiagram:v13 state:stateCopy];
  }

  officeArtState7 = [stateCopy officeArtState];
  client = [officeArtState7 client];
  officeArtState8 = [stateCopy officeArtState];
  [client readClientDataFromGraphicDataNode:node toDiagram:v13 state:officeArtState8];

  officeArtState9 = [stateCopy officeArtState];
  [officeArtState9 setPackagePart:packagePart];

  return v13;
}

+ (_xmlNode)nodeForRelationshipName:(const char *)name relIdsNode:(_xmlNode *)node part:(id)part state:(id)state
{
  partCopy = part;
  stateCopy = state;
  v12 = [stateCopy OCXReadRequiredRelationshipForNode:node attributeName:name packagePart:partCopy];
  v13 = [self nodeForRelationship:v12 part:partCopy state:stateCopy];

  return v13;
}

+ (_xmlNode)nodeForRelationship:(id)relationship part:(id)part state:(id)state
{
  relationshipCopy = relationship;
  partCopy = part;
  stateCopy = state;
  package = [partCopy package];
  targetLocation = [relationshipCopy targetLocation];
  v12 = [package partForLocation:targetLocation];

  if (!v12)
  {
    v13 = MEMORY[0x277CBEAD8];
    identifier = [relationshipCopy identifier];
    [v13 raise:@"ODXException" format:{@"Couldn't find drawing part: %@", identifier}];
  }

  [stateCopy setPackagePart:v12];
  v15 = OCXGetRootElement([v12 xmlDocument]);
  if (!v15)
  {
    v16 = MEMORY[0x277CBEAD8];
    identifier2 = [relationshipCopy identifier];
    [v16 raise:@"ODXException" format:{@"Couldn't get root node for drawing part: %@", identifier2}];
  }

  package2 = [partCopy package];
  targetLocation2 = [relationshipCopy targetLocation];
  [package2 resetPartForLocation:targetLocation2];

  return v15;
}

@end