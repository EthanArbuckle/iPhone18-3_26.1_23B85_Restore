@interface CCSetVersionedMergeable
+ (id)emptyStateVector;
+ (id)readOnlyInstanceForSet:(id)a3 mergeableDeltasFileURL:(id)a4 database:(id)a5;
+ (id)writeOnlyInstanceForSet:(id)a3 donateServiceProvider:(id)a4;
- (BOOL)_donateRemoteUpdateWithType:(unsigned __int8)a3 fromPeerDeviceUUID:(id)a4 peerDeviceSite:(id)a5 relayedDeviceSites:(id)a6 mergeableDelta:(id)a7;
- (BOOL)_loadCachedDeviceMapping:(id *)a3;
- (BOOL)hasNoPresentContent;
- (BOOL)mergeDeltas:(id)a3 error:(id *)a4;
- (BOOL)mergeUpdateFromPeerDeviceUUID:(id)a3 deviceSite:(id)a4 relayedDeviceSites:(id)a5 mergeableDelta:(id)a6;
- (CCSetVersionedMergeable)initWithSet:(id)a3 readAccess:(id)a4 donateServiceProvider:(id)a5 mergeableDeltasFileURL:(id)a6;
- (id)localDeviceSiteAddingExpirationDate:(id)a3;
- (id)mergeableDeltasForMetadata:(id)a3 atomBatchVersion:(unsigned __int8)a4 error:(id *)a5;
- (id)relayedDeviceSitesExcludingRequestingDeviceUUID:(id)a3;
- (id)stateVector;
- (id)storedActiveDeviceSiteWithDeviceUUID:(id)a3;
- (void)hasNoPresentContent;
- (void)stateVector;
@end

@implementation CCSetVersionedMergeable

+ (id)readOnlyInstanceForSet:(id)a3 mergeableDeltasFileURL:(id)a4 database:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [objc_alloc(objc_opt_class()) initWithSet:v9 readAccess:v7 donateServiceProvider:0 mergeableDeltasFileURL:v8];

  return v10;
}

+ (id)writeOnlyInstanceForSet:(id)a3 donateServiceProvider:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithSet:v6 readAccess:0 donateServiceProvider:v5 mergeableDeltasFileURL:0];

  return v7;
}

- (CCSetVersionedMergeable)initWithSet:(id)a3 readAccess:(id)a4 donateServiceProvider:(id)a5 mergeableDeltasFileURL:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = CCSetVersionedMergeable;
  v15 = [(CCSetVersionedMergeable *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_set, a3);
    v17 = [objc_alloc(MEMORY[0x1E69939D0]) initWithDatabaseAccess:v12 siteIdentifierFormat:1];
    stateReader = v16->_stateReader;
    v16->_stateReader = v17;

    objc_storeStrong(&v16->_donateServiceProvider, a5);
    objc_storeStrong(&v16->_mergeableDeltasFileURL, a6);
  }

  return v16;
}

- (BOOL)mergeUpdateFromPeerDeviceUUID:(id)a3 deviceSite:(id)a4 relayedDeviceSites:(id)a5 mergeableDelta:(id)a6
{
  v10 = a4;
  v11 = a5;
  if (a6)
  {
    v12 = [(CCSetVersionedMergeable *)self _donateRemoteUpdateWithType:1 fromPeerDeviceUUID:a3 peerDeviceSite:v10 relayedDeviceSites:v11 mergeableDelta:a6];
  }

  else
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CCSetVersionedMergeable mergeUpdateFromPeerDeviceUUID:deviceSite:relayedDeviceSites:mergeableDelta:];
    }

    v12 = 0;
  }

  return v12;
}

