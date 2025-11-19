@interface CRKClassSessionBrowser
- (BOOL)hasConnectionToClassWithIdentifier:(id)a3;
- (CRKClassSessionBrowser)init;
- (CRKClassSessionBrowserDelegate)delegate;
- (CRKInvitationSessionBrowserDelegate)invitationSessionDelegate;
- (NSSet)inRangeClassSessionIdentifiers;
- (id)clientIdentityForSession:(id)a3;
- (id)delegateNeedsClientIdentityForGroup:(id)a3;
- (id)delegateNeedsClientIdentityForInvitationSessionWithEndpoint:(id)a3;
- (id)delegateNeedsTrustedAnchorCertificatesForGroup:(id)a3;
- (id)stateDictionariesByClassSessionIdentifierString;
- (id)trustedAnchorCertificatesForSession:(id)a3;
- (void)acquireConnectWithoutBeaconAssertionForInvitationSessionWithEndpoint:(id)a3;
- (void)acquireConnectWithoutBeaconAssertionForSessionIdentifier:(id)a3;
- (void)addInRangeClassSession:(id)a3;
- (void)beaconBrowser:(id)a3 didFindBeaconForClassSession:(id)a4 flags:(unsigned __int16)a5;
- (void)beaconBrowser:(id)a3 didFindBeaconForInvitationSessionWithEndpoint:(id)a4;
- (void)classSessionInvalidated:(id)a3;
- (void)classSessionRejected:(id)a3;
- (void)connectToClassSessionWithIdentifier:(id)a3;
- (void)dealloc;
- (void)delegateClassSessionDidBecomeConnectable:(id)a3;
- (void)delegateClassSessionDidBecomeNotConnectable:(id)a3;
- (void)delegateDidFailWithError:(id)a3;
- (void)delegateDidFindClassSession:(id)a3 transport:(id)a4;
- (void)delegateDidFindInvitationSession:(id)a3 transport:(id)a4;
- (void)delegateDidRemoveClassSession:(id)a3;
- (void)delegateDidRemoveInvitationSession:(id)a3;
- (void)delegateInRangeClassSessionsDidChange;
- (void)delegateLostConnectionToClassSession:(id)a3;
- (void)delegateLostConnectionToInvitationSession:(id)a3;
- (void)handleUntrustedClassSession:(id)a3 ASMInstructorIdentifier:(id)a4 decisionHandler:(id)a5;
- (void)handleUntrustedInvitationSession:(id)a3 decisionHandler:(id)a4;
- (void)init;
- (void)invitationSessionWithEndpointInvalidated:(id)a3;
- (void)lostConnectionToClassSession:(id)a3;
- (void)lostConnectionToInvitationSessionWithEndpoint:(id)a3;
- (void)reachabilityDidChange:(id)a3;
- (void)releaseConnectWithoutBeaconAssertionForInvitationSessionWithEndpoint:(id)a3;
- (void)releaseConnectWithoutBeaconAssertionForSessionIdentifier:(id)a3;
- (void)removeInRangeClassSession:(id)a3;
- (void)session:(id)a3 didConnectWithTransport:(id)a4;
- (void)session:(id)a3 encounteredUntrustedConnectionForASMInstructorIdentifier:(id)a4 decisionHandler:(id)a5;
- (void)sessionDidBecomeConnectable:(id)a3;
- (void)sessionDidBecomeNotConnectable:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
- (void)sessionDidInvalidate:(id)a3;
- (void)sessionDidLoseBeacon:(id)a3;
- (void)setAllowInvitationSessions:(BOOL)a3;
- (void)setAllowUnenrolledSessions:(BOOL)a3;
- (void)setEnrolledControlGroupIdentifiers:(id)a3;
- (void)setOrganizationUUIDs:(id)a3;
- (void)stopBrowsing;
- (void)updateConnectedSessions;
- (void)updateRequiresBeaconFlagForSession:(id)a3;
@end

@implementation CRKClassSessionBrowser

