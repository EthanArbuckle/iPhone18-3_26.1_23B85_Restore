@interface IDSCarrierTokenRequestParameters
- (IDSCarrierTokenRequestParameters)initWithSubscriptionSource:(int64_t)a3 IMEI:(id)a4 carrierNonce:(id)a5;
@end

@implementation IDSCarrierTokenRequestParameters

- (IDSCarrierTokenRequestParameters)initWithSubscriptionSource:(int64_t)a3 IMEI:(id)a4 carrierNonce:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = IDSCarrierTokenRequestParameters;
  v11 = [(IDSCarrierTokenRequestParameters *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_subscriptionSource = a3;
    objc_storeStrong(&v11->_IMEI, a4);
    objc_storeStrong(&v12->_carrierNonce, a5);
  }

  return v12;
}

@end