@interface ODXLayoutObjectList
+ (void)readChildNode:(_xmlNode *)node toList:(id)list state:(id)state;
+ (void)readNode:(_xmlNode *)node toList:(id)list state:(id)state;
@end

@implementation ODXLayoutObjectList

+ (void)readNode:(_xmlNode *)node toList:(id)list state:(id)state
{
  listCopy = list;
  stateCopy = state;
  for (i = OCXFirstChild(node); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE)
    {
      [self readChildNode:i toList:listCopy state:stateCopy];
    }
  }
}

+ (void)readChildNode:(_xmlNode *)node toList:(id)list state:(id)state
{
  listCopy = list;
  stateCopy = state;
  oDXDiagramNamespace = [stateCopy ODXDiagramNamespace];
  HasName = CXNodeHasName(node, oDXDiagramNamespace, "alg");

  if (HasName)
  {
    v10 = objc_alloc_init(ODDAlgorithm);
    [listCopy addChild:v10];
    [ODXAlgorithm readNode:node toAlgorithm:v10];
  }

  else
  {
    oDXDiagramNamespace2 = [stateCopy ODXDiagramNamespace];
    v12 = CXNodeHasName(node, oDXDiagramNamespace2, "shape");

    if (v12)
    {
      v10 = objc_alloc_init(ODDShape);
      [listCopy addChild:v10];
      [ODXShape readNode:node toShape:v10 state:stateCopy];
    }

    else
    {
      oDXDiagramNamespace3 = [stateCopy ODXDiagramNamespace];
      v14 = CXNodeHasName(node, oDXDiagramNamespace3, "forEach");

      if (v14)
      {
        v10 = objc_alloc_init(ODDForEach);
        [listCopy addChild:v10];
        [ODXForEach readNode:node toForEach:v10 state:stateCopy];
      }

      else
      {
        oDXDiagramNamespace4 = [stateCopy ODXDiagramNamespace];
        v16 = CXNodeHasName(node, oDXDiagramNamespace4, "layoutNode");

        if (v16)
        {
          v10 = objc_alloc_init(ODDLayoutNode);
          [listCopy addChild:v10];
          [ODXLayoutNode readNode:node toLayoutNode:v10 state:stateCopy];
        }

        else
        {
          oDXDiagramNamespace5 = [stateCopy ODXDiagramNamespace];
          v18 = CXNodeHasName(node, oDXDiagramNamespace5, "choose");

          if (!v18)
          {
            goto LABEL_12;
          }

          v10 = objc_alloc_init(ODDChoose);
          [listCopy addChild:v10];
          [ODXChoose readNode:node toChoose:v10 state:stateCopy];
        }
      }
    }
  }

LABEL_12:
}

@end