- (void)dealloc
{
  [(CATNetworkReachability *)self->mNetworkReachability setDelegate:0];
  mNetworkReachability = self->mNetworkReachability;
  v4 = [MEMORY[0x277CBEB88] mainRunLoop];
  [(CATNetworkReachability *)mNetworkReachability removeFromRunLoop:v4 forMode:*MEMORY[0x277CBE640]];

  v5.receiver = self;
  v5.super_class = CRKClassSessionBrowser;
  [(CRKClassSessionBrowser *)&v5 dealloc];
}

- (CRKClassSessionBrowser)init
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser init];
  }

  v21.receiver = self;
  v21.super_class = CRKClassSessionBrowser;
  v3 = [(CRKClassSessionBrowser *)&v21 init];
  if (v3)
  {
    v4 = objc_opt_new();
    mClassSessionsByIdentifier = v3->mClassSessionsByIdentifier;
    v3->mClassSessionsByIdentifier = v4;

    v6 = objc_opt_new();
    mInRangeClassSessions = v3->mInRangeClassSessions;
    v3->mInRangeClassSessions = v6;

    v8 = objc_opt_new();
    mInvitationSessionsByEndpoint = v3->mInvitationSessionsByEndpoint;
    v3->mInvitationSessionsByEndpoint = v8;

    v10 = [MEMORY[0x277CF9530] reachabilityForLocalWiFi];
    mNetworkReachability = v3->mNetworkReachability;
    v3->mNetworkReachability = v10;

    [(CATNetworkReachability *)v3->mNetworkReachability setDelegate:v3];
    v12 = v3->mNetworkReachability;
    v13 = [MEMORY[0x277CBEB88] mainRunLoop];
    [(CATNetworkReachability *)v12 scheduleInRunLoop:v13 forMode:*MEMORY[0x277CBE640]];

    v14 = objc_opt_new();
    mBeaconBrowser = v3->mBeaconBrowser;
    v3->mBeaconBrowser = v14;

    [(CRKClassSessionBeaconBrowser *)v3->mBeaconBrowser setDelegate:v3];
    v16 = objc_opt_new();
    mConnectWithoutBeaconAssertionCountBySessionIdentifier = v3->mConnectWithoutBeaconAssertionCountBySessionIdentifier;
    v3->mConnectWithoutBeaconAssertionCountBySessionIdentifier = v16;

    v18 = objc_opt_new();
    mConnectWithoutBeaconAssertionCountByInviteSessionEndpoint = v3->mConnectWithoutBeaconAssertionCountByInviteSessionEndpoint;
    v3->mConnectWithoutBeaconAssertionCountByInviteSessionEndpoint = v18;
  }

  return v3;
}

- (void)setOrganizationUUIDs:(id)a3
{
  v4 = MEMORY[0x277CCACC8];
  v5 = a3;
  if (([v4 isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser setOrganizationUUIDs:];
  }

  [(CRKClassSessionBeaconBrowser *)self->mBeaconBrowser setOrganizationUUIDs:v5];
  v6 = [v5 copy];

  organizationUUIDs = self->_organizationUUIDs;
  self->_organizationUUIDs = v6;
}

- (void)setEnrolledControlGroupIdentifiers:(id)a3
{
  v6 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser setEnrolledControlGroupIdentifiers:];
  }

  v4 = [v6 copy];
  enrolledControlGroupIdentifiers = self->_enrolledControlGroupIdentifiers;
  self->_enrolledControlGroupIdentifiers = v4;

  [(CRKClassSessionBrowser *)self updateConnectedSessions];
}

- (void)setAllowUnenrolledSessions:(BOOL)a3
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser setAllowUnenrolledSessions:];
  }

  self->_allowUnenrolledSessions = a3;
  if (!a3)
  {

    [(CRKClassSessionBrowser *)self updateConnectedSessions];
  }
}

- (void)setAllowInvitationSessions:(BOOL)a3
{
  v3 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser setAllowInvitationSessions:];
  }

  [(CRKClassSessionBeaconBrowser *)self->mBeaconBrowser setAllowInvitationSessions:v3];
  self->_allowInvitationSessions = v3;
  if (!v3)
  {

    [(CRKClassSessionBrowser *)self updateConnectedSessions];
  }
}

