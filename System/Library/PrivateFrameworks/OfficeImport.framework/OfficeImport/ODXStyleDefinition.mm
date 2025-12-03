@interface ODXStyleDefinition
+ (void)readNode:(_xmlNode *)node definition:(id)definition state:(id)state;
@end

@implementation ODXStyleDefinition

+ (void)readNode:(_xmlNode *)node definition:(id)definition state:(id)state
{
  definitionCopy = definition;
  stateCopy = state;
  oDXDiagramNamespace = [stateCopy ODXDiagramNamespace];
  HasName = CXNodeHasName(node, oDXDiagramNamespace, "styleDef");

  if (!HasName)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Not a diagram style definition node"];
  }

  oDXDiagramNamespace2 = [stateCopy ODXDiagramNamespace];
  v11 = OCXFindChild(node, oDXDiagramNamespace2, "styleLbl");

  while (1)
  {
    oDXDiagramNamespace3 = [stateCopy ODXDiagramNamespace];
    v13 = CXNodeHasName(v11, oDXDiagramNamespace3, "styleLbl");

    if (!v13)
    {
      break;
    }

    v14 = objc_alloc_init(ODDStyleLabel);
    [ODXStyleLabel readNode:v11 label:v14 state:stateCopy];
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initFromXmlNode:v11 ns:0 attributeName:"name"];
    if (!v15)
    {
      [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Missing style label name"];
    }

    [definitionCopy setLabel:v14 forName:v15];
    v11 = OCXNextSibling(v11);
  }
}

@end