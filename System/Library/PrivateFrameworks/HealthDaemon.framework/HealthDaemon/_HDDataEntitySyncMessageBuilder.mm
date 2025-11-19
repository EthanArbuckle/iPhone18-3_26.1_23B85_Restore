@interface _HDDataEntitySyncMessageBuilder
- (BOOL)finishAndFlushWithError:(id *)a3;
- (_HDDataEntitySyncMessageBuilder)init;
- (_HDDataEntitySyncMessageBuilder)initWithProfile:(id)a3 transaction:(id)a4 entityClass:(Class)a5 version:(id)a6 provenanceCache:(id)a7 encodingOptions:(id)a8 messageHandler:(id)a9 bytesPerChangeSet:(int64_t)a10 bytesPerChange:(int64_t)a11;
- (int64_t)addEntity:(id)a3 row:(HDSQLiteRow *)a4 anchor:(int64_t)a5 error:(id *)a6;
- (uint64_t)_sendCurrentCollectionIsFinal:(uint64_t)a3 error:;
@end

@implementation _HDDataEntitySyncMessageBuilder

- (_HDDataEntitySyncMessageBuilder)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (_HDDataEntitySyncMessageBuilder)initWithProfile:(id)a3 transaction:(id)a4 entityClass:(Class)a5 version:(id)a6 provenanceCache:(id)a7 encodingOptions:(id)a8 messageHandler:(id)a9 bytesPerChangeSet:(int64_t)a10 bytesPerChange:(int64_t)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v27.receiver = self;
  v27.super_class = _HDDataEntitySyncMessageBuilder;
  v21 = [(_HDDataEntitySyncMessageBuilder *)&v27 init];
  v22 = v21;
  if (v21)
  {
    objc_storeWeak(&v21->_profile, v16);
    v22->_entityClass = a5;
    v22->_entityVersion = a6;
    objc_storeStrong(&v22->_provenanceCache, a7);
    objc_storeStrong(&v22->_transaction, a4);
    v23 = [(objc_class *)a5 entityEncoderForProfile:v16 transaction:v17 purpose:0 encodingOptions:v19 authorizationFilter:0];
    entityEncoder = v22->_entityEncoder;
    v22->_entityEncoder = v23;

    objc_storeStrong(&v22->_messageHandler, a9);
    v22->_maxEncodedBytesPerChangeSet = a10;
    v22->_maxEncodedBytesPerChange = a11;
    *&v22->_totalEncodedBytes = 0u;
    *&v22->_lastEntityAnchor = 0u;
    *&v22->_hasEncodedAnyObject = 0;
  }

  return v22;
}

- (int64_t)addEntity:(id)a3 row:(HDSQLiteRow *)a4 anchor:(int64_t)a5 error:(id *)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v12 = [(HDDataProvenanceCache *)self->_provenanceCache provenanceWithID:v11];
  if (!v12)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a6 code:100 format:{@"Failed to retrieve provenance for id %@", v11}];
LABEL_9:
    v24 = 2;
    goto LABEL_10;
  }

  provenanceCache = self->_provenanceCache;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [(HDDataProvenanceCache *)provenanceCache codableObjectCollectionForProvenance:v12 profile:WeakRetained];

  if (!v15)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a6 code:100 format:{@"Failed to find/create codable object collection for provenance %@", v12}];
    goto LABEL_9;
  }

  v16 = v10;
  v17 = v12;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  entityEncoder = self->_entityEncoder;
  v27 = v16;
  v19 = [v16 persistentID];
  maxEncodedBytesPerChange = self->_maxEncodedBytesPerChange;
  v32 = a5;
  v33 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __68___HDDataEntitySyncMessageBuilder__addEntity_row_anchor_provenance___block_invoke;
  v28[3] = &unk_2786215C0;
  v28[4] = self;
  v30 = &v34;
  v31 = v38;
  v21 = v17;
  v29 = v21;
  LOBYTE(v17) = [(HDEntityEncoder *)entityEncoder generateCodableRepresentationsForPersistentID:v19 row:a4 maxBytesPerRepresentation:maxEncodedBytesPerChange error:&v33 handler:v28];
  v22 = v33;
  if ((v17 & 1) == 0)
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v41 = self;
      v42 = 2114;
      v43 = v22;
      _os_log_error_impl(&dword_228986000, v23, OS_LOG_TYPE_ERROR, "%{public}@: failed to generate codable representation for sync: %{public}@", buf, 0x16u);
    }
  }

  v24 = v35[3];

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v38, 8);

LABEL_10:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (BOOL)finishAndFlushWithError:(id *)a3
{
  [(HDEntityEncoder *)self->_entityEncoder finish];
  if (!self->_hasEncodedAnyObject || self->_didSendFinal)
  {
    return 1;
  }

  self->_didSendFinal = 1;

  return [(_HDDataEntitySyncMessageBuilder *)self _sendCurrentCollectionIsFinal:a3 error:?];
}

- (uint64_t)_sendCurrentCollectionIsFinal:(uint64_t)a3 error:
{
  if (result)
  {
    v5 = result;
    v6 = [*(result + 32) allCodableObjectCollections];
    v7 = [*(v5 + 56) sendCodableChange:v6 version:*(v5 + 24) resultAnchor:*(v5 + 96) sequence:*(v5 + 104) done:a2 error:a3];
    [*(v5 + 32) clearCodableObjectCollections];
    *(v5 + 88) = 0;

    return v7;
  }

  return result;
}

@end