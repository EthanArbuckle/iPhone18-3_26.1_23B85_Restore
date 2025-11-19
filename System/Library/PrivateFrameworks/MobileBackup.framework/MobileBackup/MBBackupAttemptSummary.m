@interface MBBackupAttemptSummary
- (MBBackupAttemptSummary)init;
- (MBBackupAttemptSummary)initWithDictionaryRepresentation:(id)a3;
- (id)dictionaryRepresentation;
- (void)trackConsolidatedDomainDuringFileListSynchronization:(id)a3;
- (void)trackDeletedDomainDuringFileListSynchronization:(id)a3;
- (void)trackDeletedDomainInCommit:(id)a3;
- (void)trackDomainTranscription:(id)a3;
- (void)trackDownloadedDomainDuringFileListSynchronization:(id)a3;
- (void)trackDuration:(double)a3 forEngineState:(id)a4;
- (void)trackKeyBagValidationState:(id)a3;
- (void)trackModifiedDomainInCommit:(id)a3;
- (void)trackModifiedDomainInTranscription:(id)a3;
- (void)trackRepairedDomain:(id)a3;
- (void)trackSkippedFileListCloneDomain:(id)a3;
- (void)trackSnapshotVerificationFailure:(id)a3;
- (void)trackUploadedDomain:(id)a3;
@end

@implementation MBBackupAttemptSummary

- (MBBackupAttemptSummary)init
{
  v33.receiver = self;
  v33.super_class = MBBackupAttemptSummary;
  v2 = [(MBBackupAttemptSummary *)&v33 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    error = v2->_error;
    v2->_error = 0;

    commitID = v3->_commitID;
    v3->_commitID = 0;

    v3->_snapshotType = -1;
    v3->_snapshotFormat = -1;
    previousSnapshotCommitID = v3->_previousSnapshotCommitID;
    v3->_previousSnapshotCommitID = 0;

    v7 = objc_opt_new();
    durationByEngineState = v3->_durationByEngineState;
    v3->_durationByEngineState = v7;

    v9 = objc_opt_new();
    consolidatedDomainsInFileListSynchronization = v3->_consolidatedDomainsInFileListSynchronization;
    v3->_consolidatedDomainsInFileListSynchronization = v9;

    v11 = objc_opt_new();
    deletedDomainsInFileListSynchronization = v3->_deletedDomainsInFileListSynchronization;
    v3->_deletedDomainsInFileListSynchronization = v11;

    v13 = objc_opt_new();
    downloadedDomainsInFileListSynchronization = v3->_downloadedDomainsInFileListSynchronization;
    v3->_downloadedDomainsInFileListSynchronization = v13;

    volumeMapLoadType = v3->_volumeMapLoadType;
    v3->_volumeMapLoadType = 0;

    v16 = objc_opt_new();
    modifiedDomainsInTranscription = v3->_modifiedDomainsInTranscription;
    v3->_modifiedDomainsInTranscription = v16;

    *&v3->_assetCopyDuration = 0u;
    *&v3->_classAFilesMissingEncryptionKeys = 0u;
    *&v3->_reusedAssetCount = 0u;
    *&v3->_deletedFileCount = 0u;
    *&v3->_modifiedRegularFileCount = 0u;
    *&v3->_modifiedSymlinkCount = 0u;
    *&v3->_modifiedDirectoryCount = 0u;
    v3->_uploadedAssetWriteDuration = 0.0;
    v3->_uploadedFileListSize = 0;
    v18 = objc_opt_new();
    uploadedDomains = v3->_uploadedDomains;
    v3->_uploadedDomains = v18;

    v20 = objc_opt_new();
    modifiedDomainsInCommit = v3->_modifiedDomainsInCommit;
    v3->_modifiedDomainsInCommit = v20;

    v22 = objc_opt_new();
    deletedDomainsInCommit = v3->_deletedDomainsInCommit;
    v3->_deletedDomainsInCommit = v22;

    v24 = objc_opt_new();
    repairedDomains = v3->_repairedDomains;
    v3->_repairedDomains = v24;

    v26 = objc_opt_new();
    unknownDomainHMACsToRepair = v3->_unknownDomainHMACsToRepair;
    v3->_unknownDomainHMACsToRepair = v26;

    v28 = objc_opt_new();
    skippedFileListCloneDomains = v3->_skippedFileListCloneDomains;
    v3->_skippedFileListCloneDomains = v28;

    *&v3->_legacyCacheSize = 0u;
    *&v3->_snapshotDirectoryCloneSize = 0u;
    v30 = objc_opt_new();
    snapshotVerificationFailures = v3->_snapshotVerificationFailures;
    v3->_snapshotVerificationFailures = v30;

    *&v3->_scrubbedSQLiteFileCount = 0u;
    v3->_snapshotVerificationRan = 0;
    *&v3->_keyBagValidationResult = 0u;
    *&v3->_invalidKeyBagReferenceCount = 0u;
    *&v3->_compressedSQLiteFileCount = 0u;
    *&v3->_queuedAssetSize = 0u;
  }

  return v3;
}

