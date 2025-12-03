@interface CRKClassSessionBrowser
- (BOOL)hasConnectionToClassWithIdentifier:(id)identifier;
- (CRKClassSessionBrowser)init;
- (CRKClassSessionBrowserDelegate)delegate;
- (CRKInvitationSessionBrowserDelegate)invitationSessionDelegate;
- (NSSet)inRangeClassSessionIdentifiers;
- (id)clientIdentityForSession:(id)session;
- (id)delegateNeedsClientIdentityForGroup:(id)group;
- (id)delegateNeedsClientIdentityForInvitationSessionWithEndpoint:(id)endpoint;
- (id)delegateNeedsTrustedAnchorCertificatesForGroup:(id)group;
- (id)stateDictionariesByClassSessionIdentifierString;
- (id)trustedAnchorCertificatesForSession:(id)session;
- (void)acquireConnectWithoutBeaconAssertionForInvitationSessionWithEndpoint:(id)endpoint;
- (void)acquireConnectWithoutBeaconAssertionForSessionIdentifier:(id)identifier;
- (void)addInRangeClassSession:(id)session;
- (void)beaconBrowser:(id)browser didFindBeaconForClassSession:(id)session flags:(unsigned __int16)flags;
- (void)beaconBrowser:(id)browser didFindBeaconForInvitationSessionWithEndpoint:(id)endpoint;
- (void)classSessionInvalidated:(id)invalidated;
- (void)classSessionRejected:(id)rejected;
- (void)connectToClassSessionWithIdentifier:(id)identifier;
- (void)dealloc;
- (void)delegateClassSessionDidBecomeConnectable:(id)connectable;
- (void)delegateClassSessionDidBecomeNotConnectable:(id)connectable;
- (void)delegateDidFailWithError:(id)error;
- (void)delegateDidFindClassSession:(id)session transport:(id)transport;
- (void)delegateDidFindInvitationSession:(id)session transport:(id)transport;
- (void)delegateDidRemoveClassSession:(id)session;
- (void)delegateDidRemoveInvitationSession:(id)session;
- (void)delegateInRangeClassSessionsDidChange;
- (void)delegateLostConnectionToClassSession:(id)session;
- (void)delegateLostConnectionToInvitationSession:(id)session;
- (void)handleUntrustedClassSession:(id)session ASMInstructorIdentifier:(id)identifier decisionHandler:(id)handler;
- (void)handleUntrustedInvitationSession:(id)session decisionHandler:(id)handler;
- (void)init;
- (void)invitationSessionWithEndpointInvalidated:(id)invalidated;
- (void)lostConnectionToClassSession:(id)session;
- (void)lostConnectionToInvitationSessionWithEndpoint:(id)endpoint;
- (void)reachabilityDidChange:(id)change;
- (void)releaseConnectWithoutBeaconAssertionForInvitationSessionWithEndpoint:(id)endpoint;
- (void)releaseConnectWithoutBeaconAssertionForSessionIdentifier:(id)identifier;
- (void)removeInRangeClassSession:(id)session;
- (void)session:(id)session didConnectWithTransport:(id)transport;
- (void)session:(id)session encounteredUntrustedConnectionForASMInstructorIdentifier:(id)identifier decisionHandler:(id)handler;
- (void)sessionDidBecomeConnectable:(id)connectable;
- (void)sessionDidBecomeNotConnectable:(id)connectable;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)sessionDidInvalidate:(id)invalidate;
- (void)sessionDidLoseBeacon:(id)beacon;
- (void)setAllowInvitationSessions:(BOOL)sessions;
- (void)setAllowUnenrolledSessions:(BOOL)sessions;
- (void)setEnrolledControlGroupIdentifiers:(id)identifiers;
- (void)setOrganizationUUIDs:(id)ds;
- (void)stopBrowsing;
- (void)updateConnectedSessions;
- (void)updateRequiresBeaconFlagForSession:(id)session;
@end

@implementation CRKClassSessionBrowser

