@interface CDPDManateeStateObserver
- (CDPDManateeStateObserver)init;
- (CDPDManateeStateObserver)initWithBroadcaster:(id)a3;
- (id)_proxyForContext:(id)a3;
- (void)_checkManateeStatusAndSendAvailabilityNotificationForContext:(id)a3;
- (void)_sendNotification:(const char *)a3 withUserInfo:(id)a4;
- (void)circleStatusChangedForAccountContext:(id)a3;
- (void)circleViewStatusChangedForAccountContext:(id)a3;
- (void)deviceDidUnlockForTheFirstTime;
- (void)securityLevelChangedForAccountContext:(id)a3;
@end

@implementation CDPDManateeStateObserver

- (CDPDManateeStateObserver)init
{
  v3 = objc_alloc_init(CDPBroadcaster);
  v4 = [(CDPDManateeStateObserver *)self initWithBroadcaster:v3];

  return v4;
}

- (CDPDManateeStateObserver)initWithBroadcaster:(id)a3
{
  v6 = a3;
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

  v9 = v6;
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
  objc_storeStrong(p_isa + 1, a3);

  v11 = p_isa;
LABEL_9:

  return v11;
}

- (void)_sendNotification:(const char *)a3 withUserInfo:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v9 = [v6 stringWithCString:a3 encoding:4];
  v8 = [(CDPDManateeStateObserver *)self broadcaster];
  [v8 sendNotification:v9 userInfo:v7];
}

- (void)_checkManateeStatusAndSendAvailabilityNotificationForContext:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 isSharediPad];
  v6 = _CDPLogSystem();
  v7 = v6;
  if (v5)
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
  v11 = [v4 isPrimaryAccount];
  v7 = _CDPLogSystem();
  v12 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v12)
    {
      v13 = [v4 altDSID];
      *buf = 141558274;
      v26 = 1752392040;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Checking manatee status for primary account with altDSID %{mask.hash}@", buf, 0x16u);
    }

    v7 = [(CDPDManateeStateObserver *)self _proxyForContext:v4];
    v14 = [objc_alloc(MEMORY[0x277CFD510]) initWithContext:v4 circleProxy:v7];
    v24 = 0;
    v15 = [v14 isManateeAvailable:&v24];
    v16 = v24;
    v17 = v16;
    if (v15)
    {
      v18 = self;
      v19 = 1;
    }

    else
    {
      if ([v16 cdp_isCDPErrorWithCode:-5403])
      {
        v21 = _CDPLogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v4 altDSID];
          *buf = 141558274;
          v26 = 1752392040;
          v27 = 2112;
          v28 = v22;
          _os_log_impl(&dword_24510B000, v21, OS_LOG_TYPE_DEFAULT, "We are iCDP eligible for %{mask.hash}@, but Security is not ready, waiting for Security state resolution..", buf, 0x16u);
        }

        goto LABEL_19;
      }

      v18 = self;
      v19 = 0;
    }

    [(CDPDManateeStateObserver *)v18 _reportPrimaryAccountManateeAvailability:v19];
LABEL_19:

    goto LABEL_20;
  }

  if (v12)
  {
    v20 = [v4 altDSID];
    *buf = 141558274;
    v26 = 1752392040;
    v27 = 2112;
    v28 = v20;
    _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Account for altDSID %{mask.hash}@ is not primary, skipping additonal manatee status check.", buf, 0x16u);
  }

LABEL_20:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)securityLevelChangedForAccountContext:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Processing auth status change to calculate manatee availability", buf, 2u);
  }

  [(CDPDManateeStateObserver *)self _checkManateeStatusAndSendAvailabilityNotificationForContext:v4];
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Processed auth status change event", v7, 2u);
  }
}

- (void)circleStatusChangedForAccountContext:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Processing circle status change to calculate manatee availability", buf, 2u);
  }

  [(CDPDManateeStateObserver *)self _checkManateeStatusAndSendAvailabilityNotificationForContext:v4];
  v6 = _CDPLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_24510B000, v6, OS_LOG_TYPE_DEFAULT, "Processed circle state change event", v7, 2u);
  }
}

- (void)circleViewStatusChangedForAccountContext:(id)a3
{
  v4 = a3;
  v5 = _CDPLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "Processing circle view change event", buf, 2u);
  }

  [(CDPDManateeStateObserver *)self _checkManateeStatusAndSendAvailabilityNotificationForContext:v4];
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
  v4 = a1;
  _os_log_error_impl(&dword_24510B000, a2, OS_LOG_TYPE_ERROR, "Manatee is not available due to error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (id)_proxyForContext:(id)a3
{
  v3 = MEMORY[0x277CFD498];
  v4 = a3;
  v5 = [[v3 alloc] initWithContext:v4];

  return v5;
}

@end