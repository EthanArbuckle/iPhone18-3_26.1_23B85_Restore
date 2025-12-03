@interface MTLToolsResourceGroupSPI
- (BOOL)containsResource:(id)resource;
@end

@implementation MTLToolsResourceGroupSPI

- (BOOL)containsResource:(id)resource
{
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [resource baseObject];

  return [baseObject containsResource:baseObject2];
}

@end