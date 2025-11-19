@interface IDSGroupMasterKeyMaterialCache
- (BOOL)hasCachedMasterKeyIdentifier:(id)a3;
- (BOOL)hasClientReceivedMasterKeyIdentifier:(id)a3;
- (IDSGroupMasterKeyMaterialCache)initWithIdentifier:(id)a3 initialMembershipURIs:(id)a4 automaticResetInterval:(double)a5 automaticResetBlock:(id)a6 queue:(id)a7;
- (id)_groupMasterKeyCollectionToBroadcastForDestinationURI:(id)a3 shouldIncludePeerKeys:(BOOL)a4;
- (id)cachedMasterKeyMaterialCollection;
- (id)debugDescription;
- (id)description;
- (id)remoteMasterKeyMaterialCollectionToSend;
- (id)sampleMkMCollectionToBroadcast:(id)a3;
- (void)_startAutomaticCacheResetTimerIfNeeded;
- (void)cleanUpMasterKeyMaterialUsingPredicate:(id)a3;
- (void)noteClientReceiptOfMasterKeyIdentifier:(id)a3;
- (void)noteReceivedFirstKeyMaterial:(id)a3 forRemoteParticipant:(unint64_t)a4;
- (void)noteReceivedGroupMasterKeyMaterialCollection:(id)a3;
- (void)resetCacheWithNewMembershipURIs:(id)a3;
- (void)resetClientMasterKeyIdentifierReceipts;
- (void)resetRemoteMasterKeyMaterialCacheAndCancelResetInterval;
- (void)updateLastRatchetedKeyMaterial:(id)a3 forRemoteParticipant:(unint64_t)a4;
@end

@implementation IDSGroupMasterKeyMaterialCache

- (IDSGroupMasterKeyMaterialCache)initWithIdentifier:(id)a3 initialMembershipURIs:(id)a4 automaticResetInterval:(double)a5 automaticResetBlock:(id)a6 queue:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v42.receiver = self;
  v42.super_class = IDSGroupMasterKeyMaterialCache;
  v17 = [(IDSGroupMasterKeyMaterialCache *)&v42 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_20;
  }

  objc_storeStrong(&v17->_identifier, a3);
  objc_storeStrong(&v18->_queue, a7);
  v18->_automaticResetInterval = a5;
  v19 = objc_retainBlock(v15);
  automaticResetBlock = v18->_automaticResetBlock;
  v18->_automaticResetBlock = v19;

  v21 = objc_alloc_init(NSSet);
  masterKeyMaterials = v18->_masterKeyMaterials;
  v18->_masterKeyMaterials = v21;

  if (v14)
  {
    v23 = v14;
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
  v30 = [v29 slowCPUDevice];

  v31 = @"ids-groupMKMCache-number-of-broadcast-cache-mkm";
  if (v30)
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
    if (v30)
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

- (void)resetCacheWithNewMembershipURIs:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resetting group MkM cache { self: %@ }", &v8, 0xCu);
  }

  [(IDSGroupMasterKeyMaterialCache *)self setCurrentLocalMasterKeyMaterial:0];
  if (v4)
  {
    [(IDSGroupMasterKeyMaterialCache *)self setMembershipURIs:v4];
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
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting remote MkM cache { self: %@ }", &v5, 0xCu);
  }

  v4 = objc_alloc_init(NSSet);
  [(IDSGroupMasterKeyMaterialCache *)self setMasterKeyMaterials:v4];

  [(IDSGroupMasterKeyMaterialCache *)self setInFlightResetBlock:0];
}

- (void)cleanUpMasterKeyMaterialUsingPredicate:(id)a3
{
  v4 = a3;
  v6 = [(IDSGroupMasterKeyMaterialCache *)self masterKeyMaterials];
  v5 = [v6 filteredSetUsingPredicate:v4];

  [(IDSGroupMasterKeyMaterialCache *)self setMasterKeyMaterials:v5];
}

- (void)noteReceivedGroupMasterKeyMaterialCollection:(id)a3
{
  v41 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v43 = objc_alloc_init(NSMutableSet);
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v40 = self;
  v5 = [(IDSGroupMasterKeyMaterialCache *)self masterKeyMaterials];
  v6 = [v5 countByEnumeratingWithState:&v52 objects:v60 count:16];
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
          objc_enumerationMutation(v5);
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

      v7 = [v5 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v7);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = [v41 masterKeyMaterials];
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v49;
    v42 = v14;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v14);
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

          v14 = v42;
LABEL_25:
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v16);
  }

  v28 = objc_alloc_init(NSMutableArray);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v29 = [v4 allValues];
  v30 = [v29 countByEnumeratingWithState:&v44 objects:v58 count:16];
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
          objc_enumerationMutation(v29);
        }

        [v28 addObjectsFromArray:*(*(&v44 + 1) + 8 * k)];
      }

      v31 = [v29 countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v31);
  }

  v34 = [v43 setByAddingObjectsFromArray:v28];
  [(IDSGroupMasterKeyMaterialCache *)v40 setMasterKeyMaterials:v34];

  v35 = [(IDSGroupMasterKeyMaterialCache *)v40 membershipURIs];
  v36 = [v41 membershipURIs];
  v37 = [v35 isSubsetOfSet:v36];

  if (v37)
  {
    v38 = [v41 membershipURIs];
    [(IDSGroupMasterKeyMaterialCache *)v40 setMembershipURIs:v38];
  }

  v39 = +[IDSFoundationLog RealTimeEncryptionController];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v57 = v40;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Noted received MkM collection in MkM cache { self: %@ }", buf, 0xCu);
  }

  [(IDSGroupMasterKeyMaterialCache *)v40 _startAutomaticCacheResetTimerIfNeeded];
}