- (void)connectToClassSessionWithIdentifier:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:a3];
  [v3 connect];
}

- (void)classSessionInvalidated:(id)a3
{
  v6 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser classSessionInvalidated:];
  }

  v4 = v6;
  if (v6)
  {
    v5 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:v6];
    [v5 invalidate];

    v4 = v6;
  }
}

- (void)classSessionRejected:(id)a3
{
  v6 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser classSessionRejected:];
  }

  v4 = v6;
  if (v6)
  {
    v5 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:v6];
    [v5 rejected];

    v4 = v6;
  }
}

- (void)lostConnectionToClassSession:(id)a3
{
  v6 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser lostConnectionToClassSession:];
  }

  v4 = v6;
  if (v6)
  {
    v5 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:v6];
    [v5 lostConnection];

    v4 = v6;
  }
}

- (BOOL)hasConnectionToClassWithIdentifier:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser hasConnectionToClassWithIdentifier:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    [CRKClassSessionBrowser hasConnectionToClassWithIdentifier:];
    goto LABEL_3;
  }

  if (!v4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:v4];
  v6 = v5 != 0;

  return v6;
}

- (void)invitationSessionWithEndpointInvalidated:(id)a3
{
  v6 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser invitationSessionWithEndpointInvalidated:];
  }

  v4 = v6;
  if (v6)
  {
    v5 = [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint objectForKeyedSubscript:v6];
    [v5 invalidate];

    [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint removeObjectForKey:v6];
    v4 = v6;
  }
}

- (void)lostConnectionToInvitationSessionWithEndpoint:(id)a3
{
  v6 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser lostConnectionToInvitationSessionWithEndpoint:];
  }

  v4 = v6;
  if (v6)
  {
    v5 = [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint objectForKeyedSubscript:v6];
    [v5 lostConnection];

    v4 = v6;
  }
}

- (void)acquireConnectWithoutBeaconAssertionForSessionIdentifier:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (!v4)
  {
    [CRKClassSessionBrowser acquireConnectWithoutBeaconAssertionForSessionIdentifier:];
    v4 = 0;
  }

  v5 = [(NSMutableDictionary *)self->mConnectWithoutBeaconAssertionCountBySessionIdentifier objectForKeyedSubscript:v4];
  v6 = v5;
  v7 = &unk_2856728C8;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = MEMORY[0x277CCABB0];
  v10 = [v8 unsignedIntegerValue];

  v11 = [v9 numberWithUnsignedInteger:v10 + 1];
  [(NSMutableDictionary *)self->mConnectWithoutBeaconAssertionCountBySessionIdentifier setObject:v11 forKeyedSubscript:v13];

  v12 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:v13];
  [(CRKClassSessionBrowser *)self updateRequiresBeaconFlagForSession:v12];
}

- (void)releaseConnectWithoutBeaconAssertionForSessionIdentifier:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!v4)
  {
    [CRKClassSessionBrowser releaseConnectWithoutBeaconAssertionForSessionIdentifier:];
    v4 = 0;
  }

  v5 = [(NSMutableDictionary *)self->mConnectWithoutBeaconAssertionCountBySessionIdentifier objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    if ([v5 isEqual:&unk_2856728E0])
    {
      [(NSMutableDictionary *)self->mConnectWithoutBeaconAssertionCountBySessionIdentifier removeObjectForKey:v9];
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "unsignedIntegerValue") - 1}];
      [(NSMutableDictionary *)self->mConnectWithoutBeaconAssertionCountBySessionIdentifier setObject:v7 forKeyedSubscript:v9];
    }

    v8 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:v9];
    [(CRKClassSessionBrowser *)self updateRequiresBeaconFlagForSession:v8];
  }
}

