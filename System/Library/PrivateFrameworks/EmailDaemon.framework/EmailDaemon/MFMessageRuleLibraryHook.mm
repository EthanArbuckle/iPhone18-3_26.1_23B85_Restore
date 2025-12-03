@interface MFMessageRuleLibraryHook
+ (id)log;
- (MFMessageRuleLibraryHook)initWithMessageChangeManager:(id)manager;
- (void)_loadRules;
- (void)_subscribeNotification;
- (void)dealloc;
- (void)executeRulesOnMessages:(id)messages;
- (void)persistenceDidAddMessages:(id)messages generationWindow:(id)window;
@end

@implementation MFMessageRuleLibraryHook

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000797C0;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185988 != -1)
  {
    dispatch_once(&qword_100185988, block);
  }

  v2 = qword_100185980;

  return v2;
}

- (MFMessageRuleLibraryHook)initWithMessageChangeManager:(id)manager
{
  managerCopy = manager;
  if (!managerCopy)
  {
    v10 = +[NSAssertionHandler currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MFMessageRuleLibraryHook.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"messageChangeManager"}];
  }

  v11.receiver = self;
  v11.super_class = MFMessageRuleLibraryHook;
  v7 = [(MFMessageRuleLibraryHook *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v7->_messageChangeManager, manager);
    [(MFMessageRuleLibraryHook *)v8 _loadRules];
    [(MFMessageRuleLibraryHook *)v8 _subscribeNotification];
  }

  return v8;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, EMUserDefaultMutedThreadActionDidChangeNotification, 0);
  v4.receiver = self;
  v4.super_class = MFMessageRuleLibraryHook;
  [(MFMessageRuleLibraryHook *)&v4 dealloc];
}

- (void)persistenceDidAddMessages:(id)messages generationWindow:(id)window
{
  messagesCopy = messages;
  if ([messagesCopy count])
  {
    firstObject = [messagesCopy firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v8 = +[NSAssertionHandler currentHandler];
      firstObject2 = [messagesCopy firstObject];
      [v8 handleFailureInMethod:a2 object:self file:@"MFMessageRuleLibraryHook.m" lineNumber:66 description:{@"%@ must be a MFLibraryMessage", objc_opt_class()}];
    }

    [(MFMessageRuleLibraryHook *)self executeRulesOnMessages:messagesCopy];
  }
}

- (void)executeRulesOnMessages:(id)messages
{
  messagesCopy = messages;
  os_unfair_lock_lock(&self->_lock);
  rules = [(MFMessageRuleLibraryHook *)self rules];
  os_unfair_lock_unlock(&self->_lock);
  if (_os_feature_enabled_impl())
  {
    messageActionHandler = [(MFMessageRuleLibraryHook *)self messageActionHandler];
    messageActionHandler2 = [(MFMessageRuleLibraryHook *)self messageActionHandler];
    messageActionProviderIDs = [messageActionHandler2 messageActionProviderIDs];

    v5 = objc_alloc_init(NSMutableDictionary);
    selfCopy = self;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = messageActionProviderIDs;
    v29 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
    if (v29)
    {
      v28 = *v45;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v44 + 1) + 8 * i);
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v7 = messagesCopy;
          v8 = [v7 countByEnumeratingWithState:&v40 objects:v54 count:16];
          if (v8)
          {
            v9 = *v41;
            do
            {
              for (j = 0; j != v8; j = j + 1)
              {
                if (*v41 != v9)
                {
                  objc_enumerationMutation(v7);
                }

                v11 = *(*(&v40 + 1) + 8 * j);
                v12 = [messageActionHandler ruleForMessage:v11 usingMessageActionProvider:{v6, selfCopy}];
                if (v12)
                {
                  v13 = [v5 objectForKeyedSubscript:v12];

                  if (v13)
                  {
                    v14 = [v5 objectForKeyedSubscript:v12];
                    [v14 addObject:v11];
                  }

                  else
                  {
                    v15 = [NSMutableArray alloc];
                    v53 = v11;
                    v14 = [NSArray arrayWithObjects:&v53 count:1];
                    v16 = [v15 initWithArray:v14];
                    [v5 setObject:v16 forKeyedSubscript:v12];
                  }
                }
              }

              v8 = [v7 countByEnumeratingWithState:&v40 objects:v54 count:16];
            }

            while (v8);
          }
        }

        v29 = [obj countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v29);
    }

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10007A0EC;
    v39[3] = &unk_100159508;
    v39[4] = selfCopy;
    [v5 enumerateKeysAndObjectsUsingBlock:v39];

    self = selfCopy;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = rules;
  v17 = [v33 countByEnumeratingWithState:&v35 objects:v52 count:16];
  if (v17)
  {
    v18 = *v36;
    do
    {
      for (k = 0; k != v17; k = k + 1)
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v33);
        }

        v20 = *(*(&v35 + 1) + 8 * k);
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_10007A190;
        v34[3] = &unk_100158CC8;
        v34[4] = v20;
        v21 = [messagesCopy ef_filter:{v34, selfCopy}];
        if ([v21 count])
        {
          v22 = +[MFMessageRuleLibraryHook log];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v49 = v20;
            v50 = 2112;
            v51 = v21;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Apply rule:%@ to messages: %@", buf, 0x16u);
          }

          messageChangeManager = [(MFMessageRuleLibraryHook *)self messageChangeManager];
          [v20 performOperationOnMessages:v21 withMessageChangeManager:messageChangeManager];
        }
      }

      v17 = [v33 countByEnumeratingWithState:&v35 objects:v52 count:16];
    }

    while (v17);
  }
}

- (void)_loadRules
{
  v3 = objc_alloc_init(MFBlockedSenderMessageRule);
  v4 = sub_1000B8A64(0);
  v5 = off_100154DE0;
  if (!v4)
  {
    v5 = off_100154DE8;
  }

  v6 = objc_alloc_init(*v5);
  os_unfair_lock_lock(&self->_lock);
  if (_os_feature_enabled_impl())
  {
    v7 = [EDMessageActionHandler alloc];
    v8 = +[MEAppExtensionsController sharedInstance];
    v9 = [v7 initWithExtensionsController:v8];

    v10 = [[MFMessageActionHandler alloc] initWithActionHandler:v9];
    [(MFMessageRuleLibraryHook *)self setMessageActionHandler:v10];
  }

  v12[0] = v3;
  v12[1] = v6;
  v11 = [NSArray arrayWithObjects:v12 count:2];
  [(MFMessageRuleLibraryHook *)self setRules:v11];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_subscribeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = EMUserDefaultMutedThreadActionDidChangeNotification;

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_10007A3B4, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

@end