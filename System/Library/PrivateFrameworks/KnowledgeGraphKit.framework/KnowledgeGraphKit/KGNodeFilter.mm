@interface KGNodeFilter
- (BOOL)matchesNode:(id)node;
@end

@implementation KGNodeFilter

- (BOOL)matchesNode:(id)node
{
  v4.receiver = self;
  v4.super_class = KGNodeFilter;
  return [(KGElementFilter *)&v4 matchesElement:node];
}

@end