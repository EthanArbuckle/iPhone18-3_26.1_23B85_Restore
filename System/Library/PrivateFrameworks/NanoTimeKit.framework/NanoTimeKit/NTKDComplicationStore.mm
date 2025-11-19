@interface NTKDComplicationStore
+ (void)cleanupOrphanedStoresWithCurrentDeviceUUIDs:(id)a3;
- (BOOL)_queue_hasSampleTemplateForKey:(id)a3 family:(int64_t)a4;
- (BOOL)hasSampleTemplateForClientIdentifier:(id)a3 descriptor:(id)a4 family:(int64_t)a5;
- (NTKDComplicationStore)initWithCollectionIdentifier:(id)a3 deviceUUID:(id)a4;
- (float)version;
- (id)_descriptorForKey:(id)a3;
- (id)_queue_complicationDescriptorsForClientIdentifier:(id)a3;
- (id)_queue_sampleDataForKey:(id)a3 family:(int64_t)a4;
- (id)_queue_sampleTemplateForKey:(id)a3 family:(int64_t)a4;
- (id)_queue_sampleTemplateReferenceForKey:(id)a3 family:(int64_t)a4;
- (id)clients;
- (id)complicationDescriptorsForClientIdentifier:(id)a3;
- (id)complicationSampleDataForClientID:(id)a3 descriptor:(id)a4 shouldInflate:(BOOL)a5;
- (id)sampleTemplateForClientIdentifier:(id)a3 descriptor:(id)a4 family:(int64_t)a5;
- (void)_enumerateAllKeysForClientID:(id)a3 usingBlock:(id)a4;
- (void)_faultInAllClientData;
- (void)_faultInComplicationDescriptorsForClientID:(id)a3;
- (void)_faultInSampleDataForKey:(id)a3;
- (void)_onObserverQueue_async:(id)a3;
- (void)_onQueue_async:(id)a3;
- (void)_queue_clearRemovalsThroughSeqId:(id)a3;
- (void)_queue_incrementSeqId;
- (void)_queue_loadFullCollectionForObserver:(id)a3;
- (void)_queue_notifyDidRemoveComplicationForKey:(id)a3 skipSyncObserver:(BOOL)a4;
- (void)_queue_notifyDidUpdateComplicationDescriptors:(id)a3 forClientIdentifier:(id)a4 skipSyncObserver:(BOOL)a5;
- (void)_queue_notifyDidUpdateSampleTemplateReference:(id)a3 forKey:(id)a4 family:(int64_t)a5 skipSyncObserver:(BOOL)a6;
- (void)_queue_playbackChangesForObserver:(id)a3 fromSeqId:(id)a4;
- (void)_removeComplicationForKey:(id)a3 skipSyncObserver:(BOOL)a4;
- (void)_setupObserver:(id)a3 withSeqId:(id)a4 reloadSeqId:(id)a5;
- (void)_updateComplicationDescriptors:(id)a3 forClientIdentifier:(id)a4 skipSyncObserver:(BOOL)a5;
- (void)_updateLocalizableSampleData:(id)a3 forKey:(id)a4 family:(int64_t)a5 template:(id)a6 skipSyncObserver:(BOOL)a7;
- (void)_updateLocalizableSampleData:(id)a3 forKey:(id)a4 skipSyncObserver:(BOOL)a5;
- (void)_validateManifestEntries;
- (void)addObserver:(id)a3 withSeqId:(id)a4;
- (void)clearSyncObserver;
- (void)removeComplicationSampleTemplatesForClientIdentifier:(id)a3 descriptor:(id)a4;
- (void)removeObserver:(id)a3;
- (void)setSyncObserver:(id)a3 withSeqId:(id)a4;
- (void)setVersion:(float)a3;
- (void)updateLocalizableSampleDataTemplate:(id)a3 forClientIdentifier:(id)a4 descriptor:(id)a5 family:(int64_t)a6;
- (void)withoutNotifyingSyncObserverRemoveComplicationSampleTemplatesForClientIdentifier:(id)a3 descriptor:(id)a4;
- (void)withoutNotifyingSyncObserverSetComplicationSampleData:(id)a3 forClientIdentifier:(id)a4 descriptor:(id)a5;
- (void)withoutNotifyingUpdateLocalizableSampleDataTemplate:(id)a3 forClientIdentifier:(id)a4 descriptor:(id)a5 family:(int64_t)a6;
@end

