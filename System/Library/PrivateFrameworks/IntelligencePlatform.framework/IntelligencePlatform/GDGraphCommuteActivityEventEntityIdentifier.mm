@interface GDGraphCommuteActivityEventEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphCommuteActivityEventEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  stringValue = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphCommuteActivityEventEntityIdentifier: %@>", stringValue];

  return v5;
}

@end