@interface GDGraphWorkingActivityEventEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphWorkingActivityEventEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  stringValue = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphWorkingActivityEventEntityIdentifier: %@>", stringValue];

  return v5;
}

@end