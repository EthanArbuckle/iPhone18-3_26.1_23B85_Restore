@interface CPLCloudKitReshareRecordsTask
- (BOOL)shouldCopyCKRecordKeyToDestinationCKRecord:(id)record;
- (CPLCloudKitReshareRecordsTask)initWithController:(id)controller records:(id)records sourceScope:(id)scope destinationScope:(id)destinationScope transportScopeMapping:(id)mapping completionHandler:(id)handler;
- (id)baseDestinationCKRecordForSourceCKRecord:(id)record destinationCKRecordID:(id)d error:(id *)error;
- (id)finalizedDestinationCKRecordFromProposedCKRecord:(id)record error:(id *)error;
- (id)recordNameInDestinationCKRecordFromRecordName:(id)name error:(id *)error;
- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)d;
- (void)_deleteSourceRecordIDs:(id)ds;
- (void)prepareCopyForCKRecordID:(id)d fromCKRecord:(id)record;
- (void)runOperations;
@end

@implementation CPLCloudKitReshareRecordsTask

- (CPLCloudKitReshareRecordsTask)initWithController:(id)controller records:(id)records sourceScope:(id)scope destinationScope:(id)destinationScope transportScopeMapping:(id)mapping completionHandler:(id)handler
{
  recordsCopy = records;
  scopeCopy = scope;
  destinationScopeCopy = destinationScope;
  mappingCopy = mapping;
  handlerCopy = handler;
  v25.receiver = self;
  v25.super_class = CPLCloudKitReshareRecordsTask;
  v19 = [(CPLCloudKitTransportTask *)&v25 initWithController:controller];
  if (v19)
  {
    v20 = [recordsCopy copy];
    records = v19->_records;
    v19->_records = v20;

    v22 = [handlerCopy copy];
    completionHandler = v19->_completionHandler;
    v19->_completionHandler = v22;

    objc_storeStrong(&v19->_sourceScope, scope);
    objc_storeStrong(&v19->_destinationScope, destinationScope);
    [(CPLCloudKitTransportTask *)v19 setTransportScopeMapping:mappingCopy];
  }

  return v19;
}

- (void)_deleteSourceRecordIDs:(id)ds
{
  dsCopy = ds;
  v14 = 0;
  v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v14];
  v6 = v14;
  if (v5)
  {
    v7 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:0 recordIDsToDelete:dsCopy];
    fetchCache = [(CPLCloudKitTransportTask *)self fetchCache];
    v9 = fetchCache;
    if (fetchCache)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000601E0;
      v12[3] = &unk_100273B50;
      v12[4] = self;
      v13 = fetchCache;
      [v7 setPerRecordDeleteBlock:v12];
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10006029C;
    v10[3] = &unk_100275030;
    v10[4] = self;
    v11 = dsCopy;
    [v7 setModifyRecordsCompletionBlock:v10];
    [(CPLCloudKitTransportTask *)self launchOperation:v7 type:[(CPLCloudKitZoneIdentification *)self->_sourceIdentification operationType] withContext:0];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (void)runOperations
{
  v42[0] = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:v42];
  v4 = v42[0];
  if (v3)
  {
    scopeIdentifier = [(CPLEngineScope *)self->_sourceScope scopeIdentifier];
    v6 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:scopeIdentifier];

    zoneID = [v6 zoneID];

    if (zoneID)
    {
      scopeIdentifier2 = [(CPLEngineScope *)self->_destinationScope scopeIdentifier];
      v9 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:scopeIdentifier2];

      zoneID2 = [v9 zoneID];

      if (zoneID2)
      {
        controller = [(CPLCloudKitTransportTask *)self controller];
        v12 = [controller zoneIdentificationForCloudKitScope:v6 engineScope:self->_sourceScope];
        sourceIdentification = self->_sourceIdentification;
        self->_sourceIdentification = v12;

        controller2 = [(CPLCloudKitTransportTask *)self controller];
        v15 = [controller2 zoneIdentificationForCloudKitScope:v9 engineScope:self->_destinationScope];
        destinationIdentification = self->_destinationIdentification;
        self->_destinationIdentification = v15;

        v17 = [[NSMutableArray alloc] initWithCapacity:{-[NSDictionary count](self->_records, "count")}];
        v18 = [[NSMutableArray alloc] initWithCapacity:{-[NSDictionary count](self->_records, "count")}];
        v19 = objc_alloc_init(NSMutableArray);
        v20 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSDictionary count](self->_records, "count")}];
        rejectedMapping = self->_rejectedMapping;
        self->_rejectedMapping = v20;

        records = self->_records;
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10006095C;
        v38[3] = &unk_100275058;
        v38[4] = self;
        v23 = v19;
        v39 = v23;
        v40 = v17;
        v41 = v18;
        v24 = v18;
        v25 = v17;
        [(NSDictionary *)records enumerateKeysAndObjectsUsingBlock:v38];
        v26 = +[NSDate date];
        recordModificationDate = self->_recordModificationDate;
        self->_recordModificationDate = v26;

        v28 = +[CPLCKRecordPropertyMapping sharedInstance];
        mapping = self->_mapping;
        self->_mapping = v28;

        operationType = [(CPLCloudKitZoneIdentification *)self->_sourceIdentification operationType];
        operationType2 = [(CPLCloudKitZoneIdentification *)self->_destinationIdentification operationType];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100060AA4;
        v35[3] = &unk_100275080;
        v36 = v23;
        selfCopy = self;
        v32 = v23;
        [(CPLCloudKitTransportTask *)self moveRecordsWithIDs:v25 followRemapping:1 sourceType:operationType destinationRecordIDs:v24 destinationType:operationType2 helper:self completionHandler:v35];
      }

      else
      {
        completionHandler = self->_completionHandler;
        v25 = [CPLErrors cplErrorWithCode:80 description:@"Missing required zone for destination scope"];
        completionHandler[2](completionHandler, v25);
      }
    }

    else
    {
      v33 = self->_completionHandler;
      v9 = [CPLErrors cplErrorWithCode:80 description:@"Missing required zone for source scope"];
      v33[2](v33, v9);
    }
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_rejectedMapping objectForKeyedSubscript:dCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [CPLScopedIdentifier alloc];
    scopeIdentifier = [(CPLCloudKitZoneIdentification *)self->_destinationIdentification scopeIdentifier];
    recordName = [dCopy recordName];
    v7 = [v8 initWithScopeIdentifier:scopeIdentifier identifier:recordName];
  }

  return v7;
}

