@interface GDGraphOrganizationEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphOrganizationEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  stringValue = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphOrganizationEntityIdentifier: %@>", stringValue];

  return v5;
}

@end