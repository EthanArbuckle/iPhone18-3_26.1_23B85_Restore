@interface ODXLayoutNode
+ (void)readNode:(_xmlNode *)a3 toLayoutNode:(id)a4 state:(id)a5;
@end

@implementation ODXLayoutNode

+ (void)readNode:(_xmlNode *)a3 toLayoutNode:(id)a4 state:(id)a5
{
  v12 = a4;
  v7 = a5;
  for (i = OCXFirstChild(a3); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE)
    {
      v9 = [v7 ODXDiagramNamespace];
      HasName = CXNodeHasName(i, v9, "varLst");

      if (HasName)
      {
        v11 = objc_alloc_init(ODDLayoutVariablePropertySet);
        [v12 setVariableList:v11];
        [ODXLayoutVariablePropertySet readNode:i toSet:v11 state:v7];
      }

      else
      {
        [ODXLayoutObjectList readChildNode:i toList:v12 state:v7];
      }
    }
  }
}

@end