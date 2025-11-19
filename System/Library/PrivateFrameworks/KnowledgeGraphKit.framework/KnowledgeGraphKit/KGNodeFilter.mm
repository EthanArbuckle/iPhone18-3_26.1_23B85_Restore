@interface KGNodeFilter
- (BOOL)matchesNode:(id)a3;
@end

@implementation KGNodeFilter

- (BOOL)matchesNode:(id)a3
{
  v4.receiver = self;
  v4.super_class = KGNodeFilter;
  return [(KGElementFilter *)&v4 matchesElement:a3];
}

@end