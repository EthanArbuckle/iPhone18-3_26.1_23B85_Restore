@interface GDGraphWakingUpActivityEventEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphWakingUpActivityEventEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  stringValue = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphWakingUpActivityEventEntityIdentifier: %@>", stringValue];

  return v5;
}

@end