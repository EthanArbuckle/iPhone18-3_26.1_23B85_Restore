@interface _HDDataEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (_HDDataEntityEncoder)initWithHealthEntityClass:(Class)class profile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter;
- (id)_copyBaseMetadataForRow:(uint64_t)row;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)orderedProperties;
- (void)finish;
@end

@implementation _HDDataEntityEncoder

- (id)orderedProperties
{
  v8[4] = *MEMORY[0x277D85DE8];
  v8[0] = @"uuid";
  v8[1] = @"provenance";
  v8[2] = @"creation_date";
  v8[3] = @"external_sync_ids.object_code";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:4];
  v4 = v3;
  if (self->_includeAutomaticTimeZones)
  {
    v5 = [v3 arrayByAddingObject:@"data_provenances.tz_name"];

    v4 = v5;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)finish
{
  [(HDSQLiteStatement *)self->_metadataValueStatement finish];
  v3.receiver = self;
  v3.super_class = _HDDataEntityEncoder;
  [(HDEntityEncoder *)&v3 finish];
}

- (_HDDataEntityEncoder)initWithHealthEntityClass:(Class)class profile:(id)profile transaction:(id)transaction purpose:(int64_t)purpose encodingOptions:(id)options authorizationFilter:(id)filter
{
  profileCopy = profile;
  transactionCopy = transaction;
  optionsCopy = options;
  v28.receiver = self;
  v28.super_class = _HDDataEntityEncoder;
  v17 = [(HDEntityEncoder *)&v28 initWithHealthEntityClass:class profile:profileCopy transaction:transactionCopy purpose:purpose encodingOptions:optionsCopy authorizationFilter:filter];
  if (v17)
  {
    v18 = [HDMetadataValueStatement metadataValueStatementWithTransaction:transactionCopy];
    metadataValueStatement = v17->_metadataValueStatement;
    v17->_metadataValueStatement = v18;

    v20 = [[HDDataProvenanceCache alloc] initWithProfile:profileCopy transaction:transactionCopy purpose:purpose];
    dataProvenanceCache = v17->_dataProvenanceCache;
    v17->_dataProvenanceCache = v20;

    v22 = [optionsCopy objectForKeyedSubscript:@"IncludeAutomaticTimeZone"];
    v17->_includeAutomaticTimeZones = [v22 BOOLValue];

    v23 = [optionsCopy objectForKeyedSubscript:@"IncludeContributorInformation"];
    v17->_includeContributorInformation = [v23 BOOLValue];

    v24 = [optionsCopy objectForKeyedSubscript:@"ExcludePrivateMetadata"];
    bOOLValue = [v24 BOOLValue];

    if (bOOLValue)
    {
      metadataKeyFilter = v17->_metadataKeyFilter;
      v17->_metadataKeyFilter = &__block_literal_global_711;
    }
  }

  return v17;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  profile = [(HDEntityEncoder *)self profile];
  metadataManager = [profile metadataManager];

  v10 = [_HDDataEntityEncoder _copyBaseMetadataForRow:?];
  v11 = [metadataManager metadataForObjectID:d baseMetadata:v10 keyFilter:self->_metadataKeyFilter statement:self->_metadataValueStatement error:error];

  if (v11)
  {
    v12 = objc_alloc_init(HDCodableHealthObject);
    HDSQLiteColumnWithNameAsDouble();
    [(HDCodableHealthObject *)v12 setCreationDate:?];
    v13 = HDSQLiteColumnWithNameAsData();
    [(HDCodableHealthObject *)v12 setUuid:v13];

    if ((HDSQLiteColumnWithNameIsNull() & 1) == 0)
    {
      [(HDCodableHealthObject *)v12 setExternalSyncObjectCode:HDSQLiteColumnWithNameAsInt64()];
    }

    if ([v11 count])
    {
      hk_codableMetadata = [v11 hk_codableMetadata];
      [(HDCodableHealthObject *)v12 setMetadataDictionary:hk_codableMetadata];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_copyBaseMetadataForRow:(uint64_t)row
{
  if (!row || *(row + 96) != 1)
  {
    return 0;
  }

  v1 = HDSQLiteColumnWithNameAsString();
  if ([v1 length])
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v2 setObject:v1 forKeyedSubscript:*MEMORY[0x277CCDFB0]];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)objectForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  _init = [objc_alloc(MEMORY[0x277CCD6F0]) _init];
  if ([(_HDDataEntityEncoder *)self applyPropertiesToObject:_init persistentID:d row:row error:error])
  {
    v10 = _init;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HDDataEntity.m" lineNumber:1597 description:{@"Invalid parameter not satisfying: %@", @"[object isKindOfClass:[HKObject class]]"}];
  }

  HDSQLiteColumnWithNameAsDouble();
  [objectCopy _setCreationTimestamp:?];
  v10 = HDSQLiteColumnWithNameAsUUID();
  [objectCopy _setUUID:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:HDSQLiteColumnWithNameAsInt64()];
  v12 = [(HDDataProvenanceCache *)self->_dataProvenanceCache provenanceWithID:v11];
  profile = [(HDEntityEncoder *)self profile];
  dataProvenanceCache = self->_dataProvenanceCache;
  v51 = 0;
  v15 = [(HDDataProvenanceCache *)dataProvenanceCache sourceRevisionForProvenanceID:v11 dataProvenance:v12 profile:profile error:&v51];
  v16 = v51;
  v46 = v15;
  v47 = v12;
  if (v15)
  {
    errorCopy = error;
    [objectCopy _setSourceRevision:v15];
    deviceID = [v12 deviceID];
    if (deviceID)
    {
      v18 = self->_dataProvenanceCache;
      v50 = v16;
      v19 = [(HDDataProvenanceCache *)v18 deviceForPersistentID:deviceID profile:profile error:&v50];
      v20 = v50;

      if (!v19 && v20)
      {
        _HKInitializeLogging();
        v21 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v53 = v20;
          _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "Expected device not found. %{public}@", buf, 0xCu);
        }

        if (errorCopy)
        {
          v22 = v20;
          v23 = 0;
          *errorCopy = v20;
          goto LABEL_47;
        }

        _HKLogDroppedError();
LABEL_41:
        v23 = 0;
        goto LABEL_47;
      }

      [objectCopy _setDevice:v19];

      v12 = v47;
    }

    else
    {
      v20 = v16;
    }

    if (self->_includeContributorInformation)
    {
      v26 = self->_dataProvenanceCache;
      contributorReference = [v12 contributorReference];
      v49 = v20;
      v28 = [(HDDataProvenanceCache *)v26 contributorForReference:contributorReference profile:profile error:&v49];
      v29 = v49;

      if (!v28 && v29)
      {
        _HKInitializeLogging();
        v30 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v53 = v29;
          _os_log_error_impl(&dword_228986000, v30, OS_LOG_TYPE_ERROR, "Expected contributor not found. %{public}@", buf, 0xCu);
        }

        if (errorCopy)
        {
          v31 = v29;
          v23 = 0;
          *errorCopy = v29;
        }

        else
        {
          _HKLogDroppedError();
          v23 = 0;
        }

        v20 = v29;
        goto LABEL_47;
      }

      if (v28)
      {
        [objectCopy _setContributor:v28];
      }
    }

    else
    {
      v29 = v20;
    }

    metadataManager = [profile metadataManager];
    v33 = [_HDDataEntityEncoder _copyBaseMetadataForRow:?];
    metadataKeyFilter = self->_metadataKeyFilter;
    metadataValueStatement = self->_metadataValueStatement;
    v48 = v29;
    v36 = [metadataManager metadataForObjectID:d baseMetadata:v33 keyFilter:metadataKeyFilter statement:metadataValueStatement error:&v48];
    v20 = v48;

    v23 = v36 != 0;
    if (v36)
    {
      if ([v36 count])
      {
        [objectCopy _setMetadata:v36];
      }
    }

    else
    {
      _HKInitializeLogging();
      v37 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v53 = v20;
        _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "Error retrieving metadata: %{public}@", buf, 0xCu);
      }

      v38 = v20;
      v39 = v38;
      if (v38)
      {
        if (errorCopy)
        {
          v40 = v38;
          *errorCopy = v39;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v53 = v16;
      _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "sourceRevision not found. %{public}@", buf, 0xCu);
    }

    deviceID = v16;
    if (!deviceID)
    {
      v20 = 0;
      goto LABEL_41;
    }

    if (error)
    {
      v25 = deviceID;
      v23 = 0;
      *error = deviceID;
    }

    else
    {
      _HKLogDroppedError();
      v23 = 0;
    }

    v20 = deviceID;
  }

LABEL_47:

  v41 = *MEMORY[0x277D85DE8];
  return v23;
}

@end