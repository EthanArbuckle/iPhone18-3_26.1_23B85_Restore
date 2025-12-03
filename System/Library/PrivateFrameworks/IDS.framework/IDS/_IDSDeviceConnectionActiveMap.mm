@interface _IDSDeviceConnectionActiveMap
+ (id)sharedInstance;
- (BOOL)hasActiveConnection:(id)connection forKey:(id)key;
- (_IDSDeviceConnectionActiveMap)init;
- (int)getActiveConnectionCount;
- (void)removeActiveConnection:(id)connection forKey:(id)key;
- (void)setActiveConnection:(id)connection forKey:(id)key;
@end

@implementation _IDSDeviceConnectionActiveMap

+ (id)sharedInstance
{
  if (qword_1ED5DE0B8 != -1)
  {
    sub_195B30D94();
  }

  v3 = qword_1ED5DE078;

  return v3;
}

- (_IDSDeviceConnectionActiveMap)init
{
  if (_IDSRunningInDaemon())
  {
    v3 = +[IDSLogging IDSDeviceConnection];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_195B26A7C();
    }

    selfCopy = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = _IDSDeviceConnectionActiveMap;
    v5 = [(_IDSDeviceConnectionActiveMap *)&v11 init];
    if (v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      activeConnectionMap = v5->_activeConnectionMap;
      v5->_activeConnectionMap = v6;

      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      openConnections = v5->_openConnections;
      v5->_openConnections = v8;

      v5->_writeLock._os_unfair_lock_opaque = 0;
    }

    self = v5;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)setActiveConnection:(id)connection forKey:(id)key
{
  v17 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_writeLock);
  v8 = [(NSMutableDictionary *)self->_activeConnectionMap objectForKey:keyCopy];
  if (v8)
  {
    v9 = +[IDSTransportLog IDSDeviceConnection];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412802;
      v12 = keyCopy;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = keyCopy;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Warning. Setting active connection %@ without closing existing %@ for key %@", &v11, 0x20u);
    }
  }

  [(NSMutableDictionary *)self->_activeConnectionMap setObject:connectionCopy forKey:keyCopy];
  [(NSMutableSet *)self->_openConnections addObject:connectionCopy];

  os_unfair_lock_unlock(&self->_writeLock);
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasActiveConnection:(id)connection forKey:(id)key
{
  keyCopy = key;
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_writeLock);
  v8 = [(NSMutableDictionary *)self->_activeConnectionMap objectForKey:keyCopy];

  os_unfair_lock_unlock(&self->_writeLock);
  LOBYTE(self) = [v8 isEqualToString:connectionCopy];

  return self;
}

- (void)removeActiveConnection:(id)connection forKey:(id)key
{
  keyCopy = key;
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_writeLock);
  v7 = [(NSMutableDictionary *)self->_activeConnectionMap objectForKey:keyCopy];
  v8 = [v7 isEqualToString:connectionCopy];

  if (v8)
  {
    [(NSMutableDictionary *)self->_activeConnectionMap removeObjectForKey:keyCopy];
    [(NSMutableSet *)self->_openConnections removeObject:v7];
  }

  os_unfair_lock_unlock(&self->_writeLock);
}

- (int)getActiveConnectionCount
{
  os_unfair_lock_lock(&self->_writeLock);
  v3 = [(NSMutableDictionary *)self->_activeConnectionMap count];
  os_unfair_lock_unlock(&self->_writeLock);
  return v3;
}

@end