@implementation NTKDComplicationStore

+ (void)cleanupOrphanedStoresWithCurrentDeviceUUIDs:(id)a3
{
  v3 = a3;
  v4 = sub_1000239C8();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023A0C;
  block[3] = &unk_10005CA70;
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, block);
}

- (NTKDComplicationStore)initWithCollectionIdentifier:(id)a3 deviceUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v45.receiver = self;
  v45.super_class = NTKDComplicationStore;
  v8 = [(NTKDComplicationStore *)&v45 init];
  if (v8)
  {
    v9 = [v6 copy];
    collectionIdentifier = v8->_collectionIdentifier;
    v8->_collectionIdentifier = v9;

    objc_storeStrong(&v8->_deviceUUID, a4);
    v11 = [NSString stringWithFormat:@"com.apple.ntkd.complicationstore.%p", v8];
    v12 = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create(v12, v13);
    queue = v8->_queue;
    v8->_queue = v14;

    v16 = [NSString stringWithFormat:@"com.apple.ntkd.complicationstore.observercallback.%p", v8];

    v17 = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(v17, v18);
    observerCallbackQueue = v8->_observerCallbackQueue;
    v8->_observerCallbackQueue = v19;

    v21 = +[NSHashTable weakObjectsHashTable];
    observers = v8->_observers;
    v8->_observers = v21;

    v23 = +[NSMutableDictionary dictionary];
    clientToSampleData = v8->_clientToSampleData;
    v8->_clientToSampleData = v23;

    v8->_clientToSampleDataLock._os_unfair_lock_opaque = 0;
    v25 = +[NSMutableDictionary dictionary];
    clientIDtoComplicationDescriptors = v8->_clientIDtoComplicationDescriptors;
    v8->_clientIDtoComplicationDescriptors = v25;

    v8->_clientIDtoComplicationDescriptorsLock._os_unfair_lock_opaque = 0;
    v27 = sub_10002408C(v8->_collectionIdentifier, v8->_deviceUUID);
    storeDirectory = v8->_storeDirectory;
    v8->_storeDirectory = v27;

    v29 = sub_1000239C8();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100024108;
    block[3] = &unk_10005CA70;
    v30 = v8;
    v44 = v30;
    dispatch_sync(v29, block);

    v31 = [[NTKDComplicationStoreComplicationDescriptorMigrator alloc] initWithCollectionIdentifier:v8->_collectionIdentifier deviceUUID:v8->_deviceUUID];
    [(NTKDComplicationStoreComplicationDescriptorMigrator *)v31 run];
    v32 = [(NSString *)v8->_storeDirectory stringByAppendingPathComponent:@"sequence-id.string"];
    v33 = sub_100016FD0(v32);
    seqId = v30->_seqId;
    v30->_seqId = v33;

    v35 = [(NSString *)v8->_storeDirectory stringByAppendingPathComponent:@"reset-sequence-id.string"];
    v36 = sub_100016FD0(v35);
    resetSeqId = v30->_resetSeqId;
    v30->_resetSeqId = v36;

    v38 = sub_1000241EC(v8->_storeDirectory);
    manifest = v30->_manifest;
    v30->_manifest = v38;

    v40 = sub_100024290(v8->_storeDirectory);
    removals = v30->_removals;
    v30->_removals = v40;

    [(NTKDComplicationStore *)v30 _validateManifestEntries];
    [(NTKDComplicationStore *)v30 _faultInAllClientData];
  }

  return v8;
}

