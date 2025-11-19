@interface MRDRemoteControlGroupSession
+ (id)hostedSessionWithNearbyGroup:(id)a3 nearbyInvitation:(id)a4 identity:(id)a5;
+ (id)remoteSessionWithNearbyGroup:(id)a3 identity:(id)a4 hostSigningKey:(id)a5 joinToken:(id)a6;
- (BOOL)isEqual:(id)a3;
- (MRDGroupSessionParticipant)leader;
- (MRDGroupSessionParticipant)localParticipant;
- (MRDRemoteControlGroupSession)initWithNearbyGroup:(id)a3 identity:(id)a4 hostSigningKey:(id)a5 joinToken:(id)a6;
- (MRDRemoteControlGroupSession)initWithNearbyGroup:(id)a3 nearbyInvitation:(id)a4 identity:(id)a5 hostSigningKey:(id)a6;
- (NSArray)members;
- (NSArray)participants;
- (NSArray)pendingParticipants;
- (NSArray)remoteParticipants;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)localizedSessionName;
- (int64_t)state;
- (unsigned)routeType;
- (void)_initializeWithIdentity:(id)a3 nearbyGroup:(id)a4 isHosted:(BOOL)a5 hostSigningKey:(id)a6;
- (void)addObserver:(id)a3;
- (void)approvePendingParticipant:(id)a3;
- (void)clearPendingCompletions;
- (void)dealloc;
- (void)denyPendingParticipant:(id)a3;
- (void)finish;
- (void)handleDisplayMonitorChangeNotification:(id)a3;
- (void)reevaluateLowPowerMode;
- (void)removeAllParticipants;
- (void)removeObserver:(id)a3;
- (void)removeParticipant:(id)a3;
- (void)revokeAutoApprovalForAllParticipants;
- (void)revokeAutoApprovalForParticipant:(id)a3;
- (void)sendMessageData:(id)a3 toParticipants:(id)a4;
- (void)session:(id)a3 didChangeState:(int64_t)a4;
- (void)session:(id)a3 didReceiveRemoteApprovalForPendingParticipant:(id)a4 from:(id)a5;
- (void)session:(id)a3 didReceiveRemoteControlMessage:(id)a4 from:(id)a5;
- (void)session:(id)a3 didReceiveRemoteRejectionForPendingParticipant:(id)a4 from:(id)a5;
- (void)session:(id)a3 didReceiveRemoteRemoveAllRequestFromParticipant:(id)a4;
- (void)session:(id)a3 didReceiveRemoteRemoveRequestForParticipant:(id)a4 from:(id)a5;
- (void)session:(id)a3 didUpdateMembers:(id)a4;
- (void)session:(id)a3 didUpdateParticipants:(id)a4;
- (void)session:(id)a3 didUpdatePendingParticipants:(id)a4;
- (void)sessionDidCompleteIdentityShare:(id)a3;
- (void)setIsLowPowerMode:(BOOL)a3;
- (void)setMembers:(id)a3;
- (void)setParticipants:(id)a3;
- (void)setRemotePendingParticipants:(id)a3;
- (void)setState:(int64_t)a3;
- (void)start;
- (void)transitionToState:(int64_t)a3;
@end

@implementation MRDRemoteControlGroupSession

+ (id)hostedSessionWithNearbyGroup:(id)a3 nearbyInvitation:(id)a4 identity:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[MRDRemoteControlGroupSession alloc] initWithNearbyGroup:v9 nearbyInvitation:v8 identity:v7 hostSigningKey:0];

  return v10;
}

+ (id)remoteSessionWithNearbyGroup:(id)a3 identity:(id)a4 hostSigningKey:(id)a5 joinToken:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[MRDRemoteControlGroupSession alloc] initWithNearbyGroup:v12 identity:v11 hostSigningKey:v10 joinToken:v9];

  return v13;
}