- (id)sampleMkMCollectionToBroadcast:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ([v4 count] > self->_numberOfBroadcastCacheMKM)
  {
    v6 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 count];
      numberOfBroadcastCacheMKM = self->_numberOfBroadcastCacheMKM;
      v11 = 134218240;
      v12 = v7;
      v13 = 1024;
      v14 = numberOfBroadcastCacheMKM;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Number of peer MkM to broadcast is over maximum permitted value -- introducing sampling { cachedCount: %lu, maximumCountToBroadcast: %u }", &v11, 0x12u);
    }

    v9 = [v4 mutableCopy];
    [v9 __imRandomizeArray];
    v5 = [v9 subarrayWithRange:{0, self->_numberOfBroadcastCacheMKM}];
  }

  return v5;
}

- (id)_groupMasterKeyCollectionToBroadcastForDestinationURI:(id)a3 shouldIncludePeerKeys:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableSet);
  v8 = [(IDSGroupMasterKeyMaterialCache *)self nextLocalMasterKeyMaterial];

  if (v8)
  {
    v9 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10091FA80(self);
    }

    v10 = [(IDSGroupMasterKeyMaterialCache *)self nextLocalMasterKeyMaterial];
    [v7 addObject:v10];
  }

  v11 = [v6 tokenFreeURI];
  if (v4)
  {
    v12 = [(IDSGroupMasterKeyMaterialCache *)self masterKeyMaterials];
    if ([v12 count])
    {
      v13 = [(IDSGroupMasterKeyMaterialCache *)self membershipURIs];
      if ([v13 containsObject:v6])
      {
      }

      else
      {
        v14 = [(IDSGroupMasterKeyMaterialCache *)self membershipURIs];
        v15 = [v14 containsObject:v11];

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

      v17 = [(IDSGroupMasterKeyMaterialCache *)self masterKeyMaterials];
      v18 = [v17 allObjects];
      v12 = [(IDSGroupMasterKeyMaterialCache *)self sampleMkMCollectionToBroadcast:v18];

      [v7 addObjectsFromArray:v12];
    }
  }

LABEL_14:
  v19 = [IDSGroupMasterKeyMaterialCollection alloc];
  v20 = [v7 allObjects];
  v21 = [(IDSGroupMasterKeyMaterialCache *)self membershipURIs];
  v22 = [(IDSGroupMasterKeyMaterialCollection *)v19 initWithMasterKeyMaterials:v20 membershipURIs:v21];

  [(IDSGroupMasterKeyMaterialCollection *)v22 description];
  v27 = v26 = v6;
  v23 = v27;
  v24 = v6;
  cut_dispatch_log_queue();

  return v22;
}

- (id)cachedMasterKeyMaterialCollection
{
  v3 = [(IDSGroupMasterKeyMaterialCache *)self masterKeyMaterials];
  v4 = [NSMutableSet setWithSet:v3];

  v5 = [(IDSGroupMasterKeyMaterialCache *)self currentLocalMasterKeyMaterial];

  if (v5)
  {
    v6 = [(IDSGroupMasterKeyMaterialCache *)self currentLocalMasterKeyMaterial];
    [v4 addObject:v6];
  }

  v7 = [(IDSGroupMasterKeyMaterialCache *)self nextLocalMasterKeyMaterial];

  if (v7)
  {
    v8 = [(IDSGroupMasterKeyMaterialCache *)self nextLocalMasterKeyMaterial];
    [v4 addObject:v8];
  }

  v9 = [IDSGroupMasterKeyMaterialCollection alloc];
  v10 = [v4 allObjects];
  v11 = [(IDSGroupMasterKeyMaterialCache *)self membershipURIs];
  v12 = [(IDSGroupMasterKeyMaterialCollection *)v9 initWithMasterKeyMaterials:v10 membershipURIs:v11];

  return v12;
}

- (id)remoteMasterKeyMaterialCollectionToSend
{
  v3 = [(IDSGroupMasterKeyMaterialCache *)self remoteParticipantIDToKeyMaterial];
  v4 = [v3 allValues];
  v5 = [NSMutableSet setWithArray:v4];

  v6 = [IDSGroupMasterKeyMaterialCollection alloc];
  v7 = [v5 allObjects];
  v8 = [(IDSGroupMasterKeyMaterialCache *)self membershipURIs];
  v9 = [(IDSGroupMasterKeyMaterialCollection *)v6 initWithMasterKeyMaterials:v7 membershipURIs:v8];

  return v9;
}

