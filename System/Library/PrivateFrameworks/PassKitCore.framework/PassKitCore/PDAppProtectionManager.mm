@interface PDAppProtectionManager
- (PDAppProtectionManager)init;
- (void)_enforceHideCardsWhileLocked:(BOOL)locked;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)dealloc;
- (void)updateHideCardsWhileLockedEnforcement;
@end

@implementation PDAppProtectionManager

- (PDAppProtectionManager)init
{
  v9.receiver = self;
  v9.super_class = PDAppProtectionManager;
  v2 = [(PDAppProtectionManager *)&v9 init];
  if (v2)
  {
    v3 = [APApplication applicationWithBundleIdentifier:PKPassbookAppProtectionBundleIdentifier];
    application = v2->_application;
    v2->_application = v3;

    v5 = +[APSubject subjectMonitorRegistry];
    v6 = [v5 addMonitor:v2 subjectMask:1];
    subscription = v2->_subscription;
    v2->_subscription = v6;
  }

  return v2;
}

- (void)dealloc
{
  [(APSubjectMonitorSubscription *)self->_subscription invalidate];
  v3.receiver = self;
  v3.super_class = PDAppProtectionManager;
  [(PDAppProtectionManager *)&v3 dealloc];
}

- (void)updateHideCardsWhileLockedEnforcement
{
  isLocked = [(APApplication *)self->_application isLocked];

  [(PDAppProtectionManager *)self _enforceHideCardsWhileLocked:isLocked];
}

- (void)_enforceHideCardsWhileLocked:(BOOL)locked
{
  lockedCopy = locked;
  v4 = PKLogFacilityTypeGetObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (lockedCopy)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Enforcing hide cards while locked policy", buf, 2u);
    }

    v6 = objc_alloc_init(NSMutableDictionary);
    [v6 MCSetBoolRestriction:MCFeatureCardsWhileLockedAllowed value:0];
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Unenforcing hide cards while locked policy", buf, 2u);
    }

    v6 = 0;
  }

  v7 = +[MCProfileConnection sharedConnection];
  v10 = 0;
  [v7 applyRestrictionDictionary:v6 clientType:PKServiceBundleIdentifier clientUUID:PKMCRestrictionClientUUIDAllowWhenLocked localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v10];
  v8 = v10;

  if (v8)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error applying restriction %@", buf, 0xCu);
    }
  }
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  changedCopy = changed;
  v6 = [changedCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(changedCopy);
        }

        if ([*(*(&v12 + 1) + 8 * i) isEqual:self->_application])
        {
          v10 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updating hide cards enforcement due to subject change", v11, 2u);
          }

          [(PDAppProtectionManager *)self updateHideCardsWhileLockedEnforcement];
          goto LABEL_13;
        }
      }

      v7 = [changedCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

@end