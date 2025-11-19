@interface GDGraphEventEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphEventEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphEventEntityIdentifier: %@>", v4];

  return v5;
}

@end