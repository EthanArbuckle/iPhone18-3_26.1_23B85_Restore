@interface ODXLayoutObjectList
+ (void)readChildNode:(_xmlNode *)a3 toList:(id)a4 state:(id)a5;
+ (void)readNode:(_xmlNode *)a3 toList:(id)a4 state:(id)a5;
@end

@implementation ODXLayoutObjectList

+ (void)readNode:(_xmlNode *)a3 toList:(id)a4 state:(id)a5
{
  v10 = a4;
  v8 = a5;
  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE)
    {
      [a1 readChildNode:i toList:v10 state:v8];
    }
  }
}

+ (void)readChildNode:(_xmlNode *)a3 toList:(id)a4 state:(id)a5
{
  v19 = a4;
  v7 = a5;
  v8 = [v7 ODXDiagramNamespace];
  HasName = CXNodeHasName(a3, v8, "alg");

  if (HasName)
  {
    v10 = objc_alloc_init(ODDAlgorithm);
    [v19 addChild:v10];
    [ODXAlgorithm readNode:a3 toAlgorithm:v10];
  }

  else
  {
    v11 = [v7 ODXDiagramNamespace];
    v12 = CXNodeHasName(a3, v11, "shape");

    if (v12)
    {
      v10 = objc_alloc_init(ODDShape);
      [v19 addChild:v10];
      [ODXShape readNode:a3 toShape:v10 state:v7];
    }

    else
    {
      v13 = [v7 ODXDiagramNamespace];
      v14 = CXNodeHasName(a3, v13, "forEach");

      if (v14)
      {
        v10 = objc_alloc_init(ODDForEach);
        [v19 addChild:v10];
        [ODXForEach readNode:a3 toForEach:v10 state:v7];
      }

      else
      {
        v15 = [v7 ODXDiagramNamespace];
        v16 = CXNodeHasName(a3, v15, "layoutNode");

        if (v16)
        {
          v10 = objc_alloc_init(ODDLayoutNode);
          [v19 addChild:v10];
          [ODXLayoutNode readNode:a3 toLayoutNode:v10 state:v7];
        }

        else
        {
          v17 = [v7 ODXDiagramNamespace];
          v18 = CXNodeHasName(a3, v17, "choose");

          if (!v18)
          {
            goto LABEL_12;
          }

          v10 = objc_alloc_init(ODDChoose);
          [v19 addChild:v10];
          [ODXChoose readNode:a3 toChoose:v10 state:v7];
        }
      }
    }
  }

LABEL_12:
}

@end