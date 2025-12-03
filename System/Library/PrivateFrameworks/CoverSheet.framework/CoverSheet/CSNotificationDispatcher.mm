@interface CSNotificationDispatcher
- (BOOL)dismissNotificationInLongLookAnimated:(BOOL)animated;
- (BOOL)interceptsQueueRequest:(id)request;
- (BOOL)isNotificationContentExtensionVisible:(id)visible;
- (BOOL)isPresentingNotificationInLongLook;
- (CSCarPlayStatusProviding)carPlayStatusProvider;
- (CSNotificationDestination)listDestination;
- (CSNotificationDestination)modalDestination;
- (NCNotificationDestinationDelegate)delegate;
- (NSString)coverSheetIdentifier;
- (SBNCAlertingController)alertingController;
- (id)destination:(id)destination notificationRequestForUUID:(id)d;
- (id)destination:(id)destination settingsForSectionIdentifier:(id)identifier;
- (id)notificationSectionSettingsForDestination:(id)destination;
- (id)notificationSystemSettingsForDestination:(id)destination;
- (int64_t)participantState;
- (void)_clearNotificationRequestsFromIncomingSection:(id)section;
- (void)destination:(id)destination clearNotificationRequests:(id)requests;
- (void)destination:(id)destination clearNotificationRequestsFromDate:(id)date toDate:(id)toDate inSections:(id)sections;
- (void)destination:(id)destination clearNotificationRequestsInSections:(id)sections;
- (void)destination:(id)destination performAction:(id)action forNotificationRequest:(id)request requestAuthentication:(BOOL)authentication withParameters:(id)parameters completion:(id)completion;
- (void)destination:(id)destination requestPermissionToExecuteAction:(id)action forNotificationRequest:(id)request withParameters:(id)parameters completion:(id)completion;
- (void)destination:(id)destination setAllowsCriticalAlerts:(BOOL)alerts forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setAllowsDirectMessages:(BOOL)messages forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setAllowsNotifications:(BOOL)notifications forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setAllowsTimeSensitive:(BOOL)sensitive forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setDeliverQuietly:(BOOL)quietly forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier;
- (void)destination:(id)destination setNotificationSystemSettings:(id)settings;
- (void)destination:(id)destination setScheduledDelivery:(BOOL)delivery forSectionIdentifier:(id)identifier;
- (void)destination:(id)destination setSystemScheduledDeliveryEnabled:(BOOL)enabled scheduledDeliveryTimes:(id)times;
- (void)modifyNotificationRequest:(id)request;
- (void)notificationsLoadedForSectionIdentifier:(id)identifier;
- (void)postNotificationRequest:(id)request;
- (void)setActive:(BOOL)active;
- (void)setBannerDestinationUnavailable:(BOOL)unavailable forReason:(id)reason;
- (void)stopAllRealerts;
- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings;
- (void)updateNotificationSystemSettings:(id)settings previousSystemSettings:(id)systemSettings;
- (void)withdrawNotificationRequest:(id)request;
@end

@implementation CSNotificationDispatcher

- (BOOL)isPresentingNotificationInLongLook
{
  isActive = [(CSNotificationDispatcher *)self isActive];
  if (isActive)
  {
    WeakRetained = objc_loadWeakRetained(&self->_listDestination);
    isPresentingNotificationInLongLook = [WeakRetained isPresentingNotificationInLongLook];

    LOBYTE(isActive) = isPresentingNotificationInLongLook;
  }

  return isActive;
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

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (active)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    v6 = selfCopy;
    modalDestination = [(CSNotificationDispatcher *)self modalDestination];
    [modalDestination setDispatcher:v6];
  }
}

- (void)setBannerDestinationUnavailable:(BOOL)unavailable forReason:(id)reason
{
  unavailableCopy = unavailable;
  reasonCopy = reason;
  bannerDestinationSuppressionReasons = self->_bannerDestinationSuppressionReasons;
  v10 = reasonCopy;
  if (unavailableCopy)
  {
    if (!bannerDestinationSuppressionReasons)
    {
      v8 = [MEMORY[0x277CBEB58] set];
      v9 = self->_bannerDestinationSuppressionReasons;
      self->_bannerDestinationSuppressionReasons = v8;

      reasonCopy = v10;
      bannerDestinationSuppressionReasons = self->_bannerDestinationSuppressionReasons;
    }

    [(NSMutableSet *)bannerDestinationSuppressionReasons addObject:reasonCopy];
  }

  else
  {
    [(NSMutableSet *)bannerDestinationSuppressionReasons removeObject:reasonCopy];
  }
}