- (void)_validateManifestEntries
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(_NTKDComplicationCollectionManifest *)self->_manifest clientIds];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000245D4;
  v5[3] = &unk_10005DC60;
  v5[4] = self;
  v5[5] = &v6;
  [v3 enumerateObjectsUsingBlock:v5];

  if (*(v7 + 24) == 1)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100024B68;
    v4[3] = &unk_10005CA70;
    v4[4] = self;
    [(NTKDComplicationStore *)self _onQueue_async:v4];
  }

  _Block_object_dispose(&v6, 8);
}

- (void)_faultInAllClientData
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(_NTKDComplicationCollectionManifest *)self->_manifest clientIds];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [(NTKDComplicationStore *)self _faultInComplicationDescriptorsForClientID:v8];
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_100024E5C;
        v9[3] = &unk_10005DC88;
        v9[4] = self;
        [(NTKDComplicationStore *)self _enumerateAllKeysForClientID:v8 usingBlock:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)_faultInSampleDataForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_clientToSampleDataLock);
  v5 = [(NSMutableDictionary *)self->_clientToSampleData objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [(_NTKDComplicationCollectionManifest *)self->_manifest familiesWithSampleTemplateForKey:v4];
    v5 = [[NTKComplicationSampleData alloc] initWithSupportedFamilies:v6];
    [(NSMutableDictionary *)self->_clientToSampleData setObject:v5 forKey:v4];
  }

  os_unfair_lock_unlock(&self->_clientToSampleDataLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v5 supportedFamilies];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) integerValue];
        v13 = [v5 templatePathForFamily:v12];
        if (!v13)
        {
          v13 = sub_100025030(self->_storeDirectory, v4);
          if (v13)
          {
            [v5 setTemplatePath:v13 forFamily:v12];
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)_faultInComplicationDescriptorsForClientID:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = [(_NTKDComplicationCollectionManifest *)self->_manifest complicationDescriptorIdentifiersForClientIdentifier:v4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = sub_10002482C(self->_storeDirectory, v4, *(*(&v14 + 1) + 8 * v10));
        if (v11)
        {
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  os_unfair_lock_lock(&self->_clientIDtoComplicationDescriptorsLock);
  clientIDtoComplicationDescriptors = self->_clientIDtoComplicationDescriptors;
  v13 = [v5 copy];
  [(NSMutableDictionary *)clientIDtoComplicationDescriptors setObject:v13 forKey:v4];

  os_unfair_lock_unlock(&self->_clientIDtoComplicationDescriptorsLock);
}

- (void)_enumerateAllKeysForClientID:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  os_unfair_lock_lock(&self->_clientIDtoComplicationDescriptorsLock);
  v8 = [(NSMutableDictionary *)self->_clientIDtoComplicationDescriptors objectForKeyedSubscript:v6];
  v9 = [v8 copy];

  os_unfair_lock_unlock(&self->_clientIDtoComplicationDescriptorsLock);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100025400;
  v17[3] = &unk_10005DCB0;
  v10 = v6;
  v18 = v10;
  v11 = v7;
  v19 = v11;
  v20 = &v21;
  [v9 enumerateObjectsUsingBlock:v17];
  if ((v22[3] & 1) == 0)
  {
    v12 = [[NTKComplicationKey alloc] initWithClientIdentifier:v10 complicationIdentifier:CLKDefaultComplicationIdentifier];
    v13 = [(_NTKDComplicationCollectionManifest *)self->_manifest familiesWithSampleTemplateForKey:v12];
    if (v13)
    {
      v14 = [NTKComplicationKey alloc];
      v15 = [CLKComplicationDescriptor legacyComplicationDescriptorWithSupportedFamilies:v13];
      v16 = [v14 initWithClientIdentifier:v10 descriptor:v15];

      (*(v11 + 2))(v11, v16);
    }
  }

  _Block_object_dispose(&v21, 8);
}

- (id)complicationSampleDataForClientID:(id)a3 descriptor:(id)a4 shouldInflate:(BOOL)a5
{
  if (a3)
  {
    v5 = a5;
    v8 = a4;
    v9 = a3;
    v10 = [[NTKComplicationKey alloc] initWithClientIdentifier:v9 descriptor:v8];

    [(NTKDComplicationStore *)self _faultInSampleDataForKey:v10];
    os_unfair_lock_lock(&self->_clientToSampleDataLock);
    v11 = [(NSMutableDictionary *)self->_clientToSampleData objectForKeyedSubscript:v10];
    v12 = v11;
    if (v5)
    {
      v13 = [v11 inflatedCopy];

      v12 = v13;
    }

    os_unfair_lock_unlock(&self->_clientToSampleDataLock);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)addObserver:(id)a3 withSeqId:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100025660;
  v7[3] = &unk_10005CC38;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(NTKDComplicationStore *)v8 _onQueue_async:v7];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000257B8;
  v7[3] = &unk_10005CA98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)setSyncObserver:(id)a3 withSeqId:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025888;
  block[3] = &unk_10005CC38;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)_setupObserver:(id)a3 withSeqId:(id)a4 reloadSeqId:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    goto LABEL_4;
  }

  if ([v8 isEqual:self->_seqId])
  {
    goto LABEL_6;
  }

  if (!sub_1000171F8(v8, v9))
  {
    [(NTKDComplicationStore *)self _queue_playbackChangesForObserver:v10 fromSeqId:v8];
  }

  else
  {
LABEL_4:
    [(NTKDComplicationStore *)self _queue_loadFullCollectionForObserver:v10];
  }

