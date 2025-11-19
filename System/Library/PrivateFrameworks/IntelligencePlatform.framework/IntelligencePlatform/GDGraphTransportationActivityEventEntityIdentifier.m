@interface GDGraphTransportationActivityEventEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphTransportationActivityEventEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphTransportationActivityEventEntityIdentifier: %@>", v4];

  return v5;
}

@end