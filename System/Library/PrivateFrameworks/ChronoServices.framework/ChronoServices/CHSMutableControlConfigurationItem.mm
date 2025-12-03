@interface CHSMutableControlConfigurationItem
- (CHSMutableControlConfigurationItem)init;
- (CHSMutableControlConfigurationItem)initWithUniqueIdentifier:(id)identifier controlIdentity:(id)identity;
- (CHSMutableControlConfigurationItem)initWithUniqueIdentifier:(id)identifier controlIdentity:(id)identity location:(int64_t)location;
- (id)copyWithZone:(void *)zone;
@end

@implementation CHSMutableControlConfigurationItem

- (id)copyWithZone:(void *)zone
{
  v4 = objc_allocWithZone(CHSControlConfigurationItem);

  return [v4 initWithItem_];
}

- (CHSMutableControlConfigurationItem)initWithUniqueIdentifier:(id)identifier controlIdentity:(id)identity location:(int64_t)location
{
  v6.receiver = self;
  v6.super_class = CHSMutableControlConfigurationItem;
  return [(CHSControlConfigurationItem *)&v6 initWithUniqueIdentifier:identifier controlIdentity:identity location:location];
}

- (CHSMutableControlConfigurationItem)initWithUniqueIdentifier:(id)identifier controlIdentity:(id)identity
{
  v5.receiver = self;
  v5.super_class = CHSMutableControlConfigurationItem;
  return [(CHSControlConfigurationItem *)&v5 initWithUniqueIdentifier:identifier controlIdentity:identity];
}

- (CHSMutableControlConfigurationItem)init
{
  v3.receiver = self;
  v3.super_class = CHSMutableControlConfigurationItem;
  return [(CHSControlConfigurationItem *)&v3 init];
}

@end