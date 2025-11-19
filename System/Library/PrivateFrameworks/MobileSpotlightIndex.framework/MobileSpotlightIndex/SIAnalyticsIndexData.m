@interface SIAnalyticsIndexData
- (SIAnalyticsIndexData)initWithPrefix:(id)a3 data:(id)a4;
- (id)heartbeatData;
- (void)incrementCount:(int64_t)a3 forKey:(id)a4;
- (void)setTimestamp:(double)a3 forKey:(id)a4;
@end

@implementation SIAnalyticsIndexData

- (id)heartbeatData
{
  os_unfair_lock_lock(&self->_heartbeatLock);
  v3 = [(NSMutableDictionary *)self->_heartbeatData copy];
  os_unfair_lock_unlock(&self->_heartbeatLock);
  return v3;
}

- (void)incrementCount:(int64_t)a3 forKey:(id)a4
{
  os_unfair_lock_lock(&self->_heartbeatLock);
  v7 = [(NSMutableDictionary *)self->_heartbeatData objectForKeyedSubscript:a4];
  if (v7)
  {
    v7 = [v7 longValue];
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_heartbeatData, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithLong:&v7[a3]], a4);

  os_unfair_lock_unlock(&self->_heartbeatLock);
}

- (void)setTimestamp:(double)a3 forKey:(id)a4
{
  os_unfair_lock_lock(&self->_heartbeatLock);
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_heartbeatData, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithLong:a3], a4);

  os_unfair_lock_unlock(&self->_heartbeatLock);
}

- (SIAnalyticsIndexData)initWithPrefix:(id)a3 data:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = SIAnalyticsIndexData;
  v6 = [(SIAnalyticsIndexData *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v6->_prefix = a3;
    v6->_heartbeatData = [a4 mutableCopy];
    v7->_heartbeatLock._os_unfair_lock_opaque = 0;
    if (dword_1EBF46B20 >= 5)
    {
      v10 = *__error();
      v11 = _SILogForLogForCategory(21);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v14 = a3;
        _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "index init:%@", buf, 0xCu);
      }

      *__error() = v10;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end