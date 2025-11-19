@interface ToolboxSearchResult
- (void)encodeWithCoder:(id)a3;
@end

@implementation ToolboxSearchResult

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ToolboxSearchResult.encode(with:)(v4);
}

@end