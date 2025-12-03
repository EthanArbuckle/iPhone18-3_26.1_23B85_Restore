@interface GDGraphTopicEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphTopicEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  stringValue = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphTopicEntityIdentifier: %@>", stringValue];

  return v5;
}

@end