@interface SIAnalyticsIndexData
- (SIAnalyticsIndexData)initWithPrefix:(id)prefix data:(id)data;
- (id)heartbeatData;
- (void)incrementCount:(int64_t)count forKey:(id)key;
- (void)setTimestamp:(double)timestamp forKey:(id)key;
@end

@implementation SIAnalyticsIndexData

- (id)heartbeatData
{
  os_unfair_lock_lock(&self->_heartbeatLock);
  v3 = [(NSMutableDictionary *)self->_heartbeatData copy];
  os_unfair_lock_unlock(&self->_heartbeatLock);
  return v3;
}

- (void)incrementCount:(int64_t)count forKey:(id)key
{
  os_unfair_lock_lock(&self->_heartbeatLock);
  longValue = [(NSMutableDictionary *)self->_heartbeatData objectForKeyedSubscript:key];
  if (longValue)
  {
    longValue = [longValue longValue];
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_heartbeatData, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithLong:&longValue[count]], key);

  os_unfair_lock_unlock(&self->_heartbeatLock);
}

- (void)setTimestamp:(double)timestamp forKey:(id)key
{
  os_unfair_lock_lock(&self->_heartbeatLock);
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_heartbeatData, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithLong:timestamp], key);

  os_unfair_lock_unlock(&self->_heartbeatLock);
}

- (SIAnalyticsIndexData)initWithPrefix:(id)prefix data:(id)data
{
  v15 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = SIAnalyticsIndexData;
  v6 = [(SIAnalyticsIndexData *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_prefix = prefix;
    v6->_heartbeatData = [data mutableCopy];
    v7->_heartbeatLock._os_unfair_lock_opaque = 0;
    if (dword_1EBF46B20 >= 5)
    {
      v10 = *__error();
      v11 = _SILogForLogForCategory(21);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        prefixCopy = prefix;
        _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "index init:%@", buf, 0xCu);
      }

      *__error() = v10;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end