- (BOOL)isNotificationContentExtensionVisible:(id)visible
{
  visibleCopy = visible;
  if ([(CSNotificationDispatcher *)self isActive])
  {
    listDestination = [(CSNotificationDispatcher *)self listDestination];
    v6 = [listDestination isNotificationContentExtensionVisible:visibleCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)dismissNotificationInLongLookAnimated:(BOOL)animated
{
  animatedCopy = animated;
  isActive = [(CSNotificationDispatcher *)self isActive];
  if (isActive)
  {
    WeakRetained = objc_loadWeakRetained(&self->_listDestination);
    v7 = [WeakRetained dismissNotificationInLongLookAnimated:animatedCopy];

    LOBYTE(isActive) = v7;
  }

  return isActive;
}

- (BOOL)interceptsQueueRequest:(id)request
{
  requestCopy = request;
  if (!-[CSNotificationDispatcher isActive](self, "isActive") || (-[CSNotificationDispatcher activeBehavior](self, "activeBehavior"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 notificationBehavior], v5, v6 == 3) || (-[CSNotificationDispatcher activeBehavior](self, "activeBehavior"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "notificationBehavior"), v7, v8 == 2))
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_carPlayStatusProvider);
    isCarPlayActiveForNotifications = [WeakRetained isCarPlayActiveForNotifications];

    if (isCarPlayActiveForNotifications)
    {
      requestDestinations = [requestCopy requestDestinations];
      v9 = [requestDestinations containsObject:*MEMORY[0x277D77FD0]] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  return v9;
}

- (void)postNotificationRequest:(id)request
{
  v51 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  options = [requestCopy options];
  requestsFullScreenPresentation = [options requestsFullScreenPresentation];

  if (!requestsFullScreenPresentation)
  {
    if (![(CSNotificationDispatcher *)self isActive])
    {
      options2 = [requestCopy options];
      if ([options2 addToLockScreenWhenUnlocked])
      {
      }

      else
      {
        requestDestinations = [requestCopy requestDestinations];
        v29 = [requestDestinations containsObject:*MEMORY[0x277D77FE8]];

        if (!v29)
        {
          v45 = *MEMORY[0x277D77DB0];
          if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
          {
            v12 = v45;
            v46 = objc_opt_class();
            v14 = NSStringFromClass(v46);
            notificationIdentifier = [requestCopy notificationIdentifier];
            un_logDigest = [notificationIdentifier un_logDigest];
            v47 = 138543618;
            v48 = v14;
            v49 = 2114;
            v50 = un_logDigest;
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
      notificationIdentifier2 = [requestCopy notificationIdentifier];
      un_logDigest2 = [notificationIdentifier2 un_logDigest];
      v47 = 138543618;
      v48 = v33;
      v49 = 2114;
      v50 = un_logDigest2;
      _os_log_impl(&dword_21EB05000, v31, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ received notification %{public}@", &v47, 0x16u);
    }

    listDestination = [(CSNotificationDispatcher *)self listDestination];
    goto LABEL_17;
  }

  activeBehavior = [(CSNotificationDispatcher *)self activeBehavior];
  notificationBehavior = [activeBehavior notificationBehavior];

  if (notificationBehavior == 2)
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
        notificationIdentifier = [requestCopy notificationIdentifier];
        un_logDigest = [notificationIdentifier un_logDigest];
        v47 = 138543618;
        v48 = v14;
        v49 = 2114;
        v50 = un_logDigest;
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
      notificationIdentifier3 = [requestCopy notificationIdentifier];
      un_logDigest3 = [notificationIdentifier3 un_logDigest];
      v47 = 138543618;
      v48 = v40;
      v49 = 2114;
      v50 = un_logDigest3;
      _os_log_impl(&dword_21EB05000, v38, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ converting received full screen notification to banner due to temporary notification behavior %{public}@", &v47, 0x16u);
    }

    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    notificationDispatcher = [mEMORY[0x277D75128] notificationDispatcher];
    bannerDestination = [notificationDispatcher bannerDestination];
    [bannerDestination postNotificationRequest:requestCopy];

LABEL_18:
    goto LABEL_27;
  }

  isActive = [(CSNotificationDispatcher *)self isActive];
  v20 = *MEMORY[0x277D77DB0];
  v21 = os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT);
  if (isActive)
  {
    if (v21)
    {
      v22 = v20;
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      notificationIdentifier4 = [requestCopy notificationIdentifier];
      un_logDigest4 = [notificationIdentifier4 un_logDigest];
      v47 = 138543618;
      v48 = v24;
      v49 = 2114;
      v50 = un_logDigest4;
      _os_log_impl(&dword_21EB05000, v22, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ received full screen notification %{public}@", &v47, 0x16u);
    }

    listDestination = [(CSNotificationDispatcher *)self modalDestination];
LABEL_17:
    mEMORY[0x277D75128] = listDestination;
    [listDestination postNotificationRequest:requestCopy];
    goto LABEL_18;
  }

  if (v21)
  {
    v12 = v20;
    v37 = objc_opt_class();
    v14 = NSStringFromClass(v37);
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v47 = 138543618;
    v48 = v14;
    v49 = 2114;
    v50 = un_logDigest;
    v17 = "Destination %{public}@ ignoring received full screen notification %{public}@";
    goto LABEL_26;
  }

LABEL_27:
}

- (void)modifyNotificationRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v14 = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = un_logDigest;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ modifying notification %{public}@", &v14, 0x16u);
  }

  options = [requestCopy options];
  requestsFullScreenPresentation = [options requestsFullScreenPresentation];

  if (requestsFullScreenPresentation)
  {
    [(CSNotificationDispatcher *)self modalDestination];
  }

  else
  {
    [(CSNotificationDispatcher *)self listDestination];
  }
  v13 = ;
  [v13 updateNotificationRequest:requestCopy];
}

- (void)withdrawNotificationRequest:(id)request
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v14 = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = un_logDigest;
    _os_log_impl(&dword_21EB05000, v6, OS_LOG_TYPE_DEFAULT, "Destination %{public}@ withdrawing notification %{public}@", &v14, 0x16u);
  }

  options = [requestCopy options];
  requestsFullScreenPresentation = [options requestsFullScreenPresentation];

  if (requestsFullScreenPresentation)
  {
    [(CSNotificationDispatcher *)self modalDestination];
  }

  else
  {
    [(CSNotificationDispatcher *)self listDestination];
  }
  v13 = ;
  [v13 withdrawNotificationRequest:requestCopy];
}

- (void)updateNotificationSectionSettings:(id)settings previousSectionSettings:(id)sectionSettings
{
  sectionSettingsCopy = sectionSettings;
  settingsCopy = settings;
  modalDestination = [(CSNotificationDispatcher *)self modalDestination];
  [modalDestination updateNotificationSectionSettings:settingsCopy previousSectionSettings:sectionSettingsCopy];

  listDestination = [(CSNotificationDispatcher *)self listDestination];
  [listDestination updateNotificationSectionSettings:settingsCopy previousSectionSettings:sectionSettingsCopy];
}

- (void)updateNotificationSystemSettings:(id)settings previousSystemSettings:(id)systemSettings
{
  systemSettingsCopy = systemSettings;
  settingsCopy = settings;
  modalDestination = [(CSNotificationDispatcher *)self modalDestination];
  [modalDestination updateNotificationSystemSettings:settingsCopy previousSystemSettings:systemSettingsCopy];

  listDestination = [(CSNotificationDispatcher *)self listDestination];
  [listDestination updateNotificationSystemSettings:settingsCopy previousSystemSettings:systemSettingsCopy];
}

- (void)notificationsLoadedForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  listDestination = [(CSNotificationDispatcher *)self listDestination];
  [listDestination notificationsLoadedForSectionIdentifier:identifierCopy];
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

- (void)destination:(id)destination requestPermissionToExecuteAction:(id)action forNotificationRequest:(id)request withParameters:(id)parameters completion:(id)completion
{
  completionCopy = completion;
  parametersCopy = parameters;
  requestCopy = request;
  actionCopy = action;
  delegate = [(CSNotificationDispatcher *)self delegate];
  [delegate destination:self requestPermissionToExecuteAction:actionCopy forNotificationRequest:requestCopy withParameters:parametersCopy completion:completionCopy];
}

- (void)destination:(id)destination performAction:(id)action forNotificationRequest:(id)request requestAuthentication:(BOOL)authentication withParameters:(id)parameters completion:(id)completion
{
  authenticationCopy = authentication;
  completionCopy = completion;
  parametersCopy = parameters;
  requestCopy = request;
  actionCopy = action;
  delegate = [(CSNotificationDispatcher *)self delegate];
  [delegate destination:self executeAction:actionCopy forNotificationRequest:requestCopy requestAuthentication:authenticationCopy withParameters:parametersCopy completion:completionCopy];
}

- (void)destination:(id)destination clearNotificationRequests:(id)requests
{
  requestsCopy = requests;
  delegate = [(CSNotificationDispatcher *)self delegate];
  [delegate destination:self requestsClearingNotificationRequests:requestsCopy];
}

- (void)destination:(id)destination clearNotificationRequestsInSections:(id)sections
{
  sectionsCopy = sections;
  delegate = [(CSNotificationDispatcher *)self delegate];
  [delegate destination:self requestsClearingNotificationRequestsInSections:sectionsCopy];
}

- (void)destination:(id)destination clearNotificationRequestsFromDate:(id)date toDate:(id)toDate inSections:(id)sections
{
  sectionsCopy = sections;
  toDateCopy = toDate;
  dateCopy = date;
  delegate = [(CSNotificationDispatcher *)self delegate];
  [delegate destination:self requestsClearingNotificationRequestsFromDate:dateCopy toDate:toDateCopy inSections:sectionsCopy];
}

- (void)destination:(id)destination setAllowsNotifications:(BOOL)notifications forSectionIdentifier:(id)identifier
{
  notificationsCopy = notifications;
  identifierCopy = identifier;
  delegate = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate destination:self setAllowsNotifications:notificationsCopy forSectionIdentifier:identifierCopy];
  }
}