LABEL_6:
}

- (void)clearSyncObserver
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025A00;
  block[3] = &unk_10005CA70;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (float)version
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100025ABC;
  v5[3] = &unk_10005D6C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setVersion:(float)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100025BD8;
  v3[3] = &unk_10005D730;
  v3[4] = self;
  v4 = a3;
  [(NTKDComplicationStore *)self _onQueue_async:v3];
}

- (id)clients
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100025D84;
  v10 = sub_100025D94;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100025D9C;
  v5[3] = &unk_10005D6C8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)sampleTemplateForClientIdentifier:(id)a3 descriptor:(id)a4 family:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[NTKComplicationKey alloc] initWithClientIdentifier:v9 descriptor:v8];

  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100025D84;
  v23 = sub_100025D94;
  v24 = 0;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100025F60;
  v15[3] = &unk_10005DCD8;
  v15[4] = self;
  v16 = v10;
  v17 = &v19;
  v18 = a5;
  v12 = v10;
  dispatch_sync(queue, v15);
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v13;
}

- (BOOL)hasSampleTemplateForClientIdentifier:(id)a3 descriptor:(id)a4 family:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[NTKComplicationKey alloc] initWithClientIdentifier:v9 descriptor:v8];

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000260E4;
  v14[3] = &unk_10005DCD8;
  v14[4] = self;
  v15 = v10;
  v16 = &v18;
  v17 = a5;
  v12 = v10;
  dispatch_sync(queue, v14);
  LOBYTE(self) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return self;
}

- (id)complicationDescriptorsForClientIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100025D84;
  v16 = sub_100025D94;
  v17 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026230;
  block[3] = &unk_10005D780;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)updateLocalizableSampleDataTemplate:(id)a3 forClientIdentifier:(id)a4 descriptor:(id)a5 family:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[NTKComplicationKey alloc] initWithClientIdentifier:v11 descriptor:v10];

  [(NTKDComplicationStore *)self _updateLocalizableSampleDataTemplate:v12 forKey:v13 family:a6 skipSyncObserver:0];
}

- (void)removeComplicationSampleTemplatesForClientIdentifier:(id)a3 descriptor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NTKComplicationKey alloc] initWithClientIdentifier:v7 descriptor:v6];

  [(NTKDComplicationStore *)self _removeComplicationForKey:v8 skipSyncObserver:0];
}