- (BOOL)hasCachedMasterKeyIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(IDSGroupMasterKeyMaterialCache *)self currentLocalMasterKeyMaterial];
  v6 = [v5 keyIndex];
  v7 = [v6 UUIDString];
  v8 = [v4 isEqualToString:v7];

  if (v8 & 1) != 0 || (-[IDSGroupMasterKeyMaterialCache nextLocalMasterKeyMaterial](self, "nextLocalMasterKeyMaterial"), v9 = objc_claimAutoreleasedReturnValue(), [v9 keyIndex], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "UUIDString"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v4, "isEqualToString:", v11), v11, v10, v9, (v12))
  {
    v13 = 1;
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v14 = [(IDSGroupMasterKeyMaterialCache *)self masterKeyMaterials];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100454580;
    v16[3] = &unk_100BDCB30;
    v17 = v4;
    v18 = &v19;
    [v14 enumerateObjectsUsingBlock:v16];

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
    v6 = [(IDSGroupMasterKeyMaterialCache *)self inFlightResetBlock];
    v7 = objc_retainBlock(v6);
    *buf = 138412802;
    v17 = self;
    v18 = 2048;
    v19 = v5;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting automatic cache reset timer if needed { self: %@, resetInterval: %f, inFlightResetBlock: %@ }", buf, 0x20u);
  }

  v8 = [(IDSGroupMasterKeyMaterialCache *)self inFlightResetBlock];
  if (v8)
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
      v13 = [(IDSGroupMasterKeyMaterialCache *)self queue];
      dispatch_after(v11, v13, v12);

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }
}

- (void)noteClientReceiptOfMasterKeyIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(IDSGroupMasterKeyMaterialCache *)self masterKeyIdentifiersReceivedByClient];
    v5 = [v6 setByAddingObject:v4];

    [(IDSGroupMasterKeyMaterialCache *)self setMasterKeyIdentifiersReceivedByClient:v5];
  }
}

- (BOOL)hasClientReceivedMasterKeyIdentifier:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(IDSGroupMasterKeyMaterialCache *)self masterKeyIdentifiersReceivedByClient];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)resetClientMasterKeyIdentifierReceipts
{
  v3 = objc_alloc_init(NSSet);
  [(IDSGroupMasterKeyMaterialCache *)self setMasterKeyIdentifiersReceivedByClient:v3];
}

- (void)noteReceivedFirstKeyMaterial:(id)a3 forRemoteParticipant:(unint64_t)a4
{
  v6 = a3;
  v7 = [(IDSGroupMasterKeyMaterialCache *)self remoteParticipantIDToKeyMaterial];
  v8 = [NSNumber numberWithUnsignedLongLong:a4];
  v9 = [v7 objectForKey:v8];

  if (v9 || ([v6 isGeneratedLocally] & 1) != 0)
  {
    v10 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Already noted first key material for remote participant: %@ - ignoring", &v13, 0xCu);
    }
  }

  else
  {
    v11 = +[IDSFoundationLog RealTimeEncryptionController];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Noting first key material for remote participant: %@", &v13, 0xCu);
    }

    v10 = [(IDSGroupMasterKeyMaterialCache *)self remoteParticipantIDToKeyMaterial];
    v12 = [NSNumber numberWithUnsignedLongLong:a4];
    [v10 setObject:v6 forKey:v12];
  }
}

- (void)updateLastRatchetedKeyMaterial:(id)a3 forRemoteParticipant:(unint64_t)a4
{
  v6 = a3;
  v8 = [(IDSGroupMasterKeyMaterialCache *)self remoteParticipantIDToKeyMaterial];
  v7 = [NSNumber numberWithUnsignedLongLong:a4];
  [v8 setObject:v6 forKey:v7];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSGroupMasterKeyMaterialCache *)self identifier];
  v5 = [(IDSGroupMasterKeyMaterialCache *)self currentLocalMasterKeyMaterial];
  v6 = [(IDSGroupMasterKeyMaterialCache *)self nextLocalMasterKeyMaterial];
  v7 = [(IDSGroupMasterKeyMaterialCache *)self membershipURIs];
  v8 = [(IDSGroupMasterKeyMaterialCache *)self masterKeyMaterials];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p identifier: %@, currentLocalMkM: %@, nextLocalMkM: %@, URIs: %@, MkMsCount: %lu>", v3, self, v4, v5, v6, v7, [v8 count]);

  return v9;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(IDSGroupMasterKeyMaterialCache *)self identifier];
  v5 = [(IDSGroupMasterKeyMaterialCache *)self currentLocalMasterKeyMaterial];
  v6 = [(IDSGroupMasterKeyMaterialCache *)self nextLocalMasterKeyMaterial];
  v7 = [(IDSGroupMasterKeyMaterialCache *)self membershipURIs];
  v8 = [(IDSGroupMasterKeyMaterialCache *)self masterKeyMaterials];
  v9 = [NSString stringWithFormat:@"<%@: %p identifier: %@, currentLocalMkM: %@, nextLocalMkM: %@, URIs: %@, MkMs: %@>", v3, self, v4, v5, v6, v7, v8];

  return v9;
}

@end