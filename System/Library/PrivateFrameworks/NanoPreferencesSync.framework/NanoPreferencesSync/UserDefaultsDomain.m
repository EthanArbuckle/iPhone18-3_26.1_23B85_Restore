@interface UserDefaultsDomain
- (id)description;
- (void)log;
@end

@implementation UserDefaultsDomain

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p domain = %@ _keys = %@", v4, self, self->_domain, self->_keyArrays];

  return v5;
}

- (void)log
{
  v3 = nps_daemon_log;
  if (os_log_type_enabled(nps_daemon_log, OS_LOG_TYPE_DEBUG))
  {
    sub_100026DB8(v3, self);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_keyArrays;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v10 = [(NSMutableDictionary *)self->_keyArrays objectForKeyedSubscript:v9, 0];
        v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v16;
          do
          {
            v14 = 0;
            do
            {
              if (*v16 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v15 + 1) + 8 * v14) log];
              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v12);
        }

        v8 = v8 + 1;
      }

      while (v8 != v6);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }
}

@end