- (void)withoutNotifyingSyncObserverSetComplicationSampleData:(id)a3 forClientIdentifier:(id)a4 descriptor:(id)a5
{
  v11 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [[NTKComplicationKey alloc] initWithClientIdentifier:v9 descriptor:v8];

  if (v11 && v9)
  {
    [(NTKDComplicationStore *)self _updateLocalizableSampleData:v11 forKey:v10 skipSyncObserver:1];
  }
}

- (void)withoutNotifyingUpdateLocalizableSampleDataTemplate:(id)a3 forClientIdentifier:(id)a4 descriptor:(id)a5 family:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[NTKComplicationKey alloc] initWithClientIdentifier:v11 descriptor:v10];

  [(NTKDComplicationStore *)self _updateLocalizableSampleDataTemplate:v12 forKey:v13 family:a6 skipSyncObserver:1];
}

- (void)withoutNotifyingSyncObserverRemoveComplicationSampleTemplatesForClientIdentifier:(id)a3 descriptor:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NTKComplicationKey alloc] initWithClientIdentifier:v7 descriptor:v6];

  [(NTKDComplicationStore *)self _removeComplicationForKey:v8 skipSyncObserver:1];
}

- (void)_updateLocalizableSampleData:(id)a3 forKey:(id)a4 skipSyncObserver:(BOOL)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000266B0;
  v10[3] = &unk_10005D7D0;
  v11 = a3;
  v12 = self;
  v13 = a4;
  v14 = a5;
  v8 = v13;
  v9 = v11;
  [(NTKDComplicationStore *)self _onQueue_async:v10];
}

- (void)_updateLocalizableSampleData:(id)a3 forKey:(id)a4 family:(int64_t)a5 template:(id)a6 skipSyncObserver:(BOOL)a7
{
  v12 = a3;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000272CC;
  v16[3] = &unk_10005DD00;
  v16[4] = self;
  v17 = a4;
  v19 = a6;
  v20 = a5;
  v18 = v12;
  v21 = a7;
  v13 = v19;
  v14 = v12;
  v15 = v17;
  [(NTKDComplicationStore *)self _onQueue_async:v16];
}

- (void)_updateComplicationDescriptors:(id)a3 forClientIdentifier:(id)a4 skipSyncObserver:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 copy];
  os_unfair_lock_lock(&self->_clientIDtoComplicationDescriptorsLock);
  clientIDtoComplicationDescriptors = self->_clientIDtoComplicationDescriptors;
  if (v10)
  {
    [(NSMutableDictionary *)clientIDtoComplicationDescriptors setObject:v10 forKey:v9];
  }

  else
  {
    [(NSMutableDictionary *)clientIDtoComplicationDescriptors removeObjectForKey:v9];
  }

  os_unfair_lock_unlock(&self->_clientIDtoComplicationDescriptorsLock);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100027800;
  v15[3] = &unk_10005DA00;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v19 = a5;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  [(NTKDComplicationStore *)self _onQueue_async:v15];
}

- (void)_removeComplicationForKey:(id)a3 skipSyncObserver:(BOOL)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100027EE0;
  v6[3] = &unk_10005CFE8;
  v7 = self;
  v8 = a3;
  v9 = a4;
  v5 = v8;
  [(NTKDComplicationStore *)v7 _onQueue_async:v6];
}

