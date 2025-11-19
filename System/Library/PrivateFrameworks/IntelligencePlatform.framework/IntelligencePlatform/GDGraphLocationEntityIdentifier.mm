@interface GDGraphLocationEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphLocationEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphLocationEntityIdentifier: %@>", v4];

  return v5;
}

@end