- (BOOL)_donateRemoteUpdateWithType:(unsigned __int8)a3 fromPeerDeviceUUID:(id)a4 peerDeviceSite:(id)a5 relayedDeviceSites:(id)a6 mergeableDelta:(id)a7
{
  v66 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v44 = a6;
  v13 = a7;
  v14 = dispatch_semaphore_create(0);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __123__CCSetVersionedMergeable__donateRemoteUpdateWithType_fromPeerDeviceUUID_peerDeviceSite_relayedDeviceSites_mergeableDelta___block_invoke;
  v52[3] = &unk_1E85C2F90;
  v55 = &v56;
  v15 = v13;
  v53 = v15;
  v16 = v14;
  v54 = v16;
  v17 = MEMORY[0x1DA74EA40](v52);
  v18 = __biome_log_for_category();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = CCRemoteUpdateTypeDescription();
    *buf = 138412546;
    v61 = v19;
    v62 = 2112;
    v63 = v11;
    _os_log_impl(&dword_1DA444000, v18, OS_LOG_TYPE_DEFAULT, "Requesting donation for remote update (%@) from deviceUUID: %@", buf, 0x16u);
  }

  v20 = v12;
  v21 = MEMORY[0x1E6993A80];
  v22 = [(CCSet *)self->_set itemType];
  v23 = [(CCSet *)self->_set descriptors];
  donateServiceProvider = self->_donateServiceProvider;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __123__CCSetVersionedMergeable__donateRemoteUpdateWithType_fromPeerDeviceUUID_peerDeviceSite_relayedDeviceSites_mergeableDelta___block_invoke_10;
  v46[3] = &unk_1E85C2FB8;
  v46[4] = self;
  v43 = v17;
  v50 = v43;
  v25 = v11;
  v47 = v25;
  v51 = a3;
  v26 = v15;
  v48 = v26;
  v42 = v20;
  v49 = v42;
  [v21 remoteCRDTSetDonationWithItemType:v22 descriptors:v23 serviceProvider:donateServiceProvider completion:v46];

  v27 = dispatch_time(0, 240000000000);
  if (dispatch_semaphore_wait(v16, v27))
  {
    v28 = __biome_log_for_category();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(CCSetVersionedMergeable *)v28 _donateRemoteUpdateWithType:v29 fromPeerDeviceUUID:v30 peerDeviceSite:v31 relayedDeviceSites:v32 mergeableDelta:v33, v34, v35];
    }

    v36 = 0;
  }

  else
  {
    v37 = __biome_log_for_category();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v57 + 24))
      {
        v38 = @"succeeded";
      }

      else
      {
        v38 = @"failed";
      }

      set = self->_set;
      *buf = 138412802;
      v61 = v38;
      v62 = 2112;
      v63 = set;
      v64 = 2112;
      v65 = v25;
      _os_log_impl(&dword_1DA444000, v37, OS_LOG_TYPE_DEFAULT, "Remote CRDT donation %@ for set %@ from deviceUUID: %@", buf, 0x20u);
    }

    v36 = *(v57 + 24);
  }

  _Block_object_dispose(&v56, 8);
  v40 = *MEMORY[0x1E69E9840];
  return v36 & 1;
}

intptr_t __123__CCSetVersionedMergeable__donateRemoteUpdateWithType_fromPeerDeviceUUID_peerDeviceSite_relayedDeviceSites_mergeableDelta___block_invoke(uint64_t a1, char a2)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  v3 = (a1 + 32);
  if (*(a1 + 32))
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [*v3 fileURL];
    v9 = 0;
    [v4 removeItemAtURL:v5 error:&v9];
    v6 = v9;

    if (v6)
    {
      v7 = __biome_log_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __123__CCSetVersionedMergeable__donateRemoteUpdateWithType_fromPeerDeviceUUID_peerDeviceSite_relayedDeviceSites_mergeableDelta___block_invoke_cold_1(v3, v6, v7);
      }
    }
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void __123__CCSetVersionedMergeable__donateRemoteUpdateWithType_fromPeerDeviceUUID_peerDeviceSite_relayedDeviceSites_mergeableDelta___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __123__CCSetVersionedMergeable__donateRemoteUpdateWithType_fromPeerDeviceUUID_peerDeviceSite_relayedDeviceSites_mergeableDelta___block_invoke_10_cold_1(a1);
    }

    goto LABEL_11;
  }

  if (([v5 remoteUpdateFromDeviceUUID:*(a1 + 40) withType:*(a1 + 72) mergeableDelta:*(a1 + 48) peerDeviceSite:*(a1 + 56) relayedDeviceSites:0] & 1) == 0)
  {
LABEL_11:
    (*(*(a1 + 64) + 16))();
    goto LABEL_12;
  }

  v11 = 0;
  v8 = [v5 finish:&v11];
  v9 = v11;
  if ((v8 & 1) == 0)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __123__CCSetVersionedMergeable__donateRemoteUpdateWithType_fromPeerDeviceUUID_peerDeviceSite_relayedDeviceSites_mergeableDelta___block_invoke_10_cold_2(a1);
    }
  }

  (*(*(a1 + 64) + 16))();

LABEL_12:
}