- (id)_descriptorForKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_clientIDtoComplicationDescriptorsLock);
  clientIDtoComplicationDescriptors = self->_clientIDtoComplicationDescriptors;
  v6 = [v4 clientIdentifier];
  v7 = [(NSMutableDictionary *)clientIDtoComplicationDescriptors objectForKeyedSubscript:v6];
  v8 = [v7 count];

  os_unfair_lock_unlock(&self->_clientIDtoComplicationDescriptorsLock);
  if (!v8)
  {
    v9 = [v4 clientIdentifier];
    [(NTKDComplicationStore *)self _faultInComplicationDescriptorsForClientID:v9];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_100025D84;
  v32 = sub_100025D94;
  v33 = 0;
  v10 = [v4 clientIdentifier];
  v11 = [(NTKDComplicationStore *)self complicationDescriptorsForClientIdentifier:v10];
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_100028548;
  v25 = &unk_10005DD28;
  v12 = v4;
  v26 = v12;
  v27 = &v28;
  [v11 enumerateObjectsUsingBlock:&v22];

  v13 = v29[5];
  if (!v13)
  {
    os_unfair_lock_lock(&self->_clientToSampleDataLock);
    v14 = [(NSMutableDictionary *)self->_clientToSampleData objectForKeyedSubscript:v12, v22, v23, v24, v25];
    os_unfair_lock_unlock(&self->_clientToSampleDataLock);
    v15 = [v14 supportedFamilies];
    v16 = [CLKComplicationDescriptor alloc];
    v17 = [v12 complicationIdentifier];
    v18 = [v16 initWithIdentifier:v17 displayName:&stru_10005E800 supportedFamilies:v15];
    v19 = v29[5];
    v29[5] = v18;

    v13 = v29[5];
  }

  v20 = v13;

  _Block_object_dispose(&v28, 8);

  return v20;
}