- (void)dealloc
{
  [(CATNetworkReachability *)self->mNetworkReachability setDelegate:0];
  mNetworkReachability = self->mNetworkReachability;
  mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
  [(CATNetworkReachability *)mNetworkReachability removeFromRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE640]];

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

    reachabilityForLocalWiFi = [MEMORY[0x277CF9530] reachabilityForLocalWiFi];
    mNetworkReachability = v3->mNetworkReachability;
    v3->mNetworkReachability = reachabilityForLocalWiFi;

    [(CATNetworkReachability *)v3->mNetworkReachability setDelegate:v3];
    v12 = v3->mNetworkReachability;
    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [(CATNetworkReachability *)v12 scheduleInRunLoop:mainRunLoop forMode:*MEMORY[0x277CBE640]];

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

- (void)setOrganizationUUIDs:(id)ds
{
  v4 = MEMORY[0x277CCACC8];
  dsCopy = ds;
  if (([v4 isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser setOrganizationUUIDs:];
  }

  [(CRKClassSessionBeaconBrowser *)self->mBeaconBrowser setOrganizationUUIDs:dsCopy];
  v6 = [dsCopy copy];

  organizationUUIDs = self->_organizationUUIDs;
  self->_organizationUUIDs = v6;
}

- (void)setEnrolledControlGroupIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser setEnrolledControlGroupIdentifiers:];
  }

  v4 = [identifiersCopy copy];
  enrolledControlGroupIdentifiers = self->_enrolledControlGroupIdentifiers;
  self->_enrolledControlGroupIdentifiers = v4;

  [(CRKClassSessionBrowser *)self updateConnectedSessions];
}

- (void)setAllowUnenrolledSessions:(BOOL)sessions
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser setAllowUnenrolledSessions:];
  }

  self->_allowUnenrolledSessions = sessions;
  if (!sessions)
  {

    [(CRKClassSessionBrowser *)self updateConnectedSessions];
  }
}

- (void)setAllowInvitationSessions:(BOOL)sessions
{
  sessionsCopy = sessions;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser setAllowInvitationSessions:];
  }

  [(CRKClassSessionBeaconBrowser *)self->mBeaconBrowser setAllowInvitationSessions:sessionsCopy];
  self->_allowInvitationSessions = sessionsCopy;
  if (!sessionsCopy)
  {

    [(CRKClassSessionBrowser *)self updateConnectedSessions];
  }
}

- (void)connectToClassSessionWithIdentifier:(id)identifier
{
  v3 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:identifier];
  [v3 connect];
}

- (void)classSessionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser classSessionInvalidated:];
  }

  v4 = invalidatedCopy;
  if (invalidatedCopy)
  {
    v5 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:invalidatedCopy];
    [v5 invalidate];

    v4 = invalidatedCopy;
  }
}

- (void)classSessionRejected:(id)rejected
{
  rejectedCopy = rejected;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser classSessionRejected:];
  }

  v4 = rejectedCopy;
  if (rejectedCopy)
  {
    v5 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:rejectedCopy];
    [v5 rejected];

    v4 = rejectedCopy;
  }
}

- (void)lostConnectionToClassSession:(id)session
{
  sessionCopy = session;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser lostConnectionToClassSession:];
  }

  v4 = sessionCopy;
  if (sessionCopy)
  {
    v5 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:sessionCopy];
    [v5 lostConnection];

    v4 = sessionCopy;
  }
}

- (BOOL)hasConnectionToClassWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser hasConnectionToClassWithIdentifier:];
    if (identifierCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [CRKClassSessionBrowser hasConnectionToClassWithIdentifier:];
    goto LABEL_3;
  }

  if (!identifierCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:identifierCopy];
  v6 = v5 != 0;

  return v6;
}

- (void)invitationSessionWithEndpointInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser invitationSessionWithEndpointInvalidated:];
  }

  v4 = invalidatedCopy;
  if (invalidatedCopy)
  {
    v5 = [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint objectForKeyedSubscript:invalidatedCopy];
    [v5 invalidate];

    [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint removeObjectForKey:invalidatedCopy];
    v4 = invalidatedCopy;
  }
}

- (void)lostConnectionToInvitationSessionWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser lostConnectionToInvitationSessionWithEndpoint:];
  }

  v4 = endpointCopy;
  if (endpointCopy)
  {
    v5 = [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint objectForKeyedSubscript:endpointCopy];
    [v5 lostConnection];

    v4 = endpointCopy;
  }
}

