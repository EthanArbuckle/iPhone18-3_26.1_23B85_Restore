@interface CLKUIResourceProviderKey
- (CLKUIResourceProviderKey)init;
@end

@implementation CLKUIResourceProviderKey

- (CLKUIResourceProviderKey)init
{
  v7.receiver = self;
  v7.super_class = CLKUIResourceProviderKey;
  v2 = [(CLKUIResourceProviderKey *)&v7 init];
  if (v2)
  {
    atomic_fetch_add(_CLKUIGenerateUniqueInteger_value, 1u);
    v3 = atomic_load(_CLKUIGenerateUniqueInteger_value);
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
    key = v2->_key;
    v2->_key = v4;
  }

  return v2;
}

@end