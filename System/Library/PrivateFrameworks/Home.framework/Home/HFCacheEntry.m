@interface HFCacheEntry
- (HFCacheEntry)initWithKey:(id)a3 object:(id)a4 cost:(unint64_t)a5;
- (id)description;
@end

@implementation HFCacheEntry

- (HFCacheEntry)initWithKey:(id)a3 object:(id)a4 cost:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HFCacheEntry;
  v11 = [(HFCacheEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_key, a3);
    objc_storeStrong(&v12->_object, a4);
    v12->_cost = a5;
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFCacheEntry *)self key];
  v5 = [v3 appendObject:v4 withName:@"key"];

  v6 = [(HFCacheEntry *)self object];
  v7 = [v3 appendObject:v6 withName:@"object"];

  v8 = [v3 appendUnsignedInteger:-[HFCacheEntry cost](self withName:{"cost"), @"cost"}];
  v9 = [v3 build];

  return v9;
}

@end