@interface ODXChoose
+ (void)readElseNode:(_xmlNode *)node toChoose:(id)choose state:(id)state;
+ (void)readIfNode:(_xmlNode *)node toChoose:(id)choose state:(id)state;
+ (void)readNode:(_xmlNode *)node toChoose:(id)choose state:(id)state;
@end

@implementation ODXChoose

+ (void)readNode:(_xmlNode *)node toChoose:(id)choose state:(id)state
{
  chooseCopy = choose;
  stateCopy = state;
  for (i = OCXFirstChild(node); ; i = OCXNextSibling(i))
  {
    oDXDiagramNamespace = [stateCopy ODXDiagramNamespace];
    HasName = CXNodeHasName(i, oDXDiagramNamespace, "if");

    if (!HasName)
    {
      break;
    }

    [self readIfNode:i toChoose:chooseCopy state:stateCopy];
  }

  oDXDiagramNamespace2 = [stateCopy ODXDiagramNamespace];
  v13 = CXNodeHasName(i, oDXDiagramNamespace2, "else");

  if (v13)
  {
    [self readElseNode:i toChoose:chooseCopy state:stateCopy];
    i = OCXNextSibling(i);
  }

  if (i)
  {
    [MEMORY[0x277CBEAD8] raise:@"ODXException" format:@"Unexpected choose node child."];
  }
}

+ (void)readIfNode:(_xmlNode *)node toChoose:(id)choose state:(id)state
{
  chooseCopy = choose;
  stateCopy = state;
  v8 = objc_alloc_init(ODDWhen);
  [chooseCopy addWhen:v8];
  iteratorSpecification = [(ODDWhen *)v8 iteratorSpecification];
  [ODXIteratorSpecification readFromNode:node toSpecification:iteratorSpecification state:stateCopy];

  [ODXLayoutObjectList readNode:node toList:v8 state:stateCopy];
}

+ (void)readElseNode:(_xmlNode *)node toChoose:(id)choose state:(id)state
{
  chooseCopy = choose;
  stateCopy = state;
  v8 = objc_alloc_init(ODDOtherwise);
  [chooseCopy setOtherwise:v8];
  [ODXLayoutObjectList readNode:node toList:v8 state:stateCopy];
}

@end