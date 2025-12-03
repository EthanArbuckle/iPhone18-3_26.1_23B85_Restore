@interface EMFContextBuilder
- (EMFContextBuilder)init;
- (void)enumerateWindowsForContext:(id)context range:(_NSRange)range searchAnchors:(id)anchors usingBlock:(id)block;
@end

@implementation EMFContextBuilder

- (EMFContextBuilder)init
{
  v3.receiver = self;
  v3.super_class = EMFContextBuilder;
  return [(EMFContextBuilder *)&v3 init];
}

- (void)enumerateWindowsForContext:(id)context range:(_NSRange)range searchAnchors:(id)anchors usingBlock:(id)block
{
  contextCopy = context;
  anchorsCopy = anchors;
  blockCopy = block;
  __assert_rtn("[EMFContextBuilder enumerateWindowsForContext:range:searchAnchors:usingBlock:]", "EMFContextBuilder.m", 31, "false && Concrete subclasses must implement this method.");
}

@end