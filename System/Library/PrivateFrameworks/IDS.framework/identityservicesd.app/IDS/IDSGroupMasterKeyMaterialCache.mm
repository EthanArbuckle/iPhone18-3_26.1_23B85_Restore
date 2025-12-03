@interface IDSGroupMasterKeyMaterialCache
- (BOOL)hasCachedMasterKeyIdentifier:(id)identifier;
- (BOOL)hasClientReceivedMasterKeyIdentifier:(id)identifier;
- (IDSGroupMasterKeyMaterialCache)initWithIdentifier:(id)identifier initialMembershipURIs:(id)is automaticResetInterval:(double)interval automaticResetBlock:(id)block queue:(id)queue;
- (id)_groupMasterKeyCollectionToBroadcastForDestinationURI:(id)i shouldIncludePeerKeys:(BOOL)keys;
- (id)cachedMasterKeyMaterialCollection;
- (id)debugDescription;
- (id)description;
- (id)remoteMasterKeyMaterialCollectionToSend;
- (id)sampleMkMCollectionToBroadcast:(id)broadcast;
- (void)_startAutomaticCacheResetTimerIfNeeded;
- (void)cleanUpMasterKeyMaterialUsingPredicate:(id)predicate;
- (void)noteClientReceiptOfMasterKeyIdentifier:(id)identifier;
- (void)noteReceivedFirstKeyMaterial:(id)material forRemoteParticipant:(unint64_t)participant;
- (void)noteReceivedGroupMasterKeyMaterialCollection:(id)collection;
- (void)resetCacheWithNewMembershipURIs:(id)is;
- (void)resetClientMasterKeyIdentifierReceipts;
- (void)resetRemoteMasterKeyMaterialCacheAndCancelResetInterval;
- (void)updateLastRatchetedKeyMaterial:(id)material forRemoteParticipant:(unint64_t)participant;
@end

@implementation IDSGroupMasterKeyMaterialCache

- (IDSGroupMasterKeyMaterialCache)initWithIdentifier:(id)identifier initialMembershipURIs:(id)is automaticResetInterval:(double)interval automaticResetBlock:(id)block queue:(id)queue
{
  identifierCopy = identifier;
  isCopy = is;
  blockCopy = block;
  queueCopy = queue;
  v42.receiver = self;
  v42.super_class = IDSGroupMasterKeyMaterialCache;
  v17 = [(IDSGroupMasterKeyMaterialCache *)&v42 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_20;
  }

  objc_storeStrong(&v17->_identifier, identifier);
  objc_storeStrong(&v18->_queue, queue);
  v18->_automaticResetInterval = interval;
  v19 = objc_retainBlock(blockCopy);
  automaticResetBlock = v18->_automaticResetBlock;
  v18->_automaticResetBlock = v19;

  v21 = objc_alloc_init(NSSet);
  masterKeyMaterials = v18->_masterKeyMaterials;
  v18->_masterKeyMaterials = v21;

  if (isCopy)
  {
    v23 = isCopy;
  }

  else
  {
    v23 = objc_alloc_init(NSSet);
  }

  membershipURIs = v18->_membershipURIs;
  v18->_membershipURIs = v23;

  v25 = objc_alloc_init(NSSet);
  masterKeyIdentifiersReceivedByClient = v18->_masterKeyIdentifiersReceivedByClient;
  v18->_masterKeyIdentifiersReceivedByClient = v25;

  v27 = objc_alloc_init(NSMutableDictionary);
  remoteParticipantIDToKeyMaterial = v18->_remoteParticipantIDToKeyMaterial;
  v18->_remoteParticipantIDToKeyMaterial = v27;

  v29 = +[FTDeviceSupport sharedInstance];
  slowCPUDevice = [v29 slowCPUDevice];

  v31 = @"ids-groupMKMCache-number-of-broadcast-cache-mkm";
  if (slowCPUDevice)
  {
    v31 = @"ids-groupMKMCache-number-of-broadcast-cache-mkm-slow-cpu";
  }

  v32 = v31;
  v33 = +[IDSServerBag sharedInstance];
  v34 = [v33 objectForKey:v32];

  if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v18->_numberOfBroadcastCacheMKM = [v34 unsignedIntValue];
    v35 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      numberOfBroadcastCacheMKM = v18->_numberOfBroadcastCacheMKM;
      *buf = 138412546;
      v44 = v32;
      v45 = 1024;
      v46 = numberOfBroadcastCacheMKM;
      v37 = "Got number of broadcast cache MKM bag value {key: %@, value: %u}";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v37, buf, 0x12u);
    }
  }

  else
  {
    if (slowCPUDevice)
    {
      v38 = 10;
    }

    else
    {
      v38 = 64;
    }

    v18->_numberOfBroadcastCacheMKM = v38;
    v35 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v18->_numberOfBroadcastCacheMKM;
      *buf = 138412546;
      v44 = v32;
      v45 = 1024;
      v46 = v39;
      v37 = "Couldn't get broadcast cache MKM bag value, using default value {key used: %@, value: %u}";
      goto LABEL_16;
    }
  }

  v40 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v18;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Created group MkM cache { self: %@ }", buf, 0xCu);
  }