- (void)acquireConnectWithoutBeaconAssertionForSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = identifierCopy;
  if (!identifierCopy)
  {
    [CRKClassSessionBrowser acquireConnectWithoutBeaconAssertionForSessionIdentifier:];
    identifierCopy = 0;
  }

  v5 = [(NSMutableDictionary *)self->mConnectWithoutBeaconAssertionCountBySessionIdentifier objectForKeyedSubscript:identifierCopy];
  v6 = v5;
  v7 = &unk_2856728C8;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = MEMORY[0x277CCABB0];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v11 = [v9 numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [(NSMutableDictionary *)self->mConnectWithoutBeaconAssertionCountBySessionIdentifier setObject:v11 forKeyedSubscript:v13];

  v12 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:v13];
  [(CRKClassSessionBrowser *)self updateRequiresBeaconFlagForSession:v12];
}

- (void)releaseConnectWithoutBeaconAssertionForSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (!identifierCopy)
  {
    [CRKClassSessionBrowser releaseConnectWithoutBeaconAssertionForSessionIdentifier:];
    identifierCopy = 0;
  }

  v5 = [(NSMutableDictionary *)self->mConnectWithoutBeaconAssertionCountBySessionIdentifier objectForKeyedSubscript:identifierCopy];
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

- (void)acquireConnectWithoutBeaconAssertionForInvitationSessionWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v13 = endpointCopy;
  if (!endpointCopy)
  {
    [CRKClassSessionBrowser acquireConnectWithoutBeaconAssertionForInvitationSessionWithEndpoint:];
    endpointCopy = 0;
  }

  v5 = [(NSMutableDictionary *)self->mConnectWithoutBeaconAssertionCountByInviteSessionEndpoint objectForKeyedSubscript:endpointCopy];
  v6 = v5;
  v7 = &unk_2856728C8;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = MEMORY[0x277CCABB0];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v11 = [v9 numberWithUnsignedInteger:unsignedIntegerValue + 1];
  [(NSMutableDictionary *)self->mConnectWithoutBeaconAssertionCountByInviteSessionEndpoint setObject:v11 forKeyedSubscript:v13];

  v12 = [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint objectForKeyedSubscript:v13];
  [(CRKClassSessionBrowser *)self updateRequiresBeaconFlagForSession:v12];
}

- (void)releaseConnectWithoutBeaconAssertionForInvitationSessionWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v9 = endpointCopy;
  if (!endpointCopy)
  {
    [CRKClassSessionBrowser releaseConnectWithoutBeaconAssertionForInvitationSessionWithEndpoint:];
    endpointCopy = 0;
  }

  v5 = [(NSMutableDictionary *)self->mConnectWithoutBeaconAssertionCountByInviteSessionEndpoint objectForKeyedSubscript:endpointCopy];
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

- (id)clientIdentityForSession:(id)session
{
  sessionCopy = session;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [sessionCopy identifier];

    groupIdentifier = [identifier groupIdentifier];
    v7 = [(CRKClassSessionBrowser *)self delegateNeedsClientIdentityForGroup:groupIdentifier];
  }

  else
  {
    identifier = [sessionCopy endpoint];

    v7 = [(CRKClassSessionBrowser *)self delegateNeedsClientIdentityForInvitationSessionWithEndpoint:identifier];
  }

  return v7;
}

- (id)trustedAnchorCertificatesForSession:(id)session
{
  sessionCopy = session;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [sessionCopy identifier];
    groupIdentifier = [identifier groupIdentifier];
    v7 = [(CRKClassSessionBrowser *)self delegateNeedsTrustedAnchorCertificatesForGroup:groupIdentifier];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (void)sessionDidBecomeConnectable:(id)connectable
{
  connectableCopy = connectable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CRKClassSessionBrowser *)self delegateClassSessionDidBecomeConnectable:connectableCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [connectableCopy connect];
    }

    else
    {
      [connectableCopy invalidate];
    }
  }
}

- (void)sessionDidBecomeNotConnectable:(id)connectable
{
  connectableCopy = connectable;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CRKClassSessionBrowser *)self delegateClassSessionDidBecomeNotConnectable:connectableCopy];
  }
}

- (void)session:(id)session didConnectWithTransport:(id)transport
{
  transportCopy = transport;
  sessionCopy = session;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [sessionCopy identifier];

    [(CRKClassSessionBrowser *)self delegateDidFindClassSession:identifier transport:transportCopy];
    sessionCopy = identifier;
  }

  else
  {
    [(CRKClassSessionBrowser *)self delegateDidFindInvitationSession:sessionCopy transport:transportCopy];
  }
}

