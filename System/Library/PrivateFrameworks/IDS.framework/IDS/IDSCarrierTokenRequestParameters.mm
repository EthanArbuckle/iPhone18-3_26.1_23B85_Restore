@interface IDSCarrierTokenRequestParameters
- (IDSCarrierTokenRequestParameters)initWithSubscriptionSource:(int64_t)source IMEI:(id)i carrierNonce:(id)nonce;
@end

@implementation IDSCarrierTokenRequestParameters

- (IDSCarrierTokenRequestParameters)initWithSubscriptionSource:(int64_t)source IMEI:(id)i carrierNonce:(id)nonce
{
  iCopy = i;
  nonceCopy = nonce;
  v14.receiver = self;
  v14.super_class = IDSCarrierTokenRequestParameters;
  v11 = [(IDSCarrierTokenRequestParameters *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_subscriptionSource = source;
    objc_storeStrong(&v11->_IMEI, i);
    objc_storeStrong(&v12->_carrierNonce, nonce);
  }

  return v12;
}

@end