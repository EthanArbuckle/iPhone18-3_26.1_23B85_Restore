@interface OAXStyleMatrix
+ (BOOL)readReferenceFromParentNode:(_xmlNode *)node name:(const char *)name inNamespace:(id)namespace color:(id *)color index:(unsigned int *)index;
+ (id)readReferenceFromNode:(_xmlNode *)node;
+ (void)readFromNode:(_xmlNode *)node toStyleMatrix:(id)matrix packagePart:(id)part drawingState:(id)state;
@end

@implementation OAXStyleMatrix

+ (void)readFromNode:(_xmlNode *)node toStyleMatrix:(id)matrix packagePart:(id)part drawingState:(id)state
{
  matrixCopy = matrix;
  partCopy = part;
  stateCopy = state;
  v11 = CXDefaultStringAttribute(node, CXNoNamespace, "name", 0);
  [matrixCopy setName:v11];

  oAXMainNamespace = [stateCopy OAXMainNamespace];
  v13 = OCXFindChild(node, oAXMainNamespace, "fillStyleLst");

  for (i = OCXFirstChild(v13); i; i = OCXNextSibling(i))
  {
    v15 = [OAXFill readFillFromXmlNode:i packagePart:partCopy drawingState:stateCopy];
    if (v15)
    {
      [matrixCopy addFill:v15];
    }
  }

  oAXMainNamespace2 = [stateCopy OAXMainNamespace];
  v17 = OCXFindChild(node, oAXMainNamespace2, "lnStyleLst");

  for (j = OCXFirstChild(v17); j; j = OCXNextSibling(j))
  {
    if (j->type == XML_ELEMENT_NODE && xmlStrEqual(j->name, "ln"))
    {
      v19 = [OAXStroke readStrokeFromXmlNode:j packagePart:partCopy drawingState:stateCopy];
      [matrixCopy addStroke:v19];
    }
  }

  oAXMainNamespace3 = [stateCopy OAXMainNamespace];
  v21 = OCXFindChild(node, oAXMainNamespace3, "effectStyleLst");
  nodeCopy = node;

  for (k = OCXFirstChild(v21); k; k = OCXNextSibling(k))
  {
    if (k->type == XML_ELEMENT_NODE && xmlStrEqual(k->name, "effectStyle"))
    {
      oAXMainNamespace4 = [stateCopy OAXMainNamespace];
      v24 = OCXFindChild(k, oAXMainNamespace4, "effectLst");

      if (v24)
      {
        [OAXEffect readEffectsFromXmlNode:v24 packagePart:partCopy drawingState:stateCopy];
      }

      else
      {
        [MEMORY[0x277CBEA60] array];
      }
      v25 = ;
      [matrixCopy addEffects:v25];
    }
  }

  oAXMainNamespace5 = [stateCopy OAXMainNamespace];
  v27 = OCXFindChild(nodeCopy, oAXMainNamespace5, "bgFillStyleLst");

  for (m = OCXFirstChild(v27); m; m = OCXNextSibling(m))
  {
    v29 = [OAXFill readFillFromXmlNode:m packagePart:partCopy drawingState:stateCopy];
    if (v29)
    {
      [matrixCopy addBgFill:v29];
    }
  }
}

+ (BOOL)readReferenceFromParentNode:(_xmlNode *)node name:(const char *)name inNamespace:(id)namespace color:(id *)color index:(unsigned int *)index
{
  namespaceCopy = namespace;
  v12 = OCXFindChild(node, namespaceCopy, name);
  v13 = v12;
  if (v12)
  {
    *index = CXRequiredUnsignedLongAttribute(v12, CXNoNamespace, "idx");
    v14 = [OAXColor readColorFromParentXmlNode:v13];
  }

  else
  {
    v14 = 0;
    *index = 0;
  }

  *color = v14;

  return v13 != 0;
}

+ (id)readReferenceFromNode:(_xmlNode *)node
{
  v4 = objc_alloc_init(OADStyleMatrixReference);
  [(OADStyleMatrixReference *)v4 setMatrixIndex:CXRequiredUnsignedLongAttribute(node, CXNoNamespace, "idx")];
  v5 = [OAXColor readColorFromParentXmlNode:node];
  [(OADStyleMatrixReference *)v4 setColor:v5];

  return v4;
}

@end