- (void)sessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [disconnectCopy identifier];

    [(CRKClassSessionBrowser *)self delegateLostConnectionToClassSession:identifier];
    disconnectCopy = identifier;
  }

  else
  {
    [(CRKClassSessionBrowser *)self delegateLostConnectionToInvitationSession:disconnectCopy];
  }
}

- (void)sessionDidLoseBeacon:(id)beacon
{
  v15 = *MEMORY[0x277D85DE8];
  beaconCopy = beacon;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = beaconCopy;
    v6 = _CRKLogGeneral_22();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [v5 identifier];
      v11 = 138543618;
      v12 = identifier;
      v13 = 1024;
      flags = [v5 flags];
      _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, "Class session lost beacon %{public}@ [%d]", &v11, 0x12u);
    }

    identifier2 = [v5 identifier];
    [(CRKClassSessionBrowser *)self delegateDidRemoveClassSession:identifier2];
  }

  else
  {
    v5 = _CRKLogGeneral_22();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      endpoint = [beaconCopy endpoint];
      stringValue = [endpoint stringValue];
      v11 = 138543362;
      v12 = stringValue;
      _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "Invite session lost beacon %{public}@", &v11, 0xCu);
    }
  }

  [beaconCopy invalidate];
}

- (void)sessionDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mClassSessionsByIdentifier = self->mClassSessionsByIdentifier;
    v5 = invalidateCopy;
    identifier = [v5 identifier];
    [(NSMutableDictionary *)mClassSessionsByIdentifier removeObjectForKey:identifier];

    [(CRKClassSessionBrowser *)self removeInRangeClassSession:v5];
  }

  else
  {
    mInvitationSessionsByEndpoint = self->mInvitationSessionsByEndpoint;
    endpoint = [invalidateCopy endpoint];
    [(NSMutableDictionary *)mInvitationSessionsByEndpoint removeObjectForKey:endpoint];

    [(CRKClassSessionBrowser *)self delegateDidRemoveInvitationSession:invalidateCopy];
  }
}

- (void)session:(id)session encounteredUntrustedConnectionForASMInstructorIdentifier:(id)identifier decisionHandler:(id)handler
{
  sessionCopy = session;
  identifierCopy = identifier;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(CRKClassSessionBrowser *)self handleUntrustedInvitationSession:sessionCopy decisionHandler:handlerCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(CRKClassSessionBrowser *)self handleUntrustedClassSession:sessionCopy ASMInstructorIdentifier:identifierCopy decisionHandler:handlerCopy];
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)handleUntrustedInvitationSession:(id)session decisionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(CRKClassSessionBrowser *)self allowInvitationSessions])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  handlerCopy[2](handlerCopy, v5);
}

- (void)handleUntrustedClassSession:(id)session ASMInstructorIdentifier:(id)identifier decisionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  sessionCopy = session;
  delegate = [(CRKClassSessionBrowser *)self delegate];
  identifier = [sessionCopy identifier];

  [delegate browser:self encounteredUntrustedClassSession:identifier ASMInstructorIdentifier:identifierCopy decisionHandler:handlerCopy];
}

- (void)beaconBrowser:(id)browser didFindBeaconForClassSession:(id)session flags:(unsigned __int16)flags
{
  flagsCopy = flags;
  v18 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser beaconBrowser:didFindBeaconForClassSession:flags:];
  }

  enrolledControlGroupIdentifiers = [(CRKClassSessionBrowser *)self enrolledControlGroupIdentifiers];
  groupIdentifier = [(CRKClassSession *)sessionCopy groupIdentifier];
  if ([enrolledControlGroupIdentifiers containsObject:groupIdentifier])
  {
  }

  else
  {
    allowUnenrolledSessions = [(CRKClassSessionBrowser *)self allowUnenrolledSessions];

    if ((flagsCopy & 1) == 0 || !allowUnenrolledSessions)
    {
      goto LABEL_15;
    }
  }

  v11 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier objectForKeyedSubscript:sessionCopy];
  if (!v11)
  {
    v12 = _CRKLogGeneral_22();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543618;
      v15 = sessionCopy;
      v16 = 1024;
      v17 = flagsCopy;
      _os_log_impl(&dword_243550000, v12, OS_LOG_TYPE_DEFAULT, "Found class session with beacon %{public}@ [%d]", &v14, 0x12u);
    }

    v11 = [[CRKClassSession alloc] initWithIdentifier:sessionCopy];
    [(CRKSession *)v11 setDelegate:self];
    [(NSMutableDictionary *)self->mClassSessionsByIdentifier setObject:v11 forKeyedSubscript:sessionCopy];
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
    v17 = flagsCopy;
    _os_log_impl(&dword_243550000, v13, OS_LOG_TYPE_DEFAULT, "Telling class session %{public}@ that we found beacon with flags [%d]", &v14, 0x12u);
  }

  [(CRKClassSession *)v11 foundBeaconWithFlags:flagsCopy];
