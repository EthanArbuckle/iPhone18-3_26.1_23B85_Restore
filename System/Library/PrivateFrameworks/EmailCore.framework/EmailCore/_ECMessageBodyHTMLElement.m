@interface _ECMessageBodyHTMLElement
- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)a3;
@end

@implementation _ECMessageBodyHTMLElement

- (id)copyConsumableNodesAndAppendInnerTextToStringAccumulator:(id)a3
{
  v3 = [(ECMessageBodyElement *)self nodes];

  return [(NSArray *)v3 copy];
}

@end