- (void)_onQueue_async:(id)a3
{
  v4 = a3;
  sub_100007294(@"com.apple.ntkd.complicationstore.asyncwork");
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000286B4;
  block[3] = &unk_10005CB10;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

- (void)_onObserverQueue_async:(id)a3
{
  v4 = a3;
  sub_100007294(@"com.apple.ntkd.complicationstore.asyncobservercallback");
  observerCallbackQueue = self->_observerCallbackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100028798;
  block[3] = &unk_10005CB10;
  v8 = v4;
  v6 = v4;
  dispatch_async(observerCallbackQueue, block);
}

- (void)_queue_incrementSeqId
{
  v3 = [NSNumber numberWithUnsignedInteger:[(NSNumber *)self->_seqId unsignedIntegerValue]+ 1];
  seqId = self->_seqId;
  self->_seqId = v3;

  v5 = self->_seqId;
  v6 = [(NSString *)self->_storeDirectory stringByAppendingPathComponent:@"sequence-id.string"];
  sub_100019988(v5, v6);
}

- (id)_queue_sampleDataForKey:(id)a3 family:(int64_t)a4
{
  v6 = a3;
  if (v6)
  {
    os_unfair_lock_lock(&self->_clientToSampleDataLock);
    v7 = [(NSMutableDictionary *)self->_clientToSampleData objectForKeyedSubscript:v6];
    v8 = [v7 templatePathForFamily:a4];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = sub_100025030(self->_storeDirectory, v6);
      if (v9)
      {
        if (!v7)
        {
          v10 = [(_NTKDComplicationCollectionManifest *)self->_manifest familiesWithSampleTemplateForKey:v6];
          v7 = [[NTKComplicationSampleData alloc] initWithSupportedFamilies:v10];
          [(NSMutableDictionary *)self->_clientToSampleData setObject:v7 forKey:v6];
        }

        [v7 setTemplatePath:v9 forFamily:a4];
      }
    }

    os_unfair_lock_unlock(&self->_clientToSampleDataLock);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_queue_sampleTemplateForKey:(id)a3 family:(int64_t)a4
{
  v5 = [(NTKDComplicationStore *)self _queue_sampleDataForKey:a3 family:?];
  v6 = [v5 templateForFamily:a4];

  return v6;
}

- (id)_queue_sampleTemplateReferenceForKey:(id)a3 family:(int64_t)a4
{
  v5 = [(NTKDComplicationStore *)self _queue_sampleDataForKey:a3 family:?];
  v6 = [v5 templateReferenceForFamily:a4];

  return v6;
}

- (BOOL)_queue_hasSampleTemplateForKey:(id)a3 family:(int64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  v6 = a3;
  os_unfair_lock_lock(&self->_clientToSampleDataLock);
  v7 = [(NSMutableDictionary *)self->_clientToSampleData objectForKeyedSubscript:v6];

  LOBYTE(a4) = [v7 hasTemplateForFamily:a4];
  os_unfair_lock_unlock(&self->_clientToSampleDataLock);

  return a4;
}

- (id)_queue_complicationDescriptorsForClientIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_clientIDtoComplicationDescriptorsLock);
    v5 = [(NSMutableDictionary *)self->_clientIDtoComplicationDescriptors objectForKeyedSubscript:v4];
    os_unfair_lock_unlock(&self->_clientIDtoComplicationDescriptorsLock);
    if (!v5)
    {
      [(NTKDComplicationStore *)self _faultInComplicationDescriptorsForClientID:v4];
      os_unfair_lock_lock(&self->_clientIDtoComplicationDescriptorsLock);
      v5 = [(NSMutableDictionary *)self->_clientIDtoComplicationDescriptors objectForKeyedSubscript:v4];
      os_unfair_lock_unlock(&self->_clientIDtoComplicationDescriptorsLock);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_queue_clearRemovalsThroughSeqId:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  removals = self->_removals;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100028C38;
  v12 = &unk_10005DD70;
  v7 = v4;
  v13 = v7;
  v8 = v5;
  v14 = v8;
  [(NSMutableDictionary *)removals enumerateKeysAndObjectsUsingBlock:&v9];
  if ([v8 count])
  {
    [(NSMutableDictionary *)self->_removals removeObjectsForKeys:v8];
    sub_1000281EC(self->_storeDirectory, self->_removals);
  }
}

- (void)_queue_playbackChangesForObserver:(id)a3 fromSeqId:(id)a4
{
  v34 = a3;
  v6 = a4;
  +[NSMutableDictionary dictionary];
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_100029198;
  v29 = v59[3] = &unk_10005D8E0;
  v60 = v29;
  v7 = objc_retainBlock(v59);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = [(_NTKDComplicationCollectionManifest *)self->_manifest clientIds];
  v32 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
  if (v32)
  {
    v31 = *v56;
    do
    {
      v8 = 0;
      do
      {
        if (*v56 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v8;
        v9 = *(*(&v55 + 1) + 8 * v8);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v10 = [(_NTKDComplicationCollectionManifest *)self->_manifest complicationDescriptorIdentifiersForClientIdentifier:v9];
        v11 = [v10 countByEnumeratingWithState:&v51 objects:v62 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v52;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v52 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = sub_100027DF0(self->_storeDirectory, v9, *(*(&v51 + 1) + 8 * i));
              v16 = sub_100016FD0(v15);

              if (v16 && sub_1000171F8(v6, v16))
              {
                v48[0] = _NSConcreteStackBlock;
                v48[1] = 3221225472;
                v48[2] = sub_100029214;
                v48[3] = &unk_10005CFC0;
                v48[4] = self;
                v48[5] = v9;
                v49 = v34;
                v50 = v16;
                (v7[2])(v7, v50, v48);
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v51 objects:v62 count:16];
          }

          while (v12);
        }

        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_100029310;
        v44[3] = &unk_10005DDC0;
        v44[4] = self;
        v45 = v6;
        v47 = v7;
        v46 = v34;
        [(NTKDComplicationStore *)self _enumerateAllKeysForClientID:v9 usingBlock:v44];

        v8 = v33 + 1;
      }

      while ((v33 + 1) != v32);
      v32 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
    }

    while (v32);
  }

  removals = self->_removals;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000296B0;
  v39[3] = &unk_10005DDE8;
  v18 = v6;
  v40 = v18;
  v19 = v7;
  v43 = v19;
  v41 = self;
  v20 = v34;
  v42 = v20;
  [(NSMutableDictionary *)removals enumerateKeysAndObjectsUsingBlock:v39];
  v21 = [v29 allKeys];
  v22 = [v21 sortedArrayUsingComparator:&stru_10005DE08];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = v22;
  v24 = [v23 countByEnumeratingWithState:&v35 objects:v61 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [v29 objectForKey:*(*(&v35 + 1) + 8 * j)];
        v28[2]();
      }

      v25 = [v23 countByEnumeratingWithState:&v35 objects:v61 count:16];
    }

    while (v25);
  }
}

