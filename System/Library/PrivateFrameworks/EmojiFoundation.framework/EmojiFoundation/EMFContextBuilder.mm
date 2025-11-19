@interface EMFContextBuilder
- (EMFContextBuilder)init;
- (void)enumerateWindowsForContext:(id)a3 range:(_NSRange)a4 searchAnchors:(id)a5 usingBlock:(id)a6;
@end

@implementation EMFContextBuilder

- (EMFContextBuilder)init
{
  v3.receiver = self;
  v3.super_class = EMFContextBuilder;
  return [(EMFContextBuilder *)&v3 init];
}

- (void)enumerateWindowsForContext:(id)a3 range:(_NSRange)a4 searchAnchors:(id)a5 usingBlock:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
  __assert_rtn("[EMFContextBuilder enumerateWindowsForContext:range:searchAnchors:usingBlock:]", "EMFContextBuilder.m", 31, "false && Concrete subclasses must implement this method.");
}

@end