LABEL_20:
  return v18;
}

- (void)resetCacheWithNewMembershipURIs:(id)is
{
  isCopy = is;
  v5 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resetting group MkM cache { self: %@ }", &v8, 0xCu);
  }

  [(IDSGroupMasterKeyMaterialCache *)self setCurrentLocalMasterKeyMaterial:0];
  if (isCopy)
  {
    [(IDSGroupMasterKeyMaterialCache *)self setMembershipURIs:isCopy];
  }

  else
  {
    v6 = objc_alloc_init(NSSet);
    [(IDSGroupMasterKeyMaterialCache *)self setMembershipURIs:v6];
  }

  v7 = objc_alloc_init(NSSet);
  [(IDSGroupMasterKeyMaterialCache *)self setMasterKeyMaterials:v7];
}

- (void)resetRemoteMasterKeyMaterialCacheAndCancelResetInterval
{
  v3 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting remote MkM cache { self: %@ }", &v5, 0xCu);
  }

  v4 = objc_alloc_init(NSSet);
  [(IDSGroupMasterKeyMaterialCache *)self setMasterKeyMaterials:v4];

  [(IDSGroupMasterKeyMaterialCache *)self setInFlightResetBlock:0];
}

- (void)cleanUpMasterKeyMaterialUsingPredicate:(id)predicate
{
  predicateCopy = predicate;
  masterKeyMaterials = [(IDSGroupMasterKeyMaterialCache *)self masterKeyMaterials];
  v5 = [masterKeyMaterials filteredSetUsingPredicate:predicateCopy];

  [(IDSGroupMasterKeyMaterialCache *)self setMasterKeyMaterials:v5];
}

