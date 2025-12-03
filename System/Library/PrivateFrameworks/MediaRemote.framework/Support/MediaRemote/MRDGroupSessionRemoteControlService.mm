@interface MRDGroupSessionRemoteControlService
- (MRDGroupSessionRemoteControlService)initWithGroupSessionManager:(id)manager delegate:(id)delegate;
- (MRDGroupSessionRemoteControlServiceDelegate)delegate;
- (void)dealloc;
- (void)manager:(id)manager didEndHostedGroupSession:(id)session;
- (void)manager:(id)manager didStartHostedGroupSession:(id)session;
- (void)session:(id)session didUpdateParticipants:(id)participants;
@end

@implementation MRDGroupSessionRemoteControlService

- (MRDGroupSessionRemoteControlService)initWithGroupSessionManager:(id)manager delegate:(id)delegate
{
  managerCopy = manager;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = MRDGroupSessionRemoteControlService;
  v8 = [(MRDGroupSessionRemoteControlService *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v8->_delegate, delegateCopy);
    v10 = +[NSMapTable weakToStrongObjectsMapTable];
    connections = v9->_connections;
    v9->_connections = v10;

    [managerCopy addObserver:v9];
    v12 = _MRLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionRemoteControlService] <%@> Initialized", buf, 0xCu);
    }
  }

  return v9;
}

- (void)dealloc
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionRemoteControlService] <%@> Dealloc", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MRDGroupSessionRemoteControlService;
  [(MRDGroupSessionRemoteControlService *)&v4 dealloc];
}

- (void)manager:(id)manager didStartHostedGroupSession:(id)session
{
  sessionCopy = session;
  connections = [(MRDGroupSessionRemoteControlService *)self connections];
  v6 = +[NSMapTable strongToStrongObjectsMapTable];
  [connections setObject:v6 forKey:sessionCopy];

  [sessionCopy addObserver:self];
}

- (void)manager:(id)manager didEndHostedGroupSession:(id)session
{
  sessionCopy = session;
  connections = [(MRDGroupSessionRemoteControlService *)self connections];
  [connections removeObjectForKey:sessionCopy];

  [sessionCopy removeObserver:self];
}

- (void)session:(id)session didUpdateParticipants:(id)participants
{
  sessionCopy = session;
  participantsCopy = participants;
  v8 = [participantsCopy msv_compactMap:&stru_1004BAC28];
  v54 = participantsCopy;
  v9 = [participantsCopy msv_compactMap:&stru_1004BAC48];
  v49 = v8;
  v10 = [NSMutableSet setWithArray:v8];
  v48 = v9;
  v11 = [NSMutableSet setWithArray:v9];
  leader = [sessionCopy leader];
  identifier = [leader identifier];
  [v10 removeObject:identifier];

  leader2 = [sessionCopy leader];
  identifier2 = [leader2 identifier];
  v46 = v11;
  [v11 removeObject:identifier2];

  connections = [(MRDGroupSessionRemoteControlService *)self connections];
  v17 = [connections objectForKey:sessionCopy];
  keyEnumerator = [v17 keyEnumerator];
  allObjects = [keyEnumerator allObjects];
  v20 = [NSMutableSet setWithArray:allObjects];

  v50 = [v10 mutableCopy];
  [v50 minusSet:v20];
  v45 = v20;
  v21 = [v20 mutableCopy];
  v47 = v10;
  [v21 minusSet:v10];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v21;
  v22 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v61;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v61 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v60 + 1) + 8 * i);
        v27 = _MRLogForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = v26;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionRemoteControlService] Disconnecting removed participant: %@", buf, 0xCu);
        }

        v28 = [[NSError alloc] initWithMRError:104 description:@"Participant removed"];
        connections2 = [(MRDGroupSessionRemoteControlService *)self connections];
        v30 = [connections2 objectForKey:sessionCopy];
        v31 = [v30 objectForKey:v26];
        [v31 closeWithError:v28];

        connections3 = [(MRDGroupSessionRemoteControlService *)self connections];
        v33 = [connections3 objectForKey:sessionCopy];
        [v33 removeObjectForKey:v26];
      }

      v23 = [obj countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v23);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v51 = v50;
  v34 = [v51 countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (v34)
  {
    v35 = v34;
    v53 = *v57;
    do
    {
      v36 = 0;
      do
      {
        if (*v57 != v53)
        {
          objc_enumerationMutation(v51);
        }

        v37 = *(*(&v56 + 1) + 8 * v36);
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_1000BD458;
        v55[3] = &unk_1004BAC70;
        v55[4] = v37;
        v38 = [v54 msv_firstWhere:v55];
        if (v38)
        {
          v39 = [MRDGroupSessionTransportConnection alloc];
          identifier3 = [v38 identifier];
          v41 = [(MRDGroupSessionTransportConnection *)v39 initWithGroupSession:sessionCopy participantIdentifier:identifier3];

          connections4 = [(MRDGroupSessionRemoteControlService *)self connections];
          v43 = [connections4 objectForKey:sessionCopy];
          [v43 setObject:v41 forKey:v37];

          delegate = [(MRDGroupSessionRemoteControlService *)self delegate];
          [delegate groupSessionRemoteControlService:self didAcceptConnection:v41];
        }

        else
        {
          v41 = _MRLogForCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v65 = v37;
            v66 = 2112;
            v67 = sessionCopy;
            _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "[MRDGroupSessionRemoteControlService] Could not find added participant with identifier: %@ on session: %@", buf, 0x16u);
          }
        }

        v36 = v36 + 1;
      }

      while (v35 != v36);
      v35 = [v51 countByEnumeratingWithState:&v56 objects:v68 count:16];
    }

    while (v35);
  }
}

- (MRDGroupSessionRemoteControlServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end