@interface CPLCloudKitReshareRecordsTask
- (BOOL)shouldCopyCKRecordKeyToDestinationCKRecord:(id)a3;
- (CPLCloudKitReshareRecordsTask)initWithController:(id)a3 records:(id)a4 sourceScope:(id)a5 destinationScope:(id)a6 transportScopeMapping:(id)a7 completionHandler:(id)a8;
- (id)baseDestinationCKRecordForSourceCKRecord:(id)a3 destinationCKRecordID:(id)a4 error:(id *)a5;
- (id)finalizedDestinationCKRecordFromProposedCKRecord:(id)a3 error:(id *)a4;
- (id)recordNameInDestinationCKRecordFromRecordName:(id)a3 error:(id *)a4;
- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)a3;
- (void)_deleteSourceRecordIDs:(id)a3;
- (void)prepareCopyForCKRecordID:(id)a3 fromCKRecord:(id)a4;
- (void)runOperations;
@end

@implementation CPLCloudKitReshareRecordsTask

- (CPLCloudKitReshareRecordsTask)initWithController:(id)a3 records:(id)a4 sourceScope:(id)a5 destinationScope:(id)a6 transportScopeMapping:(id)a7 completionHandler:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = CPLCloudKitReshareRecordsTask;
  v19 = [(CPLCloudKitTransportTask *)&v25 initWithController:a3];
  if (v19)
  {
    v20 = [v14 copy];
    records = v19->_records;
    v19->_records = v20;

    v22 = [v18 copy];
    completionHandler = v19->_completionHandler;
    v19->_completionHandler = v22;

    objc_storeStrong(&v19->_sourceScope, a5);
    objc_storeStrong(&v19->_destinationScope, a6);
    [(CPLCloudKitTransportTask *)v19 setTransportScopeMapping:v17];
  }

  return v19;
}

- (void)_deleteSourceRecordIDs:(id)a3
{
  v4 = a3;
  v14 = 0;
  v5 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v14];
  v6 = v14;
  if (v5)
  {
    v7 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:0 recordIDsToDelete:v4];
    v8 = [(CPLCloudKitTransportTask *)self fetchCache];
    v9 = v8;
    if (v8)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000601E0;
      v12[3] = &unk_100273B50;
      v12[4] = self;
      v13 = v8;
      [v7 setPerRecordDeleteBlock:v12];
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10006029C;
    v10[3] = &unk_100275030;
    v10[4] = self;
    v11 = v4;
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
    v5 = [(CPLEngineScope *)self->_sourceScope scopeIdentifier];
    v6 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:v5];

    v7 = [v6 zoneID];

    if (v7)
    {
      v8 = [(CPLEngineScope *)self->_destinationScope scopeIdentifier];
      v9 = [(CPLCloudKitTransportTask *)self cloudKitScopeForScopeIdentifier:v8];

      v10 = [v9 zoneID];

      if (v10)
      {
        v11 = [(CPLCloudKitTransportTask *)self controller];
        v12 = [v11 zoneIdentificationForCloudKitScope:v6 engineScope:self->_sourceScope];
        sourceIdentification = self->_sourceIdentification;
        self->_sourceIdentification = v12;

        v14 = [(CPLCloudKitTransportTask *)self controller];
        v15 = [v14 zoneIdentificationForCloudKitScope:v9 engineScope:self->_destinationScope];
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

        v30 = [(CPLCloudKitZoneIdentification *)self->_sourceIdentification operationType];
        v31 = [(CPLCloudKitZoneIdentification *)self->_destinationIdentification operationType];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100060AA4;
        v35[3] = &unk_100275080;
        v36 = v23;
        v37 = self;
        v32 = v23;
        [(CPLCloudKitTransportTask *)self moveRecordsWithIDs:v25 followRemapping:1 sourceType:v30 destinationRecordIDs:v24 destinationType:v31 helper:self completionHandler:v35];
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

- (id)rejectedScopedIdentifierForRejectedCKRecordID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_rejectedMapping objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [CPLScopedIdentifier alloc];
    v9 = [(CPLCloudKitZoneIdentification *)self->_destinationIdentification scopeIdentifier];
    v10 = [v4 recordName];
    v7 = [v8 initWithScopeIdentifier:v9 identifier:v10];
  }

  return v7;
}

- (void)prepareCopyForCKRecordID:(id)a3 fromCKRecord:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(CPLCloudKitTransportTask *)self scopedIdentifierForCKRecordID:v7];
  currentSourceScopedIdentifier = self->_currentSourceScopedIdentifier;
  self->_currentSourceScopedIdentifier = v9;

  if (!self->_currentSourceScopedIdentifier)
  {
    sub_1001A1B58(a2, self, v7);
  }

  v11 = [(NSDictionary *)self->_records objectForKeyedSubscript:?];
  currentSharedRecord = self->_currentSharedRecord;
  self->_currentSharedRecord = v11;

  if (!self->_currentSharedRecord)
  {
    sub_1001A1A74(&self->_currentSourceScopedIdentifier, a2, self);
  }

  v18 = v7;
  v13 = [v8 recordID];
  if (v18 && v13)
  {
    v14 = [v18 isEqual:v13];

    if (v14)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (!(v18 | v13))
    {
      goto LABEL_11;
    }
  }

  v15 = [(NSMutableDictionary *)self->_rejectedMapping objectForKeyedSubscript:v18];
  if (v15)
  {
    rejectedMapping = self->_rejectedMapping;
    v17 = [v8 recordID];
    [(NSMutableDictionary *)rejectedMapping setObject:v15 forKeyedSubscript:v17];
  }