- (BOOL)mergeDeltas:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (1)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(v4);
      }

      if (!--v6)
      {
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)mergeableDeltasForMetadata:(id)a3 atomBatchVersion:(unsigned __int8)a4 error:(id *)a5
{
  v5 = a4;
  v55 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 vectors];
  v9 = [v8 contents];
  v10 = [v9 timestampCount];

  if (!v10)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = v7;
      _os_log_impl(&dword_1DA444000, v11, OS_LOG_TYPE_DEFAULT, "Mergeable deltas contents vector is empty %@", buf, 0xCu);
    }
  }

  v51 = 0;
  v12 = [(CCSetVersionedMergeable *)self _loadCachedDeviceMapping:&v51];
  v13 = v51;
  if (v12)
  {
    v43 = v5;
    v14 = [(CCSet *)self->_set encodedDescriptors];
    v15 = objc_alloc(MEMORY[0x1E695B9A0]);
    v16 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[CCSet itemType](self->_set, "itemType")}];
    v45 = v14;
    v18 = [v16 stringWithFormat:@"(%@, %@)", v17, v14];
    v19 = [v15 initWithName:v18];

    v20 = objc_alloc(MEMORY[0x1E6994940]);
    LOBYTE(v17) = objc_opt_respondsToSelector();

    v44 = v19;
    if (v17)
    {
      mergeableDeltasFileURL = self->_mergeableDeltasFileURL;
      v22 = MEMORY[0x1E696AEC0];
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[CCSet itemType](self->_set, "itemType")}];
      v24 = [MEMORY[0x1E696AFB0] UUID];
      v25 = [v24 UUIDString];
      v26 = [v22 stringWithFormat:@"%@-%@.batch", v23, v25];
      v27 = [(NSURL *)mergeableDeltasFileURL URLByAppendingPathComponent:v26];

      v28 = [objc_alloc(MEMORY[0x1E6994940]) initWriterWithMergeableValueID:v19 metadata:v7 formatVersion:v43 fileURL:v27 error:0];
    }

    else
    {
      v28 = [objc_alloc(MEMORY[0x1E6994940]) initWriterWithMergeableValueID:v19 metadata:v7 formatVersion:v5 error:0];
    }

    stateReader = self->_stateReader;
    v32 = [v7 vectors];
    v33 = [v32 contents];
    cachedDeviceMapping = self->_cachedDeviceMapping;
    v50 = v13;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __77__CCSetVersionedMergeable_mergeableDeltasForMetadata_atomBatchVersion_error___block_invoke;
    v48[3] = &unk_1E85C3008;
    v48[4] = self;
    v35 = v28;
    v49 = v35;
    [(CCDatabaseSetStateReader *)stateReader enumerateProvenanceRecordsForStateVector:v33 withType:0 selectAtomsInState:1 skipOverAtomsInState:2 deviceMapping:cachedDeviceMapping error:&v50 usingBlock:v48];
    v36 = v50;

    v47 = v36;
    [v35 finishWritingWithError:&v47];
    v13 = v47;

    if (v35)
    {
      v46 = 0;
      v37 = [objc_alloc(MEMORY[0x1E695B988]) initWithAtomBatch:v35 error:&v46];
      v38 = v46;
      if (v38)
      {
        v39 = __biome_log_for_category();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [CCSetVersionedMergeable mergeableDeltasForMetadata:atomBatchVersion:error:];
        }

        CCSetError();
        v30 = MEMORY[0x1E695E0F0];
      }

      else
      {
        v52 = v37;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
      }
    }

    else
    {
      v40 = __biome_log_for_category();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [CCSetVersionedMergeable mergeableDeltasForMetadata:atomBatchVersion:error:];
      }

      CCSetError();
      v30 = 0;
    }
  }

  else
  {
    v29 = __biome_log_for_category();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [CCSetVersionedMergeable mergeableDeltasForMetadata:atomBatchVersion:error:];
    }

    CCSetError();
    v30 = 0;
  }

  v41 = *MEMORY[0x1E69E9840];

  return v30;
}

void __77__CCSetVersionedMergeable_mergeableDeltasForMetadata_atomBatchVersion_error___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  v5 = [v3 deviceRowId];
  v6 = [v4 siteIdentifierForDeviceRowId:v5];

  v7 = [v3 contentSequenceNumber];
  v8 = *(*(a1 + 32) + 16);
  v9 = [v3 contentHash];
  v10 = [v8 fetchContentRecordFromContentHash:v9];

  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v3 contentHash];
    v18 = MEMORY[0x1E696AD98];
    v19 = [v10 content];
    v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v19, "length")}];
    *buf = 138413058;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    v29 = 2112;
    v30 = v17;
    v31 = 2112;
    v32 = v20;
    _os_log_debug_impl(&dword_1DA444000, v11, OS_LOG_TYPE_DEBUG, "appending atom with dot %@::%@ contentHash %@ size %@", buf, 0x2Au);
  }

  v12 = *(a1 + 40);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__CCSetVersionedMergeable_mergeableDeltasForMetadata_atomBatchVersion_error___block_invoke_31;
  v21[3] = &unk_1E85C2FE0;
  v22 = v6;
  v23 = v7;
  v24 = v10;
  v13 = v10;
  v14 = v7;
  v15 = v6;
  [v12 appendAtomWithBlock:v21];

  v16 = *MEMORY[0x1E69E9840];
}

