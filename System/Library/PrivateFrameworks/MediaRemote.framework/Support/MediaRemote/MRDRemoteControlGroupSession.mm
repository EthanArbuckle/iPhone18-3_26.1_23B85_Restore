@interface MRDRemoteControlGroupSession
+ (id)hostedSessionWithNearbyGroup:(id)group nearbyInvitation:(id)invitation identity:(id)identity;
+ (id)remoteSessionWithNearbyGroup:(id)group identity:(id)identity hostSigningKey:(id)key joinToken:(id)token;
- (BOOL)isEqual:(id)equal;
- (MRDGroupSessionParticipant)leader;
- (MRDGroupSessionParticipant)localParticipant;
- (MRDRemoteControlGroupSession)initWithNearbyGroup:(id)group identity:(id)identity hostSigningKey:(id)key joinToken:(id)token;
- (MRDRemoteControlGroupSession)initWithNearbyGroup:(id)group nearbyInvitation:(id)invitation identity:(id)identity hostSigningKey:(id)key;
- (NSArray)members;
- (NSArray)participants;
- (NSArray)pendingParticipants;
- (NSArray)remoteParticipants;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)localizedSessionName;
- (int64_t)state;
- (unsigned)routeType;
- (void)_initializeWithIdentity:(id)identity nearbyGroup:(id)group isHosted:(BOOL)hosted hostSigningKey:(id)key;
- (void)addObserver:(id)observer;
- (void)approvePendingParticipant:(id)participant;
- (void)clearPendingCompletions;
- (void)dealloc;
- (void)denyPendingParticipant:(id)participant;
- (void)finish;
- (void)handleDisplayMonitorChangeNotification:(id)notification;
- (void)reevaluateLowPowerMode;
- (void)removeAllParticipants;
- (void)removeObserver:(id)observer;
- (void)removeParticipant:(id)participant;
- (void)revokeAutoApprovalForAllParticipants;
- (void)revokeAutoApprovalForParticipant:(id)participant;
- (void)sendMessageData:(id)data toParticipants:(id)participants;
- (void)session:(id)session didChangeState:(int64_t)state;
- (void)session:(id)session didReceiveRemoteApprovalForPendingParticipant:(id)participant from:(id)from;
- (void)session:(id)session didReceiveRemoteControlMessage:(id)message from:(id)from;
- (void)session:(id)session didReceiveRemoteRejectionForPendingParticipant:(id)participant from:(id)from;
- (void)session:(id)session didReceiveRemoteRemoveAllRequestFromParticipant:(id)participant;
- (void)session:(id)session didReceiveRemoteRemoveRequestForParticipant:(id)participant from:(id)from;
- (void)session:(id)session didUpdateMembers:(id)members;
- (void)session:(id)session didUpdateParticipants:(id)participants;
- (void)session:(id)session didUpdatePendingParticipants:(id)participants;
- (void)sessionDidCompleteIdentityShare:(id)share;
- (void)setIsLowPowerMode:(BOOL)mode;
- (void)setMembers:(id)members;
- (void)setParticipants:(id)participants;
- (void)setRemotePendingParticipants:(id)participants;
- (void)setState:(int64_t)state;
- (void)start;
- (void)transitionToState:(int64_t)state;
@end

@implementation MRDRemoteControlGroupSession

+ (id)hostedSessionWithNearbyGroup:(id)group nearbyInvitation:(id)invitation identity:(id)identity
{
  identityCopy = identity;
  invitationCopy = invitation;
  groupCopy = group;
  v10 = [[MRDRemoteControlGroupSession alloc] initWithNearbyGroup:groupCopy nearbyInvitation:invitationCopy identity:identityCopy hostSigningKey:0];

  return v10;
}

