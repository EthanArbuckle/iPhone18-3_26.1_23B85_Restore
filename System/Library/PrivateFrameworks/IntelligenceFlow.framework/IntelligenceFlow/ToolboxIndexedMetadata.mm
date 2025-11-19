@interface ToolboxIndexedMetadata
- (void)encodeWithCoder:(id)a3;
@end

@implementation ToolboxIndexedMetadata

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ToolboxIndexedMetadata.encode(with:)(v4);
}

@end