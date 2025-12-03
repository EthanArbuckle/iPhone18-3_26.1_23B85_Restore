@interface MRDPlaybackQueueParticipantDataSource
- (MRDPlaybackQueueParticipantDataSource)initWithDelegate:(id)delegate;
- (MRDPlaybackQueueParticipantDataSourceDelegate)delegate;
- (NSArray)participants;
- (id)donateAttribution:(id)attribution;
- (void)dealloc;
- (void)handleGroupSessionServerDidStartNotification:(id)notification;
- (void)handleMusicStateUpdateNotification:(id)notification;
- (void)loadFromStorage;
- (void)loadLocalIdentities;
- (void)manager:(id)manager didEndHostedGroupSession:(id)session;
- (void)manager:(id)manager didStartHostedGroupSession:(id)session;
- (void)rebuildParticipants;
- (void)rotatePepper;
- (void)saveToStorage;
- (void)updatePepperIfNeededWithSession:(id)session;
@end

@implementation MRDPlaybackQueueParticipantDataSource

- (void)loadFromStorage
{
  queue = [(MRDPlaybackQueueParticipantDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDPlaybackQueueParticipantDataSource] loadFromStorage.", buf, 2u);
  }

  storage = [(MRDPlaybackQueueParticipantDataSource *)self storage];
  v6 = [storage objectForKey:@"MRDPQPDS.PPR"];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      storage2 = [(MRDPlaybackQueueParticipantDataSource *)self storage];
      v8 = [storage2 objectForKey:@"MRDPQPDS.PED"];

      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 timeIntervalSinceNow];
          if (v9 > 60.0)
          {
            storage3 = [(MRDPlaybackQueueParticipantDataSource *)self storage];
            v39 = [storage3 objectForKey:@"MRDPQPDS.RPS"];

            if (v39)
            {
              v11 = objc_opt_class();
              v46 = 0;
              v38 = [NSKeyedUnarchiver unarchivedDictionaryWithKeysOfClass:v11 objectsOfClass:objc_opt_class() fromData:v39 error:&v46];
              v37 = v46;
              if ([v38 count])
              {
                v44 = 0u;
                v45 = 0u;
                v42 = 0u;
                v43 = 0u;
                v12 = v38;
                v13 = [v12 countByEnumeratingWithState:&v42 objects:v51 count:16];
                if (v13)
                {
                  v14 = *v43;
                  do
                  {
                    for (i = 0; i != v13; i = i + 1)
                    {
                      if (*v43 != v14)
                      {
                        objc_enumerationMutation(v12);
                      }

                      v16 = *(*(&v42 + 1) + 8 * i);
                      remoteIdentityMap = [(MRDPlaybackQueueParticipantDataSource *)self remoteIdentityMap];
                      v18 = [v12 objectForKeyedSubscript:v16];
                      [remoteIdentityMap setObject:v18 forKey:v16];
                    }

                    v13 = [v12 countByEnumeratingWithState:&v42 objects:v51 count:16];
                  }

                  while (v13);
                }

                v19 = _MRLogForCategory();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  v20 = [v12 count];
                  [v8 timeIntervalSinceNow];
                  *buf = 134218240;
                  v48 = v20;
                  v49 = 2048;
                  v50 = v21;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[MRDPlaybackQueueParticipantDataSource] Rehydrated %lu remote participants with remaining time %f.", buf, 0x16u);
                }

                [(MRDPlaybackQueueParticipantDataSource *)self setPepper:v6];
                [(MRDPlaybackQueueParticipantDataSource *)self setPepperExpirationDate:v8];
                objc_initWeak(buf, self);
                pepperExpirationDate = [(MRDPlaybackQueueParticipantDataSource *)self pepperExpirationDate];
                [pepperExpirationDate timeIntervalSinceNow];
                v24 = v23;
                queue2 = [(MRDPlaybackQueueParticipantDataSource *)self queue];
                v40[0] = _NSConcreteStackBlock;
                v40[1] = 3221225472;
                v40[2] = sub_100145990;
                v40[3] = &unk_1004B8280;
                objc_copyWeak(&v41, buf);
                v26 = [MSVTimer timerWithInterval:0 repeats:queue2 queue:v40 block:v24 + 1.0];
                [(MRDPlaybackQueueParticipantDataSource *)self setPepperExpirationTimer:v26];

                objc_destroyWeak(&v41);
                objc_destroyWeak(buf);
              }
            }
          }
        }
      }
    }
  }

  pepper = [(MRDPlaybackQueueParticipantDataSource *)self pepper];
  v28 = pepper == 0;

  if (v28)
  {
    v29 = _MRLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[MRDPlaybackQueueParticipantDataSource] Did not rehydrate.", buf, 2u);
    }

    storage4 = [(MRDPlaybackQueueParticipantDataSource *)self storage];
    [storage4 setObject:0 forKey:@"MRDPQPDS.RPS"];

    storage5 = [(MRDPlaybackQueueParticipantDataSource *)self storage];
    [storage5 setObject:0 forKey:@"MRDPQPDS.PED"];

    storage6 = [(MRDPlaybackQueueParticipantDataSource *)self storage];
    [storage6 setObject:0 forKey:@"MRDPQPDS.PPR"];
  }

  v33 = +[MRDMediaRemoteServer server];
  groupSessionServer = [v33 groupSessionServer];
  sessionManager = [groupSessionServer sessionManager];

  session = [sessionManager session];
  [(MRDPlaybackQueueParticipantDataSource *)self updatePepperIfNeededWithSession:session];
}

