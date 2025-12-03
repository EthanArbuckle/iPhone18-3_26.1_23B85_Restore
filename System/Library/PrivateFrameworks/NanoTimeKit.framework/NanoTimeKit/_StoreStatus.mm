@interface _StoreStatus
- (BOOL)needsResetSync;
- (_StoreStatus)initWithPersistencePath:(id)path;
- (void)_persistStatus;
- (void)setSeqId:(id)id;
@end

@implementation _StoreStatus

- (_StoreStatus)initWithPersistencePath:(id)path
{
  pathCopy = path;
  v13.receiver = self;
  v13.super_class = _StoreStatus;
  v6 = [(_StoreStatus *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_persistencePath, path);
    v8 = [NSDictionary dictionaryWithContentsOfFile:v7->_persistencePath];
    objc_opt_class();
    NTKValidateDictionaryValue();
    objc_opt_class();
    NTKValidateDictionaryValue();
    if (v8)
    {
      v9 = [v8 mutableCopy];
      status = v7->_status;
      v7->_status = v9;
    }

    else
    {
      v11 = +[NSMutableDictionary dictionary];
      v8 = v7->_status;
      v7->_status = v11;
    }
  }

  return v7;
}

- (BOOL)needsResetSync
{
  v2 = [(NSMutableDictionary *)self->_status objectForKey:@"needs-reset-sync"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setSeqId:(id)id
{
  status = self->_status;
  if (id)
  {
    [(NSMutableDictionary *)status setObject:id forKey:@"sequence-id"];
  }

  else
  {
    [(NSMutableDictionary *)status removeObjectForKey:@"sequence-id"];
  }

  [(_StoreStatus *)self _persistStatus];
}

- (void)_persistStatus
{
  if (self->_persistencePath)
  {
    v3 = [NSURL fileURLWithPath:?];
    status = self->_status;
    v8 = 0;
    v5 = [(NSMutableDictionary *)status writeToURL:v3 error:&v8];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      v7 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_100040168(v6, v7);
      }
    }
  }
}

@end