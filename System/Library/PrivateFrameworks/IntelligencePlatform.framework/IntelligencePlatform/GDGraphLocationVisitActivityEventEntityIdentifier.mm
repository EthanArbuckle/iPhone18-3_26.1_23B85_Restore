@interface GDGraphLocationVisitActivityEventEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphLocationVisitActivityEventEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  stringValue = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphLocationVisitActivityEventEntityIdentifier: %@>", stringValue];

  return v5;
}

@end