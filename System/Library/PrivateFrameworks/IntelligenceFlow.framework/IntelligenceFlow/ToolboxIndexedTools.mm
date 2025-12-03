@interface ToolboxIndexedTools
- (void)encodeWithCoder:(id)coder;
@end

@implementation ToolboxIndexedTools

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ToolboxIndexedTools.encode(with:)(coderCopy);
}

@end