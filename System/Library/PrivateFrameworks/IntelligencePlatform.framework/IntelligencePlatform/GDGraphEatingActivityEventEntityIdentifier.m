@interface GDGraphEatingActivityEventEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphEatingActivityEventEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphEatingActivityEventEntityIdentifier: %@>", v4];

  return v5;
}

@end