@interface ODXForEach
+ (void)readNode:(_xmlNode *)node toForEach:(id)each state:(id)state;
@end

@implementation ODXForEach

+ (void)readNode:(_xmlNode *)node toForEach:(id)each state:(id)state
{
  eachCopy = each;
  stateCopy = state;
  iteratorSpecification = [eachCopy iteratorSpecification];
  [ODXIteratorSpecification readFromNode:node toSpecification:iteratorSpecification state:stateCopy];

  [ODXLayoutObjectList readNode:node toList:eachCopy state:stateCopy];
}

@end