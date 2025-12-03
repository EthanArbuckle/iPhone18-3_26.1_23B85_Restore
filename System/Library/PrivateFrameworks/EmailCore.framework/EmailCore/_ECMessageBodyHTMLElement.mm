@interface _ECMessageBodyHTMLElement
- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)accumulator;
@end

@implementation _ECMessageBodyHTMLElement

- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)accumulator
{
  nodes = [(ECMessageBodyElement *)self nodes];

  return [(NSArray *)nodes copy];
}

@end