- (MRDRemoteControlGroupSession)initWithNearbyGroup:(id)a3 nearbyInvitation:(id)a4 identity:(id)a5 hostSigningKey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v27.receiver = self;
  v27.super_class = MRDRemoteControlGroupSession;
  v14 = [(MRDRemoteControlGroupSession *)&v27 init];
  v15 = v14;
  if (v14)
  {
    [(MRDRemoteControlGroupSession *)v14 _initializeWithIdentity:v12 nearbyGroup:v10 isHosted:1 hostSigningKey:v13];
    objc_storeStrong(&v15->_nearbyInvitation, a4);
    v16 = +[MRUserSettings currentSettings];
    v17 = [v16 groupSessionGenerateSharedSecret];

    if (v17)
    {
      v18 = [v10 sessionSecret];
      sharedSecret = v15->_sharedSecret;
      v15->_sharedSecret = v18;
    }

    v20 = [MRGroupSessionToken alloc];
    v21 = [v11 invitationData];
    v22 = [v20 initWithInvitationData:v21 sharedSecret:v15->_sharedSecret sessionIdentifier:v15->_identifier equivalentMediaIdentifier:0 version:MRGroupSessionTokenVersion];
    joinToken = v15->_joinToken;
    v15->_joinToken = v22;

    v24 = [MRDFastSyncGroupSession createSessionWithNearbyGroup:v10 asUser:v12 delegate:v15];
    fastSyncSession = v15->_fastSyncSession;
    v15->_fastSyncSession = v24;
  }

  return v15;
}

- (MRDRemoteControlGroupSession)initWithNearbyGroup:(id)a3 identity:(id)a4 hostSigningKey:(id)a5 joinToken:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = MRDRemoteControlGroupSession;
  v14 = [(MRDRemoteControlGroupSession *)&v21 init];
  v15 = v14;
  if (v14)
  {
    [(MRDRemoteControlGroupSession *)v14 _initializeWithIdentity:v11 nearbyGroup:v10 isHosted:0 hostSigningKey:v12];
    objc_storeStrong(&v15->_joinToken, a6);
    v16 = [MRDFastSyncGroupSession joinSessionWithNearbyGroup:v10 asUser:v11 hostSigningKey:v12 delegate:v15];
    fastSyncSession = v15->_fastSyncSession;
    v15->_fastSyncSession = v16;

    v18 = +[NSNotificationCenter defaultCenter];
    v19 = +[MRDDisplayMonitor sharedMonitor];
    [v18 addObserver:v15 selector:"handleDisplayMonitorChangeNotification:" name:@"MRDisplayMonitorLayoutDidChangeNotification" object:v19];
  }

  return v15;
}

- (void)_initializeWithIdentity:(id)a3 nearbyGroup:(id)a4 isHosted:(BOOL)a5 hostSigningKey:(id)a6
{
  v9 = a3;
  v10 = a4;
  self->_lock._os_unfair_lock_opaque = 0;
  v11 = +[NSHashTable weakObjectsHashTable];
  observers = self->_observers;
  self->_observers = v11;

  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = MRGroupSessionSubsystemGetNotificationQueue();
  v15 = dispatch_queue_create_with_target_V2("com.apple.amp.MediaRemote.MRDRemoteControlGroupSession.notificationQueue", v13, v14);
  notificationQueue = self->_notificationQueue;
  self->_notificationQueue = v15;

  self->_isHosted = a5;
  localIdentity = self->_localIdentity;
  self->_localIdentity = v9;
  v18 = v9;

  v19 = +[NSMapTable strongToStrongObjectsMapTable];
  pendingParticipantsMap = self->_pendingParticipantsMap;
  self->_pendingParticipantsMap = v19;

  v21 = +[NSMapTable strongToStrongObjectsMapTable];
  pendingJoinCompletions = self->_pendingJoinCompletions;
  self->_pendingJoinCompletions = v21;

  nearbyGroup = self->_nearbyGroup;
  self->_nearbyGroup = v10;
  v24 = v10;

  v25 = [(MRDNearbyGroup *)v24 identifier];
  identifier = self->_identifier;
  self->_identifier = v25;

  self->_state = 0;
  v27 = _MRLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 134217984;
    v29 = self;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[MRDGroupSession] <%p> Initialized", &v28, 0xCu);
  }
}