- (void)noteReceivedGroupMasterKeyMaterialCollection:(id)collection
{
  collectionCopy = collection;
  v4 = objc_alloc_init(NSMutableDictionary);
  v43 = objc_alloc_init(NSMutableSet);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  selfCopy = self;
  masterKeyMaterials = [(IDSGroupMasterKeyMaterialCache *)self masterKeyMaterials];
  v6 = [masterKeyMaterials countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v53;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(masterKeyMaterials);
        }

        v10 = *(*(&v52 + 1) + 8 * i);
        if ([v10 participantID])
        {
          v11 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 participantID]);
          v12 = [v4 objectForKeyedSubscript:v11];

          if (v12)
          {
            [v12 addObject:v10];
          }

          else
          {
            v12 = objc_alloc_init(NSMutableArray);
            [v12 addObject:v10];
            v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 participantID]);
            [v4 setObject:v12 forKey:v13];
          }
        }

        else
        {
          [v43 addObject:v10];
        }
      }

      v7 = [masterKeyMaterials countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v7);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  masterKeyMaterials2 = [collectionCopy masterKeyMaterials];
  v15 = [masterKeyMaterials2 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v49;
    v42 = masterKeyMaterials2;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(masterKeyMaterials2);
        }

        v19 = *(*(&v48 + 1) + 8 * j);
        if (![v19 participantID])
        {
          [v43 addObject:v19];
          continue;
        }

        v20 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v19 participantID]);
        v21 = [v4 objectForKeyedSubscript:v20];

        if (!v21)
        {
          v21 = objc_alloc_init(NSMutableArray);
          [v21 addObject:v19];
          v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v19 participantID]);
          [v4 setObject:v21 forKey:v23];
          goto LABEL_25;
        }

        v22 = [v21 count];
        [v21 addObject:v19];
        if (v22 != 1)
        {
          v23 = [v21 sortedArrayUsingSelector:"compare:"];
          v24 = objc_alloc_init(NSMutableArray);
          v25 = [v23 objectAtIndexedSubscript:{objc_msgSend(v23, "count") - 2}];
          [v24 addObject:v25];

          v26 = [v23 objectAtIndexedSubscript:{objc_msgSend(v23, "count") - 1}];
          [v24 addObject:v26];

          v27 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v19 participantID]);
          [v4 setObject:v24 forKey:v27];

          masterKeyMaterials2 = v42;
LABEL_25:
        }
      }

      v16 = [masterKeyMaterials2 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v16);
  }

  v28 = objc_alloc_init(NSMutableArray);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  allValues = [v4 allValues];
  v30 = [allValues countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v45;
    do
    {
      for (k = 0; k != v31; k = k + 1)
      {
        if (*v45 != v32)
        {
          objc_enumerationMutation(allValues);
        }

        [v28 addObjectsFromArray:*(*(&v44 + 1) + 8 * k)];
      }

      v31 = [allValues countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v31);
  }

  v34 = [v43 setByAddingObjectsFromArray:v28];
  [(IDSGroupMasterKeyMaterialCache *)selfCopy setMasterKeyMaterials:v34];

  membershipURIs = [(IDSGroupMasterKeyMaterialCache *)selfCopy membershipURIs];
  membershipURIs2 = [collectionCopy membershipURIs];
  v37 = [membershipURIs isSubsetOfSet:membershipURIs2];

  if (v37)
  {
    membershipURIs3 = [collectionCopy membershipURIs];
    [(IDSGroupMasterKeyMaterialCache *)selfCopy setMembershipURIs:membershipURIs3];
  }

  v39 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v57 = selfCopy;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Noted received MkM collection in MkM cache { self: %@ }", buf, 0xCu);
  }

  [(IDSGroupMasterKeyMaterialCache *)selfCopy _startAutomaticCacheResetTimerIfNeeded];
}

- (id)sampleMkMCollectionToBroadcast:(id)broadcast
{
  broadcastCopy = broadcast;
  v5 = broadcastCopy;
  if ([broadcastCopy count] > self->_numberOfBroadcastCacheMKM)
  {
    v6 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [broadcastCopy count];
      numberOfBroadcastCacheMKM = self->_numberOfBroadcastCacheMKM;
      v11 = 134218240;
      v12 = v7;
      v13 = 1024;
      v14 = numberOfBroadcastCacheMKM;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Number of peer MkM to broadcast is over maximum permitted value -- introducing sampling { cachedCount: %lu, maximumCountToBroadcast: %u }", &v11, 0x12u);
    }

    v9 = [broadcastCopy mutableCopy];
    [v9 __imRandomizeArray];
    v5 = [v9 subarrayWithRange:{0, self->_numberOfBroadcastCacheMKM}];
  }

  return v5;
}