- (void)prepareCopyForCKRecordID:(id)d fromCKRecord:(id)record
{
  dCopy = d;
  recordCopy = record;
  v9 = [(CPLCloudKitTransportTask *)self scopedIdentifierForCKRecordID:dCopy];
  currentSourceScopedIdentifier = self->_currentSourceScopedIdentifier;
  self->_currentSourceScopedIdentifier = v9;

  if (!self->_currentSourceScopedIdentifier)
  {
    sub_1001A1B58(a2, self, dCopy);
  }

  v11 = [(NSDictionary *)self->_records objectForKeyedSubscript:?];
  currentSharedRecord = self->_currentSharedRecord;
  self->_currentSharedRecord = v11;

  if (!self->_currentSharedRecord)
  {
    sub_1001A1A74(&self->_currentSourceScopedIdentifier, a2, self);
  }

  v18 = dCopy;
  recordID = [recordCopy recordID];
  if (v18 && recordID)
  {
    v14 = [v18 isEqual:recordID];

    if (v14)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (!(v18 | recordID))
    {
      goto LABEL_11;
    }
  }

  v15 = [(NSMutableDictionary *)self->_rejectedMapping objectForKeyedSubscript:v18];
  if (v15)
  {
    rejectedMapping = self->_rejectedMapping;
    recordID2 = [recordCopy recordID];
    [(NSMutableDictionary *)rejectedMapping setObject:v15 forKeyedSubscript:recordID2];
  }

LABEL_11:
}

- (id)baseDestinationCKRecordForSourceCKRecord:(id)record destinationCKRecordID:(id)d error:(id *)error
{
  recordCopy = record;
  dCopy = d;
  recordChangeData = [(CPLRecordChange *)self->_currentSharedRecord recordChangeData];
  if (!recordChangeData || ([CPLArchiver unarchiveObjectWithData:recordChangeData ofClass:objc_opt_class()], v10 = objc_claimAutoreleasedReturnValue(), (v11 = v10) == 0))
  {
LABEL_14:
    sub_1001A1CDC(recordCopy, dCopy, buf);
    v11 = *buf;
    goto LABEL_15;
  }

  recordType = [v10 recordType];
  recordType2 = [recordCopy recordType];
  v14 = [recordType isEqualToString:recordType2];

  if ((v14 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = sub_100003854();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        currentSourceScopedIdentifier = self->_currentSourceScopedIdentifier;
        scopedIdentifier = [(CPLRecordChange *)self->_currentSharedRecord scopedIdentifier];
        recordType3 = [recordCopy recordType];
        recordType4 = [v11 recordType];
        *buf = 138413058;
        *&buf[4] = currentSourceScopedIdentifier;
        v36 = 2112;
        v37 = scopedIdentifier;
        v38 = 2112;
        v39 = recordType3;
        v40 = 2112;
        v41 = recordType4;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Trying to move %@ to %@ but source is %@ while destination is %@", buf, 0x2Au);
      }
    }

    goto LABEL_14;
  }

  recordID = [v11 recordID];
  v16 = [recordID isEqual:dCopy];

  if ((v16 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v17 = sub_100003854();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v33 = self->_currentSourceScopedIdentifier;
      scopedIdentifier2 = [(CPLRecordChange *)self->_currentSharedRecord scopedIdentifier];
      recordID2 = [recordCopy recordID];
      recordID3 = [v11 recordID];
      *buf = 138413058;
      *&buf[4] = v33;
      v36 = 2112;
      v37 = scopedIdentifier2;
      v38 = 2112;
      v39 = recordID2;
      v40 = 2112;
      v41 = recordID3;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Trying to move %@ to %@ but proposed record ID is %@ while expected record ID is %@", buf, 0x2Au);
    }
  }

