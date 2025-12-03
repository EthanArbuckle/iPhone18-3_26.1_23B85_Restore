@interface _ECMessageBodyConsumableNewline
- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)accumulator;
@end

@implementation _ECMessageBodyConsumableNewline

- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)accumulator
{
  if (([accumulator isFull] & 1) == 0)
  {
    [accumulator appendNewline];
  }

  return 0;
}

@end