- (void)dealloc
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDGroupSession] <%p> Dealloc.", buf, 0xCu);
  }

  v4 = [(MRDRemoteControlGroupSession *)self fastSyncSession];
  [v4 end];

  v5.receiver = self;
  v5.super_class = MRDRemoteControlGroupSession;
  [(MRDRemoteControlGroupSession *)&v5 dealloc];
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(MRDRemoteControlGroupSession *)self identifier];
  v6 = [NSNumber numberWithBool:[(MRDRemoteControlGroupSession *)self isHosted]];
  v7 = [v6 stringValue];
  v8 = [(MRDRemoteControlGroupSession *)self nearbyGroup];
  v9 = [(MRDRemoteControlGroupSession *)self nearbyInvitation];
  v10 = [v3 initWithFormat:@"<%@: identifier=%@, hosted=%@ nearbyGroup=%@ nearbyInvitation=%@>", v4, v5, v7, v8, v9];

  return v10;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(MRDRemoteControlGroupSession *)self identifier];
  v5 = [NSNumber numberWithBool:[(MRDRemoteControlGroupSession *)self isHosted]];
  v6 = [v5 stringValue];
  v7 = [(MRDRemoteControlGroupSession *)self pendingParticipants];
  v8 = [(MRDRemoteControlGroupSession *)self nearbyGroup];
  v9 = [(MRDRemoteControlGroupSession *)self nearbyInvitation];
  v10 = [NSString stringWithFormat:@"<%@: %p> identifier=%@, hosted=%@, pendingParticipants=%@ nearbyGroup=%@ nearbyInvitation=%@", v3, self, v4, v6, v7, v8, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = v4->_identifier;
      v7 = identifier;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (NSString)localizedSessionName
{
  v3 = [(MRDRemoteControlGroupSession *)self leader];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 identity];
    v6 = [v5 displayName];
    [(MRDRemoteControlGroupSession *)self routeType];
    v7 = MRGroupSessionRouteMakeName();
  }

  else
  {
    v5 = [(MRGroupSessionToken *)self->_joinToken hostInfo];
    v7 = [v5 localizedSessionName];
  }

  return v7;
}

- (unsigned)routeType
{
  v2 = [(MRGroupSessionToken *)self->_joinToken hostInfo];
  v3 = [v2 routeType];

  return v3;
}

- (void)start
{
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  if (!state)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDGroupSession] <%p> Starting.", &v6, 0xCu);
    }

    v5 = [(MRDRemoteControlGroupSession *)self fastSyncSession];
    [v5 start];
  }
}

- (void)finish
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_state == 4)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [(MRDRemoteControlGroupSession *)self setState:4];
    os_unfair_lock_unlock(&self->_lock);
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDGroupSession] <%p> Finishing.", &v5, 0xCu);
    }

    v4 = [(MRDRemoteControlGroupSession *)self fastSyncSession];
    [v4 end];
  }
}

