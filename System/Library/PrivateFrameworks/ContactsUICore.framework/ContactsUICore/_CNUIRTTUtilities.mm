@interface _CNUIRTTUtilities
- (BOOL)contactIsTTYContact:(id)contact;
- (BOOL)relayIsSupported;
- (RTTTelephonyUtilities)utilityProvider;
- (_CNUIRTTUtilities)initWithUtilityProvider:(id)provider;
- (id)nts_lazyUtilityProvider;
@end

@implementation _CNUIRTTUtilities

- (_CNUIRTTUtilities)initWithUtilityProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = _CNUIRTTUtilities;
  v6 = [(_CNUIRTTUtilities *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_utilityProvider, provider);
    v8 = v7;
  }

  return v7;
}

- (RTTTelephonyUtilities)utilityProvider
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

- (id)nts_lazyUtilityProvider
{
  utilityProvider = self->_utilityProvider;
  if (!utilityProvider)
  {
    sharedUtilityProvider = [(objc_class *)getRTTTelephonyUtilitiesClass() sharedUtilityProvider];
    v5 = self->_utilityProvider;
    self->_utilityProvider = sharedUtilityProvider;

    utilityProvider = self->_utilityProvider;
  }

  return utilityProvider;
}

- (BOOL)contactIsTTYContact:(id)contact
{
  contactCopy = contact;
  utilityProvider = [(_CNUIRTTUtilities *)self utilityProvider];
  v6 = [utilityProvider contactIsTTYContact:contactCopy];

  return v6;
}

- (BOOL)relayIsSupported
{
  utilityProvider = [(_CNUIRTTUtilities *)self utilityProvider];
  relayIsSupported = [utilityProvider relayIsSupported];

  return relayIsSupported;
}

@end