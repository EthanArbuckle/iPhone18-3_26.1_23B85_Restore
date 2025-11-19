@interface MTLToolsResourceGroupSPI
- (BOOL)containsResource:(id)a3;
@end

@implementation MTLToolsResourceGroupSPI

- (BOOL)containsResource:(id)a3
{
  v4 = [(MTLToolsObject *)self baseObject];
  v5 = [a3 baseObject];

  return [v4 containsResource:v5];
}

@end