- (void)acquireConnectWithoutBeaconAssertionForInvitationSessionWithEndpoint:(id)a3
{
  v4 = a3;
  v13 = v4;
  if (!v4)
  {
    [CRKClassSessionBrowser acquireConnectWithoutBeaconAssertionForInvitationSessionWithEndpoint:];
    v4 = 0;
  }

  v5 = [(NSMutableDictionary *)self->mConnectWithoutBeaconAssertionCountByInviteSessionEndpoint objectForKeyedSubscript:v4];
  v6 = v5;
  v7 = &unk_2856728C8;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = MEMORY[0x277CCABB0];
  v10 = [v8 unsignedIntegerValue];

  v11 = [v9 numberWithUnsignedInteger:v10 + 1];
  [(NSMutableDictionary *)self->mConnectWithoutBeaconAssertionCountByInviteSessionEndpoint setObject:v11 forKeyedSubscript:v13];

  v12 = [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint objectForKeyedSubscript:v13];
  [(CRKClassSessionBrowser *)self updateRequiresBeaconFlagForSession:v12];
}

- (void)releaseConnectWithoutBeaconAssertionForInvitationSessionWithEndpoint:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!v4)
  {
    [CRKClassSessionBrowser releaseConnectWithoutBeaconAssertionForInvitationSessionWithEndpoint:];
    v4 = 0;
  }

  v5 = [(NSMutableDictionary *)self->mConnectWithoutBeaconAssertionCountByInviteSessionEndpoint objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    if ([v5 isEqual:&unk_2856728E0])
    {
      [(NSMutableDictionary *)self->mConnectWithoutBeaconAssertionCountByInviteSessionEndpoint removeObjectForKey:v9];
    }

    else
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "unsignedIntegerValue") - 1}];
      [(NSMutableDictionary *)self->mConnectWithoutBeaconAssertionCountByInviteSessionEndpoint setObject:v7 forKeyedSubscript:v9];
    }

    v8 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:v9];
    [(CRKClassSessionBrowser *)self updateRequiresBeaconFlagForSession:v8];
  }
}

- (void)stopBrowsing
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self->mBeaconBrowser selector:sel_startBrowsing object:0];
  mBeaconBrowser = self->mBeaconBrowser;

  [(CRKClassSessionBeaconBrowser *)mBeaconBrowser stopBrowsing];
}

- (NSSet)inRangeClassSessionIdentifiers
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSMutableArray *)self->mInRangeClassSessions valueForKey:@"identifier"];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)clientIdentityForSession:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 identifier];

    v6 = [v5 groupIdentifier];
    v7 = [(CRKClassSessionBrowser *)self delegateNeedsClientIdentityForGroup:v6];
  }

  else
  {
    v5 = [v4 endpoint];

    v7 = [(CRKClassSessionBrowser *)self delegateNeedsClientIdentityForInvitationSessionWithEndpoint:v5];
  }

  return v7;
}

- (id)trustedAnchorCertificatesForSession:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 identifier];
    v6 = [v5 groupIdentifier];
    v7 = [(CRKClassSessionBrowser *)self delegateNeedsTrustedAnchorCertificatesForGroup:v6];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (void)sessionDidBecomeConnectable:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CRKClassSessionBrowser *)self delegateClassSessionDidBecomeConnectable:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 connect];
    }

    else
    {
      [v4 invalidate];
    }
  }
}

- (void)sessionDidBecomeNotConnectable:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CRKClassSessionBrowser *)self delegateClassSessionDidBecomeNotConnectable:v4];
  }
}

- (void)session:(id)a3 didConnectWithTransport:(id)a4
{
  v8 = a4;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 identifier];

    [(CRKClassSessionBrowser *)self delegateDidFindClassSession:v7 transport:v8];
    v6 = v7;
  }

  else
  {
    [(CRKClassSessionBrowser *)self delegateDidFindInvitationSession:v6 transport:v8];
  }
}

- (void)sessionDidDisconnect:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v5 identifier];

    [(CRKClassSessionBrowser *)self delegateLostConnectionToClassSession:v4];
    v5 = v4;
  }

  else
  {
    [(CRKClassSessionBrowser *)self delegateLostConnectionToInvitationSession:v5];
  }
}

