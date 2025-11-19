@interface _CNCacheFixedTTLBoundingStrategy
- (BOOL)shouldEvictKey:(id)a3;
- (NSString)description;
- (_CNCacheFixedTTLBoundingStrategy)init;
- (_CNCacheFixedTTLBoundingStrategy)initWithTTL:(double)a3;
- (_CNCacheFixedTTLBoundingStrategy)initWithTTL:(double)a3 renewalOptions:(unint64_t)a4 timeProvider:(id)a5;
- (void)updateTimestampForKey:(id)a3;
- (void)willAccessKey:(id)a3;
- (void)willUpdateCacheBy:(unint64_t)a3 forKey:(id)a4 keysToEvict:(id *)a5;
@end

@implementation _CNCacheFixedTTLBoundingStrategy

- (_CNCacheFixedTTLBoundingStrategy)init
{
  v2 = CNInitializerUnavailableException(self, a2, sel_initWithTTL_);
  objc_exception_throw(v2);
}

- (_CNCacheFixedTTLBoundingStrategy)initWithTTL:(double)a3
{
  v5 = +[CNTimeProvider defaultProvider];
  v6 = [(_CNCacheFixedTTLBoundingStrategy *)self initWithTTL:3 renewalOptions:v5 timeProvider:a3];

  return v6;
}

- (_CNCacheFixedTTLBoundingStrategy)initWithTTL:(double)a3 renewalOptions:(unint64_t)a4 timeProvider:(id)a5
{
  v9 = a5;
  v16.receiver = self;
  v16.super_class = _CNCacheFixedTTLBoundingStrategy;
  v10 = [(_CNCacheFixedTTLBoundingStrategy *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v10->_ttl = a3;
    v10->_renewalOptions = a4;
    objc_storeStrong(&v10->_timeProvider, a5);
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
  v6 = [v3 build];

  return v6;
}

- (void)willUpdateCacheBy:(unint64_t)a3 forKey:(id)a4 keysToEvict:(id *)a5
{
  v8 = a4;
  v9 = [(_CNCacheFixedTTLBoundingStrategy *)self timestamps];
  v10 = [v9 allKeys];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73___CNCacheFixedTTLBoundingStrategy_willUpdateCacheBy_forKey_keysToEvict___block_invoke;
  v14[3] = &unk_1E6ED5720;
  v14[4] = self;
  *a5 = [v10 _cn_filter:v14];

  v11 = [(_CNCacheFixedTTLBoundingStrategy *)self timestamps];
  v12 = v11;
  if (a3)
  {
    v13 = [v11 objectForKeyedSubscript:v8];

    if (!v13 || (self->_renewalOptions & 1) != 0)
    {
      [(_CNCacheFixedTTLBoundingStrategy *)self updateTimestampForKey:v8];
    }
  }

  else
  {
    [v11 removeObjectForKey:v8];
  }
}

- (void)willAccessKey:(id)a3
{
  if ((self->_renewalOptions & 2) != 0)
  {
    [(_CNCacheFixedTTLBoundingStrategy *)self updateTimestampForKey:a3];
  }
}

- (BOOL)shouldEvictKey:(id)a3
{
  v4 = a3;
  v5 = [(_CNCacheFixedTTLBoundingStrategy *)self timeProvider];
  [v5 timestamp];
  v7 = v6;
  v8 = [(_CNCacheFixedTTLBoundingStrategy *)self timestamps];
  v9 = [v8 objectForKeyedSubscript:v4];

  [v9 _cn_timeIntervalValue];
  v11 = v7 - v10;

  [(_CNCacheFixedTTLBoundingStrategy *)self ttl];
  return v11 > v12;
}

- (void)updateTimestampForKey:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v8 = [(_CNCacheFixedTTLBoundingStrategy *)self timeProvider];
  [v8 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = [(_CNCacheFixedTTLBoundingStrategy *)self timestamps];
  [v7 setObject:v6 forKeyedSubscript:v5];
}

@end