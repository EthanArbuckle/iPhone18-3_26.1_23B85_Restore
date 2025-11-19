@interface OAXStyleMatrix
+ (BOOL)readReferenceFromParentNode:(_xmlNode *)a3 name:(const char *)a4 inNamespace:(id)a5 color:(id *)a6 index:(unsigned int *)a7;
+ (id)readReferenceFromNode:(_xmlNode *)a3;
+ (void)readFromNode:(_xmlNode *)a3 toStyleMatrix:(id)a4 packagePart:(id)a5 drawingState:(id)a6;
@end

@implementation OAXStyleMatrix

+ (void)readFromNode:(_xmlNode *)a3 toStyleMatrix:(id)a4 packagePart:(id)a5 drawingState:(id)a6
{
  v31 = a4;
  v9 = a5;
  v10 = a6;
  v11 = CXDefaultStringAttribute(a3, CXNoNamespace, "name", 0);
  [v31 setName:v11];

  v12 = [v10 OAXMainNamespace];
  v13 = OCXFindChild(a3, v12, "fillStyleLst");

  for (i = OCXFirstChild(v13); i; i = OCXNextSibling(i))
  {
    v15 = [OAXFill readFillFromXmlNode:i packagePart:v9 drawingState:v10];
    if (v15)
    {
      [v31 addFill:v15];
    }
  }

  v16 = [v10 OAXMainNamespace];
  v17 = OCXFindChild(a3, v16, "lnStyleLst");

  for (j = OCXFirstChild(v17); j; j = OCXNextSibling(j))
  {
    if (j->type == XML_ELEMENT_NODE && xmlStrEqual(j->name, "ln"))
    {
      v19 = [OAXStroke readStrokeFromXmlNode:j packagePart:v9 drawingState:v10];
      [v31 addStroke:v19];
    }
  }

  v20 = [v10 OAXMainNamespace];
  v21 = OCXFindChild(a3, v20, "effectStyleLst");
  v30 = a3;

  for (k = OCXFirstChild(v21); k; k = OCXNextSibling(k))
  {
    if (k->type == XML_ELEMENT_NODE && xmlStrEqual(k->name, "effectStyle"))
    {
      v23 = [v10 OAXMainNamespace];
      v24 = OCXFindChild(k, v23, "effectLst");

      if (v24)
      {
        [OAXEffect readEffectsFromXmlNode:v24 packagePart:v9 drawingState:v10];
      }

      else
      {
        [MEMORY[0x277CBEA60] array];
      }
      v25 = ;
      [v31 addEffects:v25];
    }
  }

  v26 = [v10 OAXMainNamespace];
  v27 = OCXFindChild(v30, v26, "bgFillStyleLst");

  for (m = OCXFirstChild(v27); m; m = OCXNextSibling(m))
  {
    v29 = [OAXFill readFillFromXmlNode:m packagePart:v9 drawingState:v10];
    if (v29)
    {
      [v31 addBgFill:v29];
    }
  }
}

+ (BOOL)readReferenceFromParentNode:(_xmlNode *)a3 name:(const char *)a4 inNamespace:(id)a5 color:(id *)a6 index:(unsigned int *)a7
{
  v11 = a5;
  v12 = OCXFindChild(a3, v11, a4);
  v13 = v12;
  if (v12)
  {
    *a7 = CXRequiredUnsignedLongAttribute(v12, CXNoNamespace, "idx");
    v14 = [OAXColor readColorFromParentXmlNode:v13];
  }

  else
  {
    v14 = 0;
    *a7 = 0;
  }

  *a6 = v14;

  return v13 != 0;
}

+ (id)readReferenceFromNode:(_xmlNode *)a3
{
  v4 = objc_alloc_init(OADStyleMatrixReference);
  [(OADStyleMatrixReference *)v4 setMatrixIndex:CXRequiredUnsignedLongAttribute(a3, CXNoNamespace, "idx")];
  v5 = [OAXColor readColorFromParentXmlNode:a3];
  [(OADStyleMatrixReference *)v4 setColor:v5];

  return v4;
}

@end