LABEL_15:
  sourceRelatedRecordName = self->_sourceRelatedRecordName;
  self->_sourceRelatedRecordName = 0;

  v26 = [-[CPLRecordChange recordClass](self->_currentSharedRecord "recordClass")];
  if (!v26)
  {
    goto LABEL_23;
  }

  v27 = [recordCopy objectForKeyedSubscript:v26];
  if (v27)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
      recordID4 = self->_sourceRelatedRecordName;
      self->_sourceRelatedRecordName = v28;
LABEL_21:

      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      recordID4 = [v27 recordID];
      recordName = [recordID4 recordName];
      v31 = self->_sourceRelatedRecordName;
      self->_sourceRelatedRecordName = recordName;

      goto LABEL_21;
    }
  }

LABEL_22:

LABEL_23:

  return v11;
}

- (BOOL)shouldCopyCKRecordKeyToDestinationCKRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy isEqualToString:@"dateExpunged"])
  {
    v5 = 1;
  }

  else
  {
    recordClass = [(CPLRecordChange *)self->_currentSharedRecord recordClass];
    if ([(CPLCKRecordPropertyMapping *)self->_mapping isKeyReadOnly:recordCopy recordClass:recordClass])
    {
      v5 = 0;
    }

    else
    {
      v5 = [(CPLCKRecordPropertyMapping *)self->_mapping shouldUpdateKeyOnSharedRecord:recordCopy recordClass:recordClass];
    }
  }

  return v5;
}

- (id)recordNameInDestinationCKRecordFromRecordName:(id)name error:(id *)error
{
  nameCopy = name;
  sourceRelatedRecordName = self->_sourceRelatedRecordName;
  if (sourceRelatedRecordName && [(NSString *)sourceRelatedRecordName isEqual:nameCopy])
  {
    relatedIdentifier = [(CPLRecordChange *)self->_currentSharedRecord relatedIdentifier];
    v8 = relatedIdentifier;
    if (relatedIdentifier)
    {
      v9 = relatedIdentifier;
    }

    else
    {
      v9 = nameCopy;
    }

    v10 = v9;
  }

  else
  {
    v10 = nameCopy;
  }

  return v10;
}

- (id)finalizedDestinationCKRecordFromProposedCKRecord:(id)record error:(id *)error
{
  recordCopy = record;
  [recordCopy setObject:self->_recordModificationDate forKey:@"recordModificationDate"];
  recordClass = [(CPLRecordChange *)self->_currentSharedRecord recordClass];
  if (![(CPLCloudKitZoneIdentification *)self->_destinationIdentification supportsDirectDeletionOfRecordClass:recordClass])
  {
    [recordCopy setObject:&__kCFBooleanFalse forKey:@"isExpunged"];
    v7 = [recordCopy objectForKey:@"isDeleted"];

    if (!v7)
    {
      [recordCopy setObject:&__kCFBooleanFalse forKey:@"isDeleted"];
    }

    if ([recordClass isSubclassOfClass:objc_opt_class()])
    {
      [recordCopy setObject:self->_recordModificationDate forKey:@"mostRecentAddedDate"];
    }
  }

  if ([recordClass supportsSharingScopedIdentifier])
  {
    [recordCopy setObject:0 forKey:@"linkedShareZoneName"];
    [recordCopy setObject:0 forKey:@"linkedShareZoneOwner"];
    [recordCopy setObject:0 forKey:@"linkedShareRecordName"];
  }

  return recordCopy;
}

@end