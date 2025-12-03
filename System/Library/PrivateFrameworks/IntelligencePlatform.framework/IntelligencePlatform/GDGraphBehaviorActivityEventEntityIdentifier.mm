@interface GDGraphBehaviorActivityEventEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphBehaviorActivityEventEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  stringValue = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphBehaviorActivityEventEntityIdentifier: %@>", stringValue];

  return v5;
}

@end