+ (id)remoteSessionWithNearbyGroup:(id)group identity:(id)identity hostSigningKey:(id)key joinToken:(id)token
{
  tokenCopy = token;
  keyCopy = key;
  identityCopy = identity;
  groupCopy = group;
  v13 = [[MRDRemoteControlGroupSession alloc] initWithNearbyGroup:groupCopy identity:identityCopy hostSigningKey:keyCopy joinToken:tokenCopy];

  return v13;
}

- (MRDRemoteControlGroupSession)initWithNearbyGroup:(id)group nearbyInvitation:(id)invitation identity:(id)identity hostSigningKey:(id)key
{
  groupCopy = group;
  invitationCopy = invitation;
  identityCopy = identity;
  keyCopy = key;
  v27.receiver = self;
  v27.super_class = MRDRemoteControlGroupSession;
  v14 = [(MRDRemoteControlGroupSession *)&v27 init];
  v15 = v14;
  if (v14)
  {
    [(MRDRemoteControlGroupSession *)v14 _initializeWithIdentity:identityCopy nearbyGroup:groupCopy isHosted:1 hostSigningKey:keyCopy];
    objc_storeStrong(&v15->_nearbyInvitation, invitation);
    v16 = +[MRUserSettings currentSettings];
    groupSessionGenerateSharedSecret = [v16 groupSessionGenerateSharedSecret];

    if (groupSessionGenerateSharedSecret)
    {
      sessionSecret = [groupCopy sessionSecret];
      sharedSecret = v15->_sharedSecret;
      v15->_sharedSecret = sessionSecret;
    }

    v20 = [MRGroupSessionToken alloc];
    invitationData = [invitationCopy invitationData];
    v22 = [v20 initWithInvitationData:invitationData sharedSecret:v15->_sharedSecret sessionIdentifier:v15->_identifier equivalentMediaIdentifier:0 version:MRGroupSessionTokenVersion];
    joinToken = v15->_joinToken;
    v15->_joinToken = v22;

    v24 = [MRDFastSyncGroupSession createSessionWithNearbyGroup:groupCopy asUser:identityCopy delegate:v15];
    fastSyncSession = v15->_fastSyncSession;
    v15->_fastSyncSession = v24;
  }

  return v15;
}

- (MRDRemoteControlGroupSession)initWithNearbyGroup:(id)group identity:(id)identity hostSigningKey:(id)key joinToken:(id)token
{
  groupCopy = group;
  identityCopy = identity;
  keyCopy = key;
  tokenCopy = token;
  v21.receiver = self;
  v21.super_class = MRDRemoteControlGroupSession;
  v14 = [(MRDRemoteControlGroupSession *)&v21 init];
  v15 = v14;
  if (v14)
  {
    [(MRDRemoteControlGroupSession *)v14 _initializeWithIdentity:identityCopy nearbyGroup:groupCopy isHosted:0 hostSigningKey:keyCopy];
    objc_storeStrong(&v15->_joinToken, token);
    v16 = [MRDFastSyncGroupSession joinSessionWithNearbyGroup:groupCopy asUser:identityCopy hostSigningKey:keyCopy delegate:v15];
    fastSyncSession = v15->_fastSyncSession;
    v15->_fastSyncSession = v16;

    v18 = +[NSNotificationCenter defaultCenter];
    v19 = +[MRDDisplayMonitor sharedMonitor];
    [v18 addObserver:v15 selector:"handleDisplayMonitorChangeNotification:" name:@"MRDisplayMonitorLayoutDidChangeNotification" object:v19];
  }

  return v15;
}