- (void)sendMessageData:(id)a3 toParticipants:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MRDRemoteControlGroupSession *)self fastSyncSession];
  v9 = [NSSet setWithArray:v6];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001B28D0;
  v10[3] = &unk_1004B6FC0;
  v10[4] = self;
  [v8 sendRemoteControlMessage:v7 to:v9 completion:v10];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(MRDRemoteControlGroupSession *)self observers];
  [v5 addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(MRDRemoteControlGroupSession *)self observers];
  [v5 removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)approvePendingParticipant:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(MRDRemoteControlGroupSession *)self trackJoinResponseApproved:1];
  if ([(MRDRemoteControlGroupSession *)self isHosted])
  {
    v5 = [(MRDRemoteControlGroupSession *)self pendingParticipantsMap];
    v6 = [v5 objectForKey:v4];

    v7 = [(MRDRemoteControlGroupSession *)self pendingJoinCompletions];
    v8 = [v7 objectForKey:v4];

    v9 = [(MRDRemoteControlGroupSession *)self pendingParticipantsMap];
    [v9 removeObjectForKey:v4];

    v10 = [(MRDRemoteControlGroupSession *)self pendingJoinCompletions];
    [v10 removeObjectForKey:v4];
  }

  else
  {
    v11 = [(MRDRemoteControlGroupSession *)self remotePendingParticipants];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001B3248;
    v27[3] = &unk_1004BAC70;
    v28 = v4;
    v6 = [v11 msv_firstWhere:v27];

    v8 = 0;
  }

  v12 = [(MRDRemoteControlGroupSession *)self pendingParticipantsMap];
  v13 = [v12 objectEnumerator];
  v14 = [v13 allObjects];

  v15 = [(MRDRemoteControlGroupSession *)self observers];
  v16 = [v15 allObjects];

  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    v17 = [(MRDRemoteControlGroupSession *)self isHosted];
    v18 = [(MRDRemoteControlGroupSession *)self fastSyncSession];
    v19 = v18;
    if (v17)
    {
      [v18 removePendingParticipant:v6];

      v20 = [(MRDRemoteControlGroupSession *)self fastSyncSession];
      [v20 prepareForAddedMember];

      v21 = [(MRDRemoteControlGroupSession *)self notificationQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001B328C;
      block[3] = &unk_1004BB398;
      v26 = v8;
      v23 = v16;
      v24 = self;
      v25 = v14;
      dispatch_async(v21, block);

      v19 = v26;
    }

    else
    {
      [v18 remoteApprovePendingParticipant:v6];
    }
  }

  else
  {
    v19 = _MRLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1003B0894(v4, v19);
    }
  }
}

- (void)denyPendingParticipant:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(MRDRemoteControlGroupSession *)self trackJoinResponseApproved:0];
  if ([(MRDRemoteControlGroupSession *)self isHosted])
  {
    v5 = [(MRDRemoteControlGroupSession *)self pendingParticipantsMap];
    v6 = [v5 objectForKey:v4];

    v7 = [(MRDRemoteControlGroupSession *)self pendingJoinCompletions];
    v8 = [v7 objectForKey:v4];

    v9 = [(MRDRemoteControlGroupSession *)self pendingParticipantsMap];
    [v9 removeObjectForKey:v4];

    v10 = [(MRDRemoteControlGroupSession *)self pendingJoinCompletions];
    [v10 removeObjectForKey:v4];
  }

  else
  {
    v11 = [(MRDRemoteControlGroupSession *)self remotePendingParticipants];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001B36C8;
    v28[3] = &unk_1004BAC70;
    v29 = v4;
    v6 = [v11 msv_firstWhere:v28];

    v8 = 0;
  }

  v12 = [(MRDRemoteControlGroupSession *)self pendingParticipantsMap];
  v13 = [v12 objectEnumerator];
  v14 = [v13 allObjects];

  v15 = [(MRDRemoteControlGroupSession *)self observers];
  v16 = [v15 allObjects];

  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    v17 = [(MRDRemoteControlGroupSession *)self isHosted];
    v18 = [(MRDRemoteControlGroupSession *)self fastSyncSession];
    v19 = v18;
    if (v17)
    {
      [v18 removePendingParticipant:v6];

      v20 = [(MRDRemoteControlGroupSession *)self fastSyncSession];
      v21 = [v6 identity];
      [v20 cancelPrewarmedIdentifier:v4 forIdentity:v21];

      v22 = [(MRDRemoteControlGroupSession *)self notificationQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001B370C;
      block[3] = &unk_1004BB398;
      v27 = v8;
      v24 = v16;
      v25 = self;
      v26 = v14;
      dispatch_async(v22, block);

      v19 = v27;
    }

    else
    {
      [v18 remoteRejectPendingParticipant:v6];
    }
  }

  else
  {
    v19 = _MRLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1003B090C(v4, v19);
    }
  }
}

- (void)removeParticipant:(id)a3
{
  v4 = a3;
  v5 = [(MRDRemoteControlGroupSession *)self isHosted];
  v6 = [(MRDRemoteControlGroupSession *)self fastSyncSession];
  v7 = v6;
  if (v5)
  {
    [v6 removeParticipantWithIdentifier:v4];
  }

  else
  {
    [v6 remoteRemoveParticipantWithIdentifier:v4];
  }
}