- (id)_groupMasterKeyCollectionToBroadcastForDestinationURI:(id)i shouldIncludePeerKeys:(BOOL)keys
{
  keysCopy = keys;
  iCopy = i;
  v7 = objc_alloc_init(NSMutableSet);
  nextLocalMasterKeyMaterial = [(IDSGroupMasterKeyMaterialCache *)self nextLocalMasterKeyMaterial];

  if (nextLocalMasterKeyMaterial)
  {
    v9 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10091FA80(self);
    }

    nextLocalMasterKeyMaterial2 = [(IDSGroupMasterKeyMaterialCache *)self nextLocalMasterKeyMaterial];
    [v7 addObject:nextLocalMasterKeyMaterial2];
  }

  tokenFreeURI = [iCopy tokenFreeURI];
  if (keysCopy)
  {
    masterKeyMaterials = [(IDSGroupMasterKeyMaterialCache *)self masterKeyMaterials];
    if ([masterKeyMaterials count])
    {
      membershipURIs = [(IDSGroupMasterKeyMaterialCache *)self membershipURIs];
      if ([membershipURIs containsObject:iCopy])
      {
      }

      else
      {
        membershipURIs2 = [(IDSGroupMasterKeyMaterialCache *)self membershipURIs];
        v15 = [membershipURIs2 containsObject:tokenFreeURI];

        if (!v15)
        {
          goto LABEL_14;
        }
      }

      v16 = +[IDSFoundationLog RealTimeEncryptionController];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        sub_10091FB10(self);
      }

      masterKeyMaterials2 = [(IDSGroupMasterKeyMaterialCache *)self masterKeyMaterials];
      allObjects = [masterKeyMaterials2 allObjects];
      masterKeyMaterials = [(IDSGroupMasterKeyMaterialCache *)self sampleMkMCollectionToBroadcast:allObjects];

      [v7 addObjectsFromArray:masterKeyMaterials];
    }
  }

LABEL_14:
  v19 = [IDSGroupMasterKeyMaterialCollection alloc];
  allObjects2 = [v7 allObjects];
  membershipURIs3 = [(IDSGroupMasterKeyMaterialCache *)self membershipURIs];
  v22 = [(IDSGroupMasterKeyMaterialCollection *)v19 initWithMasterKeyMaterials:allObjects2 membershipURIs:membershipURIs3];

  [(IDSGroupMasterKeyMaterialCollection *)v22 description];
  v27 = v26 = iCopy;
  v23 = v27;
  v24 = iCopy;
  cut_dispatch_log_queue();

  return v22;
}

- (id)cachedMasterKeyMaterialCollection
{
  masterKeyMaterials = [(IDSGroupMasterKeyMaterialCache *)self masterKeyMaterials];
  v4 = [NSMutableSet setWithSet:masterKeyMaterials];

  currentLocalMasterKeyMaterial = [(IDSGroupMasterKeyMaterialCache *)self currentLocalMasterKeyMaterial];

  if (currentLocalMasterKeyMaterial)
  {
    currentLocalMasterKeyMaterial2 = [(IDSGroupMasterKeyMaterialCache *)self currentLocalMasterKeyMaterial];
    [v4 addObject:currentLocalMasterKeyMaterial2];
  }

  nextLocalMasterKeyMaterial = [(IDSGroupMasterKeyMaterialCache *)self nextLocalMasterKeyMaterial];

  if (nextLocalMasterKeyMaterial)
  {
    nextLocalMasterKeyMaterial2 = [(IDSGroupMasterKeyMaterialCache *)self nextLocalMasterKeyMaterial];
    [v4 addObject:nextLocalMasterKeyMaterial2];
  }

  v9 = [IDSGroupMasterKeyMaterialCollection alloc];
  allObjects = [v4 allObjects];
  membershipURIs = [(IDSGroupMasterKeyMaterialCache *)self membershipURIs];
  v12 = [(IDSGroupMasterKeyMaterialCollection *)v9 initWithMasterKeyMaterials:allObjects membershipURIs:membershipURIs];

  return v12;
}