- (void)sessionDidLoseBeacon:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = _CRKLogGeneral_22();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 identifier];
      v11 = 138543618;
      v12 = v7;
      v13 = 1024;
      v14 = [v5 flags];
      _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, "Class session lost beacon %{public}@ [%d]", &v11, 0x12u);
    }

    v8 = [v5 identifier];
    [(CRKClassSessionBrowser *)self delegateDidRemoveClassSession:v8];
  }

  else
  {
    v5 = _CRKLogGeneral_22();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 endpoint];
      v10 = [v9 stringValue];
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Invite session lost beacon %{public}@", &v11, 0xCu);
    }
  }

  [v4 invalidate];
}

- (void)sessionDidInvalidate:(id)a3
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mClassSessionsByIdentifier = self->mClassSessionsByIdentifier;
    v5 = v9;
    v6 = [v5 identifier];
    [(NSMutableDictionary *)mClassSessionsByIdentifier removeObjectForKey:v6];

    [(CRKClassSessionBrowser *)self removeInRangeClassSession:v5];
  }

  else
  {
    mInvitationSessionsByEndpoint = self->mInvitationSessionsByEndpoint;
    v8 = [v9 endpoint];
    [(NSMutableDictionary *)mInvitationSessionsByEndpoint removeObjectForKey:v8];

    [(CRKClassSessionBrowser *)self delegateDidRemoveInvitationSession:v9];
  }
}

- (void)session:(id)a3 encounteredUntrustedConnectionForASMInstructorIdentifier:(id)a4 decisionHandler:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CRKClassSessionBrowser *)self handleUntrustedInvitationSession:v10 decisionHandler:v9];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CRKClassSessionBrowser *)self handleUntrustedClassSession:v10 ASMInstructorIdentifier:v8 decisionHandler:v9];
    }

    else
    {
      v9[2](v9, 0);
    }
  }
}

- (void)handleUntrustedInvitationSession:(id)a3 decisionHandler:(id)a4
{
  v6 = a4;
  if ([(CRKClassSessionBrowser *)self allowInvitationSessions])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6[2](v6, v5);
}

- (void)handleUntrustedClassSession:(id)a3 ASMInstructorIdentifier:(id)a4 decisionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(CRKClassSessionBrowser *)self delegate];
  v11 = [v10 identifier];

  [v12 browser:self encounteredUntrustedClassSession:v11 ASMInstructorIdentifier:v9 decisionHandler:v8];
}

- (void)beaconBrowser:(id)a3 didFindBeaconForClassSession:(id)a4 flags:(unsigned __int16)a5
{
  v5 = a5;
  v18 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser beaconBrowser:didFindBeaconForClassSession:flags:];
  }

  v8 = [(CRKClassSessionBrowser *)self enrolledControlGroupIdentifiers];
  v9 = [(CRKClassSession *)v7 groupIdentifier];
  if ([v8 containsObject:v9])
  {
  }

  else
  {
    v10 = [(CRKClassSessionBrowser *)self allowUnenrolledSessions];

    if ((v5 & 1) == 0 || !v10)
    {
      goto LABEL_15;
    }
  }

  v11 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:v7];
  if (!v11)
  {
    v12 = _CRKLogGeneral_22();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = v7;
      v16 = 1024;
      v17 = v5;
      _os_log_impl(&dword_243550000, v12, OS_LOG_TYPE_DEFAULT, "Found class session with beacon %{public}@ [%d]", &v14, 0x12u);
    }

    v11 = [[CRKClassSession alloc] initWithIdentifier:v7];
    [(CRKSession *)v11 setDelegate:self];
    [(NSMutableDictionary *)self->mClassSessionsByIdentifier setObject:v11 forKeyedSubscript:v7];
    [(CRKClassSessionBrowser *)self updateRequiresBeaconFlagForSession:v11];
    if (([(CATNetworkReachability *)self->mNetworkReachability isReachable]& 1) == 0)
    {
      [(CRKSession *)v11 localWiFiBecameUnavailable];
    }
  }

  [(CRKClassSessionBrowser *)self addInRangeClassSession:v11];
  v13 = _CRKLogGeneral_22();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = v11;
    v16 = 1024;
    v17 = v5;
    _os_log_impl(&dword_243550000, v13, OS_LOG_TYPE_DEFAULT, "Telling class session %{public}@ that we found beacon with flags [%d]", &v14, 0x12u);
  }

  [(CRKClassSession *)v11 foundBeaconWithFlags:v5];