- (void)removeAllParticipants
{
  if ([(MRDRemoteControlGroupSession *)self isHosted])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = [(MRDRemoteControlGroupSession *)self participants];
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v17 + 1) + 8 * i) identifier];
          [(MRDRemoteControlGroupSession *)self removeParticipant:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    os_unfair_lock_lock(&self->_lock);
    v9 = [(MRDRemoteControlGroupSession *)self observers];
    v10 = [v9 allObjects];

    os_unfair_lock_unlock(&self->_lock);
    v11 = [(MRDRemoteControlGroupSession *)self notificationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B3AE4;
    block[3] = &unk_1004B68F0;
    v15 = v10;
    v16 = self;
    v12 = v10;
    dispatch_async(v11, block);
  }

  else
  {
    v13 = [(MRDRemoteControlGroupSession *)self fastSyncSession];
    [v13 remoteRemoveAllParticipants];
  }
}

- (void)revokeAutoApprovalForParticipant:(id)a3
{
  v4 = a3;
  if ([(MRDRemoteControlGroupSession *)self isHosted])
  {
    os_unfair_lock_lock(&self->_lock);
    participants = self->_participants;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001B3D74;
    v9[3] = &unk_1004BAC70;
    v10 = v4;
    v6 = [(NSArray *)participants msv_firstWhere:v9];
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      v7 = [v6 identity];
      v8 = _MRLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDGroupSession] Revoking auto-approval for identity: %@", buf, 0xCu);
      }

      [MRDGroupSessionApprovalManager donateRemovedIdentity:v7];
    }
  }
}

- (void)revokeAutoApprovalForAllParticipants
{
  if ([(MRDRemoteControlGroupSession *)self isHosted])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [(MRDRemoteControlGroupSession *)self participants];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v9 + 1) + 8 * v7) identifier];
          [(MRDRemoteControlGroupSession *)self revokeAutoApprovalForParticipant:v8];

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (NSArray)pendingParticipants
{
  os_unfair_lock_lock(&self->_lock);
  if ([(MRDRemoteControlGroupSession *)self isHosted])
  {
    v3 = [(MRDRemoteControlGroupSession *)self pendingParticipantsMap];
    v4 = [v3 objectEnumerator];
    v5 = [v4 allObjects];
  }

  else
  {
    v5 = [(MRDRemoteControlGroupSession *)self remotePendingParticipants];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (int64_t)state
{
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)setState:(int64_t)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != a3)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1001B1B38(self->_state);
      v7 = sub_1001B1B38(a3);
      *buf = 138412802;
      v21 = self;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSession] <%@> state changed: %@ -> %@", buf, 0x20u);
    }

    self->_state = a3;
    if (a3 == 4)
    {
      [(MRDRemoteControlGroupSession *)self clearPendingCompletions];
    }

    else if (a3 == 3)
    {
      objc_initWeak(buf, self);
      v8 = [(MRDRemoteControlGroupSession *)self notificationQueue];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1001B4254;
      v18[3] = &unk_1004B8280;
      objc_copyWeak(&v19, buf);
      v9 = [MSVTimer timerWithInterval:0 repeats:v8 queue:v18 block:15.0];
      [(MRDRemoteControlGroupSession *)self setLowPowerDeferralTimer:v9];

      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }

    v10 = [(MRDRemoteControlGroupSession *)self observers];
    v11 = [v10 allObjects];

    v12 = [(MRDRemoteControlGroupSession *)self notificationQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001B42BC;
    v14[3] = &unk_1004B6AC0;
    v15 = v11;
    v16 = self;
    v17 = a3;
    v13 = v11;
    dispatch_async(v12, v14);
  }
}

- (MRDGroupSessionParticipant)leader
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_leader;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (MRDGroupSessionParticipant)localParticipant
{
  v2 = [(MRDRemoteControlGroupSession *)self fastSyncSession];
  v3 = [v2 localParticipant];

  return v3;
}

