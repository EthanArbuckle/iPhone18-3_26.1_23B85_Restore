@interface CSNotificationDispatcher
- (BOOL)dismissNotificationInLongLookAnimated:(BOOL)a3;
- (BOOL)interceptsQueueRequest:(id)a3;
- (BOOL)isNotificationContentExtensionVisible:(id)a3;
- (BOOL)isPresentingNotificationInLongLook;
- (CSCarPlayStatusProviding)carPlayStatusProvider;
- (CSNotificationDestination)listDestination;
- (CSNotificationDestination)modalDestination;
- (NCNotificationDestinationDelegate)delegate;
- (NSString)coverSheetIdentifier;
- (SBNCAlertingController)alertingController;
- (id)destination:(id)a3 notificationRequestForUUID:(id)a4;
- (id)destination:(id)a3 settingsForSectionIdentifier:(id)a4;
- (id)notificationSectionSettingsForDestination:(id)a3;
- (id)notificationSystemSettingsForDestination:(id)a3;
- (int64_t)participantState;
- (void)_clearNotificationRequestsFromIncomingSection:(id)a3;
- (void)destination:(id)a3 clearNotificationRequests:(id)a4;
- (void)destination:(id)a3 clearNotificationRequestsFromDate:(id)a4 toDate:(id)a5 inSections:(id)a6;
- (void)destination:(id)a3 clearNotificationRequestsInSections:(id)a4;
- (void)destination:(id)a3 performAction:(id)a4 forNotificationRequest:(id)a5 requestAuthentication:(BOOL)a6 withParameters:(id)a7 completion:(id)a8;
- (void)destination:(id)a3 requestPermissionToExecuteAction:(id)a4 forNotificationRequest:(id)a5 withParameters:(id)a6 completion:(id)a7;
- (void)destination:(id)a3 setAllowsCriticalAlerts:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setAllowsDirectMessages:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setAllowsNotifications:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setDeliverQuietly:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forSectionIdentifier:(id)a6 threadIdentifier:(id)a7;
- (void)destination:(id)a3 setNotificationSystemSettings:(id)a4;
- (void)destination:(id)a3 setScheduledDelivery:(BOOL)a4 forSectionIdentifier:(id)a5;
- (void)destination:(id)a3 setSystemScheduledDeliveryEnabled:(BOOL)a4 scheduledDeliveryTimes:(id)a5;
- (void)modifyNotificationRequest:(id)a3;
- (void)notificationsLoadedForSectionIdentifier:(id)a3;
- (void)postNotificationRequest:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)setBannerDestinationUnavailable:(BOOL)a3 forReason:(id)a4;
- (void)stopAllRealerts;
- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4;
- (void)updateNotificationSystemSettings:(id)a3 previousSystemSettings:(id)a4;
- (void)withdrawNotificationRequest:(id)a3;
@end

@implementation CSNotificationDispatcher

- (BOOL)isPresentingNotificationInLongLook
{
  v3 = [(CSNotificationDispatcher *)self isActive];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_listDestination);
    v5 = [WeakRetained isPresentingNotificationInLongLook];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (CSNotificationDestination)modalDestination
{
  WeakRetained = objc_loadWeakRetained(&self->_modalDestination);

  return WeakRetained;
}

- (CSNotificationDestination)listDestination
{
  WeakRetained = objc_loadWeakRetained(&self->_listDestination);

  return WeakRetained;
}

- (NCNotificationDestinationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationDestinationDelegate);

  return WeakRetained;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (a3)
    {
      v5 = self;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [(CSNotificationDispatcher *)self modalDestination];
    [v7 setDispatcher:v6];
  }
}

- (void)setBannerDestinationUnavailable:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  bannerDestinationSuppressionReasons = self->_bannerDestinationSuppressionReasons;
  v10 = v6;
  if (v4)
  {
    if (!bannerDestinationSuppressionReasons)
    {
      v8 = [MEMORY[0x277CBEB58] set];
      v9 = self->_bannerDestinationSuppressionReasons;
      self->_bannerDestinationSuppressionReasons = v8;

      v6 = v10;
      bannerDestinationSuppressionReasons = self->_bannerDestinationSuppressionReasons;
    }

    [(NSMutableSet *)bannerDestinationSuppressionReasons addObject:v6];
  }

  else
  {
    [(NSMutableSet *)bannerDestinationSuppressionReasons removeObject:v6];
  }
}

