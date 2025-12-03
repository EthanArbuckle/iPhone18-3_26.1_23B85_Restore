@interface MTLToolsFence
- (NSString)label;
- (void)setLabel:(id)label;
@end

@implementation MTLToolsFence

- (NSString)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  return [baseObject label];
}

- (void)setLabel:(id)label
{
  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject setLabel:label];
}

@end