LABEL_15:
}

- (void)beaconBrowser:(id)a3 didFindBeaconForInvitationSessionWithEndpoint:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser beaconBrowser:didFindBeaconForInvitationSessionWithEndpoint:];
  }

  v6 = [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint objectForKeyedSubscript:v5];
  if (!v6)
  {
    v7 = _CRKLogGeneral_22();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 stringValue];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_243550000, v7, OS_LOG_TYPE_DEFAULT, "Found invitation session with ip %{public}@", &v9, 0xCu);
    }

    v6 = [(CRKSession *)[CRKInvitationSession alloc] initWithEndpoint:v5];
    [(CRKSession *)v6 setDelegate:self];
    [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint setObject:v6 forKeyedSubscript:v5];
    [(CRKClassSessionBrowser *)self updateRequiresBeaconFlagForSession:v6];
    if (([(CATNetworkReachability *)self->mNetworkReachability isReachable]& 1) == 0)
    {
      [(CRKSession *)v6 localWiFiBecameUnavailable];
    }
  }

  [(CRKSession *)v6 foundBeacon];
}

- (void)reachabilityDidChange:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  if ([a3 isReachable])
  {
    if ([(CRKClassSessionBeaconBrowser *)self->mBeaconBrowser isBrowsing])
    {
      [(CRKClassSessionBeaconBrowser *)self->mBeaconBrowser stopBrowsing];
      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self->mBeaconBrowser selector:sel_startBrowsing object:0];
      [(CRKClassSessionBeaconBrowser *)self->mBeaconBrowser performSelector:sel_startBrowsing withObject:0 afterDelay:1.0];
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v4 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier allValues];
    v5 = [v4 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v36;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v36 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v35 + 1) + 8 * i) localWiFiBecameAvailable];
        }

        v6 = [v4 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v6);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint allValues];
    v10 = [v9 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v31 + 1) + 8 * j) localWiFiBecameAvailable];
        }

        v11 = [v9 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier allValues];
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (k = 0; k != v16; ++k)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v27 + 1) + 8 * k) localWiFiBecameUnavailable];
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v40 count:16];
      }

      while (v16);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint allValues];
    v19 = [v9 countByEnumeratingWithState:&v23 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v24;
      do
      {
        for (m = 0; m != v20; ++m)
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v23 + 1) + 8 * m) localWiFiBecameUnavailable];
        }

        v20 = [v9 countByEnumeratingWithState:&v23 objects:v39 count:16];
      }

      while (v20);
    }
  }
}

- (void)addInRangeClassSession:(id)a3
{
  v4 = a3;
  if (([(NSMutableArray *)self->mInRangeClassSessions containsObject:?]& 1) == 0)
  {
    [(NSMutableArray *)self->mInRangeClassSessions addObject:v4];
    [(CRKClassSessionBrowser *)self delegateInRangeClassSessionsDidChange];
  }
}

- (void)removeInRangeClassSession:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->mInRangeClassSessions containsObject:?])
  {
    [(NSMutableArray *)self->mInRangeClassSessions removeObject:v4];
    [(CRKClassSessionBrowser *)self delegateInRangeClassSessionsDidChange];
  }
}

- (void)updateRequiresBeaconFlagForSession:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mConnectWithoutBeaconAssertionCountBySessionIdentifier = self->mConnectWithoutBeaconAssertionCountBySessionIdentifier;
      v6 = [v9 identifier];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = 0;
        goto LABEL_8;
      }

      mConnectWithoutBeaconAssertionCountBySessionIdentifier = self->mConnectWithoutBeaconAssertionCountByInviteSessionEndpoint;
      v6 = [v9 endpoint];
    }

    v7 = v6;
    v8 = [(NSMutableDictionary *)mConnectWithoutBeaconAssertionCountBySessionIdentifier objectForKeyedSubscript:v6];

LABEL_8:
    [v9 setRequiresBeacon:{objc_msgSend(v8, "unsignedIntegerValue") == 0}];

    v4 = v9;
  }
}