- (void)destination:(id)destination setDeliverQuietly:(BOOL)quietly forSectionIdentifier:(id)identifier
{
  quietlyCopy = quietly;
  identifierCopy = identifier;
  delegate = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate destination:self setDeliverQuietly:quietlyCopy forSectionIdentifier:identifierCopy];
  }
}

- (void)destination:(id)destination setMuted:(BOOL)muted untilDate:(id)date forSectionIdentifier:(id)identifier threadIdentifier:(id)threadIdentifier
{
  mutedCopy = muted;
  dateCopy = date;
  identifierCopy = identifier;
  threadIdentifierCopy = threadIdentifier;
  delegate = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate destination:self setMuted:mutedCopy untilDate:dateCopy forSectionIdentifier:identifierCopy threadIdentifier:threadIdentifierCopy];
  }
}

- (void)destination:(id)destination setAllowsCriticalAlerts:(BOOL)alerts forSectionIdentifier:(id)identifier
{
  alertsCopy = alerts;
  identifierCopy = identifier;
  delegate = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate destination:self setAllowsCriticalAlerts:alertsCopy forSectionIdentifier:identifierCopy];
  }
}

- (void)destination:(id)destination setAllowsTimeSensitive:(BOOL)sensitive forSectionIdentifier:(id)identifier
{
  sensitiveCopy = sensitive;
  identifierCopy = identifier;
  delegate = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate destination:self setAllowsTimeSensitive:sensitiveCopy forSectionIdentifier:identifierCopy];
  }
}

