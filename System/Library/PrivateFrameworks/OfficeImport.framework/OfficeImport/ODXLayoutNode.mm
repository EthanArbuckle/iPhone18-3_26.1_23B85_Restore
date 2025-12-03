@interface ODXLayoutNode
+ (void)readNode:(_xmlNode *)node toLayoutNode:(id)layoutNode state:(id)state;
@end

@implementation ODXLayoutNode

+ (void)readNode:(_xmlNode *)node toLayoutNode:(id)layoutNode state:(id)state
{
  layoutNodeCopy = layoutNode;
  stateCopy = state;
  for (i = OCXFirstChild(node); i; i = OCXNextSibling(i))
  {
    if (i->type == XML_ELEMENT_NODE)
    {
      oDXDiagramNamespace = [stateCopy ODXDiagramNamespace];
      HasName = CXNodeHasName(i, oDXDiagramNamespace, "varLst");

      if (HasName)
      {
        v11 = objc_alloc_init(ODDLayoutVariablePropertySet);
        [layoutNodeCopy setVariableList:v11];
        [ODXLayoutVariablePropertySet readNode:i toSet:v11 state:stateCopy];
      }

      else
      {
        [ODXLayoutObjectList readChildNode:i toList:layoutNodeCopy state:stateCopy];
      }
    }
  }
}

@end