- (BOOL)isNotificationContentExtensionVisible:(id)a3
{
  v4 = a3;
  if ([(CSNotificationDispatcher *)self isActive])
  {
    v5 = [(CSNotificationDispatcher *)self listDestination];
    v6 = [v5 isNotificationContentExtensionVisible:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)dismissNotificationInLongLookAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSNotificationDispatcher *)self isActive];
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_listDestination);
    v7 = [WeakRetained dismissNotificationInLongLookAnimated:v3];

    LOBYTE(v5) = v7;
  }

  return v5;
}

- (BOOL)interceptsQueueRequest:(id)a3
{
  v4 = a3;
  if (!-[CSNotificationDispatcher isActive](self, "isActive") || (-[CSNotificationDispatcher activeBehavior](self, "activeBehavior"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 notificationBehavior], v5, v6 == 3) || (-[CSNotificationDispatcher activeBehavior](self, "activeBehavior"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "notificationBehavior"), v7, v8 == 2))
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_carPlayStatusProvider);
    v12 = [WeakRetained isCarPlayActiveForNotifications];

    if (v12)
    {
      v13 = [v4 requestDestinations];
      v9 = [v13 containsObject:*MEMORY[0x277D77FD0]] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  return v9;
}

- (void)postNotificationRequest:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 options];
  v6 = [v5 requestsFullScreenPresentation];

  if (!v6)
  {
    if (![(CSNotificationDispatcher *)self isActive])
    {
      v18 = [v4 options];
      if ([v18 addToLockScreenWhenUnlocked])
      {
      }

      else
      {
        v28 = [v4 requestDestinations];
        v29 = [v28 containsObject:*MEMORY[0x277D77FE8]];

        if (!v29)
        {
          v45 = *MEMORY[0x277D77DB0];
          if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
          {
            v12 = v45;
            v46 = objc_opt_class();
            v14 = NSStringFromClass(v46);
            v15 = [v4 notificationIdentifier];
            v16 = [v15 un_logDigest];
            v47 = 138543618;
            v48 = v14;
            v49 = 2114;
            v50 = v16;
            v17 = "Destination %{public}@ ignoring received notification %{public}@";
            goto LABEL_26;
          }

          goto LABEL_27;
        }
      }
    }

    v30 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = [v4 notificationIdentifier];
      v35 = [v34 un_logDigest];
      v47 = 138543618;
      v48 = v33;
      v49 = 2114;
      v50 = v35;
      _os_log_impl(&dword_21EB05000, v31, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ received notification %{public}@", &v47, 0x16u);
    }

    v27 = [(CSNotificationDispatcher *)self listDestination];
    goto LABEL_17;
  }

  v7 = [(CSNotificationDispatcher *)self activeBehavior];
  v8 = [v7 notificationBehavior];

  if (v8 == 2)
  {
    v9 = [(NSMutableSet *)self->_bannerDestinationSuppressionReasons count];
    v10 = *MEMORY[0x277D77DB0];
    v11 = os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v12 = v10;
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = [v4 notificationIdentifier];
        v16 = [v15 un_logDigest];
        v47 = 138543618;
        v48 = v14;
        v49 = 2114;
        v50 = v16;
        v17 = "Destination %{public}@ ignoring received full screen notification due to temporary notification behavior %{public}@";
LABEL_26:
        _os_log_impl(&dword_21EB05000, v12, OS_LOG_TYPE_DEFAULT, v17, &v47, 0x16u);

        goto LABEL_27;
      }

      goto LABEL_27;
    }

    if (v11)
    {
      v38 = v10;
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      v41 = [v4 notificationIdentifier];
      v42 = [v41 un_logDigest];
      v47 = 138543618;
      v48 = v40;
      v49 = 2114;
      v50 = v42;
      _os_log_impl(&dword_21EB05000, v38, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ converting received full screen notification to banner due to temporary notification behavior %{public}@", &v47, 0x16u);
    }

    v36 = [MEMORY[0x277D75128] sharedApplication];
    v43 = [v36 notificationDispatcher];
    v44 = [v43 bannerDestination];
    [v44 postNotificationRequest:v4];

LABEL_18:
    goto LABEL_27;
  }

  v19 = [(CSNotificationDispatcher *)self isActive];
  v20 = *MEMORY[0x277D77DB0];
  v21 = os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v21)
    {
      v22 = v20;
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = [v4 notificationIdentifier];
      v26 = [v25 un_logDigest];
      v47 = 138543618;
      v48 = v24;
      v49 = 2114;
      v50 = v26;
      _os_log_impl(&dword_21EB05000, v22, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ received full screen notification %{public}@", &v47, 0x16u);
    }

    v27 = [(CSNotificationDispatcher *)self modalDestination];
LABEL_17:
    v36 = v27;
    [v27 postNotificationRequest:v4];
    goto LABEL_18;
  }

  if (v21)
  {
    v12 = v20;
    v37 = objc_opt_class();
    v14 = NSStringFromClass(v37);
    v15 = [v4 notificationIdentifier];
    v16 = [v15 un_logDigest];
    v47 = 138543618;
    v48 = v14;
    v49 = 2114;
    v50 = v16;
    v17 = "Destination %{public}@ ignoring received full screen notification %{public}@";
    goto LABEL_26;
  }

