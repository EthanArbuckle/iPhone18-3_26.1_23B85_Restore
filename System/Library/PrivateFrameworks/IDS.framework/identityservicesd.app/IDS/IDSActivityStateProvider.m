@interface IDSActivityStateProvider
- (BOOL)hasActiveSubscription;
- (IDSActivityStateProvider)initWithUserDefaults:(id)a3;
- (NSSet)storedActivityTopics;
- (id)storedDescriptionForActivity:(id)a3;
- (id)storedSubscriptionsForActivity:(id)a3;
- (id)storedUpdatesForActivity:(id)a3;
- (void)removeSubscriptionForActivity:(id)a3 subActivity:(id)a4;
- (void)setStoredActivityTopics:(id)a3;
- (void)storeActivityDescription:(id)a3 forActivity:(id)a4;
- (void)storeSubscription:(id)a3 forActivity:(id)a4;
- (void)storeUpdates:(id)a3 forActivity:(id)a4;
@end

@implementation IDSActivityStateProvider

- (IDSActivityStateProvider)initWithUserDefaults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSActivityStateProvider;
  v6 = [(IDSActivityStateProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, a3);
  }

  return v7;
}

- (NSSet)storedActivityTopics
{
  v2 = [(IDSActivityStateProvider *)self userDefaults];
  v3 = [v2 appValueForKey:@"activityTopics"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = [NSSet alloc];
    v10 = [v9 initWithArray:{v4, v12}];
  }

  else
  {
LABEL_13:
    v10 = 0;
  }

  return v10;
}

- (void)setStoredActivityTopics:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 allObjects];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Storing activity topics: %@", &v9, 0xCu);
    }

    v7 = [(IDSActivityStateProvider *)self userDefaults];
    v8 = [v4 allObjects];
    [v7 setAppValue:v8 forKey:@"activityTopics"];
  }
}

- (BOOL)hasActiveSubscription
{
  v2 = self;
  v3 = [(IDSActivityStateProvider *)self storedActivityTopics];
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Looking for an active subscription.  Stored activity topics: %@", buf, 0xCu);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v3;
  v24 = [v5 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v24)
  {
    v6 = *v32;
    v22 = *v32;
    v23 = v2;
    v26 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v25 = v7;
        v8 = *(*(&v31 + 1) + 8 * v7);
        v9 = [(IDSActivityStateProvider *)v2 storedSubscriptionsForActivity:v8, v22, v23];
        v10 = +[IMRGLog registration];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v37 = v8;
          v38 = 2112;
          v39 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Activity topic %@ found subscriptions %@", buf, 0x16u);
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v28;
          while (2)
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [*(*(&v27 + 1) + 8 * i) expirationDate];
              v17 = +[NSDate date];
              v18 = [v16 compare:v17];

              if (v18 == 1)
              {

                v20 = 1;
                v5 = v26;
                goto LABEL_25;
              }

              v19 = +[IMRGLog registration];
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Subscription is in the past, continuing...", buf, 2u);
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v7 = v25 + 1;
        v6 = v22;
        v2 = v23;
        v5 = v26;
      }

      while ((v25 + 1) != v24);
      v20 = 0;
      v24 = [v26 countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v24);
  }

  else
  {
    v20 = 0;
  }

LABEL_25:

  return v20;
}

- (id)storedDescriptionForActivity:(id)a3
{
  v4 = a3;
  v5 = [(IDSActivityStateProvider *)self userDefaults];
  v6 = [NSString stringWithFormat:@"%@-%@", @"activityDescriptions", v4];
  v7 = [v5 appValueForKey:v6];

  if (v7)
  {
    v8 = [NSSet setWithObject:objc_opt_class()];
    v13 = 0;
    v9 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v8 fromData:v7 error:&v13];
    v10 = v13;

    if (v10)
    {
      v11 = +[IMRGLog registration];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to unarchive description: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)storeActivityDescription:(id)a3 forActivity:(id)a4
{
  v6 = a3;
  v7 = [NSString stringWithFormat:@"%@-%@", @"activityDescriptions", a4];
  if (v6)
  {
    v13 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v13];
    v9 = v13;
    if (v9)
    {
      v10 = +[IMRGLog registration];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to archive description: %@", buf, 0xCu);
      }
    }

    if (v8)
    {
      v11 = [(IDSActivityStateProvider *)self userDefaults];
      [v11 setAppValue:v8 forKey:v7];
    }
  }

  else
  {
    v12 = [(IDSActivityStateProvider *)self userDefaults];
    [v12 setAppValue:0 forKey:v7];
  }
}