- (void)_initializeWithIdentity:(id)identity nearbyGroup:(id)group isHosted:(BOOL)hosted hostSigningKey:(id)key
{
  identityCopy = identity;
  groupCopy = group;
  self->_lock._os_unfair_lock_opaque = 0;
  v11 = +[NSHashTable weakObjectsHashTable];
  observers = self->_observers;
  self->_observers = v11;

  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = MRGroupSessionSubsystemGetNotificationQueue();
  v15 = dispatch_queue_create_with_target_V2("com.apple.amp.MediaRemote.MRDRemoteControlGroupSession.notificationQueue", v13, v14);
  notificationQueue = self->_notificationQueue;
  self->_notificationQueue = v15;

  self->_isHosted = hosted;
  localIdentity = self->_localIdentity;
  self->_localIdentity = identityCopy;
  v18 = identityCopy;

  v19 = +[NSMapTable strongToStrongObjectsMapTable];
  pendingParticipantsMap = self->_pendingParticipantsMap;
  self->_pendingParticipantsMap = v19;

  v21 = +[NSMapTable strongToStrongObjectsMapTable];
  pendingJoinCompletions = self->_pendingJoinCompletions;
  self->_pendingJoinCompletions = v21;

  nearbyGroup = self->_nearbyGroup;
  self->_nearbyGroup = groupCopy;
  v24 = groupCopy;

  identifier = [(MRDNearbyGroup *)v24 identifier];
  identifier = self->_identifier;
  self->_identifier = identifier;

  self->_state = 0;
  v27 = _MRLogForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[MRDGroupSession] <%p> Initialized", &v28, 0xCu);
  }
}

- (void)dealloc
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDGroupSession] <%p> Dealloc.", buf, 0xCu);
  }

  fastSyncSession = [(MRDRemoteControlGroupSession *)self fastSyncSession];
  [fastSyncSession end];

  v5.receiver = self;
  v5.super_class = MRDRemoteControlGroupSession;
  [(MRDRemoteControlGroupSession *)&v5 dealloc];
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  identifier = [(MRDRemoteControlGroupSession *)self identifier];
  v6 = [NSNumber numberWithBool:[(MRDRemoteControlGroupSession *)self isHosted]];
  stringValue = [v6 stringValue];
  nearbyGroup = [(MRDRemoteControlGroupSession *)self nearbyGroup];
  nearbyInvitation = [(MRDRemoteControlGroupSession *)self nearbyInvitation];
  v10 = [v3 initWithFormat:@"<%@: identifier=%@, hosted=%@ nearbyGroup=%@ nearbyInvitation=%@>", v4, identifier, stringValue, nearbyGroup, nearbyInvitation];

  return v10;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  identifier = [(MRDRemoteControlGroupSession *)self identifier];
  v5 = [NSNumber numberWithBool:[(MRDRemoteControlGroupSession *)self isHosted]];
  stringValue = [v5 stringValue];
  pendingParticipants = [(MRDRemoteControlGroupSession *)self pendingParticipants];
  nearbyGroup = [(MRDRemoteControlGroupSession *)self nearbyGroup];
  nearbyInvitation = [(MRDRemoteControlGroupSession *)self nearbyInvitation];
  v10 = [NSString stringWithFormat:@"<%@: %p> identifier=%@, hosted=%@, pendingParticipants=%@ nearbyGroup=%@ nearbyInvitation=%@", v3, self, identifier, stringValue, pendingParticipants, nearbyGroup, nearbyInvitation];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = equalCopy->_identifier;
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
  leader = [(MRDRemoteControlGroupSession *)self leader];
  v4 = leader;
  if (leader)
  {
    identity = [leader identity];
    displayName = [identity displayName];
    [(MRDRemoteControlGroupSession *)self routeType];
    localizedSessionName = MRGroupSessionRouteMakeName();
  }

  else
  {
    identity = [(MRGroupSessionToken *)self->_joinToken hostInfo];
    localizedSessionName = [identity localizedSessionName];
  }

  return localizedSessionName;
}

- (unsigned)routeType
{
  hostInfo = [(MRGroupSessionToken *)self->_joinToken hostInfo];
  routeType = [hostInfo routeType];

  return routeType;
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
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDGroupSession] <%p> Starting.", &v6, 0xCu);
    }

    fastSyncSession = [(MRDRemoteControlGroupSession *)self fastSyncSession];
    [fastSyncSession start];
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
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDGroupSession] <%p> Finishing.", &v5, 0xCu);
    }

    fastSyncSession = [(MRDRemoteControlGroupSession *)self fastSyncSession];
    [fastSyncSession end];
  }
}