LABEL_27:
}

- (void)modifyNotificationRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v4 notificationIdentifier];
    v10 = [v9 un_logDigest];
    v14 = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ modifying notification %{public}@", &v14, 0x16u);
  }

  v11 = [v4 options];
  v12 = [v11 requestsFullScreenPresentation];

  if (v12)
  {
    [(CSNotificationDispatcher *)self modalDestination];
  }

  else
  {
    [(CSNotificationDispatcher *)self listDestination];
  }
  v13 = ;
  [v13 updateNotificationRequest:v4];
}

- (void)withdrawNotificationRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v4 notificationIdentifier];
    v10 = [v9 un_logDigest];
    v14 = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ withdrawing notification %{public}@", &v14, 0x16u);
  }

  v11 = [v4 options];
  v12 = [v11 requestsFullScreenPresentation];

  if (v12)
  {
    [(CSNotificationDispatcher *)self modalDestination];
  }

  else
  {
    [(CSNotificationDispatcher *)self listDestination];
  }
  v13 = ;
  [v13 withdrawNotificationRequest:v4];
}

- (void)updateNotificationSectionSettings:(id)a3 previousSectionSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSNotificationDispatcher *)self modalDestination];
  [v8 updateNotificationSectionSettings:v7 previousSectionSettings:v6];

  v9 = [(CSNotificationDispatcher *)self listDestination];
  [v9 updateNotificationSectionSettings:v7 previousSectionSettings:v6];
}

- (void)updateNotificationSystemSettings:(id)a3 previousSystemSettings:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSNotificationDispatcher *)self modalDestination];
  [v8 updateNotificationSystemSettings:v7 previousSystemSettings:v6];

  v9 = [(CSNotificationDispatcher *)self listDestination];
  [v9 updateNotificationSystemSettings:v7 previousSystemSettings:v6];
}

- (void)notificationsLoadedForSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSNotificationDispatcher *)self listDestination];
  [v5 notificationsLoadedForSectionIdentifier:v4];
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (int64_t)participantState
{
  if ([(CSNotificationDispatcher *)self isActive])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)destination:(id)a3 requestPermissionToExecuteAction:(id)a4 forNotificationRequest:(id)a5 withParameters:(id)a6 completion:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [(CSNotificationDispatcher *)self delegate];
  [v15 destination:self requestPermissionToExecuteAction:v14 forNotificationRequest:v13 withParameters:v12 completion:v11];
}

- (void)destination:(id)a3 performAction:(id)a4 forNotificationRequest:(id)a5 requestAuthentication:(BOOL)a6 withParameters:(id)a7 completion:(id)a8
{
  v9 = a6;
  v13 = a8;
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = [(CSNotificationDispatcher *)self delegate];
  [v17 destination:self executeAction:v16 forNotificationRequest:v15 requestAuthentication:v9 withParameters:v14 completion:v13];
}

- (void)destination:(id)a3 clearNotificationRequests:(id)a4
{
  v5 = a4;
  v6 = [(CSNotificationDispatcher *)self delegate];
  [v6 destination:self requestsClearingNotificationRequests:v5];
}

