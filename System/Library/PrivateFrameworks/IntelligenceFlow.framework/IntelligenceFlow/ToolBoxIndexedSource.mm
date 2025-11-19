@interface ToolBoxIndexedSource
- (void)encodeWithCoder:(id)a3;
@end

@implementation ToolBoxIndexedSource

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ToolBoxIndexedSource.encode(with:)(v4);
}

@end