- (void)_queue_loadFullCollectionForObserver:(id)a3
{
  v4 = a3;
  v5 = self->_seqId;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000299E8;
  v8[3] = &unk_10005CC38;
  v8[4] = self;
  v9 = v4;
  v10 = v5;
  v6 = v5;
  v7 = v4;
  [(NTKDComplicationStore *)self _onObserverQueue_async:v8];
}

- (void)_queue_notifyDidUpdateSampleTemplateReference:(id)a3 forKey:(id)a4 family:(int64_t)a5 skipSyncObserver:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = self->_seqId;
  v13 = self->_syncObserver;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100029D08;
  v33[3] = &unk_10005DE30;
  v40 = a6;
  v22 = v13;
  v34 = v22;
  v35 = self;
  v14 = v12;
  v36 = v14;
  v15 = v10;
  v37 = v15;
  v16 = v11;
  v38 = v16;
  v39 = a5;
  [(NTKDComplicationStore *)self _onObserverQueue_async:v33];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_observers;
  v17 = [(NSHashTable *)obj countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      v20 = 0;
      do
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v29 + 1) + 8 * v20);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_100029DE0;
        v24[3] = &unk_10005DA78;
        v24[4] = v21;
        v24[5] = self;
        v25 = v15;
        v26 = v16;
        v28 = a5;
        v27 = v14;
        [(NTKDComplicationStore *)self _onObserverQueue_async:v24, v22];

        v20 = v20 + 1;
      }

      while (v18 != v20);
      v18 = [(NSHashTable *)obj countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v18);
  }
}

- (void)_queue_notifyDidUpdateComplicationDescriptors:(id)a3 forClientIdentifier:(id)a4 skipSyncObserver:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self->_seqId;
  v11 = self->_syncObserver;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10002A0DC;
  v30[3] = &unk_10005DA28;
  v36 = a5;
  v20 = v11;
  v31 = v20;
  v32 = self;
  v12 = v10;
  v33 = v12;
  v13 = v8;
  v34 = v13;
  v14 = v9;
  v35 = v14;
  [(NTKDComplicationStore *)self _onObserverQueue_async:v30];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_observers;
  v15 = [(NSHashTable *)obj countByEnumeratingWithState:&v26 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      v18 = 0;
      do
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v26 + 1) + 8 * v18);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10002A108;
        v22[3] = &unk_10005D060;
        v22[4] = v19;
        v22[5] = self;
        v23 = v13;
        v24 = v14;
        v25 = v12;
        [(NTKDComplicationStore *)self _onObserverQueue_async:v22];

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [(NSHashTable *)obj countByEnumeratingWithState:&v26 objects:v37 count:16];
    }

    while (v16);
  }
}

- (void)_queue_notifyDidRemoveComplicationForKey:(id)a3 skipSyncObserver:(BOOL)a4
{
  v6 = a3;
  v7 = self->_seqId;
  v8 = self->_syncObserver;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10002A34C;
  v25[3] = &unk_10005DA00;
  v30 = a4;
  v17 = v8;
  v26 = v17;
  v27 = self;
  v9 = v7;
  v28 = v9;
  v10 = v6;
  v29 = v10;
  [(NTKDComplicationStore *)self _onObserverQueue_async:v25];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = self->_observers;
  v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10002A410;
        v18[3] = &unk_10005CFC0;
        v18[4] = v16;
        v18[5] = self;
        v19 = v10;
        v20 = v9;
        [(NTKDComplicationStore *)self _onObserverQueue_async:v18];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSHashTable *)v11 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v13);
  }
}

@end