- (void)destination:(id)a3 clearNotificationRequestsInSections:(id)a4
{
  v5 = a4;
  v6 = [(CSNotificationDispatcher *)self delegate];
  [v6 destination:self requestsClearingNotificationRequestsInSections:v5];
}

- (void)destination:(id)a3 clearNotificationRequestsFromDate:(id)a4 toDate:(id)a5 inSections:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(CSNotificationDispatcher *)self delegate];
  [v12 destination:self requestsClearingNotificationRequestsFromDate:v11 toDate:v10 inSections:v9];
}

- (void)destination:(id)a3 setAllowsNotifications:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v8 = a5;
  v7 = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 destination:self setAllowsNotifications:v5 forSectionIdentifier:v8];
  }
}

- (void)destination:(id)a3 setDeliverQuietly:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v8 = a5;
  v7 = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 destination:self setDeliverQuietly:v5 forSectionIdentifier:v8];
  }
}

- (void)destination:(id)a3 setMuted:(BOOL)a4 untilDate:(id)a5 forSectionIdentifier:(id)a6 threadIdentifier:(id)a7
{
  v9 = a4;
  v14 = a5;
  v11 = a6;
  v12 = a7;
  v13 = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v13 destination:self setMuted:v9 untilDate:v14 forSectionIdentifier:v11 threadIdentifier:v12];
  }
}

- (void)destination:(id)a3 setAllowsCriticalAlerts:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v8 = a5;
  v7 = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 destination:self setAllowsCriticalAlerts:v5 forSectionIdentifier:v8];
  }
}

- (void)destination:(id)a3 setAllowsTimeSensitive:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v8 = a5;
  v7 = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 destination:self setAllowsTimeSensitive:v5 forSectionIdentifier:v8];
  }
}

- (void)destination:(id)a3 setAllowsDirectMessages:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v8 = a5;
  v7 = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 destination:self setAllowsDirectMessages:v5 forSectionIdentifier:v8];
  }
}

- (void)destination:(id)a3 setScheduledDelivery:(BOOL)a4 forSectionIdentifier:(id)a5
{
  v5 = a4;
  v8 = a5;
  v7 = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 destination:self setScheduledDelivery:v5 forSectionIdentifier:v8];
  }
}

- (void)destination:(id)a3 setSystemScheduledDeliveryEnabled:(BOOL)a4 scheduledDeliveryTimes:(id)a5
{
  v5 = a4;
  v8 = a5;
  v7 = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 destination:self setSystemScheduledDeliveryEnabled:v5 scheduledDeliveryTimes:v8];
  }
}

- (id)destination:(id)a3 notificationRequestForUUID:(id)a4
{
  v5 = a4;
  v6 = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 destination:self notificationRequestForUUID:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)destination:(id)a3 settingsForSectionIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(CSNotificationDispatcher *)self delegate];
  v7 = [v6 notificationSectionSettingsForDestination:self forSectionIdentifier:v5];

  return v7;
}

- (id)notificationSectionSettingsForDestination:(id)a3
{
  v4 = [(CSNotificationDispatcher *)self delegate];
  v5 = [v4 notificationSectionSettingsForDestination:self];

  return v5;
}

- (id)notificationSystemSettingsForDestination:(id)a3
{
  v4 = [(CSNotificationDispatcher *)self delegate];
  v5 = [v4 notificationSystemSettingsForDestination:self];

  return v5;
}

- (void)destination:(id)a3 setNotificationSystemSettings:(id)a4
{
  v5 = a4;
  v6 = [(CSNotificationDispatcher *)self delegate];
  [v6 destination:self setNotificationSystemSettings:v5];
}

- (void)stopAllRealerts
{
  v2 = [(CSNotificationDispatcher *)self alertingController];
  [v2 killRealerts];
}

- (void)_clearNotificationRequestsFromIncomingSection:(id)a3
{
  v4 = a3;
  v6 = [(CSNotificationDispatcher *)self delegate];
  v5 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D77FE0]];
  [v6 destination:self requestsClearingNotificationRequests:v4 fromDestinations:v5];
}

- (CSCarPlayStatusProviding)carPlayStatusProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_carPlayStatusProvider);

  return WeakRetained;
}

- (SBNCAlertingController)alertingController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertingController);

  return WeakRetained;
}

@end