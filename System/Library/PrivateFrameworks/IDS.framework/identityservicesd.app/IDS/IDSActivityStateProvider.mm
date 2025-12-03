@interface IDSActivityStateProvider
- (BOOL)hasActiveSubscription;
- (IDSActivityStateProvider)initWithUserDefaults:(id)defaults;
- (NSSet)storedActivityTopics;
- (id)storedDescriptionForActivity:(id)activity;
- (id)storedSubscriptionsForActivity:(id)activity;
- (id)storedUpdatesForActivity:(id)activity;
- (void)removeSubscriptionForActivity:(id)activity subActivity:(id)subActivity;
- (void)setStoredActivityTopics:(id)topics;
- (void)storeActivityDescription:(id)description forActivity:(id)activity;
- (void)storeSubscription:(id)subscription forActivity:(id)activity;
- (void)storeUpdates:(id)updates forActivity:(id)activity;
@end

@implementation IDSActivityStateProvider

- (IDSActivityStateProvider)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v9.receiver = self;
  v9.super_class = IDSActivityStateProvider;
  v6 = [(IDSActivityStateProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, defaults);
  }

  return v7;
}

- (NSSet)storedActivityTopics
{
  userDefaults = [(IDSActivityStateProvider *)self userDefaults];
  v3 = [userDefaults appValueForKey:@"activityTopics"];

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

- (void)setStoredActivityTopics:(id)topics
{
  topicsCopy = topics;
  if (topicsCopy)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      allObjects = [topicsCopy allObjects];
      v9 = 138412290;
      v10 = allObjects;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Storing activity topics: %@", &v9, 0xCu);
    }

    userDefaults = [(IDSActivityStateProvider *)self userDefaults];
    allObjects2 = [topicsCopy allObjects];
    [userDefaults setAppValue:allObjects2 forKey:@"activityTopics"];
  }
}

- (BOOL)hasActiveSubscription
{
  selfCopy = self;
  storedActivityTopics = [(IDSActivityStateProvider *)self storedActivityTopics];
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = storedActivityTopics;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Looking for an active subscription.  Stored activity topics: %@", buf, 0xCu);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = storedActivityTopics;
  v24 = [v5 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v24)
  {
    v6 = *v32;
    v22 = *v32;
    v23 = selfCopy;
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
        v9 = [(IDSActivityStateProvider *)selfCopy storedSubscriptionsForActivity:v8, v22, v23];
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

              expirationDate = [*(*(&v27 + 1) + 8 * i) expirationDate];
              v17 = +[NSDate date];
              v18 = [expirationDate compare:v17];

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
        selfCopy = v23;
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

- (id)storedDescriptionForActivity:(id)activity
{
  activityCopy = activity;
  userDefaults = [(IDSActivityStateProvider *)self userDefaults];
  activityCopy = [NSString stringWithFormat:@"%@-%@", @"activityDescriptions", activityCopy];
  v7 = [userDefaults appValueForKey:activityCopy];

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

- (void)storeActivityDescription:(id)description forActivity:(id)activity
{
  descriptionCopy = description;
  activity = [NSString stringWithFormat:@"%@-%@", @"activityDescriptions", activity];
  if (descriptionCopy)
  {
    v13 = 0;
    v8 = [NSKeyedArchiver archivedDataWithRootObject:descriptionCopy requiringSecureCoding:1 error:&v13];
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
      userDefaults = [(IDSActivityStateProvider *)self userDefaults];
      [userDefaults setAppValue:v8 forKey:activity];
    }
  }

  else
  {
    userDefaults2 = [(IDSActivityStateProvider *)self userDefaults];
    [userDefaults2 setAppValue:0 forKey:activity];
  }
}

- (id)storedUpdatesForActivity:(id)activity
{
  activityCopy = activity;
  activityCopy = [NSString stringWithFormat:@"%@-%@", @"activityUpdates", activityCopy];
  userDefaults = [(IDSActivityStateProvider *)self userDefaults];
  v7 = [userDefaults appValueForKey:activityCopy];

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

- (void)storeUpdates:(id)updates forActivity:(id)activity
{
  updatesCopy = updates;
  activity = [NSString stringWithFormat:@"%@-%@", @"activityUpdates", activity];
  if (!updatesCopy)
  {
    userDefaults = [(IDSActivityStateProvider *)self userDefaults];
    [userDefaults setAppValue:0 forKey:activity];
  }

  v8 = [NSKeyedArchiver archivedDataWithRootObject:"archivedDataWithRootObject:requiringSecureCoding:error:" requiringSecureCoding:? error:?];
  if (v8)
  {
    userDefaults2 = [(IDSActivityStateProvider *)self userDefaults];
    [userDefaults2 setAppValue:v8 forKey:activity];
  }
}

- (void)storeSubscription:(id)subscription forActivity:(id)activity
{
  subscriptionCopy = subscription;
  activityCopy = activity;
  activityCopy = [NSString stringWithFormat:@"%@-%@", @"subscriptions", activityCopy];
  userDefaults = [(IDSActivityStateProvider *)self userDefaults];
  v10 = [userDefaults appValueForKey:activityCopy];

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

  subActivity = [subscriptionCopy subActivity];
  [v14 setValue:subscriptionCopy forKey:subActivity];

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
    userDefaults2 = [(IDSActivityStateProvider *)self userDefaults];
    [userDefaults2 setAppValue:v18 forKey:activityCopy];
  }
}

- (void)removeSubscriptionForActivity:(id)activity subActivity:(id)subActivity
{
  activityCopy = activity;
  subActivityCopy = subActivity;
  activityCopy = [NSString stringWithFormat:@"%@-%@", @"subscriptions", activityCopy];
  userDefaults = [(IDSActivityStateProvider *)self userDefaults];
  v10 = [userDefaults appValueForKey:activityCopy];

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

    [v14 setValue:0 forKey:subActivityCopy];
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
      userDefaults2 = [(IDSActivityStateProvider *)self userDefaults];
      [userDefaults2 setAppValue:v17 forKey:activityCopy];
    }
  }
}

- (id)storedSubscriptionsForActivity:(id)activity
{
  activityCopy = activity;
  activityCopy = [NSString stringWithFormat:@"%@-%@", @"subscriptions", activityCopy];
  userDefaults = [(IDSActivityStateProvider *)self userDefaults];
  v7 = [userDefaults appValueForKey:activityCopy];

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

    allValues = [v11 allValues];
  }

  else
  {
    allValues = 0;
  }

  return allValues;
}

@end