- (void)rotatePepper
{
  queue = [(MRDPlaybackQueueParticipantDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = MSVNanoIDCreateTaggedPointer();
  [(MRDPlaybackQueueParticipantDataSource *)self setPepper:v4];

  v5 = +[NSDate now];
  v6 = +[MRUserSettings currentSettings];
  [v6 groupSessionAttributionValidityDuration];
  v7 = [v5 dateByAddingTimeInterval:?];
  [(MRDPlaybackQueueParticipantDataSource *)self setPepperExpirationDate:v7];

  objc_initWeak(&location, self);
  pepperExpirationDate = [(MRDPlaybackQueueParticipantDataSource *)self pepperExpirationDate];
  [pepperExpirationDate timeIntervalSinceNow];
  v10 = v9;
  queue2 = [(MRDPlaybackQueueParticipantDataSource *)self queue];
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100145B08;
  v17 = &unk_1004B8280;
  objc_copyWeak(&v18, &location);
  v12 = [MSVTimer timerWithInterval:0 repeats:queue2 queue:&v14 block:v10 + 1.0];
  [(MRDPlaybackQueueParticipantDataSource *)self setPepperExpirationTimer:v12, v14, v15, v16, v17];

  remoteIdentityMap = [(MRDPlaybackQueueParticipantDataSource *)self remoteIdentityMap];
  [remoteIdentityMap removeAllObjects];

  [(MRDPlaybackQueueParticipantDataSource *)self saveToStorage];
  [(MRDPlaybackQueueParticipantDataSource *)self rebuildParticipants];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)saveToStorage
{
  queue = [(MRDPlaybackQueueParticipantDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteIdentityMap = [(MRDPlaybackQueueParticipantDataSource *)self remoteIdentityMap];
  dictionaryRepresentation = [remoteIdentityMap dictionaryRepresentation];

  v5 = [NSKeyedArchiver archivedDataWithRootObject:dictionaryRepresentation requiringSecureCoding:1 error:0];
  storage = [(MRDPlaybackQueueParticipantDataSource *)self storage];
  [storage setObject:v5 forKey:@"MRDPQPDS.RPS"];

  storage2 = [(MRDPlaybackQueueParticipantDataSource *)self storage];
  pepperExpirationDate = [(MRDPlaybackQueueParticipantDataSource *)self pepperExpirationDate];
  [storage2 setObject:pepperExpirationDate forKey:@"MRDPQPDS.PED"];

  storage3 = [(MRDPlaybackQueueParticipantDataSource *)self storage];
  pepper = [(MRDPlaybackQueueParticipantDataSource *)self pepper];
  [storage3 setObject:pepper forKey:@"MRDPQPDS.PPR"];
}

- (void)rebuildParticipants
{
  queue = [(MRDPlaybackQueueParticipantDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[NSMutableArray array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  localIdentityMap = [(MRDPlaybackQueueParticipantDataSource *)self localIdentityMap];
  keyEnumerator = [localIdentityMap keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  v8 = allObjects;
  v9 = [allObjects countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    do
    {
      v12 = 0;
      do
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v43 + 1) + 8 * v12);
        v14 = [MRPlaybackQueueParticipant alloc];
        localIdentityMap2 = [(MRDPlaybackQueueParticipantDataSource *)self localIdentityMap];
        v16 = [localIdentityMap2 objectForKey:v13];
        v17 = [v14 initWithIdentifier:v16 identity:v13];

        [v4 addObject:v17];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v10);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  remoteIdentityMap = [(MRDPlaybackQueueParticipantDataSource *)self remoteIdentityMap];
  keyEnumerator2 = [remoteIdentityMap keyEnumerator];
  allObjects2 = [keyEnumerator2 allObjects];

  v21 = [allObjects2 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v40;
    do
    {
      v24 = 0;
      do
      {
        if (*v40 != v23)
        {
          objc_enumerationMutation(allObjects2);
        }

        v25 = *(*(&v39 + 1) + 8 * v24);
        v26 = [MRPlaybackQueueParticipant alloc];
        remoteIdentityMap2 = [(MRDPlaybackQueueParticipantDataSource *)self remoteIdentityMap];
        v28 = [remoteIdentityMap2 objectForKey:v25];
        v29 = [v26 initWithIdentifier:v28 identity:v25];

        [v4 addObject:v29];
        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [allObjects2 countByEnumeratingWithState:&v39 objects:v50 count:16];
    }

    while (v22);
  }

  v30 = [[NSSortDescriptor alloc] initWithKey:@"identity.displayName" ascending:1 selector:"localizedStandardCompare:"];
  v49 = v30;
  v31 = [NSArray arrayWithObjects:&v49 count:1];
  [v4 sortUsingDescriptors:v31];

  if (![(NSArray *)self->_participants isEqualToArray:v4])
  {
    v32 = _MRLogForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v4;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[MRDPlaybackQueueParticipantDataSource] Updated participants: %@", buf, 0xCu);
    }

    v33 = [v4 copy];
    participants = self->_participants;
    self->_participants = v33;

    [(MRDPlaybackQueueParticipantDataSource *)self saveToStorage];
    delegateQueue = [(MRDPlaybackQueueParticipantDataSource *)self delegateQueue];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10014593C;
    v37[3] = &unk_1004B68F0;
    v37[4] = self;
    v38 = v33;
    v36 = v33;
    dispatch_async(delegateQueue, v37);
  }
}

- (void)loadLocalIdentities
{
  queue = [(MRDPlaybackQueueParticipantDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[MRDMusicUserStateCenter sharedCenter];
  localUserIdentities = [v4 localUserIdentities];

  localIdentityMap = [(MRDPlaybackQueueParticipantDataSource *)self localIdentityMap];
  [localIdentityMap removeAllObjects];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = localUserIdentities;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [MRPlaybackQueueParticipant expectedIdentifierForUserIdentity:v12 withRandomData:0, v15];
        localIdentityMap2 = [(MRDPlaybackQueueParticipantDataSource *)self localIdentityMap];
        [localIdentityMap2 setObject:v13 forKey:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [(MRDPlaybackQueueParticipantDataSource *)self rebuildParticipants];
}

- (NSArray)participants
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10003519C;
  v11 = sub_100035A84;
  v12 = 0;
  queue = [(MRDPlaybackQueueParticipantDataSource *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100016070;
  v6[3] = &unk_1004B6D30;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (MRDPlaybackQueueParticipantDataSource)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[MRUserSettings currentSettings];
  supportGroupSessionAttribution = [v5 supportGroupSessionAttribution];

  if (supportGroupSessionAttribution)
  {
    v33.receiver = self;
    v33.super_class = MRDPlaybackQueueParticipantDataSource;
    v7 = [(MRDPlaybackQueueParticipantDataSource *)&v33 init];
    v8 = v7;
    if (v7)
    {
      objc_storeWeak(&v7->_delegate, delegateCopy);
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = dispatch_queue_create("com.apple.amp.MediaRemote.MRDPlaybackQueueParticipantDataSource.queue", v9);
      queue = v8->_queue;
      v8->_queue = v10;

      v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v13 = sub_10000E9DC();
      v14 = dispatch_queue_create_with_target_V2("com.apple.amp.MediaRemote.MRDPlaybackQueueParticipantDataSource.delegateQueue", v12, v13);
      delegateQueue = v8->_delegateQueue;
      v8->_delegateQueue = v14;

      v16 = +[MRDSettings currentSettings];
      userDefaults = [v16 userDefaults];
      storage = v8->_storage;
      v8->_storage = userDefaults;

      v19 = +[NSMapTable strongToStrongObjectsMapTable];
      localIdentityMap = v8->_localIdentityMap;
      v8->_localIdentityMap = v19;

      v21 = +[NSMapTable strongToStrongObjectsMapTable];
      remoteIdentityMap = v8->_remoteIdentityMap;
      v8->_remoteIdentityMap = v21;

      participants = v8->_participants;
      v8->_participants = &__NSArray0__struct;

      v24 = +[NSDate distantPast];
      pepperExpirationDate = v8->_pepperExpirationDate;
      v8->_pepperExpirationDate = v24;

      queue = [(MRDPlaybackQueueParticipantDataSource *)v8 queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100145530;
      block[3] = &unk_1004B6D08;
      v32 = v8;
      dispatch_async(queue, block);
    }

    v27 = _MRLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[MRDPlaybackQueueParticipantDataSource] Initialized", &v30, 2u);
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDPlaybackQueueParticipantDataSource] Dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = MRDPlaybackQueueParticipantDataSource;
  [(MRDPlaybackQueueParticipantDataSource *)&v4 dealloc];
}

- (id)donateAttribution:(id)attribution
{
  attributionCopy = attribution;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10003519C;
  v16 = sub_100035A84;
  v17 = 0;
  queue = [(MRDPlaybackQueueParticipantDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100145800;
  block[3] = &unk_1004B7798;
  v10 = attributionCopy;
  v11 = &v12;
  block[4] = self;
  v6 = attributionCopy;
  dispatch_async_and_wait(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)updatePepperIfNeededWithSession:(id)session
{
  sessionCopy = session;
  queue = [(MRDPlaybackQueueParticipantDataSource *)self queue];
  dispatch_assert_queue_V2(queue);

  pepperExpirationDate = [(MRDPlaybackQueueParticipantDataSource *)self pepperExpirationDate];
  [pepperExpirationDate timeIntervalSinceNow];
  v8 = v7;

  isHosted = [sessionCopy isHosted];
  if (v8 < 0.0 && isHosted)
  {
    pepper = [(MRDPlaybackQueueParticipantDataSource *)self pepper];

    if (pepper)
    {
      return;
    }
  }

  else if (v8 >= 0.0)
  {
    return;
  }

  [(MRDPlaybackQueueParticipantDataSource *)self rotatePepper];
}

- (void)handleMusicStateUpdateNotification:(id)notification
{
  queue = [(MRDPlaybackQueueParticipantDataSource *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100145C38;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleGroupSessionServerDidStartNotification:(id)notification
{
  v4 = +[MRDMediaRemoteServer server];
  groupSessionServer = [v4 groupSessionServer];
  sessionManager = [groupSessionServer sessionManager];

  [sessionManager addObserver:self];
}

- (void)manager:(id)manager didStartHostedGroupSession:(id)session
{
  sessionCopy = session;
  queue = [(MRDPlaybackQueueParticipantDataSource *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100145D78;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = sessionCopy;
  v7 = sessionCopy;
  dispatch_async(queue, v8);
}

- (void)manager:(id)manager didEndHostedGroupSession:(id)session
{
  sessionCopy = session;
  queue = [(MRDPlaybackQueueParticipantDataSource *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100145E38;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = sessionCopy;
  v7 = sessionCopy;
  dispatch_async(queue, v8);
}

- (MRDPlaybackQueueParticipantDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end