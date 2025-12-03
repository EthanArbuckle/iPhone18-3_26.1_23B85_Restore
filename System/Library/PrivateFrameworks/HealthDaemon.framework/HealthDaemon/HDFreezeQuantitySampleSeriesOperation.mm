@interface HDFreezeQuantitySampleSeriesOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDFreezeQuantitySampleSeriesOperation)initWithCoder:(id)coder;
- (HDFreezeQuantitySampleSeriesOperation)initWithIdentifier:(id)identifier metadata:(id)metadata endDate:(id)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDFreezeQuantitySampleSeriesOperation

- (HDFreezeQuantitySampleSeriesOperation)initWithIdentifier:(id)identifier metadata:(id)metadata endDate:(id)date
{
  identifierCopy = identifier;
  metadataCopy = metadata;
  dateCopy = date;
  v19.receiver = self;
  v19.super_class = HDFreezeQuantitySampleSeriesOperation;
  v11 = [(HDFreezeQuantitySampleSeriesOperation *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [metadataCopy copy];
    metadata = v11->_metadata;
    v11->_metadata = v14;

    v16 = [dateCopy copy];
    endDate = v11->_endDate;
    v11->_endDate = v16;

    v11->_freezeResult = 0;
  }

  return v11;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v92 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  objc_storeStrong(&self->_frozenIdentifier, self->_identifier);
  self->_freezeResult = 1;
  protectedDatabase = [transactionCopy protectedDatabase];
  identifier = self->_identifier;
  v12 = HDDataEntityPredicateForDataUUID();
  v88 = 0;
  v81 = protectedDatabase;
  v13 = [(HDDataEntity *)HDQuantitySampleSeriesEntity anyInDatabase:protectedDatabase predicate:v12 error:&v88];
  v14 = v88;

  v80 = transactionCopy;
  if (v13)
  {
    v15 = [v13 hasSeriesDataWithTransaction:transactionCopy error:error];
    v16 = v15;
    if (!v15)
    {
      v22 = 0;
      v23 = 0;
      v20 = profileCopy;
LABEL_71:

LABEL_72:
      goto LABEL_73;
    }

    v17 = transactionCopy;
    if ([v15 BOOLValue])
    {

      errorCopy = error;
      v18 = [v13 countForSeriesWithTransaction:transactionCopy error:error];
      v19 = v18;
      if (v18)
      {
        v20 = profileCopy;
        if ([v18 integerValue] == 1)
        {
          v21 = [v13 HFDKeyWithDatabase:v81 error:error];
          if (!v21)
          {
            v14 = 0;
LABEL_28:
            v22 = 0;
            v23 = 0;
LABEL_69:

            goto LABEL_70;
          }
        }

        else
        {
          v21 = 0;
        }

        v14 = [v13 freezeWithEndDate:self->_endDate transaction:v17 profile:profileCopy error:error];

        if (!v14)
        {
          v13 = 0;
          goto LABEL_28;
        }

        v74 = v14;
        v26 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v14, "persistentID")}];
        if (!self->_metadata)
        {
          v22 = 0;
          v36 = off_27860F000;
          if (!v21)
          {
LABEL_51:
            v49 = v36[59];
            v50 = self->_identifier;
            v84 = 0;
            v51 = [(__objc2_class *)v49 objectWithUUID:v50 encodingOptions:0 profile:v20 error:&v84];
            v14 = v84;
            if (v51)
            {
              [(HDSQLiteEntity *)HDDataEntity entityWithPersistentID:v26];
              v77 = v83 = v14;
              v52 = [v77 numberForProperty:@"provenance" transaction:v80 error:&v83];
              v71 = v83;

              v73 = v21;
              v79 = v51;
              v76 = v52;
              if (v52)
              {
                v53 = v52;
                dataProvenanceManager = [v20 dataProvenanceManager];
                v82 = v71;
                v55 = [dataProvenanceManager originProvenanceForPersistentID:v53 transaction:v80 error:&v82];
                v14 = v82;

                v56 = v26;
                if (!v55)
                {
                  _HKInitializeLogging();
                  v57 = *MEMORY[0x277CCC2A0];
                  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v91 = v14;
                    _os_log_error_impl(&dword_228986000, v57, OS_LOG_TYPE_ERROR, "Failed to look up provenance for series after freezing: %{public}@", buf, 0xCu);
                  }

                  v55 = 0;
                }
              }

              else
              {
                v56 = v26;
                _HKInitializeLogging();
                v60 = *MEMORY[0x277CCC2A0];
                if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v91 = v71;
                  _os_log_error_impl(&dword_228986000, v60, OS_LOG_TYPE_ERROR, "Failed to look up provenance ID for series after freezing: %{public}@", buf, 0xCu);
                }

                v55 = 0;
                v14 = v71;
              }

              dataManager = [v20 dataManager];
              v89 = v79;
              v23 = 1;
              v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
              [dataManager shouldNotifyForDataObjects:v62 provenance:v55 database:v81 anchor:v56];

              v26 = v56;
              v40 = v79;

              v21 = v73;
            }

            else
            {
              v58 = v26;
              _HKInitializeLogging();
              v59 = *MEMORY[0x277CCC2A0];
              if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v91 = v14;
                _os_log_error_impl(&dword_228986000, v59, OS_LOG_TYPE_ERROR, "Failed to look up series after freezing: %{public}@", buf, 0xCu);
              }

              v40 = 0;
              v23 = 1;
              v26 = v58;
            }

            goto LABEL_67;
          }