LABEL_15:
}

- (void)beaconBrowser:(id)browser didFindBeaconForInvitationSessionWithEndpoint:(id)endpoint
{
  v11 = *MEMORY[0x277D85DE8];
  endpointCopy = endpoint;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [CRKClassSessionBrowser beaconBrowser:didFindBeaconForInvitationSessionWithEndpoint:];
  }

  v6 = [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint objectForKeyedSubscript:endpointCopy];
  if (!v6)
  {
    v7 = _CRKLogGeneral_22();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      stringValue = [endpointCopy stringValue];
      v9 = 138543362;
      v10 = stringValue;
      _os_log_impl(&dword_243550000, v7, OS_LOG_TYPE_DEFAULT, "Found invitation session with ip %{public}@", &v9, 0xCu);
    }

    v6 = [(CRKSession *)[CRKInvitationSession alloc] initWithEndpoint:endpointCopy];
    [(CRKSession *)v6 setDelegate:self];
    [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint setObject:v6 forKeyedSubscript:endpointCopy];
    [(CRKClassSessionBrowser *)self updateRequiresBeaconFlagForSession:v6];
    if (([(CATNetworkReachability *)self->mNetworkReachability isReachable]& 1) == 0)
    {
      [(CRKSession *)v6 localWiFiBecameUnavailable];
    }
  }

  [(CRKSession *)v6 foundBeacon];
}

- (void)reachabilityDidChange:(id)change
{
  v43 = *MEMORY[0x277D85DE8];
  if ([change isReachable])
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
    allValues = [(NSMutableDictionary *)self->mClassSessionsByIdentifier allValues];
    v5 = [allValues countByEnumeratingWithState:&v35 objects:v42 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [*(*(&v35 + 1) + 8 * i) localWiFiBecameAvailable];
        }

        v6 = [allValues countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v6);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    allValues2 = [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint allValues];
    v10 = [allValues2 countByEnumeratingWithState:&v31 objects:v41 count:16];
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
            objc_enumerationMutation(allValues2);
          }

          [*(*(&v31 + 1) + 8 * j) localWiFiBecameAvailable];
        }

        v11 = [allValues2 countByEnumeratingWithState:&v31 objects:v41 count:16];
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
    allValues3 = [(NSMutableDictionary *)self->mClassSessionsByIdentifier allValues];
    v15 = [allValues3 countByEnumeratingWithState:&v27 objects:v40 count:16];
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
            objc_enumerationMutation(allValues3);
          }

          [*(*(&v27 + 1) + 8 * k) localWiFiBecameUnavailable];
        }

        v16 = [allValues3 countByEnumeratingWithState:&v27 objects:v40 count:16];
      }

      while (v16);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    allValues2 = [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint allValues];
    v19 = [allValues2 countByEnumeratingWithState:&v23 objects:v39 count:16];
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
            objc_enumerationMutation(allValues2);
          }

          [*(*(&v23 + 1) + 8 * m) localWiFiBecameUnavailable];
        }

        v20 = [allValues2 countByEnumeratingWithState:&v23 objects:v39 count:16];
      }

      while (v20);
    }
  }
}

- (void)addInRangeClassSession:(id)session
{
  sessionCopy = session;
  if (([(NSMutableArray *)self->mInRangeClassSessions containsObject:?]& 1) == 0)
  {
    [(NSMutableArray *)self->mInRangeClassSessions addObject:sessionCopy];
    [(CRKClassSessionBrowser *)self delegateInRangeClassSessionsDidChange];
  }
}

