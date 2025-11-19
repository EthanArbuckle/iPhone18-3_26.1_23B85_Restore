@interface ODXStyleDefinition
+ (void)readNode:(_xmlNode *)a3 definition:(id)a4 state:(id)a5;
@end

@implementation ODXStyleDefinition

+ (void)readNode:(_xmlNode *)a3 definition:(id)a4 state:(id)a5
{
  v16 = a4;
  v7 = a5;
  v8 = [v7 ODXDiagramNamespace];
  HasName = CXNodeHasName(a3, v8, "styleDef");

  if (!HasName)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Not a diagram style definition node"];
  }

  v10 = [v7 ODXDiagramNamespace];
  v11 = OCXFindChild(a3, v10, "styleLbl");

  while (1)
  {
    v12 = [v7 ODXDiagramNamespace];
    v13 = CXNodeHasName(v11, v12, "styleLbl");

    if (!v13)
    {
      break;
    }

    v14 = objc_alloc_init(ODDStyleLabel);
    [ODXStyleLabel readNode:v11 label:v14 state:v7];
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) tc_initFromXmlNode:v11 ns:0 attributeName:"name"];
    if (!v15)
    {
      [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Missing style label name"];
    }

    [v16 setLabel:v14 forName:v15];
    v11 = OCXNextSibling(v11);
  }
}

@end