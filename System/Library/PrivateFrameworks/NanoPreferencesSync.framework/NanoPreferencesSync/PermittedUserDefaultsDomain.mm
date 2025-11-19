@interface PermittedUserDefaultsDomain
- (id)description;
- (void)log;
@end

@implementation PermittedUserDefaultsDomain

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p domain = %@ _keys = %@", v4, self, self->_domain, self->_keys];

  return v5;
}

- (void)log
{
  v3 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100026DB8(v3, self);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_keys;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_keys objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v8), v10];
        [v9 log];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

@end