@interface GDGraphOnThePhoneActivityEventEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphOnThePhoneActivityEventEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  stringValue = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphOnThePhoneActivityEventEntityIdentifier: %@>", stringValue];

  return v5;
}

@end