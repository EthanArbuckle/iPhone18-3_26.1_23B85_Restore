@interface GDGraphFacetimeActivityEventEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphFacetimeActivityEventEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  stringValue = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphFacetimeActivityEventEntityIdentifier: %@>", stringValue];

  return v5;
}

@end