- (id)remoteMasterKeyMaterialCollectionToSend
{
  remoteParticipantIDToKeyMaterial = [(IDSGroupMasterKeyMaterialCache *)self remoteParticipantIDToKeyMaterial];
  allValues = [remoteParticipantIDToKeyMaterial allValues];
  v5 = [NSMutableSet setWithArray:allValues];

  v6 = [IDSGroupMasterKeyMaterialCollection alloc];
  allObjects = [v5 allObjects];
  membershipURIs = [(IDSGroupMasterKeyMaterialCache *)self membershipURIs];
  v9 = [(IDSGroupMasterKeyMaterialCollection *)v6 initWithMasterKeyMaterials:allObjects membershipURIs:membershipURIs];

  return v9;
}

- (BOOL)hasCachedMasterKeyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentLocalMasterKeyMaterial = [(IDSGroupMasterKeyMaterialCache *)self currentLocalMasterKeyMaterial];
  keyIndex = [currentLocalMasterKeyMaterial keyIndex];
  uUIDString = [keyIndex UUIDString];
  v8 = [identifierCopy isEqualToString:uUIDString];

  if (v8 & 1) != 0 || (-[IDSGroupMasterKeyMaterialCache nextLocalMasterKeyMaterial](self, "nextLocalMasterKeyMaterial"), v9 = objc_claimAutoreleasedReturnValue(), [v9 keyIndex], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "UUIDString"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(identifierCopy, "isEqualToString:", v11), v11, v10, v9, (v12))
  {
    v13 = 1;
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    masterKeyMaterials = [(IDSGroupMasterKeyMaterialCache *)self masterKeyMaterials];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100454580;
    v16[3] = &unk_100BDCB30;
    v17 = identifierCopy;
    v18 = &v19;
    [masterKeyMaterials enumerateObjectsUsingBlock:v16];

    v13 = *(v20 + 24);
    _Block_object_dispose(&v19, 8);
  }

  return v13 & 1;
}

- (void)_startAutomaticCacheResetTimerIfNeeded
{
  v3 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    [(IDSGroupMasterKeyMaterialCache *)self automaticResetInterval];
    v5 = v4;
    inFlightResetBlock = [(IDSGroupMasterKeyMaterialCache *)self inFlightResetBlock];
    v7 = objc_retainBlock(inFlightResetBlock);
    *buf = 138412802;
    selfCopy = self;
    v18 = 2048;
    v19 = v5;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting automatic cache reset timer if needed { self: %@, resetInterval: %f, inFlightResetBlock: %@ }", buf, 0x20u);
  }

  inFlightResetBlock2 = [(IDSGroupMasterKeyMaterialCache *)self inFlightResetBlock];
  if (inFlightResetBlock2)
  {
  }

  else
  {
    [(IDSGroupMasterKeyMaterialCache *)self automaticResetInterval];
    if (v9 > 0.0)
    {
      objc_initWeak(buf, self);
      [(IDSGroupMasterKeyMaterialCache *)self automaticResetInterval];
      v11 = dispatch_walltime(0, (v10 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10045482C;
      block[3] = &unk_100BD9D38;
      objc_copyWeak(&v15, buf);
      v12 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      [(IDSGroupMasterKeyMaterialCache *)self setInFlightResetBlock:v12];
      queue = [(IDSGroupMasterKeyMaterialCache *)self queue];
      dispatch_after(v11, queue, v12);

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }
}

- (void)noteClientReceiptOfMasterKeyIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    masterKeyIdentifiersReceivedByClient = [(IDSGroupMasterKeyMaterialCache *)self masterKeyIdentifiersReceivedByClient];
    v5 = [masterKeyIdentifiersReceivedByClient setByAddingObject:identifierCopy];

    [(IDSGroupMasterKeyMaterialCache *)self setMasterKeyIdentifiersReceivedByClient:v5];
  }
}

- (BOOL)hasClientReceivedMasterKeyIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  identifierCopy = identifier;
  masterKeyIdentifiersReceivedByClient = [(IDSGroupMasterKeyMaterialCache *)self masterKeyIdentifiersReceivedByClient];
  v6 = [masterKeyIdentifiersReceivedByClient containsObject:identifierCopy];

  return v6;
}