- (void)sendMessageData:(id)data toParticipants:(id)participants
{
  participantsCopy = participants;
  dataCopy = data;
  fastSyncSession = [(MRDRemoteControlGroupSession *)self fastSyncSession];
  v9 = [NSSet setWithArray:participantsCopy];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001B28D0;
  v10[3] = &unk_1004B6FC0;
  v10[4] = self;
  [fastSyncSession sendRemoteControlMessage:dataCopy to:v9 completion:v10];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  observers = [(MRDRemoteControlGroupSession *)self observers];
  [observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  observers = [(MRDRemoteControlGroupSession *)self observers];
  [observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)approvePendingParticipant:(id)participant
{
  participantCopy = participant;
  os_unfair_lock_lock(&self->_lock);
  [(MRDRemoteControlGroupSession *)self trackJoinResponseApproved:1];
  if ([(MRDRemoteControlGroupSession *)self isHosted])
  {
    pendingParticipantsMap = [(MRDRemoteControlGroupSession *)self pendingParticipantsMap];
    v6 = [pendingParticipantsMap objectForKey:participantCopy];

    pendingJoinCompletions = [(MRDRemoteControlGroupSession *)self pendingJoinCompletions];
    v8 = [pendingJoinCompletions objectForKey:participantCopy];

    pendingParticipantsMap2 = [(MRDRemoteControlGroupSession *)self pendingParticipantsMap];
    [pendingParticipantsMap2 removeObjectForKey:participantCopy];

    pendingJoinCompletions2 = [(MRDRemoteControlGroupSession *)self pendingJoinCompletions];
    [pendingJoinCompletions2 removeObjectForKey:participantCopy];
  }

  else
  {
    remotePendingParticipants = [(MRDRemoteControlGroupSession *)self remotePendingParticipants];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1001B3248;
    v27[3] = &unk_1004BAC70;
    v28 = participantCopy;
    v6 = [remotePendingParticipants msv_firstWhere:v27];

    v8 = 0;
  }

  pendingParticipantsMap3 = [(MRDRemoteControlGroupSession *)self pendingParticipantsMap];
  objectEnumerator = [pendingParticipantsMap3 objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  observers = [(MRDRemoteControlGroupSession *)self observers];
  allObjects2 = [observers allObjects];

  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    isHosted = [(MRDRemoteControlGroupSession *)self isHosted];
    fastSyncSession = [(MRDRemoteControlGroupSession *)self fastSyncSession];
    v19 = fastSyncSession;
    if (isHosted)
    {
      [fastSyncSession removePendingParticipant:v6];

      fastSyncSession2 = [(MRDRemoteControlGroupSession *)self fastSyncSession];
      [fastSyncSession2 prepareForAddedMember];

      notificationQueue = [(MRDRemoteControlGroupSession *)self notificationQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001B328C;
      block[3] = &unk_1004BB398;
      v26 = v8;
      v23 = allObjects2;
      selfCopy = self;
      v25 = allObjects;
      dispatch_async(notificationQueue, block);

      v19 = v26;
    }

    else
    {
      [fastSyncSession remoteApprovePendingParticipant:v6];
    }
  }

  else
  {
    v19 = _MRLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1003B0894(participantCopy, v19);
    }
  }
}

- (void)denyPendingParticipant:(id)participant
{
  participantCopy = participant;
  os_unfair_lock_lock(&self->_lock);
  [(MRDRemoteControlGroupSession *)self trackJoinResponseApproved:0];
  if ([(MRDRemoteControlGroupSession *)self isHosted])
  {
    pendingParticipantsMap = [(MRDRemoteControlGroupSession *)self pendingParticipantsMap];
    v6 = [pendingParticipantsMap objectForKey:participantCopy];

    pendingJoinCompletions = [(MRDRemoteControlGroupSession *)self pendingJoinCompletions];
    v8 = [pendingJoinCompletions objectForKey:participantCopy];

    pendingParticipantsMap2 = [(MRDRemoteControlGroupSession *)self pendingParticipantsMap];
    [pendingParticipantsMap2 removeObjectForKey:participantCopy];

    pendingJoinCompletions2 = [(MRDRemoteControlGroupSession *)self pendingJoinCompletions];
    [pendingJoinCompletions2 removeObjectForKey:participantCopy];
  }

  else
  {
    remotePendingParticipants = [(MRDRemoteControlGroupSession *)self remotePendingParticipants];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001B36C8;
    v28[3] = &unk_1004BAC70;
    v29 = participantCopy;
    v6 = [remotePendingParticipants msv_firstWhere:v28];

    v8 = 0;
  }

  pendingParticipantsMap3 = [(MRDRemoteControlGroupSession *)self pendingParticipantsMap];
  objectEnumerator = [pendingParticipantsMap3 objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  observers = [(MRDRemoteControlGroupSession *)self observers];
  allObjects2 = [observers allObjects];

  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    isHosted = [(MRDRemoteControlGroupSession *)self isHosted];
    fastSyncSession = [(MRDRemoteControlGroupSession *)self fastSyncSession];
    v19 = fastSyncSession;
    if (isHosted)
    {
      [fastSyncSession removePendingParticipant:v6];

      fastSyncSession2 = [(MRDRemoteControlGroupSession *)self fastSyncSession];
      identity = [v6 identity];
      [fastSyncSession2 cancelPrewarmedIdentifier:participantCopy forIdentity:identity];

      notificationQueue = [(MRDRemoteControlGroupSession *)self notificationQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001B370C;
      block[3] = &unk_1004BB398;
      v27 = v8;
      v24 = allObjects2;
      selfCopy = self;
      v26 = allObjects;
      dispatch_async(notificationQueue, block);

      v19 = v27;
    }

    else
    {
      [fastSyncSession remoteRejectPendingParticipant:v6];
    }
  }

  else
  {
    v19 = _MRLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1003B090C(participantCopy, v19);
    }
  }
}

- (void)removeParticipant:(id)participant
{
  participantCopy = participant;
  isHosted = [(MRDRemoteControlGroupSession *)self isHosted];
  fastSyncSession = [(MRDRemoteControlGroupSession *)self fastSyncSession];
  v7 = fastSyncSession;
  if (isHosted)
  {
    [fastSyncSession removeParticipantWithIdentifier:participantCopy];
  }

  else
  {
    [fastSyncSession remoteRemoveParticipantWithIdentifier:participantCopy];
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
    participants = [(MRDRemoteControlGroupSession *)self participants];
    v4 = [participants countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(participants);
          }

          identifier = [*(*(&v17 + 1) + 8 * i) identifier];
          [(MRDRemoteControlGroupSession *)self removeParticipant:identifier];
        }

        v5 = [participants countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }

    os_unfair_lock_lock(&self->_lock);
    observers = [(MRDRemoteControlGroupSession *)self observers];
    allObjects = [observers allObjects];

    os_unfair_lock_unlock(&self->_lock);
    notificationQueue = [(MRDRemoteControlGroupSession *)self notificationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B3AE4;
    block[3] = &unk_1004B68F0;
    v15 = allObjects;
    selfCopy = self;
    v12 = allObjects;
    dispatch_async(notificationQueue, block);
  }

  else
  {
    fastSyncSession = [(MRDRemoteControlGroupSession *)self fastSyncSession];
    [fastSyncSession remoteRemoveAllParticipants];
  }
}

- (void)revokeAutoApprovalForParticipant:(id)participant
{
  participantCopy = participant;
  if ([(MRDRemoteControlGroupSession *)self isHosted])
  {
    os_unfair_lock_lock(&self->_lock);
    participants = self->_participants;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1001B3D74;
    v9[3] = &unk_1004BAC70;
    v10 = participantCopy;
    v6 = [(NSArray *)participants msv_firstWhere:v9];
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      identity = [v6 identity];
      v8 = _MRLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = identity;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDGroupSession] Revoking auto-approval for identity: %@", buf, 0xCu);
      }

      [MRDGroupSessionApprovalManager donateRemovedIdentity:identity];
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
    participants = [(MRDRemoteControlGroupSession *)self participants];
    v4 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(participants);
          }

          identifier = [*(*(&v9 + 1) + 8 * v7) identifier];
          [(MRDRemoteControlGroupSession *)self revokeAutoApprovalForParticipant:identifier];

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [participants countByEnumeratingWithState:&v9 objects:v13 count:16];
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
    pendingParticipantsMap = [(MRDRemoteControlGroupSession *)self pendingParticipantsMap];
    objectEnumerator = [pendingParticipantsMap objectEnumerator];
    allObjects = [objectEnumerator allObjects];
  }

  else
  {
    allObjects = [(MRDRemoteControlGroupSession *)self remotePendingParticipants];
  }

  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (int64_t)state
{
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)setState:(int64_t)state
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_state != state)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_1001B1B38(self->_state);
      v7 = sub_1001B1B38(state);
      *buf = 138412802;
      selfCopy = self;
      v22 = 2112;
      v23 = v6;
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSession] <%@> state changed: %@ -> %@", buf, 0x20u);
    }

    self->_state = state;
    if (state == 4)
    {
      [(MRDRemoteControlGroupSession *)self clearPendingCompletions];
    }

    else if (state == 3)
    {
      objc_initWeak(buf, self);
      notificationQueue = [(MRDRemoteControlGroupSession *)self notificationQueue];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1001B4254;
      v18[3] = &unk_1004B8280;
      objc_copyWeak(&v19, buf);
      v9 = [MSVTimer timerWithInterval:0 repeats:notificationQueue queue:v18 block:15.0];
      [(MRDRemoteControlGroupSession *)self setLowPowerDeferralTimer:v9];

      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }

    observers = [(MRDRemoteControlGroupSession *)self observers];
    allObjects = [observers allObjects];

    notificationQueue2 = [(MRDRemoteControlGroupSession *)self notificationQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001B42BC;
    v14[3] = &unk_1004B6AC0;
    v15 = allObjects;
    selfCopy2 = self;
    stateCopy = state;
    v13 = allObjects;
    dispatch_async(notificationQueue2, v14);
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
  fastSyncSession = [(MRDRemoteControlGroupSession *)self fastSyncSession];
  localParticipant = [fastSyncSession localParticipant];

  return localParticipant;
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

- (void)setParticipants:(id)participants
{
  participantsCopy = participants;
  os_unfair_lock_assert_owner(&self->_lock);
  objc_storeStrong(&self->_participants, participants);
  if (self->_state == 3)
  {
    observers = [(MRDRemoteControlGroupSession *)self observers];
    allObjects = [observers allObjects];

    notificationQueue = [(MRDRemoteControlGroupSession *)self notificationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B45E4;
    block[3] = &unk_1004B69D0;
    v11 = allObjects;
    selfCopy = self;
    v13 = participantsCopy;
    v9 = allObjects;
    dispatch_async(notificationQueue, block);
  }
}

- (NSArray)remoteParticipants
{
  participants = [(MRDRemoteControlGroupSession *)self participants];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001B47A8;
  v6[3] = &unk_1004BAC70;
  v6[4] = self;
  v4 = [participants msv_filter:v6];

  return v4;
}

- (NSArray)members
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_members;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMembers:(id)members
{
  membersCopy = members;
  os_unfair_lock_assert_owner(&self->_lock);
  objc_storeStrong(&self->_members, members);
  if (self->_state == 3)
  {
    observers = [(MRDRemoteControlGroupSession *)self observers];
    allObjects = [observers allObjects];

    notificationQueue = [(MRDRemoteControlGroupSession *)self notificationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B4960;
    block[3] = &unk_1004B69D0;
    v11 = allObjects;
    selfCopy = self;
    v13 = membersCopy;
    v9 = allObjects;
    dispatch_async(notificationQueue, block);
  }
}

- (void)setRemotePendingParticipants:(id)participants
{
  participantsCopy = participants;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [participantsCopy copy];

  objc_storeStrong(&self->_remotePendingParticipants, v5);
  if (self->_state == 3)
  {
    observers = [(MRDRemoteControlGroupSession *)self observers];
    allObjects = [observers allObjects];

    notificationQueue = [(MRDRemoteControlGroupSession *)self notificationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001B4B98;
    block[3] = &unk_1004B69D0;
    v11 = allObjects;
    selfCopy = self;
    v13 = v5;
    v9 = allObjects;
    dispatch_async(notificationQueue, block);
  }
}

- (void)transitionToState:(int64_t)state
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_state < state)
  {
    [(MRDRemoteControlGroupSession *)self setState:state];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIsLowPowerMode:(BOOL)mode
{
  modeCopy = mode;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_isLowPowerMode != modeCopy)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"OFF";
      if (modeCopy)
      {
        v6 = @"ON";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSession] Low power mode changed to %@", &v7, 0xCu);
    }

    self->_isLowPowerMode = modeCopy;
  }
}

- (void)handleDisplayMonitorChangeNotification:(id)notification
{
  os_unfair_lock_lock(&self->_lock);
  [(MRDRemoteControlGroupSession *)self reevaluateLowPowerMode];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)reevaluateLowPowerMode
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = +[MRUserSettings currentSettings];
  supportGroupSessionLowPowerMode = [v3 supportGroupSessionLowPowerMode];

  if (supportGroupSessionLowPowerMode)
  {
    if (![(MRDRemoteControlGroupSession *)self isHosted]&& ![(MRDRemoteControlGroupSession *)self isUpdatingLowPowerMode]&& self->_state == 3)
    {
      lowPowerDeferralTimer = [(MRDRemoteControlGroupSession *)self lowPowerDeferralTimer];

      if (!lowPowerDeferralTimer)
      {
        lowPowerError = [(MRDRemoteControlGroupSession *)self lowPowerError];

        if (!lowPowerError)
        {
          v7 = +[MRDDisplayMonitor sharedMonitor];
          displayOn = [v7 displayOn];

          isLowPowerMode = [(MRDRemoteControlGroupSession *)self isLowPowerMode];
          if (displayOn)
          {
            if (!isLowPowerMode)
            {
              return;
            }

            [(MRDRemoteControlGroupSession *)self setIsUpdatingLowPowerMode:1];
            fastSyncSession = [(MRDRemoteControlGroupSession *)self fastSyncSession];
            v12[0] = _NSConcreteStackBlock;
            v12[1] = 3221225472;
            v12[2] = sub_1001B4FFC;
            v12[3] = &unk_1004B6FC0;
            v12[4] = self;
            [fastSyncSession exitLowPowerModeWithCompletion:v12];
          }

          else
          {
            if (isLowPowerMode)
            {
              return;
            }

            [(MRDRemoteControlGroupSession *)self setIsUpdatingLowPowerMode:1];
            fastSyncSession = [(MRDRemoteControlGroupSession *)self fastSyncSession];
            v11[0] = _NSConcreteStackBlock;
            v11[1] = 3221225472;
            v11[2] = sub_1001B50C8;
            v11[3] = &unk_1004B6FC0;
            v11[4] = self;
            [fastSyncSession enterLowPowerModeWithCompletion:v11];
          }
        }
      }
    }
  }
}