- (NSArray)participants
{
  os_unfair_lock_lock(&self->_lock);
  participants = self->_participants;
  if (!participants)
  {
    participants = &__NSArray0__struct;
  }

  v4 = participants;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setParticipants:(id)a3
{
  v5 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  objc_storeStrong(&self->_participants, a3);
  if (self->_state == 3)
  {
    v6 = [(MRDRemoteControlGroupSession *)self observers];
    v7 = [v6 allObjects];

    v8 = [(MRDRemoteControlGroupSession *)self notificationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B45E4;
    block[3] = &unk_1004B69D0;
    v11 = v7;
    v12 = self;
    v13 = v5;
    v9 = v7;
    dispatch_async(v8, block);
  }
}

- (NSArray)remoteParticipants
{
  v3 = [(MRDRemoteControlGroupSession *)self participants];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B47A8;
  v6[3] = &unk_1004BAC70;
  v6[4] = self;
  v4 = [v3 msv_filter:v6];

  return v4;
}

- (NSArray)members
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_members;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMembers:(id)a3
{
  v5 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  objc_storeStrong(&self->_members, a3);
  if (self->_state == 3)
  {
    v6 = [(MRDRemoteControlGroupSession *)self observers];
    v7 = [v6 allObjects];

    v8 = [(MRDRemoteControlGroupSession *)self notificationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B4960;
    block[3] = &unk_1004B69D0;
    v11 = v7;
    v12 = self;
    v13 = v5;
    v9 = v7;
    dispatch_async(v8, block);
  }
}

- (void)setRemotePendingParticipants:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [v4 copy];

  objc_storeStrong(&self->_remotePendingParticipants, v5);
  if (self->_state == 3)
  {
    v6 = [(MRDRemoteControlGroupSession *)self observers];
    v7 = [v6 allObjects];

    v8 = [(MRDRemoteControlGroupSession *)self notificationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B4B98;
    block[3] = &unk_1004B69D0;
    v11 = v7;
    v12 = self;
    v13 = v5;
    v9 = v7;
    dispatch_async(v8, block);
  }
}

- (void)transitionToState:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_state < a3)
  {
    [(MRDRemoteControlGroupSession *)self setState:a3];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIsLowPowerMode:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_isLowPowerMode != v3)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"OFF";
      if (v3)
      {
        v6 = @"ON";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSession] Low power mode changed to %@", &v7, 0xCu);
    }

    self->_isLowPowerMode = v3;
  }
}

- (void)handleDisplayMonitorChangeNotification:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(MRDRemoteControlGroupSession *)self reevaluateLowPowerMode];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)reevaluateLowPowerMode
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = +[MRUserSettings currentSettings];
  v4 = [v3 supportGroupSessionLowPowerMode];

  if (v4)
  {
    if (![(MRDRemoteControlGroupSession *)self isHosted]&& ![(MRDRemoteControlGroupSession *)self isUpdatingLowPowerMode]&& self->_state == 3)
    {
      v5 = [(MRDRemoteControlGroupSession *)self lowPowerDeferralTimer];

      if (!v5)
      {
        v6 = [(MRDRemoteControlGroupSession *)self lowPowerError];

        if (!v6)
        {
          v7 = +[MRDDisplayMonitor sharedMonitor];
          v8 = [v7 displayOn];

          v9 = [(MRDRemoteControlGroupSession *)self isLowPowerMode];
          if (v8)
          {
            if (!v9)
            {
              return;
            }

            [(MRDRemoteControlGroupSession *)self setIsUpdatingLowPowerMode:1];
            v10 = [(MRDRemoteControlGroupSession *)self fastSyncSession];
            v12[0] = _NSConcreteStackBlock;
            v12[1] = 3221225472;
            v12[2] = sub_1001B4FFC;
            v12[3] = &unk_1004B6FC0;
            v12[4] = self;
            [v10 exitLowPowerModeWithCompletion:v12];
          }

          else
          {
            if (v9)
            {
              return;
            }

            [(MRDRemoteControlGroupSession *)self setIsUpdatingLowPowerMode:1];
            v10 = [(MRDRemoteControlGroupSession *)self fastSyncSession];
            v11[0] = _NSConcreteStackBlock;
            v11[1] = 3221225472;
            v11[2] = sub_1001B50C8;
            v11[3] = &unk_1004B6FC0;
            v11[4] = self;
            [v10 enterLowPowerModeWithCompletion:v11];
          }
        }
      }
    }
  }
}