- (void)removeInRangeClassSession:(id)session
{
  sessionCopy = session;
  if ([(NSMutableArray *)self->mInRangeClassSessions containsObject:?])
  {
    [(NSMutableArray *)self->mInRangeClassSessions removeObject:sessionCopy];
    [(CRKClassSessionBrowser *)self delegateInRangeClassSessionsDidChange];
  }
}

- (void)updateRequiresBeaconFlagForSession:(id)session
{
  sessionCopy = session;
  if (sessionCopy)
  {
    v9 = sessionCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mConnectWithoutBeaconAssertionCountBySessionIdentifier = self->mConnectWithoutBeaconAssertionCountBySessionIdentifier;
      identifier = [v9 identifier];
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
      identifier = [v9 endpoint];
    }

    v7 = identifier;
    v8 = [(NSMutableDictionary *)mConnectWithoutBeaconAssertionCountBySessionIdentifier objectForKeyedSubscript:identifier];

LABEL_8:
    [v9 setRequiresBeacon:{objc_msgSend(v8, "unsignedIntegerValue") == 0}];

    sessionCopy = v9;
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
        stateDictionary = [v10 stateDictionary];
        stringValue = [v9 stringValue];
        [v3 setObject:stateDictionary forKeyedSubscript:stringValue];
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  allValues = [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint allValues];
  v14 = [allValues countByEnumeratingWithState:&v23 objects:v31 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v18 = *(*(&v23 + 1) + 8 * j);
        stateDictionary2 = [v18 stateDictionary];
        endpoint = [v18 endpoint];
        stringValue2 = [endpoint stringValue];
        [v3 setObject:stateDictionary2 forKeyedSubscript:stringValue2];
      }

      v15 = [allValues countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v15);
  }

  return v3;
}

- (void)updateConnectedSessions
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  enrolledControlGroupIdentifiers = [(CRKClassSessionBrowser *)self enrolledControlGroupIdentifiers];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  allValues = [(NSMutableDictionary *)self->mClassSessionsByIdentifier allValues];
  v6 = [allValues countByEnumeratingWithState:&v39 objects:v47 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        identifier = [v10 identifier];
        groupIdentifier = [identifier groupIdentifier];

        if (([enrolledControlGroupIdentifiers containsObject:groupIdentifier] & 1) == 0 && (!-[CRKClassSessionBrowser allowUnenrolledSessions](self, "allowUnenrolledSessions") || (objc_msgSend(v10, "flags") & 1) == 0))
        {
          identifier2 = [v10 identifier];
          [v3 addObject:identifier2];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v39 objects:v47 count:16];
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
    allValues2 = [(NSMutableDictionary *)self->mInvitationSessionsByEndpoint allValues];
    v23 = [allValues2 countByEnumeratingWithState:&v31 objects:v43 count:16];
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
            objc_enumerationMutation(allValues2);
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

        v24 = [allValues2 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v24);
    }
  }
}

- (void)delegateDidFailWithError:(id)error
{
  errorCopy = error;
  delegate = [(CRKClassSessionBrowser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CRKClassSessionBrowser *)self delegate];
    [delegate2 browser:self didFailWithError:errorCopy];
  }
}

- (id)delegateNeedsClientIdentityForGroup:(id)group
{
  groupCopy = group;
  delegate = [(CRKClassSessionBrowser *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CRKClassSessionBrowser *)self delegate];
    v8 = [delegate2 browser:self clientIdentityForGroup:groupCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)delegateNeedsTrustedAnchorCertificatesForGroup:(id)group
{
  groupCopy = group;
  if (!groupCopy)
  {
    [CRKClassSessionBrowser delegateNeedsTrustedAnchorCertificatesForGroup:];
  }

  delegate = [(CRKClassSessionBrowser *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CRKClassSessionBrowser *)self delegate];
    v8 = [delegate2 browser:self trustedAnchorCertificatesForGroup:groupCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)delegateClassSessionDidBecomeConnectable:(id)connectable
{
  connectableCopy = connectable;
  delegate = [(CRKClassSessionBrowser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CRKClassSessionBrowser *)self delegate];
    identifier = [connectableCopy identifier];
    [delegate2 browser:self classSessionDidBecomeConnectable:identifier withFlags:{objc_msgSend(connectableCopy, "flags")}];
  }
}

- (void)delegateClassSessionDidBecomeNotConnectable:(id)connectable
{
  connectableCopy = connectable;
  delegate = [(CRKClassSessionBrowser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CRKClassSessionBrowser *)self delegate];
    identifier = [connectableCopy identifier];
    [delegate2 browser:self classSessionDidBecomeNotConnectable:identifier withFlags:{objc_msgSend(connectableCopy, "flags")}];
  }
}