- (void)destination:(id)destination setAllowsDirectMessages:(BOOL)messages forSectionIdentifier:(id)identifier
{
  messagesCopy = messages;
  identifierCopy = identifier;
  delegate = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate destination:self setAllowsDirectMessages:messagesCopy forSectionIdentifier:identifierCopy];
  }
}

- (void)destination:(id)destination setScheduledDelivery:(BOOL)delivery forSectionIdentifier:(id)identifier
{
  deliveryCopy = delivery;
  identifierCopy = identifier;
  delegate = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate destination:self setScheduledDelivery:deliveryCopy forSectionIdentifier:identifierCopy];
  }
}

- (void)destination:(id)destination setSystemScheduledDeliveryEnabled:(BOOL)enabled scheduledDeliveryTimes:(id)times
{
  enabledCopy = enabled;
  timesCopy = times;
  delegate = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate destination:self setSystemScheduledDeliveryEnabled:enabledCopy scheduledDeliveryTimes:timesCopy];
  }
}

- (id)destination:(id)destination notificationRequestForUUID:(id)d
{
  dCopy = d;
  delegate = [(CSNotificationDispatcher *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [delegate destination:self notificationRequestForUUID:dCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)destination:(id)destination settingsForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegate = [(CSNotificationDispatcher *)self delegate];
  v7 = [delegate notificationSectionSettingsForDestination:self forSectionIdentifier:identifierCopy];

  return v7;
}

- (id)notificationSectionSettingsForDestination:(id)destination
{
  delegate = [(CSNotificationDispatcher *)self delegate];
  v5 = [delegate notificationSectionSettingsForDestination:self];

  return v5;
}

- (id)notificationSystemSettingsForDestination:(id)destination
{
  delegate = [(CSNotificationDispatcher *)self delegate];
  v5 = [delegate notificationSystemSettingsForDestination:self];

  return v5;
}

- (void)destination:(id)destination setNotificationSystemSettings:(id)settings
{
  settingsCopy = settings;
  delegate = [(CSNotificationDispatcher *)self delegate];
  [delegate destination:self setNotificationSystemSettings:settingsCopy];
}

- (void)stopAllRealerts
{
  alertingController = [(CSNotificationDispatcher *)self alertingController];
  [alertingController killRealerts];
}

- (void)_clearNotificationRequestsFromIncomingSection:(id)section
{
  sectionCopy = section;
  delegate = [(CSNotificationDispatcher *)self delegate];
  v5 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D77FE0]];
  [delegate destination:self requestsClearingNotificationRequests:sectionCopy fromDestinations:v5];
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