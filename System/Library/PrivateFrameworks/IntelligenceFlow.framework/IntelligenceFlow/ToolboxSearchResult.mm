@interface ToolboxSearchResult
- (void)encodeWithCoder:(id)coder;
@end

@implementation ToolboxSearchResult

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ToolboxSearchResult.encode(with:)(coderCopy);
}

@end