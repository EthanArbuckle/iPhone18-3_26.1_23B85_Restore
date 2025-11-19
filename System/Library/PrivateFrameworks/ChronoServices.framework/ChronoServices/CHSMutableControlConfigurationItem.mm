@interface CHSMutableControlConfigurationItem
- (CHSMutableControlConfigurationItem)init;
- (CHSMutableControlConfigurationItem)initWithUniqueIdentifier:(id)a3 controlIdentity:(id)a4;
- (CHSMutableControlConfigurationItem)initWithUniqueIdentifier:(id)a3 controlIdentity:(id)a4 location:(int64_t)a5;
- (id)copyWithZone:(void *)a3;
@end

@implementation CHSMutableControlConfigurationItem

- (id)copyWithZone:(void *)a3
{
  v4 = objc_allocWithZone(CHSControlConfigurationItem);

  return [v4 initWithItem_];
}

- (CHSMutableControlConfigurationItem)initWithUniqueIdentifier:(id)a3 controlIdentity:(id)a4 location:(int64_t)a5
{
  v6.receiver = self;
  v6.super_class = CHSMutableControlConfigurationItem;
  return [(CHSControlConfigurationItem *)&v6 initWithUniqueIdentifier:a3 controlIdentity:a4 location:a5];
}

- (CHSMutableControlConfigurationItem)initWithUniqueIdentifier:(id)a3 controlIdentity:(id)a4
{
  v5.receiver = self;
  v5.super_class = CHSMutableControlConfigurationItem;
  return [(CHSControlConfigurationItem *)&v5 initWithUniqueIdentifier:a3 controlIdentity:a4];
}

- (CHSMutableControlConfigurationItem)init
{
  v3.receiver = self;
  v3.super_class = CHSMutableControlConfigurationItem;
  return [(CHSControlConfigurationItem *)&v3 init];
}

@end