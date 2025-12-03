@interface GDGraphLocationEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphLocationEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  stringValue = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphLocationEntityIdentifier: %@>", stringValue];

  return v5;
}

@end