@interface ToolBoxIndexedSource
- (void)encodeWithCoder:(id)coder;
@end

@implementation ToolBoxIndexedSource

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ToolBoxIndexedSource.encode(with:)(coderCopy);
}

@end