- (void)delegateDidFindClassSession:(id)session transport:(id)transport
{
  v14 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  transportCopy = transport;
  delegate = [(CRKClassSessionBrowser *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = _CRKLogGeneral_22();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = sessionCopy;
      _os_log_impl(&dword_243550000, v10, OS_LOG_TYPE_DEFAULT, "Found class session %{public}@", &v12, 0xCu);
    }

    delegate2 = [(CRKClassSessionBrowser *)self delegate];
    [delegate2 browser:self didFindClassSession:sessionCopy transport:transportCopy];
  }
}

- (void)delegateLostConnectionToClassSession:(id)session
{
  sessionCopy = session;
  delegate = [(CRKClassSessionBrowser *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CRKClassSessionBrowser *)self delegate];
    [delegate2 browser:self lostConnectionToClassSession:sessionCopy];
  }
}

- (void)delegateDidRemoveClassSession:(id)session
{
  v11 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  delegate = [(CRKClassSessionBrowser *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = _CRKLogGeneral_22();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = sessionCopy;
      _os_log_impl(&dword_243550000, v7, OS_LOG_TYPE_DEFAULT, "Removed class session %{public}@", &v9, 0xCu);
    }

    delegate2 = [(CRKClassSessionBrowser *)self delegate];
    [delegate2 browser:self didRemoveClassSession:sessionCopy];
  }
}

- (void)delegateInRangeClassSessionsDidChange
{
  delegate = [(CRKClassSessionBrowser *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CRKClassSessionBrowser *)self delegate];
    inRangeClassSessionIdentifiers = [(CRKClassSessionBrowser *)self inRangeClassSessionIdentifiers];
    [delegate2 browser:self didUpdateInRangeClassSessions:inRangeClassSessionIdentifiers];
  }
}

- (id)delegateNeedsClientIdentityForInvitationSessionWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  invitationSessionDelegate = [(CRKClassSessionBrowser *)self invitationSessionDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    invitationSessionDelegate2 = [(CRKClassSessionBrowser *)self invitationSessionDelegate];
    v8 = [invitationSessionDelegate2 browser:self needsClientIdentityForEndpoint:endpointCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)delegateDidFindInvitationSession:(id)session transport:(id)transport
{
  v17 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  transportCopy = transport;
  invitationSessionDelegate = [(CRKClassSessionBrowser *)self invitationSessionDelegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = _CRKLogGeneral_22();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      endpoint = [sessionCopy endpoint];
      stringValue = [endpoint stringValue];
      v15 = 138543362;
      v16 = stringValue;
      _os_log_impl(&dword_243550000, v10, OS_LOG_TYPE_DEFAULT, "Found invitation session %{public}@", &v15, 0xCu);
    }

    invitationSessionDelegate2 = [(CRKClassSessionBrowser *)self invitationSessionDelegate];
    endpoint2 = [sessionCopy endpoint];
    [invitationSessionDelegate2 browser:self didFindInvitationSessionWithEndpoint:endpoint2 transport:transportCopy];
  }
}

- (void)delegateLostConnectionToInvitationSession:(id)session
{
  sessionCopy = session;
  invitationSessionDelegate = [(CRKClassSessionBrowser *)self invitationSessionDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    invitationSessionDelegate2 = [(CRKClassSessionBrowser *)self invitationSessionDelegate];
    endpoint = [sessionCopy endpoint];
    [invitationSessionDelegate2 browser:self lostConnectionToInvitationSessionWithEndpoint:endpoint];
  }
}

- (void)delegateDidRemoveInvitationSession:(id)session
{
  sessionCopy = session;
  invitationSessionDelegate = [(CRKClassSessionBrowser *)self invitationSessionDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    invitationSessionDelegate2 = [(CRKClassSessionBrowser *)self invitationSessionDelegate];
    endpoint = [sessionCopy endpoint];
    [invitationSessionDelegate2 browser:self didRemoveInvitationSessionWithEndpoint:endpoint];
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