- (id)stateDictionariesByClassSessionIdentifierString
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = self->mClassSessionsByIdentifier;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:v9];
        v11 = [v10 stateDictionary];
        v12 = [v9 stringValue];
        [v3 setObject:v11 forKeyedSubscript:v12];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint allValues];
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * j);
        v19 = [v18 stateDictionary];
        v20 = [v18 endpoint];
        v21 = [v20 stringValue];
        [v3 setObject:v19 forKeyedSubscript:v21];
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v15);
  }

  return v3;
}

- (void)updateConnectedSessions
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(CRKClassSessionBrowser *)self enrolledControlGroupIdentifiers];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier allValues];
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = [v11 groupIdentifier];

        if (([v4 containsObject:v12] & 1) == 0 && (!-[CRKClassSessionBrowser allowUnenrolledSessions](self, "allowUnenrolledSessions") || (objc_msgSend(v10, "flags") & 1) == 0))
        {
          v13 = [v10 identifier];
          [v3 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v7);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v3;
  v14 = [obj countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = *v36;
    *&v15 = 138543362;
    v29 = v15;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v35 + 1) + 8 * j);
        v20 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:v19, v29];
        v21 = _CRKLogGeneral_22();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v29;
          v45 = v20;
          _os_log_impl(&dword_243550000, v21, OS_LOG_TYPE_DEFAULT, "Invalidating session because we are no longer enrolled: %{public}@", buf, 0xCu);
        }

        [(CRKClassSessionBrowser *)self delegateDidRemoveClassSession:v19];
        [v20 invalidate];
      }

      v16 = [obj countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v16);
  }

  if (![(CRKClassSessionBrowser *)self allowInvitationSessions])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint allValues];
    v23 = [v22 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      do
      {
        for (k = 0; k != v24; ++k)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v31 + 1) + 8 * k);
          v28 = _CRKLogGeneral_22();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v45 = v27;
            _os_log_impl(&dword_243550000, v28, OS_LOG_TYPE_DEFAULT, "Invalidating invitation session because we are not browsing for invitations: %{public}@", buf, 0xCu);
          }

          [v27 invalidate];
        }

        v24 = [v22 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v24);
    }
  }
}

- (void)delegateDidFailWithError:(id)a3
{
  v7 = a3;
  v4 = [(CRKClassSessionBrowser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKClassSessionBrowser *)self delegate];
    [v6 browser:self didFailWithError:v7];
  }
}

- (id)delegateNeedsClientIdentityForGroup:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassSessionBrowser *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CRKClassSessionBrowser *)self delegate];
    v8 = [v7 browser:self clientIdentityForGroup:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)delegateNeedsTrustedAnchorCertificatesForGroup:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [CRKClassSessionBrowser delegateNeedsTrustedAnchorCertificatesForGroup:];
  }

  v5 = [(CRKClassSessionBrowser *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CRKClassSessionBrowser *)self delegate];
    v8 = [v7 browser:self trustedAnchorCertificatesForGroup:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)delegateClassSessionDidBecomeConnectable:(id)a3
{
  v8 = a3;
  v4 = [(CRKClassSessionBrowser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKClassSessionBrowser *)self delegate];
    v7 = [v8 identifier];
    [v6 browser:self classSessionDidBecomeConnectable:v7 withFlags:{objc_msgSend(v8, "flags")}];
  }
}

- (void)delegateClassSessionDidBecomeNotConnectable:(id)a3
{
  v8 = a3;
  v4 = [(CRKClassSessionBrowser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKClassSessionBrowser *)self delegate];
    v7 = [v8 identifier];
    [v6 browser:self classSessionDidBecomeNotConnectable:v7 withFlags:{objc_msgSend(v8, "flags")}];
  }
}

- (void)delegateDidFindClassSession:(id)a3 transport:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CRKClassSessionBrowser *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = _CRKLogGeneral_22();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&dword_243550000, v10, OS_LOG_TYPE_DEFAULT, "Found class session %{public}@", &v12, 0xCu);
    }

    v11 = [(CRKClassSessionBrowser *)self delegate];
    [v11 browser:self didFindClassSession:v6 transport:v7];
  }
}