- (MBBackupAttemptSummary)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v80.receiver = self;
  v80.super_class = MBBackupAttemptSummary;
  v5 = [(MBBackupAttemptSummary *)&v80 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [v4 objectForKeyedSubscript:@"Error"];
    v8 = [MBError errorWithDictionaryRepresentation:v7];
    error = v6->_error;
    v6->_error = v8;

    v10 = [v4 objectForKeyedSubscript:@"CommitID"];
    commitID = v6->_commitID;
    v6->_commitID = v10;

    v12 = [v4 objectForKeyedSubscript:@"SnapshotType"];
    v6->_snapshotType = [v12 longLongValue];

    v13 = [v4 objectForKeyedSubscript:@"SnapshotFormat"];
    v6->_snapshotFormat = [v13 longLongValue];

    v14 = [v4 objectForKeyedSubscript:@"PreviousSnapshot"];
    previousSnapshotCommitID = v6->_previousSnapshotCommitID;
    v6->_previousSnapshotCommitID = v14;

    v16 = [v4 objectForKeyedSubscript:@"DurationsByEngineState"];
    durationByEngineState = v6->_durationByEngineState;
    v6->_durationByEngineState = v16;

    v18 = [v4 objectForKeyedSubscript:@"ConsolidatedDomainsInFileListSynchronization"];
    consolidatedDomainsInFileListSynchronization = v6->_consolidatedDomainsInFileListSynchronization;
    v6->_consolidatedDomainsInFileListSynchronization = v18;

    v20 = [v4 objectForKeyedSubscript:@"DeletedDomainsInFileListSynchronization"];
    deletedDomainsInFileListSynchronization = v6->_deletedDomainsInFileListSynchronization;
    v6->_deletedDomainsInFileListSynchronization = v20;

    v22 = [v4 objectForKeyedSubscript:@"DownloadedDomainsInFileListSynchronization"];
    downloadedDomainsInFileListSynchronization = v6->_downloadedDomainsInFileListSynchronization;
    v6->_downloadedDomainsInFileListSynchronization = v22;

    v24 = [v4 objectForKeyedSubscript:@"ModifiedDomainsInTranscription"];
    modifiedDomainsInTranscription = v6->_modifiedDomainsInTranscription;
    v6->_modifiedDomainsInTranscription = v24;

    v26 = [v4 objectForKeyedSubscript:@"VolumeMapLoadType"];
    volumeMapLoadType = v6->_volumeMapLoadType;
    v6->_volumeMapLoadType = v26;

    v28 = [v4 objectForKeyedSubscript:@"EmptyDomainCount"];
    v6->_emptyDomainCount = [v28 unsignedLongLongValue];

    v29 = [v4 objectForKeyedSubscript:@"ModifiedDirectoryCount"];
    v6->_modifiedDirectoryCount = [v29 unsignedLongValue];

    v30 = [v4 objectForKeyedSubscript:@"DeletedFileCount"];
    v6->_deletedFileCount = [v30 unsignedLongValue];

    v31 = [v4 objectForKeyedSubscript:@"UnmodifiedDirectoryCount"];
    v6->_unmodifiedDirectoryCount = [v31 unsignedLongValue];

    v32 = [v4 objectForKeyedSubscript:@"ModifiedDirectoryCount"];
    v6->_modifiedDirectoryCount = [v32 unsignedLongValue];

    v33 = [v4 objectForKeyedSubscript:@"UnmodifiedSymlinkCount"];
    v6->_unmodifiedSymlinkCount = [v33 unsignedLongLongValue];

    v34 = [v4 objectForKeyedSubscript:@"ModifiedSymlinkCount"];
    v6->_modifiedSymlinkCount = [v34 unsignedLongLongValue];

    v35 = [v4 objectForKeyedSubscript:@"ReusedAssetCount"];
    v6->_reusedAssetCount = [v35 unsignedLongLongValue];

    v36 = [v4 objectForKeyedSubscript:@"ClassAFilesMissingEncryptionKeys"];
    v6->_classAFilesMissingEncryptionKeys = [v36 unsignedLongLongValue];

    v37 = [v4 objectForKeyedSubscript:@"ClassBFilesMissingEncryptionKeys"];
    v6->_classBFilesMissingEncryptionKeys = [v37 unsignedLongLongValue];

    v38 = [v4 objectForKeyedSubscript:@"DomainsTransitioningVolumeCount"];
    v6->_domainsTransitioningVolumesCount = [v38 unsignedLongLongValue];

    v39 = [v4 objectForKeyedSubscript:@"UnmodifiedRegularFileCount"];
    v6->_unmodifiedRegularFileCount = [v39 unsignedLongLongValue];

    v40 = [v4 objectForKeyedSubscript:@"ModifiedRegularFileCount"];
    v6->_modifiedRegularFileCount = [v40 unsignedLongLongValue];

    v41 = [v4 objectForKeyedSubscript:@"DeletedFileCount"];
    v6->_deletedFileCount = [v41 unsignedLongValue];

    v42 = [v4 objectForKeyedSubscript:@"AssetCopyDuration"];
    [v42 doubleValue];
    v6->_assetCopyDuration = v43;

    v44 = [v4 objectForKeyedSubscript:@"TotalQuotaReservation"];
    v6->_totalQuotaReservation = [v44 unsignedLongLongValue];

    v45 = [v4 objectForKeyedSubscript:@"UploadedAssetWriteDuration"];
    [v45 doubleValue];
    v6->_uploadedAssetWriteDuration = v46;

    v47 = [v4 objectForKeyedSubscript:@"UploadedFileListSize"];
    v6->_uploadedFileListSize = [v47 unsignedLongLongValue];

    v48 = [v4 objectForKeyedSubscript:@"UploadedDomains"];
    uploadedDomains = v6->_uploadedDomains;
    v6->_uploadedDomains = v48;

    v50 = [v4 objectForKeyedSubscript:@"ModifiedDomainsInCommit"];
    modifiedDomainsInCommit = v6->_modifiedDomainsInCommit;
    v6->_modifiedDomainsInCommit = v50;

    v52 = [v4 objectForKeyedSubscript:@"DeletedDomainsInCommit"];
    deletedDomainsInCommit = v6->_deletedDomainsInCommit;
    v6->_deletedDomainsInCommit = v52;

    v54 = [v4 objectForKeyedSubscript:@"RepairedDomains"];
    repairedDomains = v6->_repairedDomains;
    v6->_repairedDomains = v54;

    v56 = [v4 objectForKeyedSubscript:@"UnknownDomainHMACsToRepair"];
    unknownDomainHMACsToRepair = v6->_unknownDomainHMACsToRepair;
    v6->_unknownDomainHMACsToRepair = v56;

    v58 = [v4 objectForKeyedSubscript:@"SkippedFileListCloneDomains"];
    skippedFileListCloneDomains = v6->_skippedFileListCloneDomains;
    v6->_skippedFileListCloneDomains = v58;

    v60 = [v4 objectForKeyedSubscript:@"LegacyCacheSize"];
    v6->_legacyCacheSize = [v60 unsignedLongLongValue];

    v61 = [v4 objectForKeyedSubscript:@"SnapshotDirectorySize"];
    v6->_snapshotDirectorySize = [v61 unsignedLongLongValue];

    v62 = [v4 objectForKeyedSubscript:@"SnapshotDirectoryCloneSize"];
    v6->_snapshotDirectoryCloneSize = [v62 unsignedLongLongValue];

    v63 = [v4 objectForKeyedSubscript:@"PeakMemoryUsage"];
    v6->_peakMemoryUsage = [v63 unsignedLongLongValue];

    v64 = [v4 objectForKeyedSubscript:@"SnapshotVerificationFailures"];
    snapshotVerificationFailures = v6->_snapshotVerificationFailures;
    v6->_snapshotVerificationFailures = v64;

    v66 = [v4 objectForKeyedSubscript:@"SnapshotVerificationRan"];
    v6->_snapshotVerificationRan = [v66 BOOLValue];

    v67 = [v4 objectForKeyedSubscript:@"AssetUploadDuration"];
    v6->_assetUploadDuration = [v67 unsignedLongLongValue];

    v68 = [v4 objectForKeyedSubscript:@"QueuedAssetCount"];
    v6->_queuedAssetCount = [v68 unsignedLongLongValue];

    v69 = [v4 objectForKeyedSubscript:@"QueuedAssetSize"];
    v6->_queuedAssetSize = [v69 unsignedLongLongValue];

    v70 = [v4 objectForKeyedSubscript:@"UploadedAssetSize"];
    v6->_uploadedAssetSize = [v70 unsignedLongLongValue];

    v71 = [v4 objectForKeyedSubscript:@"UploadedAssetCount"];
    v6->_uploadedAssetCount = [v71 unsignedLongLongValue];

    v72 = [v4 objectForKeyedSubscript:@"ScrubbedSQLiteDatabaseCount"];
    v6->_scrubbedSQLiteFileCount = [v72 unsignedLongLongValue];

    v73 = [v4 objectForKeyedSubscript:@"CompactedSQLiteDatabaseCount"];
    v6->_compactedSQLiteFileCount = [v73 unsignedLongLongValue];

    v74 = [v4 objectForKeyedSubscript:@"CompressedSQLiteDatabaseCount"];
    v6->_compressedSQLiteFileCount = [v74 unsignedLongLongValue];

    v75 = [v4 objectForKeyedSubscript:@"KeyBagValidationResult"];
    v6->_keyBagValidationResult = [v75 unsignedLongLongValue];

    v76 = [v4 objectForKeyedSubscript:@"ValidKeyBagReferenceCount"];
    v6->_validKeyBagReferenceCount = [v76 unsignedLongLongValue];

    v77 = [v4 objectForKeyedSubscript:@"InvalidKeyBagReferenceCount"];
    v6->_invalidKeyBagReferenceCount = [v77 unsignedLongLongValue];

    v78 = [v4 objectForKeyedSubscript:@"EncryptionKeysPendingRepairCount"];
    v6->_encryptionKeysPendingRepairCount = [v78 unsignedLongValue];
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  os_unfair_lock_lock(&self->_lock);
  v4 = [(MBBackupAttemptSummary *)self error];
  v5 = [MBError dictionaryRepresentationForError:v4];
  [v3 setObject:v5 forKeyedSubscript:@"Error"];

  [v3 setObject:self->_commitID forKeyedSubscript:@"CommitID"];
  v6 = [NSNumber numberWithInteger:self->_snapshotType];
  [v3 setObject:v6 forKeyedSubscript:@"SnapshotType"];

  v7 = [NSNumber numberWithLongLong:self->_snapshotFormat];
  [v3 setObject:v7 forKeyedSubscript:@"SnapshotFormat"];

  [v3 setObject:self->_previousSnapshotCommitID forKeyedSubscript:@"PreviousSnapshot"];
  [v3 setObject:self->_durationByEngineState forKeyedSubscript:@"DurationsByEngineState"];
  v8 = [(NSMutableSet *)self->_consolidatedDomainsInFileListSynchronization allObjects];
  v9 = [v8 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v9 forKeyedSubscript:@"ConsolidatedDomainsInFileListSynchronization"];

  v10 = [(NSMutableSet *)self->_deletedDomainsInFileListSynchronization allObjects];
  v11 = [v10 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v11 forKeyedSubscript:@"DeletedDomainsInFileListSynchronization"];

  v12 = [(NSMutableSet *)self->_downloadedDomainsInFileListSynchronization allObjects];
  v13 = [v12 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v13 forKeyedSubscript:@"DownloadedDomainsInFileListSynchronization"];

  [v3 setObject:self->_volumeMapLoadType forKeyedSubscript:@"VolumeMapLoadType"];
  v14 = [(NSMutableSet *)self->_modifiedDomainsInTranscription allObjects];
  v15 = [v14 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v15 forKeyedSubscript:@"ModifiedDomainsInTranscription"];

  v16 = [NSNumber numberWithUnsignedLongLong:self->_emptyDomainCount];
  [v3 setObject:v16 forKeyedSubscript:@"EmptyDomainCount"];

  v17 = [NSNumber numberWithUnsignedLongLong:self->_modifiedDirectoryCount];
  [v3 setObject:v17 forKeyedSubscript:@"ModifiedDirectoryCount"];

  v18 = [NSNumber numberWithUnsignedLongLong:self->_deletedFileCount];
  [v3 setObject:v18 forKeyedSubscript:@"DeletedFileCount"];

  v19 = [NSNumber numberWithUnsignedLongLong:self->_unmodifiedDirectoryCount];
  [v3 setObject:v19 forKeyedSubscript:@"UnmodifiedDirectoryCount"];

  v20 = [NSNumber numberWithUnsignedLongLong:self->_modifiedDirectoryCount];
  [v3 setObject:v20 forKeyedSubscript:@"ModifiedDirectoryCount"];

  v21 = [NSNumber numberWithUnsignedLongLong:self->_unmodifiedSymlinkCount];
  [v3 setObject:v21 forKeyedSubscript:@"UnmodifiedSymlinkCount"];

  v22 = [NSNumber numberWithUnsignedLongLong:self->_modifiedSymlinkCount];
  [v3 setObject:v22 forKeyedSubscript:@"ModifiedSymlinkCount"];

  v23 = [NSNumber numberWithUnsignedLongLong:self->_unmodifiedRegularFileCount];
  [v3 setObject:v23 forKeyedSubscript:@"UnmodifiedRegularFileCount"];

  v24 = [NSNumber numberWithUnsignedLongLong:self->_modifiedRegularFileCount];
  [v3 setObject:v24 forKeyedSubscript:@"ModifiedRegularFileCount"];

  v25 = [NSNumber numberWithUnsignedLongLong:self->_deletedFileCount];
  [v3 setObject:v25 forKeyedSubscript:@"DeletedFileCount"];

  v26 = [NSNumber numberWithUnsignedLongLong:self->_reusedAssetCount];
  [v3 setObject:v26 forKeyedSubscript:@"ReusedAssetCount"];

  v27 = [NSNumber numberWithUnsignedLongLong:self->_classAFilesMissingEncryptionKeys];
  [v3 setObject:v27 forKeyedSubscript:@"ClassAFilesMissingEncryptionKeys"];

  v28 = [NSNumber numberWithUnsignedLongLong:self->_classBFilesMissingEncryptionKeys];
  [v3 setObject:v28 forKeyedSubscript:@"ClassBFilesMissingEncryptionKeys"];

  v29 = [NSNumber numberWithUnsignedLongLong:self->_domainsTransitioningVolumesCount];
  [v3 setObject:v29 forKeyedSubscript:@"DomainsTransitioningVolumeCount"];

  v30 = [NSNumber numberWithDouble:self->_assetCopyDuration];
  [v3 setObject:v30 forKeyedSubscript:@"AssetCopyDuration"];

  v31 = [NSNumber numberWithLongLong:self->_totalQuotaReservation];
  [v3 setObject:v31 forKeyedSubscript:@"TotalQuotaReservation"];

  v32 = [NSNumber numberWithDouble:self->_uploadedAssetWriteDuration];
  [v3 setObject:v32 forKeyedSubscript:@"UploadedAssetWriteDuration"];

  v33 = [NSNumber numberWithLongLong:[(MBBackupAttemptSummary *)self uploadedFileListSize]];
  [v3 setObject:v33 forKeyedSubscript:@"UploadedFileListSize"];

  v34 = [(NSMutableSet *)self->_uploadedDomains allObjects];
  v35 = [v34 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v35 forKeyedSubscript:@"UploadedDomains"];

  v36 = [(NSMutableSet *)self->_modifiedDomainsInCommit allObjects];
  v37 = [v36 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v37 forKeyedSubscript:@"ModifiedDomainsInCommit"];

  v38 = [(NSMutableSet *)self->_deletedDomainsInCommit allObjects];
  v39 = [v38 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v39 forKeyedSubscript:@"DeletedDomainsInCommit"];

  v40 = [(NSMutableSet *)self->_repairedDomains allObjects];
  v41 = [v40 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v41 forKeyedSubscript:@"RepairedDomains"];

  v42 = [(NSSet *)self->_unknownDomainHMACsToRepair allObjects];
  v43 = [v42 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v43 forKeyedSubscript:@"UnknownDomainHMACsToRepair"];

  v44 = [(NSMutableSet *)self->_skippedFileListCloneDomains allObjects];
  v45 = [v44 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v45 forKeyedSubscript:@"SkippedFileListCloneDomains"];

  v46 = [NSNumber numberWithUnsignedLongLong:self->_legacyCacheSize];
  [v3 setObject:v46 forKeyedSubscript:@"LegacyCacheSize"];

  v47 = [NSNumber numberWithUnsignedLongLong:self->_snapshotDirectorySize];
  [v3 setObject:v47 forKeyedSubscript:@"SnapshotDirectorySize"];

  v48 = [NSNumber numberWithUnsignedLongLong:self->_snapshotDirectoryCloneSize];
  [v3 setObject:v48 forKeyedSubscript:@"SnapshotDirectoryCloneSize"];

  v49 = [NSNumber numberWithUnsignedLongLong:self->_peakMemoryUsage];
  [v3 setObject:v49 forKeyedSubscript:@"PeakMemoryUsage"];

  v50 = [(NSMutableSet *)self->_snapshotVerificationFailures allObjects];
  v51 = [v50 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v51 forKeyedSubscript:@"SnapshotVerificationFailures"];

  v52 = [NSNumber numberWithBool:self->_snapshotVerificationRan];
  [v3 setObject:v52 forKeyedSubscript:@"SnapshotVerificationRan"];

  v53 = [NSNumber numberWithDouble:self->_assetUploadDuration];
  [v3 setObject:v53 forKeyedSubscript:@"AssetUploadDuration"];

  v54 = [NSNumber numberWithLongLong:self->_queuedAssetSize];
  [v3 setObject:v54 forKeyedSubscript:@"QueuedAssetSize"];

  v55 = [NSNumber numberWithUnsignedLongLong:self->_queuedAssetCount];
  [v3 setObject:v55 forKeyedSubscript:@"QueuedAssetCount"];

  v56 = [NSNumber numberWithLongLong:self->_uploadedAssetSize];
  [v3 setObject:v56 forKeyedSubscript:@"UploadedAssetSize"];

  v57 = [NSNumber numberWithUnsignedLongLong:self->_uploadedAssetCount];
  [v3 setObject:v57 forKeyedSubscript:@"UploadedAssetCount"];

  v58 = [NSNumber numberWithUnsignedLongLong:self->_scrubbedSQLiteFileCount];
  [v3 setObject:v58 forKeyedSubscript:@"ScrubbedSQLiteDatabaseCount"];

  v59 = [NSNumber numberWithUnsignedLongLong:self->_compactedSQLiteFileCount];
  [v3 setObject:v59 forKeyedSubscript:@"CompactedSQLiteDatabaseCount"];

  v60 = [NSNumber numberWithUnsignedLongLong:self->_compressedSQLiteFileCount];
  [v3 setObject:v60 forKeyedSubscript:@"CompressedSQLiteDatabaseCount"];

  v61 = [NSNumber numberWithInteger:self->_keyBagValidationResult];
  [v3 setObject:v61 forKeyedSubscript:@"KeyBagValidationResult"];

  v62 = [NSNumber numberWithUnsignedLongLong:self->_validKeyBagReferenceCount];
  [v3 setObject:v62 forKeyedSubscript:@"ValidKeyBagReferenceCount"];

  v63 = [NSNumber numberWithUnsignedLongLong:self->_invalidKeyBagReferenceCount];
  [v3 setObject:v63 forKeyedSubscript:@"InvalidKeyBagReferenceCount"];

  v64 = [NSNumber numberWithUnsignedLongLong:self->_encryptionKeysPendingRepairCount];
  [v3 setObject:v64 forKeyedSubscript:@"EncryptionKeysPendingRepairCount"];

  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)trackDeletedDomainDuringFileListSynchronization:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_deletedDomainsInFileListSynchronization addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackDeletedDomainInCommit:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_deletedDomainsInCommit addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackModifiedDomainInTranscription:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_modifiedDomainsInTranscription addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackDomainTranscription:(id)a3
{
  v4 = a3;
  self->_unmodifiedDirectoryCount = [v4 unmodifiedDirectories];
  self->_modifiedDirectoryCount = [v4 modifiedDirectories];
  self->_unmodifiedSymlinkCount = [v4 unmodifiedSymlinks];
  self->_modifiedSymlinkCount = [v4 modifiedSymlinks];
  self->_unmodifiedRegularFileCount = [v4 unmodifiedRegularFiles];
  self->_modifiedRegularFileCount = [v4 modifiedRegularFiles];
  self->_deletedFileCount = [v4 deletedFileCount];
  self->_emptyDomainCount = [v4 emptyDomainCount];
  self->_reusedAssetCount = [v4 reusedAssetRecords];
  self->_domainsTransitioningVolumesCount = [v4 domainsTransitioningVolumes];
  self->_encryptionKeysPendingRepairCount += [v4 encryptionKeysPendingRepairCount];
  self->_classAFilesMissingEncryptionKeys = [v4 classAFilesMissingEncryptionKeys];
  v5 = [v4 classBFilesMissingEncryptionKeys];

  self->_classBFilesMissingEncryptionKeys = v5;
}

- (void)trackKeyBagValidationState:(id)a3
{
  if (a3)
  {
    v4 = a3;
    self->_keyBagValidationResult = [v4 lastValidationResult];
    self->_validKeyBagReferenceCount = [v4 validKeyBagReferenceCount];
    v5 = [v4 invalidKeyBagReferenceCount];

    v6 = 120;
  }

  else
  {
    v5 = 0;
    v6 = 104;
  }

  *(&self->super.isa + v6) = v5;
}

- (void)trackDownloadedDomainDuringFileListSynchronization:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_downloadedDomainsInFileListSynchronization addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackDuration:(double)a3 forEngineState:(id)a4
{
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  v7 = [NSNumber numberWithDouble:a3];
  [(NSMutableDictionary *)self->_durationByEngineState setObject:v7 forKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackModifiedDomainInCommit:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_modifiedDomainsInCommit addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackConsolidatedDomainDuringFileListSynchronization:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_consolidatedDomainsInFileListSynchronization addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackUploadedDomain:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_uploadedDomains addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackSnapshotVerificationFailure:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_snapshotVerificationFailures addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackRepairedDomain:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_repairedDomains addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackSkippedFileListCloneDomain:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_skippedFileListCloneDomains addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

@end