@interface _ECMessageBodyConsumableNewline
- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)a3;
@end

@implementation _ECMessageBodyConsumableNewline

- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)a3
{
  if (([a3 isFull] & 1) == 0)
  {
    [a3 appendNewline];
  }

  return 0;
}

@end