void __77__CCSetVersionedMergeable_mergeableDeltasForMetadata_atomBatchVersion_error___block_invoke_31(id *a1, void *a2)
{
  v8 = a2;
  v3 = [v8 timestamp];
  v4 = [v3 distributedSiteIdentifier];
  v5 = [a1[4] identifier];
  [v4 setIdentifier:v5];

  v6 = [v8 timestamp];
  [v6 setClock:{objc_msgSend(a1[5], "unsignedIntegerValue")}];

  v7 = [a1[6] content];
  [v8 setValue:v7];

  [v8 setVersion:1];
}

- (id)stateVector
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v3 = [(CCSetVersionedMergeable *)self _loadCachedDeviceMapping:&v20];
  v4 = v20;
  if (v3)
  {
    stateReader = self->_stateReader;
    cachedDeviceMapping = self->_cachedDeviceMapping;
    v18 = v4;
    v19 = 0;
    v7 = [(CCDatabaseSetStateReader *)stateReader constructStateVectorsFromDatabaseWithDeviceMapping:cachedDeviceMapping outContent:&v19 outMetaContent:0 error:&v18];
    v8 = v19;
    v9 = v18;

    v10 = __biome_log_for_category();
    v11 = v10;
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        set = self->_set;
        v13 = self->_cachedDeviceMapping;
        *buf = 138412802;
        v22 = set;
        v23 = 2112;
        v24 = v8;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&dword_1DA444000, v11, OS_LOG_TYPE_DEFAULT, "Constructed content state vector from database for set: %@: %@ with device mapping: %@", buf, 0x20u);
      }

      v4 = v9;
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CCSetVersionedMergeable stateVector];
      }

      v15 = [objc_opt_class() emptyStateVector];

      v4 = v9;
      v8 = v15;
    }
  }

  else
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CCSetVersionedMergeable stateVector];
    }

    v8 = [objc_opt_class() emptyStateVector];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)emptyStateVector
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getCKDistributedTimestampStateVectorClass_softClass;
  v10 = getCKDistributedTimestampStateVectorClass_softClass;
  if (!getCKDistributedTimestampStateVectorClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getCKDistributedTimestampStateVectorClass_block_invoke;
    v6[3] = &unk_1E85C3030;
    v6[4] = &v7;
    __getCKDistributedTimestampStateVectorClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  v4 = objc_alloc_init(v2);

  return v4;
}

- (id)relayedDeviceSitesExcludingRequestingDeviceUUID:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = 0;
  v5 = [(CCSetVersionedMergeable *)self _loadCachedDeviceMapping:&v24];
  v6 = v24;
  if (v5)
  {
    v7 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [(CCDatabaseDeviceMapping *)self->_cachedDeviceMapping allActiveDeviceSites];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v19 = v6;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 device];
          if (([v14 options] & 1) == 0)
          {
            v15 = [v14 deviceUUID];
            v16 = [v15 isEqual:v4];

            if ((v16 & 1) == 0)
            {
              [v7 addObject:v13];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v10);
      v6 = v19;
    }
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CCSetVersionedMergeable relayedDeviceSitesExcludingRequestingDeviceUUID:];
    }

    v7 = MEMORY[0x1E695E0F0];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)localDeviceSiteAddingExpirationDate:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [(CCSetVersionedMergeable *)self _loadCachedDeviceMapping:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = [(CCDatabaseDeviceMapping *)self->_cachedDeviceMapping localDeviceSite];
    v8 = [v7 copyWithExpirationDate:v4];
  }

  else
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CCSetVersionedMergeable localDeviceSiteAddingExpirationDate:];
    }

    v8 = 0;
  }

  return v8;
}

