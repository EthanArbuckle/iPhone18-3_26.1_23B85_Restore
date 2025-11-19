@interface GDGraphOnThePhoneActivityEventEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphOnThePhoneActivityEventEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphOnThePhoneActivityEventEntityIdentifier: %@>", v4];

  return v5;
}

@end