- (void)clearPendingCompletions
{
  os_unfair_lock_assert_owner(&self->_lock);
  objectEnumerator = [(NSMapTable *)self->_pendingJoinCompletions objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  [(NSMapTable *)self->_pendingJoinCompletions removeAllObjects];
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B5248;
  block[3] = &unk_1004B6D08;
  v8 = allObjects;
  v6 = allObjects;
  dispatch_async(notificationQueue, block);
}

- (void)session:(id)session didChangeState:(int64_t)state
{
  sessionCopy = session;
  if ((state - 1) < 2)
  {
    v8 = sessionCopy;
    if ([(MRDRemoteControlGroupSession *)self isHosted])
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else if (state == 3)
  {
    v8 = sessionCopy;
    v7 = 2;
  }

  else
  {
    if (state != 4)
    {
      goto LABEL_10;
    }

    v8 = sessionCopy;
    v7 = 4;
  }

  [(MRDRemoteControlGroupSession *)self transitionToState:v7];
  sessionCopy = v8;
LABEL_10:
}

- (void)session:(id)session didUpdateParticipants:(id)participants
{
  participantsCopy = participants;
  os_unfair_lock_lock(&self->_lock);
  [(MRDRemoteControlGroupSession *)self setParticipants:participantsCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)session:(id)session didUpdateMembers:(id)members
{
  membersCopy = members;
  os_unfair_lock_lock(&self->_lock);
  [(MRDRemoteControlGroupSession *)self setMembers:membersCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)session:(id)session didUpdatePendingParticipants:(id)participants
{
  participantsCopy = participants;
  os_unfair_lock_lock(&self->_lock);
  [(MRDRemoteControlGroupSession *)self setRemotePendingParticipants:participantsCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)sessionDidCompleteIdentityShare:(id)share
{
  shareCopy = share;
  os_unfair_lock_lock(&self->_lock);
  [(MRDRemoteControlGroupSession *)self setState:3];
  leaderParticipant = [shareCopy leaderParticipant];

  [(MRDRemoteControlGroupSession *)self setLeader:leaderParticipant];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)session:(id)session didReceiveRemoteControlMessage:(id)message from:(id)from
{
  messageCopy = message;
  fromCopy = from;
  os_unfair_lock_lock(&self->_lock);
  observers = [(MRDRemoteControlGroupSession *)self observers];
  allObjects = [observers allObjects];

  os_unfair_lock_unlock(&self->_lock);
  notificationQueue = [(MRDRemoteControlGroupSession *)self notificationQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001B5674;
  v15[3] = &unk_1004B7310;
  v16 = allObjects;
  selfCopy = self;
  v18 = messageCopy;
  v19 = fromCopy;
  v12 = fromCopy;
  v13 = messageCopy;
  v14 = allObjects;
  dispatch_async(notificationQueue, v15);
}

- (void)session:(id)session didReceiveRemoteApprovalForPendingParticipant:(id)participant from:(id)from
{
  identifier = [participant identifier];
  [(MRDRemoteControlGroupSession *)self approvePendingParticipant:identifier];
}

- (void)session:(id)session didReceiveRemoteRejectionForPendingParticipant:(id)participant from:(id)from
{
  identifier = [participant identifier];
  [(MRDRemoteControlGroupSession *)self denyPendingParticipant:identifier];
}

- (void)session:(id)session didReceiveRemoteRemoveRequestForParticipant:(id)participant from:(id)from
{
  participantCopy = participant;
  identifier = [participantCopy identifier];
  [(MRDRemoteControlGroupSession *)self revokeAutoApprovalForParticipant:identifier];

  identifier2 = [participantCopy identifier];

  [(MRDRemoteControlGroupSession *)self removeParticipant:identifier2];
}

- (void)session:(id)session didReceiveRemoteRemoveAllRequestFromParticipant:(id)participant
{
  [(MRDRemoteControlGroupSession *)self revokeAutoApprovalForAllParticipants:session];

  [(MRDRemoteControlGroupSession *)self removeAllParticipants];
}

@end