LABEL_11:
}

- (id)baseDestinationCKRecordForSourceCKRecord:(id)a3 destinationCKRecordID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(CPLRecordChange *)self->_currentSharedRecord recordChangeData];
  if (!v9 || ([CPLArchiver unarchiveObjectWithData:v9 ofClass:objc_opt_class()], v10 = objc_claimAutoreleasedReturnValue(), (v11 = v10) == 0))
  {
LABEL_14:
    sub_1001A1CDC(v7, v8, buf);
    v11 = *buf;
    goto LABEL_15;
  }

  v12 = [v10 recordType];
  v13 = [v7 recordType];
  v14 = [v12 isEqualToString:v13];

  if ((v14 & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v21 = sub_100003854();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        currentSourceScopedIdentifier = self->_currentSourceScopedIdentifier;
        v22 = [(CPLRecordChange *)self->_currentSharedRecord scopedIdentifier];
        v23 = [v7 recordType];
        v24 = [v11 recordType];
        *buf = 138413058;
        *&buf[4] = currentSourceScopedIdentifier;
        v36 = 2112;
        v37 = v22;
        v38 = 2112;
        v39 = v23;
        v40 = 2112;
        v41 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Trying to move %@ to %@ but source is %@ while destination is %@", buf, 0x2Au);
      }
    }

    goto LABEL_14;
  }

  v15 = [v11 recordID];
  v16 = [v15 isEqual:v8];

  if ((v16 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v17 = sub_100003854();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v33 = self->_currentSourceScopedIdentifier;
      v18 = [(CPLRecordChange *)self->_currentSharedRecord scopedIdentifier];
      v19 = [v7 recordID];
      v20 = [v11 recordID];
      *buf = 138413058;
      *&buf[4] = v33;
      v36 = 2112;
      v37 = v18;
      v38 = 2112;
      v39 = v19;
      v40 = 2112;
      v41 = v20;
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

  v27 = [v7 objectForKeyedSubscript:v26];
  if (v27)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
      v29 = self->_sourceRelatedRecordName;
      self->_sourceRelatedRecordName = v28;
LABEL_21:

      goto LABEL_22;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [v27 recordID];
      v30 = [v29 recordName];
      v31 = self->_sourceRelatedRecordName;
      self->_sourceRelatedRecordName = v30;

      goto LABEL_21;
    }
  }

LABEL_22:

LABEL_23:

  return v11;
}

- (BOOL)shouldCopyCKRecordKeyToDestinationCKRecord:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"dateExpunged"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(CPLRecordChange *)self->_currentSharedRecord recordClass];
    if ([(CPLCKRecordPropertyMapping *)self->_mapping isKeyReadOnly:v4 recordClass:v6])
    {
      v5 = 0;
    }

    else
    {
      v5 = [(CPLCKRecordPropertyMapping *)self->_mapping shouldUpdateKeyOnSharedRecord:v4 recordClass:v6];
    }
  }

  return v5;
}

- (id)recordNameInDestinationCKRecordFromRecordName:(id)a3 error:(id *)a4
{
  v5 = a3;
  sourceRelatedRecordName = self->_sourceRelatedRecordName;
  if (sourceRelatedRecordName && [(NSString *)sourceRelatedRecordName isEqual:v5])
  {
    v7 = [(CPLRecordChange *)self->_currentSharedRecord relatedIdentifier];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

- (id)finalizedDestinationCKRecordFromProposedCKRecord:(id)a3 error:(id *)a4
{
  v5 = a3;
  [v5 setObject:self->_recordModificationDate forKey:@"recordModificationDate"];
  v6 = [(CPLRecordChange *)self->_currentSharedRecord recordClass];
  if (![(CPLCloudKitZoneIdentification *)self->_destinationIdentification supportsDirectDeletionOfRecordClass:v6])
  {
    [v5 setObject:&__kCFBooleanFalse forKey:@"isExpunged"];
    v7 = [v5 objectForKey:@"isDeleted"];

    if (!v7)
    {
      [v5 setObject:&__kCFBooleanFalse forKey:@"isDeleted"];
    }

    if ([v6 isSubclassOfClass:objc_opt_class()])
    {
      [v5 setObject:self->_recordModificationDate forKey:@"mostRecentAddedDate"];
    }
  }

  if ([v6 supportsSharingScopedIdentifier])
  {
    [v5 setObject:0 forKey:@"linkedShareZoneName"];
    [v5 setObject:0 forKey:@"linkedShareZoneOwner"];
    [v5 setObject:0 forKey:@"linkedShareRecordName"];
  }

  return v5;
}

@end