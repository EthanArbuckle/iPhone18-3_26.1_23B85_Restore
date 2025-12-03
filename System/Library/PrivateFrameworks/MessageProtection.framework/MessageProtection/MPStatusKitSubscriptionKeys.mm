@interface MPStatusKitSubscriptionKeys
- (MPStatusKitSubscriptionKeys)initWithIndex:(unsigned __int16)index chainKey:(id)key signingKey:(id)signingKey;
@end

@implementation MPStatusKitSubscriptionKeys

- (MPStatusKitSubscriptionKeys)initWithIndex:(unsigned __int16)index chainKey:(id)key signingKey:(id)signingKey
{
  keyCopy = key;
  signingKeyCopy = signingKey;
  v14.receiver = self;
  v14.super_class = MPStatusKitSubscriptionKeys;
  v11 = [(MPStatusKitSubscriptionKeys *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_chainKey, key);
    v12->_index = index;
    objc_storeStrong(&v12->_signingKey, signingKey);
  }

  return v12;
}

@end