@interface _IDSSessionStore
+ (id)sharedInstance;
- (_IDSSessionStore)init;
- (id)sessionForAccount:(id)a3 fromID:(id)a4 identifier:(id)a5 transportType:(id)a6;
@end

@implementation _IDSSessionStore

+ (id)sharedInstance
{
  if (qword_1ED5DDFE8 != -1)
  {
    sub_195B30804();
  }

  v3 = qword_1EAEDC100;

  return v3;
}

- (_IDSSessionStore)init
{
  v6.receiver = self;
  v6.super_class = _IDSSessionStore;
  v2 = [(_IDSSessionStore *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    sessionBySessionID = v2->_sessionBySessionID;
    v2->_sessionBySessionID = v3;
  }

  return v2;
}

- (id)sessionForAccount:(id)a3 fromID:(id)a4 identifier:(id)a5 transportType:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (_os_feature_enabled_impl())
  {
    v14 = +[IDSInternalQueueController sharedInstance];
    v15 = [v14 assertQueueIsCurrent];

    if (v15)
    {
      v16 = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_195B30818(v16);
      }
    }

    if (!v12 || ([(NSMapTable *)self->_sessionBySessionID objectForKey:v12], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v18 = [IDSSession alloc];
      v19 = [MEMORY[0x1E695DFD8] setWithObject:v11];
      v17 = -[IDSSession _initWithAccount:destinations:transportType:uniqueID:](v18, "_initWithAccount:destinations:transportType:uniqueID:", v10, v19, [v13 integerValue], v12);

      if (v12)
      {
        [(NSMapTable *)self->_sessionBySessionID setObject:v17 forKey:v12];
      }
    }
  }

  else
  {
    v20 = [IDSSession alloc];
    v21 = [MEMORY[0x1E695DFD8] setWithObject:v11];
    v17 = -[IDSSession _initWithAccount:destinations:transportType:uniqueID:](v20, "_initWithAccount:destinations:transportType:uniqueID:", v10, v21, [v13 integerValue], v12);
  }

  return v17;
}

@end