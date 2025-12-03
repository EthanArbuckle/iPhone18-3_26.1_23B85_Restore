@interface HFCacheEntry
- (HFCacheEntry)initWithKey:(id)key object:(id)object cost:(unint64_t)cost;
- (id)description;
@end

@implementation HFCacheEntry

- (HFCacheEntry)initWithKey:(id)key object:(id)object cost:(unint64_t)cost
{
  keyCopy = key;
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = HFCacheEntry;
  v11 = [(HFCacheEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_key, key);
    objc_storeStrong(&v12->_object, object);
    v12->_cost = cost;
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFCacheEntry *)self key];
  v5 = [v3 appendObject:v4 withName:@"key"];

  object = [(HFCacheEntry *)self object];
  v7 = [v3 appendObject:object withName:@"object"];

  v8 = [v3 appendUnsignedInteger:-[HFCacheEntry cost](self withName:{"cost"), @"cost"}];
  build = [v3 build];

  return build;
}

@end