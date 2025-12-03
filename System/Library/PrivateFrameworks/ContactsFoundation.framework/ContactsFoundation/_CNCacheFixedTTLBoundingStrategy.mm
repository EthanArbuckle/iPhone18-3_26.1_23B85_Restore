@interface _CNCacheFixedTTLBoundingStrategy
- (BOOL)shouldEvictKey:(id)key;
- (NSString)description;
- (_CNCacheFixedTTLBoundingStrategy)init;
- (_CNCacheFixedTTLBoundingStrategy)initWithTTL:(double)l;
- (_CNCacheFixedTTLBoundingStrategy)initWithTTL:(double)l renewalOptions:(unint64_t)options timeProvider:(id)provider;
- (void)updateTimestampForKey:(id)key;
- (void)willAccessKey:(id)key;
- (void)willUpdateCacheBy:(unint64_t)by forKey:(id)key keysToEvict:(id *)evict;
@end

@implementation _CNCacheFixedTTLBoundingStrategy

- (_CNCacheFixedTTLBoundingStrategy)init
{
  v2 = CNInitializerUnavailableException(self, a2, sel_initWithTTL_);
  objc_exception_throw(v2);
}

- (_CNCacheFixedTTLBoundingStrategy)initWithTTL:(double)l
{
  v5 = +[CNTimeProvider defaultProvider];
  v6 = [(_CNCacheFixedTTLBoundingStrategy *)self initWithTTL:3 renewalOptions:v5 timeProvider:l];

  return v6;
}

- (_CNCacheFixedTTLBoundingStrategy)initWithTTL:(double)l renewalOptions:(unint64_t)options timeProvider:(id)provider
{
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = _CNCacheFixedTTLBoundingStrategy;
  v10 = [(_CNCacheFixedTTLBoundingStrategy *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_ttl = l;
    v10->_renewalOptions = options;
    objc_storeStrong(&v10->_timeProvider, provider);
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    timestamps = v11->_timestamps;
    v11->_timestamps = v12;

    v14 = v11;
  }

  return v11;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"ttl" timeInterval:self->_ttl];
  v5 = [v3 appendName:@"renewalOptions" unsignedInteger:self->_renewalOptions];
  build = [v3 build];

  return build;
}

- (void)willUpdateCacheBy:(unint64_t)by forKey:(id)key keysToEvict:(id *)evict
{
  keyCopy = key;
  timestamps = [(_CNCacheFixedTTLBoundingStrategy *)self timestamps];
  allKeys = [timestamps allKeys];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73___CNCacheFixedTTLBoundingStrategy_willUpdateCacheBy_forKey_keysToEvict___block_invoke;
  v14[3] = &unk_1E6ED5720;
  v14[4] = self;
  *evict = [allKeys _cn_filter:v14];

  timestamps2 = [(_CNCacheFixedTTLBoundingStrategy *)self timestamps];
  v12 = timestamps2;
  if (by)
  {
    v13 = [timestamps2 objectForKeyedSubscript:keyCopy];

    if (!v13 || (self->_renewalOptions & 1) != 0)
    {
      [(_CNCacheFixedTTLBoundingStrategy *)self updateTimestampForKey:keyCopy];
    }
  }

  else
  {
    [timestamps2 removeObjectForKey:keyCopy];
  }
}

- (void)willAccessKey:(id)key
{
  if ((self->_renewalOptions & 2) != 0)
  {
    [(_CNCacheFixedTTLBoundingStrategy *)self updateTimestampForKey:key];
  }
}

- (BOOL)shouldEvictKey:(id)key
{
  keyCopy = key;
  timeProvider = [(_CNCacheFixedTTLBoundingStrategy *)self timeProvider];
  [timeProvider timestamp];
  v7 = v6;
  timestamps = [(_CNCacheFixedTTLBoundingStrategy *)self timestamps];
  v9 = [timestamps objectForKeyedSubscript:keyCopy];

  [v9 _cn_timeIntervalValue];
  v11 = v7 - v10;

  [(_CNCacheFixedTTLBoundingStrategy *)self ttl];
  return v11 > v12;
}

- (void)updateTimestampForKey:(id)key
{
  v4 = MEMORY[0x1E696AD98];
  keyCopy = key;
  timeProvider = [(_CNCacheFixedTTLBoundingStrategy *)self timeProvider];
  [timeProvider timestamp];
  v6 = [v4 numberWithDouble:?];
  timestamps = [(_CNCacheFixedTTLBoundingStrategy *)self timestamps];
  [timestamps setObject:v6 forKeyedSubscript:keyCopy];
}

@end