- (void)delegateLostConnectionToClassSession:(id)a3
{
  v7 = a3;
  v4 = [(CRKClassSessionBrowser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKClassSessionBrowser *)self delegate];
    [v6 browser:self lostConnectionToClassSession:v7];
  }
}

- (void)delegateDidRemoveClassSession:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CRKClassSessionBrowser *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = _CRKLogGeneral_22();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_243550000, v7, OS_LOG_TYPE_DEFAULT, "Removed class session %{public}@", &v9, 0xCu);
    }

    v8 = [(CRKClassSessionBrowser *)self delegate];
    [v8 browser:self didRemoveClassSession:v4];
  }
}

- (void)delegateInRangeClassSessionsDidChange
{
  v3 = [(CRKClassSessionBrowser *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(CRKClassSessionBrowser *)self delegate];
    v5 = [(CRKClassSessionBrowser *)self inRangeClassSessionIdentifiers];
    [v6 browser:self didUpdateInRangeClassSessions:v5];
  }
}

- (id)delegateNeedsClientIdentityForInvitationSessionWithEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(CRKClassSessionBrowser *)self invitationSessionDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CRKClassSessionBrowser *)self invitationSessionDelegate];
    v8 = [v7 browser:self needsClientIdentityForEndpoint:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)delegateDidFindInvitationSession:(id)a3 transport:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CRKClassSessionBrowser *)self invitationSessionDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = _CRKLogGeneral_22();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 endpoint];
      v12 = [v11 stringValue];
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_243550000, v10, OS_LOG_TYPE_DEFAULT, "Found invitation session %{public}@", &v15, 0xCu);
    }

    v13 = [(CRKClassSessionBrowser *)self invitationSessionDelegate];
    v14 = [v6 endpoint];
    [v13 browser:self didFindInvitationSessionWithEndpoint:v14 transport:v7];
  }
}

- (void)delegateLostConnectionToInvitationSession:(id)a3
{
  v8 = a3;
  v4 = [(CRKClassSessionBrowser *)self invitationSessionDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKClassSessionBrowser *)self invitationSessionDelegate];
    v7 = [v8 endpoint];
    [v6 browser:self lostConnectionToInvitationSessionWithEndpoint:v7];
  }
}

- (void)delegateDidRemoveInvitationSession:(id)a3
{
  v8 = a3;
  v4 = [(CRKClassSessionBrowser *)self invitationSessionDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CRKClassSessionBrowser *)self invitationSessionDelegate];
    v7 = [v8 endpoint];
    [v6 browser:self didRemoveInvitationSessionWithEndpoint:v7];
  }
}

- (CRKClassSessionBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CRKInvitationSessionBrowserDelegate)invitationSessionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_invitationSessionDelegate);

  return WeakRetained;
}

- (void)init
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)setOrganizationUUIDs:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)setEnrolledControlGroupIdentifiers:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)setAllowUnenrolledSessions:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)setAllowInvitationSessions:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)classSessionInvalidated:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)classSessionRejected:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)lostConnectionToClassSession:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)hasConnectionToClassWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)hasConnectionToClassWithIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"classIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)invitationSessionWithEndpointInvalidated:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)lostConnectionToInvitationSessionWithEndpoint:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)acquireConnectWithoutBeaconAssertionForSessionIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"sessionIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)releaseConnectWithoutBeaconAssertionForSessionIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"sessionIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)acquireConnectWithoutBeaconAssertionForInvitationSessionWithEndpoint:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"endpoint" object:? file:? lineNumber:? description:?];
}

- (void)releaseConnectWithoutBeaconAssertionForInvitationSessionWithEndpoint:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"endpoint" object:? file:? lineNumber:? description:?];
}

- (void)beaconBrowser:didFindBeaconForClassSession:flags:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)beaconBrowser:didFindBeaconForInvitationSessionWithEndpoint:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v1 = OUTLINED_FUNCTION_2_2();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_0_0(v2 v3];
}

- (void)delegateNeedsTrustedAnchorCertificatesForGroup:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"groupIdentifier" object:? file:? lineNumber:? description:?];
}

@end