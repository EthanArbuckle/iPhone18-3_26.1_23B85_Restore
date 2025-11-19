@interface CHSMutableEntitlementCollection
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CHSMutableEntitlementCollection

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHSEntitlementCollection alloc];

  return [(CHSEntitlementCollection *)v4 _initFromCollection:self];
}

@end