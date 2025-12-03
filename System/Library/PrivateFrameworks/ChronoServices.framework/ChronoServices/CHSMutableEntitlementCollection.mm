@interface CHSMutableEntitlementCollection
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CHSMutableEntitlementCollection

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSEntitlementCollection alloc];

  return [(CHSEntitlementCollection *)v4 _initFromCollection:self];
}

@end