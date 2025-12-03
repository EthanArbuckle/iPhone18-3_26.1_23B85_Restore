@interface DonationState
+ (unint64_t)_validApplicationToExtractFromCount:(id)count;
- (DonationState)init;
- (DonationState)initWithLayoutMonitor:(id)monitor;
- (void)dealloc;
@end

@implementation DonationState

- (DonationState)init
{
  v6.receiver = self;
  v6.super_class = DonationState;
  v2 = [(DonationState *)&v6 init];
  if (v2)
  {
    v3 = +[NSDate date];
    dateCreated = v2->_dateCreated;
    v2->_dateCreated = v3;

    v2->_numberOfApplicationsToWaitFor = 1;
  }

  return v2;
}

- (DonationState)initWithLayoutMonitor:(id)monitor
{
  monitorCopy = monitor;
  v13.receiver = self;
  v13.super_class = DonationState;
  v5 = [(DonationState *)&v13 init];
  if (v5)
  {
    v6 = +[NSDate date];
    dateCreated = v5->_dateCreated;
    v5->_dateCreated = v6;

    v8 = objc_storeWeak(&v5->_layoutMonitor, monitorCopy);
    currentLayout = [monitorCopy currentLayout];

    v10 = objc_opt_class();
    elements = [currentLayout elements];
    v5->_numberOfApplicationsToWaitFor = [v10 _validApplicationToExtractFromCount:elements];
  }

  return v5;
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Clearing donation state", buf, 2u);
  }

  v3.receiver = self;
  v3.super_class = DonationState;
  [(DonationState *)&v3 dealloc];
}

+ (unint64_t)_validApplicationToExtractFromCount:(id)count
{
  countCopy = count;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [countCopy countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v4)
  {
    v6 = v4;
    v26 = 0;
    v7 = *v28;
    v8 = FBSDisplayLayoutElementLockScreenIdentifier;
    v9 = FBSDisplayLayoutElementSiriIdentifier;
    v10 = FBSDisplayLayoutElementControlCenterIdentifier;
    v25 = FBSDisplayLayoutElementNotificationCenterIdentifier;
    *&v5 = 138412546;
    v24 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(countCopy);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        if ([v12 isUIApplicationElement])
        {
          identifier = [v12 identifier];
          v14 = [identifier isEqualToString:v8];

          if ((v14 & 1) == 0)
          {
            identifier2 = [v12 identifier];
            v16 = [identifier2 isEqualToString:v9];

            if ((v16 & 1) == 0)
            {
              identifier3 = [v12 identifier];
              v18 = [identifier3 isEqualToString:v10];

              if ((v18 & 1) == 0)
              {
                identifier4 = [v12 identifier];
                v20 = [identifier4 isEqualToString:v25];

                if ((v20 & 1) == 0)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                  {
                    identifier5 = [v12 identifier];
                    bundleIdentifier = [v12 bundleIdentifier];
                    *buf = v24;
                    v32 = identifier5;
                    v33 = 2112;
                    v34 = bundleIdentifier;
                    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Allowing application element with identifier: %@, bundleID: %@", buf, 0x16u);
                  }

                  ++v26;
                }
              }
            }
          }
        }
      }

      v6 = [countCopy countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v6);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end