- (id)storedActiveDeviceSiteWithDeviceUUID:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [(CCSetVersionedMergeable *)self _loadCachedDeviceMapping:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = [(CCDatabaseDeviceMapping *)self->_cachedDeviceMapping activeDeviceSiteWithDeviceUUID:v4];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CCSetVersionedMergeable storedActiveDeviceSiteWithDeviceUUID:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)hasNoPresentContent
{
  v24 = 0;
  v3 = [(CCSetVersionedMergeable *)self _loadCachedDeviceMapping:&v24];
  v4 = v24;
  if (!v3)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CCSetVersionedMergeable hasNoPresentContent];
    }

    goto LABEL_10;
  }

  p_cachedDeviceMapping = &self->_cachedDeviceMapping;
  cachedDeviceMapping = self->_cachedDeviceMapping;
  v7 = [(CCDatabaseDeviceMapping *)cachedDeviceMapping localDeviceSite];
  v8 = [(CCDatabaseDeviceMapping *)cachedDeviceMapping deviceRowIdForDeviceSite:v7];

  if (!v8)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(CCSetVersionedMergeable *)p_cachedDeviceMapping hasNoPresentContent:v13];
    }

LABEL_10:
    v12 = 0;
    goto LABEL_15;
  }

  v23 = 1;
  stateReader = self->_stateReader;
  v22 = v4;
  v10 = [(CCDatabaseSetStateReader *)stateReader checkForPresentContent:&v23 filterByDeviceRowId:v8 error:&v22];
  v11 = v22;

  if (v10)
  {
    v12 = v23 ^ 1;
  }

  else
  {
    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [CCSetVersionedMergeable hasNoPresentContent];
    }

    v12 = 0;
  }

  v4 = v11;
LABEL_15:

  return v12 & 1;
}

- (BOOL)_loadCachedDeviceMapping:(id *)a3
{
  if (self->_cachedDeviceMapping)
  {
    return 1;
  }

  v5 = [(CCDatabaseSetStateReader *)self->_stateReader constructDeviceMapping:a3];
  cachedDeviceMapping = self->_cachedDeviceMapping;
  self->_cachedDeviceMapping = v5;

  return self->_cachedDeviceMapping != 0;
}

- (void)mergeUpdateFromPeerDeviceUUID:deviceSite:relayedDeviceSites:mergeableDelta:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_donateRemoteUpdateWithType:(uint64_t)a3 fromPeerDeviceUUID:(uint64_t)a4 peerDeviceSite:(uint64_t)a5 relayedDeviceSites:(uint64_t)a6 mergeableDelta:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0(&dword_1DA444000, a1, a3, "Timed out waiting for asynchronous donate operation. timeout=%@ seconds", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __123__CCSetVersionedMergeable__donateRemoteUpdateWithType_fromPeerDeviceUUID_peerDeviceSite_relayedDeviceSites_mergeableDelta___block_invoke_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [*a1 fileURL];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  v8 = a2;
  _os_log_error_impl(&dword_1DA444000, a3, OS_LOG_TYPE_ERROR, "Failed to delete mergeable delta at URL %@ with error %@", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void __123__CCSetVersionedMergeable__donateRemoteUpdateWithType_fromPeerDeviceUUID_peerDeviceSite_relayedDeviceSites_mergeableDelta___block_invoke_10_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(*(a1 + 32) + 8);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void __123__CCSetVersionedMergeable__donateRemoteUpdateWithType_fromPeerDeviceUUID_peerDeviceSite_relayedDeviceSites_mergeableDelta___block_invoke_10_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(*(a1 + 32) + 8);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)mergeableDeltasForMetadata:atomBatchVersion:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_1DA444000, v0, v1, "Cannot construct mergeable deltas without device mapping: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)mergeableDeltasForMetadata:atomBatchVersion:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)mergeableDeltasForMetadata:atomBatchVersion:error:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = 0;
  OUTLINED_FUNCTION_2_1();
  v5 = v0;
  _os_log_error_impl(&dword_1DA444000, v1, OS_LOG_TYPE_ERROR, "failed to finish writing atom batch %@ with error %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)stateVector
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_1DA444000, v0, v1, "Failed to construct content state vector: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)relayedDeviceSitesExcludingRequestingDeviceUUID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_1DA444000, v0, v1, "Skipping related device site resolution after device mapping failed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)localDeviceSiteAddingExpirationDate:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_1DA444000, v0, v1, "Cannot resolve local device site without device mapping: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)storedActiveDeviceSiteWithDeviceUUID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_0(&dword_1DA444000, v0, v1, "Cannot resolve device site without device mapping: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)hasNoPresentContent
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_2_0(&dword_1DA444000, a2, a3, "Failed to resolve local device rowId from mapping: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end