@interface MPStatusKitSubscriptionKeys
- (MPStatusKitSubscriptionKeys)initWithIndex:(unsigned __int16)a3 chainKey:(id)a4 signingKey:(id)a5;
@end

@implementation MPStatusKitSubscriptionKeys

- (MPStatusKitSubscriptionKeys)initWithIndex:(unsigned __int16)a3 chainKey:(id)a4 signingKey:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MPStatusKitSubscriptionKeys;
  v11 = [(MPStatusKitSubscriptionKeys *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_chainKey, a4);
    v12->_index = a3;
    objc_storeStrong(&v12->_signingKey, a5);
  }

  return v12;
}

@end