- (void)resetClientMasterKeyIdentifierReceipts
{
  v3 = objc_alloc_init(NSSet);
  [(IDSGroupMasterKeyMaterialCache *)self setMasterKeyIdentifiersReceivedByClient:v3];
}

- (void)noteReceivedFirstKeyMaterial:(id)material forRemoteParticipant:(unint64_t)participant
{
  materialCopy = material;
  remoteParticipantIDToKeyMaterial = [(IDSGroupMasterKeyMaterialCache *)self remoteParticipantIDToKeyMaterial];
  v8 = [NSNumber numberWithUnsignedLongLong:participant];
  v9 = [remoteParticipantIDToKeyMaterial objectForKey:v8];

  if (v9 || ([materialCopy isGeneratedLocally] & 1) != 0)
  {
    remoteParticipantIDToKeyMaterial2 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(remoteParticipantIDToKeyMaterial2, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = materialCopy;
      _os_log_impl(&_mh_execute_header, remoteParticipantIDToKeyMaterial2, OS_LOG_TYPE_DEFAULT, "Already noted first key material for remote participant: %@ - ignoring", &v13, 0xCu);
    }
  }

  else
  {
    v11 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = materialCopy;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Noting first key material for remote participant: %@", &v13, 0xCu);
    }

    remoteParticipantIDToKeyMaterial2 = [(IDSGroupMasterKeyMaterialCache *)self remoteParticipantIDToKeyMaterial];
    v12 = [NSNumber numberWithUnsignedLongLong:participant];
    [remoteParticipantIDToKeyMaterial2 setObject:materialCopy forKey:v12];
  }
}

- (void)updateLastRatchetedKeyMaterial:(id)material forRemoteParticipant:(unint64_t)participant
{
  materialCopy = material;
  remoteParticipantIDToKeyMaterial = [(IDSGroupMasterKeyMaterialCache *)self remoteParticipantIDToKeyMaterial];
  v7 = [NSNumber numberWithUnsignedLongLong:participant];
  [remoteParticipantIDToKeyMaterial setObject:materialCopy forKey:v7];
}

- (id)description
{
  v3 = objc_opt_class();
  identifier = [(IDSGroupMasterKeyMaterialCache *)self identifier];
  currentLocalMasterKeyMaterial = [(IDSGroupMasterKeyMaterialCache *)self currentLocalMasterKeyMaterial];
  nextLocalMasterKeyMaterial = [(IDSGroupMasterKeyMaterialCache *)self nextLocalMasterKeyMaterial];
  membershipURIs = [(IDSGroupMasterKeyMaterialCache *)self membershipURIs];
  masterKeyMaterials = [(IDSGroupMasterKeyMaterialCache *)self masterKeyMaterials];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p identifier: %@, currentLocalMkM: %@, nextLocalMkM: %@, URIs: %@, MkMsCount: %lu>", v3, self, identifier, currentLocalMasterKeyMaterial, nextLocalMasterKeyMaterial, membershipURIs, [masterKeyMaterials count]);

  return v9;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  identifier = [(IDSGroupMasterKeyMaterialCache *)self identifier];
  currentLocalMasterKeyMaterial = [(IDSGroupMasterKeyMaterialCache *)self currentLocalMasterKeyMaterial];
  nextLocalMasterKeyMaterial = [(IDSGroupMasterKeyMaterialCache *)self nextLocalMasterKeyMaterial];
  membershipURIs = [(IDSGroupMasterKeyMaterialCache *)self membershipURIs];
  masterKeyMaterials = [(IDSGroupMasterKeyMaterialCache *)self masterKeyMaterials];
  v9 = [NSString stringWithFormat:@"<%@: %p identifier: %@, currentLocalMkM: %@, nextLocalMkM: %@, URIs: %@, MkMs: %@>", v3, self, identifier, currentLocalMasterKeyMaterial, nextLocalMasterKeyMaterial, membershipURIs, masterKeyMaterials];

  return v9;
}

@end