LABEL_50:
          v45 = v26;
          v46 = v36[59];
          longLongValue = [v21 longLongValue];
          v48 = v46;
          v26 = v45;
          if ([(__objc2_class *)v48 deleteSeriesDataWithKey:longLongValue database:v81 error:errorCopy])
          {
            goto LABEL_51;
          }

          v14 = 0;
          goto LABEL_59;
        }

        v87 = 0;
        v27 = [(HDDataEntity *)HDQuantitySampleSeriesEntity objectWithID:v26 encodingOptions:0 profile:profileCopy error:&v87];
        v28 = v87;
        if (!v27)
        {
          if (v28)
          {
            v40 = v28;
          }

          else
          {
            v40 = [MEMORY[0x277CCA9B8] hk_error:100 format:{@"Could not find sample with ID %@", v26}];
            if (!v40)
            {
              v14 = 0;
              v22 = 0;
LABEL_59:
              v23 = 0;
              goto LABEL_68;
            }
          }

          if (errorCopy)
          {
            v44 = v40;
            *errorCopy = v40;
          }

          else
          {
            _HKLogDroppedError();
          }

          v14 = 0;
          v22 = 0;
          v23 = 0;
LABEL_67:

          goto LABEL_68;
        }

        v68 = v28;
        v69 = v26;
        v72 = v21;
        [v27 _setMetadata:self->_metadata];
        [v27 sourceRevision];
        v30 = v29 = v17;
        source = [v30 source];
        _sourceID = [source _sourceID];

        v86 = 0;
        v85 = 0;
        v67 = v27;
        v70 = _sourceID;
        v33 = [(HDDataEntity *)HDQuantitySampleSeriesEntity shouldInsertObject:v27 sourceID:_sourceID profile:profileCopy transaction:v29 objectToReplace:&v86 objectID:&v85 error:errorCopy];
        v34 = v86;
        v35 = v85;
        v65 = v35;
        v66 = v34;
        if (v33 == 2)
        {
          v41 = 0;
          v22 = 0;
          v21 = v72;
          v26 = v69;
          v39 = v27;
        }

        else
        {
          if (v33 == 1)
          {
            v36 = off_27860F000;
            v26 = v69;
            v21 = v72;
            if (![HDQuantitySampleSeriesEntity deleteSeriesWithID:v69 deleteSeriesData:1 profile:profileCopy transaction:v80 error:errorCopy])
            {
              v41 = 0;
              v22 = 0;
              v39 = v67;
              goto LABEL_48;
            }

            uUID = [v34 UUID];
            frozenIdentifier = self->_frozenIdentifier;
            self->_frozenIdentifier = uUID;

            v22 = 0;
            v39 = v67;
LABEL_37:
            v41 = 1;
LABEL_48:

            if (!v41)
            {
              v14 = 0;
              v23 = 0;
              v20 = profileCopy;
LABEL_68:

              v13 = v74;
              goto LABEL_69;
            }

            v20 = profileCopy;
            if (!v21)
            {
              goto LABEL_51;
            }

            goto LABEL_50;
          }

          v22 = v35;
          metadataManager = [profileCopy metadataManager];
          v39 = v27;
          v43 = [metadataManager insertMetadata:self->_metadata forObjectID:v69 sourceID:v70 externalSyncObjectCode:objc_msgSend(v27 objectDeleted:"_externalSyncObjectCode") error:{0, errorCopy}];

          v21 = v72;
          if (v43)
          {
            v26 = v69;
            if ([HDQuantitySampleSeriesEntity replaceObjectID:v22 replacementObjectID:v69 deleteOriginalSeriesData:1 profile:profileCopy transaction:v80 error:errorCopy])
            {
              v36 = off_27860F000;
              goto LABEL_37;
            }

            v41 = 0;
          }

          else
          {
            v41 = 0;
            v26 = v69;
          }
        }

        v36 = off_27860F000;
        goto LABEL_48;
      }

      v14 = 0;
      v22 = 0;
      v23 = 0;
      v20 = profileCopy;
    }

    else
    {
      v24 = self->_frozenIdentifier;
      self->_frozenIdentifier = 0;

      self->_freezeResult = 2;
      v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v13, "persistentID")}];
      v20 = profileCopy;
      v23 = [HDQuantitySampleSeriesEntity deleteSeriesWithID:v19 deleteSeriesData:1 profile:profileCopy transaction:transactionCopy error:error];
      v22 = 0;
    }

LABEL_70:

    goto LABEL_71;
  }

  if (v14)
  {
    v13 = v14;
    v20 = profileCopy;
LABEL_13:
    if (error)
    {
      v25 = v13;
      v22 = 0;
      v23 = 0;
      *error = v13;
    }

    else
    {
      _HKLogDroppedError();
      v22 = 0;
      v23 = 0;
    }

    v14 = v13;
    goto LABEL_72;
  }

  v13 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"Unable to find quantity series '%@' when freezing.", self->_identifier}];
  v20 = profileCopy;
  if (v13)
  {
    goto LABEL_13;
  }

  v14 = 0;
  v22 = 0;
  v23 = 0;
LABEL_73:

  v63 = *MEMORY[0x277D85DE8];
  return v23;
}

- (HDFreezeQuantitySampleSeriesOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
  hk_secureCodingClasses = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
  v7 = [coderCopy decodeObjectOfClasses:hk_secureCodingClasses forKey:@"meta"];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"end"];

  v9 = [(HDFreezeQuantitySampleSeriesOperation *)self initWithIdentifier:v5 metadata:v7 endDate:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDFreezeQuantitySampleSeriesOperation;
  coderCopy = coder;
  [(HDJournalableOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifier forKey:{@"id", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_metadata forKey:@"meta"];
  [coderCopy encodeObject:self->_endDate forKey:@"end"];
}

@end