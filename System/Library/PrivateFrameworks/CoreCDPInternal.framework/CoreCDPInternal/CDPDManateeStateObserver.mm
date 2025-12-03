@interface CDPDManateeStateObserver
- (CDPDManateeStateObserver)init;
- (CDPDManateeStateObserver)initWithBroadcaster:(id)broadcaster;
- (id)_proxyForContext:(id)context;
- (void)_checkManateeStatusAndSendAvailabilityNotificationForContext:(id)context;
- (void)_sendNotification:(const char *)notification withUserInfo:(id)info;
- (void)circleStatusChangedForAccountContext:(id)context;
- (void)circleViewStatusChangedForAccountContext:(id)context;
- (void)deviceDidUnlockForTheFirstTime;
- (void)securityLevelChangedForAccountContext:(id)context;
@end

@implementation CDPDManateeStateObserver

- (CDPDManateeStateObserver)init
{
  v3 = objc_alloc_init(CDPBroadcaster);
  v4 = [(CDPDManateeStateObserver *)self initWithBroadcaster:v3];

  return v4;
}

- (CDPDManateeStateObserver)initWithBroadcaster:(id)broadcaster
{
  broadcasterCopy = broadcaster;
  v14.receiver = self;
  v14.super_class = CDPDManateeStateObserver;
  v7 = [(CDPDManateeStateObserver *)&v14 init];
  p_isa = &v7->super.isa;
  if (!v7)
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(CDPBroadcaster *)a2 init];
    }

    goto LABEL_8;
  }

  v9 = broadcasterCopy;
  if (!v9)
  {
    v12 = _CDPLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(CDPBroadcaster *)p_isa init];
    }

LABEL_8:

    v11 = 0;
    goto LABEL_9;
  }

  v10 = v9;
  objc_storeStrong(p_isa + 1, broadcaster);

  v11 = p_isa;
LABEL_9:

  return v11;
}

- (void)_sendNotification:(const char *)notification withUserInfo:(id)info
{
  v6 = MEMORY[0x277CCACA8];
  infoCopy = info;
  v9 = [v6 stringWithCString:notification encoding:4];
  broadcaster = [(CDPDManateeStateObserver *)self broadcaster];
  [broadcaster sendNotification:v9 userInfo:infoCopy];
}

- (void)_checkManateeStatusAndSendAvailabilityNotificationForContext:(id)context
{
  v29 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  isSharediPad = [contextCopy isSharediPad];
  v6 = _CDPLogSystem();
  v7 = v6;
  if (isSharediPad)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CDPDManateeStateObserver _checkManateeStatusAndSendAvailabilityNotificationForContext:v7];
    }

    goto LABEL_20;
  }

  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  v9 = MEMORY[0x277CFD400];
  if (v8)
  {
    v10 = *MEMORY[0x277CFD400];
    *buf = 136446210;
    v26 = v10;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Sending %{public}s to notify clients of potential manatee changes", buf, 0xCu);
  }

  [(CDPDManateeStateObserver *)self _sendNotification:*v9 withUserInfo:0];
  +[CDPBroadcaster broadcastWalrusStateChangeNotification];
  isPrimaryAccount = [contextCopy isPrimaryAccount];
  v7 = _CDPLogSystem();
  v12 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (isPrimaryAccount)
  {
    if (v12)
    {
      altDSID = [contextCopy altDSID];
      *buf = 141558274;
      v26 = 1752392040;
      v27 = 2112;
      v28 = altDSID;
      _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Checking manatee status for primary account with altDSID %{mask.hash}@", buf, 0x16u);
    }

    v7 = [(CDPDManateeStateObserver *)self _proxyForContext:contextCopy];
    v14 = [objc_alloc(MEMORY[0x277CFD510]) initWithContext:contextCopy circleProxy:v7];
    v24 = 0;
    v15 = [v14 isManateeAvailable:&v24];
    v16 = v24;
    v17 = v16;
    if (v15)
    {
      selfCopy2 = self;
      v19 = 1;
    }

    else
    {
      if ([v16 cdp_isCDPErrorWithCode:-5403])
      {
        v21 = _CDPLogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          altDSID2 = [contextCopy altDSID];
          *buf = 141558274;
          v26 = 1752392040;
          v27 = 2112;
          v28 = altDSID2;
          _os_log_impl(&dword_24510B000, v21, OS_LOG_TYPE_DEFAULT, "We are iCDP eligible for %{mask.hash}@, but Security is not ready, waiting for Security state resolution..", buf, 0x16u);
        }

        goto LABEL_19;
      }

      selfCopy2 = self;
      v19 = 0;
    }

    [(CDPDManateeStateObserver *)selfCopy2 _reportPrimaryAccountManateeAvailability:v19];
LABEL_19:

    goto LABEL_20;
  }

  if (v12)
  {
    altDSID3 = [contextCopy altDSID];
    *buf = 141558274;
    v26 = 1752392040;
    v27 = 2112;
    v28 = altDSID3;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Account for altDSID %{mask.hash}@ is not primary, skipping additonal manatee status check.", buf, 0x16u);
  }

LABEL_20:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)securityLevelChangedForAccountContext:(id)context
{
  contextCopy = context;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Processing auth status change to calculate manatee availability", buf, 2u);
  }

  [(CDPDManateeStateObserver *)self _checkManateeStatusAndSendAvailabilityNotificationForContext:contextCopy];
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Processed auth status change event", v7, 2u);
  }
}

- (void)circleStatusChangedForAccountContext:(id)context
{
  contextCopy = context;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Processing circle status change to calculate manatee availability", buf, 2u);
  }

  [(CDPDManateeStateObserver *)self _checkManateeStatusAndSendAvailabilityNotificationForContext:contextCopy];
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Processed circle state change event", v7, 2u);
  }
}

- (void)circleViewStatusChangedForAccountContext:(id)context
{
  contextCopy = context;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Processing circle view change event", buf, 2u);
  }

  [(CDPDManateeStateObserver *)self _checkManateeStatusAndSendAvailabilityNotificationForContext:contextCopy];
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Processed circle view change event", v7, 2u);
  }
}

- (void)deviceDidUnlockForTheFirstTime
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Manatee is not available due to error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (id)_proxyForContext:(id)context
{
  v3 = MEMORY[0x277CFD498];
  contextCopy = context;
  v5 = [[v3 alloc] initWithContext:contextCopy];

  return v5;
}

@end