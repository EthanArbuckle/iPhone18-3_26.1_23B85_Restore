@interface GDGraphCalendarEventEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphCalendarEventEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  stringValue = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphCalendarEventEntityIdentifier: %@>", stringValue];

  return v5;
}

@end