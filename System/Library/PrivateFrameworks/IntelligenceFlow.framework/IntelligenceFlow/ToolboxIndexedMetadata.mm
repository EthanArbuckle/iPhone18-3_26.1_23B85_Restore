@interface ToolboxIndexedMetadata
- (void)encodeWithCoder:(id)coder;
@end

@implementation ToolboxIndexedMetadata

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ToolboxIndexedMetadata.encode(with:)(coderCopy);
}

@end