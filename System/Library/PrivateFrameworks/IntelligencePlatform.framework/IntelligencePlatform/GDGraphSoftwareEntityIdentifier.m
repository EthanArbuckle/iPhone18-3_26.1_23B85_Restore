@interface GDGraphSoftwareEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphSoftwareEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphSoftwareEntityIdentifier: %@>", v4];

  return v5;
}

@end