- (id)storedUpdatesForActivity:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%@-%@", @"activityUpdates", v4];
  v6 = [(IDSActivityStateProvider *)self userDefaults];
  v7 = [v6 appValueForKey:v5];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v8, v9, objc_opt_class(), 0];
    v16 = 0;
    v11 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v10 fromData:v7 error:&v16];
    v12 = v16;

    if (v12)
    {
      v13 = +[IMRGLog registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to unarchive updates: %@", buf, 0xCu);
      }
    }

    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Returning stored updates: %@", buf, 0xCu);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)storeUpdates:(id)a3 forActivity:(id)a4
{
  v10 = a3;
  v6 = [NSString stringWithFormat:@"%@-%@", @"activityUpdates", a4];
  if (!v10)
  {
    v7 = [(IDSActivityStateProvider *)self userDefaults];
    [v7 setAppValue:0 forKey:v6];
  }

  v8 = [NSKeyedArchiver archivedDataWithRootObject:"archivedDataWithRootObject:requiringSecureCoding:error:" requiringSecureCoding:? error:?];
  if (v8)
  {
    v9 = [(IDSActivityStateProvider *)self userDefaults];
    [v9 setAppValue:v8 forKey:v6];
  }
}

- (void)storeSubscription:(id)a3 forActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%@-%@", @"subscriptions", v7];
  v9 = [(IDSActivityStateProvider *)self userDefaults];
  v10 = [v9 appValueForKey:v8];

  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [NSSet setWithObjects:v11, v12, objc_opt_class(), 0];
  v23 = 0;
  v14 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v13 fromData:v10 error:&v23];
  v15 = v23;
  if (v15)
  {
    v16 = +[IMRGLog registration];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to unarchive subscriptions: %@", buf, 0xCu);
    }
  }

  if (!v14)
  {
    v14 = +[NSMutableDictionary dictionary];
  }

  v17 = [v6 subActivity];
  [v14 setValue:v6 forKey:v17];

  v22 = 0;
  v18 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v22];
  v19 = v22;
  if (v19)
  {
    v20 = +[IMRGLog registration];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Failed to archive subscriptions: %@", buf, 0xCu);
    }
  }

  if (v18)
  {
    v21 = [(IDSActivityStateProvider *)self userDefaults];
    [v21 setAppValue:v18 forKey:v8];
  }
}

- (void)removeSubscriptionForActivity:(id)a3 subActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"%@-%@", @"subscriptions", v6];
  v9 = [(IDSActivityStateProvider *)self userDefaults];
  v10 = [v9 appValueForKey:v8];

  if (v10)
  {
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v11, v12, objc_opt_class(), 0];
    v20 = 0;
    v14 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v13 fromData:v10 error:&v20];
    v15 = v20;
    if (v15)
    {
      v16 = +[IMRGLog registration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to unarchive subscriptions: %@", buf, 0xCu);
      }
    }

    if (!v14)
    {
      v14 = +[NSMutableDictionary dictionary];
    }

    [v14 setValue:0 forKey:v7];
    v17 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];
    if (v15)
    {
      v18 = +[IMRGLog registration];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to archive subscriptions: %@", buf, 0xCu);
      }
    }

    if (v17)
    {
      v19 = [(IDSActivityStateProvider *)self userDefaults];
      [v19 setAppValue:v17 forKey:v8];
    }
  }
}

- (id)storedSubscriptionsForActivity:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"%@-%@", @"subscriptions", v4];
  v6 = [(IDSActivityStateProvider *)self userDefaults];
  v7 = [v6 appValueForKey:v5];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v8, v9, objc_opt_class(), 0];
    v16 = 0;
    v11 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v10 fromData:v7 error:&v16];
    v12 = v16;
    if (v12)
    {
      v13 = +[IMRGLog registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to unarchive subscriptions: %@", buf, 0xCu);
      }
    }

    if (!v11)
    {
      v11 = +[NSMutableDictionary dictionary];
    }

    v14 = [v11 allValues];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end