- (void)clearPendingCompletions
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(NSMapTable *)self->_pendingJoinCompletions objectEnumerator];
  v4 = [v3 allObjects];

  [(NSMapTable *)self->_pendingJoinCompletions removeAllObjects];
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B5248;
  block[3] = &unk_1004B6D08;
  v8 = v4;
  v6 = v4;
  dispatch_async(notificationQueue, block);
}

- (void)session:(id)a3 didChangeState:(int64_t)a4
{
  v6 = a3;
  if ((a4 - 1) < 2)
  {
    v8 = v6;
    if ([(MRDRemoteControlGroupSession *)self isHosted])
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else if (a4 == 3)
  {
    v8 = v6;
    v7 = 2;
  }

  else
  {
    if (a4 != 4)
    {
      goto LABEL_10;
    }

    v8 = v6;
    v7 = 4;
  }

  [(MRDRemoteControlGroupSession *)self transitionToState:v7];
  v6 = v8;
LABEL_10:
}

- (void)session:(id)a3 didUpdateParticipants:(id)a4
{
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  [(MRDRemoteControlGroupSession *)self setParticipants:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)session:(id)a3 didUpdateMembers:(id)a4
{
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  [(MRDRemoteControlGroupSession *)self setMembers:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)session:(id)a3 didUpdatePendingParticipants:(id)a4
{
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  [(MRDRemoteControlGroupSession *)self setRemotePendingParticipants:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)sessionDidCompleteIdentityShare:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(MRDRemoteControlGroupSession *)self setState:3];
  v5 = [v4 leaderParticipant];

  [(MRDRemoteControlGroupSession *)self setLeader:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)session:(id)a3 didReceiveRemoteControlMessage:(id)a4 from:(id)a5
{
  v7 = a4;
  v8 = a5;
  os_unfair_lock_lock(&self->_lock);
  v9 = [(MRDRemoteControlGroupSession *)self observers];
  v10 = [v9 allObjects];

  os_unfair_lock_unlock(&self->_lock);
  v11 = [(MRDRemoteControlGroupSession *)self notificationQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001B5674;
  v15[3] = &unk_1004B7310;
  v16 = v10;
  v17 = self;
  v18 = v7;
  v19 = v8;
  v12 = v8;
  v13 = v7;
  v14 = v10;
  dispatch_async(v11, v15);
}

- (void)session:(id)a3 didReceiveRemoteApprovalForPendingParticipant:(id)a4 from:(id)a5
{
  v6 = [a4 identifier];
  [(MRDRemoteControlGroupSession *)self approvePendingParticipant:v6];
}

- (void)session:(id)a3 didReceiveRemoteRejectionForPendingParticipant:(id)a4 from:(id)a5
{
  v6 = [a4 identifier];
  [(MRDRemoteControlGroupSession *)self denyPendingParticipant:v6];
}

- (void)session:(id)a3 didReceiveRemoteRemoveRequestForParticipant:(id)a4 from:(id)a5
{
  v6 = a4;
  v7 = [v6 identifier];
  [(MRDRemoteControlGroupSession *)self revokeAutoApprovalForParticipant:v7];

  v8 = [v6 identifier];

  [(MRDRemoteControlGroupSession *)self removeParticipant:v8];
}

- (void)session:(id)a3 didReceiveRemoteRemoveAllRequestFromParticipant:(id)a4
{
  [(MRDRemoteControlGroupSession *)self revokeAutoApprovalForAllParticipants:a3];

  [(MRDRemoteControlGroupSession *)self removeAllParticipants];
}

@end