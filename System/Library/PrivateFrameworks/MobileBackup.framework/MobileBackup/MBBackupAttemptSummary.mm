@interface MBBackupAttemptSummary
- (MBBackupAttemptSummary)init;
- (MBBackupAttemptSummary)initWithDictionaryRepresentation:(id)representation;
- (id)dictionaryRepresentation;
- (void)trackConsolidatedDomainDuringFileListSynchronization:(id)synchronization;
- (void)trackDeletedDomainDuringFileListSynchronization:(id)synchronization;
- (void)trackDeletedDomainInCommit:(id)commit;
- (void)trackDomainTranscription:(id)transcription;
- (void)trackDownloadedDomainDuringFileListSynchronization:(id)synchronization;
- (void)trackDuration:(double)duration forEngineState:(id)state;
- (void)trackKeyBagValidationState:(id)state;
- (void)trackModifiedDomainInCommit:(id)commit;
- (void)trackModifiedDomainInTranscription:(id)transcription;
- (void)trackRepairedDomain:(id)domain;
- (void)trackSkippedFileListCloneDomain:(id)domain;
- (void)trackSnapshotVerificationFailure:(id)failure;
- (void)trackUploadedDomain:(id)domain;
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

- (MBBackupAttemptSummary)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v80.receiver = self;
  v80.super_class = MBBackupAttemptSummary;
  v5 = [(MBBackupAttemptSummary *)&v80 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [representationCopy objectForKeyedSubscript:@"Error"];
    v8 = [MBError errorWithDictionaryRepresentation:v7];
    error = v6->_error;
    v6->_error = v8;

    v10 = [representationCopy objectForKeyedSubscript:@"CommitID"];
    commitID = v6->_commitID;
    v6->_commitID = v10;

    v12 = [representationCopy objectForKeyedSubscript:@"SnapshotType"];
    v6->_snapshotType = [v12 longLongValue];

    v13 = [representationCopy objectForKeyedSubscript:@"SnapshotFormat"];
    v6->_snapshotFormat = [v13 longLongValue];

    v14 = [representationCopy objectForKeyedSubscript:@"PreviousSnapshot"];
    previousSnapshotCommitID = v6->_previousSnapshotCommitID;
    v6->_previousSnapshotCommitID = v14;

    v16 = [representationCopy objectForKeyedSubscript:@"DurationsByEngineState"];
    durationByEngineState = v6->_durationByEngineState;
    v6->_durationByEngineState = v16;

    v18 = [representationCopy objectForKeyedSubscript:@"ConsolidatedDomainsInFileListSynchronization"];
    consolidatedDomainsInFileListSynchronization = v6->_consolidatedDomainsInFileListSynchronization;
    v6->_consolidatedDomainsInFileListSynchronization = v18;

    v20 = [representationCopy objectForKeyedSubscript:@"DeletedDomainsInFileListSynchronization"];
    deletedDomainsInFileListSynchronization = v6->_deletedDomainsInFileListSynchronization;
    v6->_deletedDomainsInFileListSynchronization = v20;

    v22 = [representationCopy objectForKeyedSubscript:@"DownloadedDomainsInFileListSynchronization"];
    downloadedDomainsInFileListSynchronization = v6->_downloadedDomainsInFileListSynchronization;
    v6->_downloadedDomainsInFileListSynchronization = v22;

    v24 = [representationCopy objectForKeyedSubscript:@"ModifiedDomainsInTranscription"];
    modifiedDomainsInTranscription = v6->_modifiedDomainsInTranscription;
    v6->_modifiedDomainsInTranscription = v24;

    v26 = [representationCopy objectForKeyedSubscript:@"VolumeMapLoadType"];
    volumeMapLoadType = v6->_volumeMapLoadType;
    v6->_volumeMapLoadType = v26;

    v28 = [representationCopy objectForKeyedSubscript:@"EmptyDomainCount"];
    v6->_emptyDomainCount = [v28 unsignedLongLongValue];

    v29 = [representationCopy objectForKeyedSubscript:@"ModifiedDirectoryCount"];
    v6->_modifiedDirectoryCount = [v29 unsignedLongValue];

    v30 = [representationCopy objectForKeyedSubscript:@"DeletedFileCount"];
    v6->_deletedFileCount = [v30 unsignedLongValue];

    v31 = [representationCopy objectForKeyedSubscript:@"UnmodifiedDirectoryCount"];
    v6->_unmodifiedDirectoryCount = [v31 unsignedLongValue];

    v32 = [representationCopy objectForKeyedSubscript:@"ModifiedDirectoryCount"];
    v6->_modifiedDirectoryCount = [v32 unsignedLongValue];

    v33 = [representationCopy objectForKeyedSubscript:@"UnmodifiedSymlinkCount"];
    v6->_unmodifiedSymlinkCount = [v33 unsignedLongLongValue];

    v34 = [representationCopy objectForKeyedSubscript:@"ModifiedSymlinkCount"];
    v6->_modifiedSymlinkCount = [v34 unsignedLongLongValue];

    v35 = [representationCopy objectForKeyedSubscript:@"ReusedAssetCount"];
    v6->_reusedAssetCount = [v35 unsignedLongLongValue];

    v36 = [representationCopy objectForKeyedSubscript:@"ClassAFilesMissingEncryptionKeys"];
    v6->_classAFilesMissingEncryptionKeys = [v36 unsignedLongLongValue];

    v37 = [representationCopy objectForKeyedSubscript:@"ClassBFilesMissingEncryptionKeys"];
    v6->_classBFilesMissingEncryptionKeys = [v37 unsignedLongLongValue];

    v38 = [representationCopy objectForKeyedSubscript:@"DomainsTransitioningVolumeCount"];
    v6->_domainsTransitioningVolumesCount = [v38 unsignedLongLongValue];

    v39 = [representationCopy objectForKeyedSubscript:@"UnmodifiedRegularFileCount"];
    v6->_unmodifiedRegularFileCount = [v39 unsignedLongLongValue];

    v40 = [representationCopy objectForKeyedSubscript:@"ModifiedRegularFileCount"];
    v6->_modifiedRegularFileCount = [v40 unsignedLongLongValue];

    v41 = [representationCopy objectForKeyedSubscript:@"DeletedFileCount"];
    v6->_deletedFileCount = [v41 unsignedLongValue];

    v42 = [representationCopy objectForKeyedSubscript:@"AssetCopyDuration"];
    [v42 doubleValue];
    v6->_assetCopyDuration = v43;

    v44 = [representationCopy objectForKeyedSubscript:@"TotalQuotaReservation"];
    v6->_totalQuotaReservation = [v44 unsignedLongLongValue];

    v45 = [representationCopy objectForKeyedSubscript:@"UploadedAssetWriteDuration"];
    [v45 doubleValue];
    v6->_uploadedAssetWriteDuration = v46;

    v47 = [representationCopy objectForKeyedSubscript:@"UploadedFileListSize"];
    v6->_uploadedFileListSize = [v47 unsignedLongLongValue];

    v48 = [representationCopy objectForKeyedSubscript:@"UploadedDomains"];
    uploadedDomains = v6->_uploadedDomains;
    v6->_uploadedDomains = v48;

    v50 = [representationCopy objectForKeyedSubscript:@"ModifiedDomainsInCommit"];
    modifiedDomainsInCommit = v6->_modifiedDomainsInCommit;
    v6->_modifiedDomainsInCommit = v50;

    v52 = [representationCopy objectForKeyedSubscript:@"DeletedDomainsInCommit"];
    deletedDomainsInCommit = v6->_deletedDomainsInCommit;
    v6->_deletedDomainsInCommit = v52;

    v54 = [representationCopy objectForKeyedSubscript:@"RepairedDomains"];
    repairedDomains = v6->_repairedDomains;
    v6->_repairedDomains = v54;

    v56 = [representationCopy objectForKeyedSubscript:@"UnknownDomainHMACsToRepair"];
    unknownDomainHMACsToRepair = v6->_unknownDomainHMACsToRepair;
    v6->_unknownDomainHMACsToRepair = v56;

    v58 = [representationCopy objectForKeyedSubscript:@"SkippedFileListCloneDomains"];
    skippedFileListCloneDomains = v6->_skippedFileListCloneDomains;
    v6->_skippedFileListCloneDomains = v58;

    v60 = [representationCopy objectForKeyedSubscript:@"LegacyCacheSize"];
    v6->_legacyCacheSize = [v60 unsignedLongLongValue];

    v61 = [representationCopy objectForKeyedSubscript:@"SnapshotDirectorySize"];
    v6->_snapshotDirectorySize = [v61 unsignedLongLongValue];

    v62 = [representationCopy objectForKeyedSubscript:@"SnapshotDirectoryCloneSize"];
    v6->_snapshotDirectoryCloneSize = [v62 unsignedLongLongValue];

    v63 = [representationCopy objectForKeyedSubscript:@"PeakMemoryUsage"];
    v6->_peakMemoryUsage = [v63 unsignedLongLongValue];

    v64 = [representationCopy objectForKeyedSubscript:@"SnapshotVerificationFailures"];
    snapshotVerificationFailures = v6->_snapshotVerificationFailures;
    v6->_snapshotVerificationFailures = v64;

    v66 = [representationCopy objectForKeyedSubscript:@"SnapshotVerificationRan"];
    v6->_snapshotVerificationRan = [v66 BOOLValue];

    v67 = [representationCopy objectForKeyedSubscript:@"AssetUploadDuration"];
    v6->_assetUploadDuration = [v67 unsignedLongLongValue];

    v68 = [representationCopy objectForKeyedSubscript:@"QueuedAssetCount"];
    v6->_queuedAssetCount = [v68 unsignedLongLongValue];

    v69 = [representationCopy objectForKeyedSubscript:@"QueuedAssetSize"];
    v6->_queuedAssetSize = [v69 unsignedLongLongValue];

    v70 = [representationCopy objectForKeyedSubscript:@"UploadedAssetSize"];
    v6->_uploadedAssetSize = [v70 unsignedLongLongValue];

    v71 = [representationCopy objectForKeyedSubscript:@"UploadedAssetCount"];
    v6->_uploadedAssetCount = [v71 unsignedLongLongValue];

    v72 = [representationCopy objectForKeyedSubscript:@"ScrubbedSQLiteDatabaseCount"];
    v6->_scrubbedSQLiteFileCount = [v72 unsignedLongLongValue];

    v73 = [representationCopy objectForKeyedSubscript:@"CompactedSQLiteDatabaseCount"];
    v6->_compactedSQLiteFileCount = [v73 unsignedLongLongValue];

    v74 = [representationCopy objectForKeyedSubscript:@"CompressedSQLiteDatabaseCount"];
    v6->_compressedSQLiteFileCount = [v74 unsignedLongLongValue];

    v75 = [representationCopy objectForKeyedSubscript:@"KeyBagValidationResult"];
    v6->_keyBagValidationResult = [v75 unsignedLongLongValue];

    v76 = [representationCopy objectForKeyedSubscript:@"ValidKeyBagReferenceCount"];
    v6->_validKeyBagReferenceCount = [v76 unsignedLongLongValue];

    v77 = [representationCopy objectForKeyedSubscript:@"InvalidKeyBagReferenceCount"];
    v6->_invalidKeyBagReferenceCount = [v77 unsignedLongLongValue];

    v78 = [representationCopy objectForKeyedSubscript:@"EncryptionKeysPendingRepairCount"];
    v6->_encryptionKeysPendingRepairCount = [v78 unsignedLongValue];
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  os_unfair_lock_lock(&self->_lock);
  error = [(MBBackupAttemptSummary *)self error];
  v5 = [MBError dictionaryRepresentationForError:error];
  [v3 setObject:v5 forKeyedSubscript:@"Error"];

  [v3 setObject:self->_commitID forKeyedSubscript:@"CommitID"];
  v6 = [NSNumber numberWithInteger:self->_snapshotType];
  [v3 setObject:v6 forKeyedSubscript:@"SnapshotType"];

  v7 = [NSNumber numberWithLongLong:self->_snapshotFormat];
  [v3 setObject:v7 forKeyedSubscript:@"SnapshotFormat"];

  [v3 setObject:self->_previousSnapshotCommitID forKeyedSubscript:@"PreviousSnapshot"];
  [v3 setObject:self->_durationByEngineState forKeyedSubscript:@"DurationsByEngineState"];
  allObjects = [(NSMutableSet *)self->_consolidatedDomainsInFileListSynchronization allObjects];
  v9 = [allObjects sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v9 forKeyedSubscript:@"ConsolidatedDomainsInFileListSynchronization"];

  allObjects2 = [(NSMutableSet *)self->_deletedDomainsInFileListSynchronization allObjects];
  v11 = [allObjects2 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v11 forKeyedSubscript:@"DeletedDomainsInFileListSynchronization"];

  allObjects3 = [(NSMutableSet *)self->_downloadedDomainsInFileListSynchronization allObjects];
  v13 = [allObjects3 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v13 forKeyedSubscript:@"DownloadedDomainsInFileListSynchronization"];

  [v3 setObject:self->_volumeMapLoadType forKeyedSubscript:@"VolumeMapLoadType"];
  allObjects4 = [(NSMutableSet *)self->_modifiedDomainsInTranscription allObjects];
  v15 = [allObjects4 sortedArrayUsingSelector:"compare:"];
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

  allObjects5 = [(NSMutableSet *)self->_uploadedDomains allObjects];
  v35 = [allObjects5 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v35 forKeyedSubscript:@"UploadedDomains"];

  allObjects6 = [(NSMutableSet *)self->_modifiedDomainsInCommit allObjects];
  v37 = [allObjects6 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v37 forKeyedSubscript:@"ModifiedDomainsInCommit"];

  allObjects7 = [(NSMutableSet *)self->_deletedDomainsInCommit allObjects];
  v39 = [allObjects7 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v39 forKeyedSubscript:@"DeletedDomainsInCommit"];

  allObjects8 = [(NSMutableSet *)self->_repairedDomains allObjects];
  v41 = [allObjects8 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v41 forKeyedSubscript:@"RepairedDomains"];

  allObjects9 = [(NSSet *)self->_unknownDomainHMACsToRepair allObjects];
  v43 = [allObjects9 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v43 forKeyedSubscript:@"UnknownDomainHMACsToRepair"];

  allObjects10 = [(NSMutableSet *)self->_skippedFileListCloneDomains allObjects];
  v45 = [allObjects10 sortedArrayUsingSelector:"compare:"];
  [v3 setObject:v45 forKeyedSubscript:@"SkippedFileListCloneDomains"];

  v46 = [NSNumber numberWithUnsignedLongLong:self->_legacyCacheSize];
  [v3 setObject:v46 forKeyedSubscript:@"LegacyCacheSize"];

  v47 = [NSNumber numberWithUnsignedLongLong:self->_snapshotDirectorySize];
  [v3 setObject:v47 forKeyedSubscript:@"SnapshotDirectorySize"];

  v48 = [NSNumber numberWithUnsignedLongLong:self->_snapshotDirectoryCloneSize];
  [v3 setObject:v48 forKeyedSubscript:@"SnapshotDirectoryCloneSize"];

  v49 = [NSNumber numberWithUnsignedLongLong:self->_peakMemoryUsage];
  [v3 setObject:v49 forKeyedSubscript:@"PeakMemoryUsage"];

  allObjects11 = [(NSMutableSet *)self->_snapshotVerificationFailures allObjects];
  v51 = [allObjects11 sortedArrayUsingSelector:"compare:"];
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

- (void)trackDeletedDomainDuringFileListSynchronization:(id)synchronization
{
  synchronizationCopy = synchronization;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_deletedDomainsInFileListSynchronization addObject:synchronizationCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackDeletedDomainInCommit:(id)commit
{
  commitCopy = commit;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_deletedDomainsInCommit addObject:commitCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackModifiedDomainInTranscription:(id)transcription
{
  transcriptionCopy = transcription;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_modifiedDomainsInTranscription addObject:transcriptionCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackDomainTranscription:(id)transcription
{
  transcriptionCopy = transcription;
  self->_unmodifiedDirectoryCount = [transcriptionCopy unmodifiedDirectories];
  self->_modifiedDirectoryCount = [transcriptionCopy modifiedDirectories];
  self->_unmodifiedSymlinkCount = [transcriptionCopy unmodifiedSymlinks];
  self->_modifiedSymlinkCount = [transcriptionCopy modifiedSymlinks];
  self->_unmodifiedRegularFileCount = [transcriptionCopy unmodifiedRegularFiles];
  self->_modifiedRegularFileCount = [transcriptionCopy modifiedRegularFiles];
  self->_deletedFileCount = [transcriptionCopy deletedFileCount];
  self->_emptyDomainCount = [transcriptionCopy emptyDomainCount];
  self->_reusedAssetCount = [transcriptionCopy reusedAssetRecords];
  self->_domainsTransitioningVolumesCount = [transcriptionCopy domainsTransitioningVolumes];
  self->_encryptionKeysPendingRepairCount += [transcriptionCopy encryptionKeysPendingRepairCount];
  self->_classAFilesMissingEncryptionKeys = [transcriptionCopy classAFilesMissingEncryptionKeys];
  classBFilesMissingEncryptionKeys = [transcriptionCopy classBFilesMissingEncryptionKeys];

  self->_classBFilesMissingEncryptionKeys = classBFilesMissingEncryptionKeys;
}

- (void)trackKeyBagValidationState:(id)state
{
  if (state)
  {
    stateCopy = state;
    self->_keyBagValidationResult = [stateCopy lastValidationResult];
    self->_validKeyBagReferenceCount = [stateCopy validKeyBagReferenceCount];
    invalidKeyBagReferenceCount = [stateCopy invalidKeyBagReferenceCount];

    v6 = 120;
  }

  else
  {
    invalidKeyBagReferenceCount = 0;
    v6 = 104;
  }

  *(&self->super.isa + v6) = invalidKeyBagReferenceCount;
}

- (void)trackDownloadedDomainDuringFileListSynchronization:(id)synchronization
{
  synchronizationCopy = synchronization;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_downloadedDomainsInFileListSynchronization addObject:synchronizationCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackDuration:(double)duration forEngineState:(id)state
{
  stateCopy = state;
  os_unfair_lock_lock(&self->_lock);
  v7 = [NSNumber numberWithDouble:duration];
  [(NSMutableDictionary *)self->_durationByEngineState setObject:v7 forKeyedSubscript:stateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackModifiedDomainInCommit:(id)commit
{
  commitCopy = commit;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_modifiedDomainsInCommit addObject:commitCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackConsolidatedDomainDuringFileListSynchronization:(id)synchronization
{
  synchronizationCopy = synchronization;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_consolidatedDomainsInFileListSynchronization addObject:synchronizationCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackUploadedDomain:(id)domain
{
  domainCopy = domain;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_uploadedDomains addObject:domainCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackSnapshotVerificationFailure:(id)failure
{
  failureCopy = failure;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_snapshotVerificationFailures addObject:failureCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackRepairedDomain:(id)domain
{
  domainCopy = domain;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_repairedDomains addObject:domainCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)trackSkippedFileListCloneDomain:(id)domain
{
  domainCopy = domain;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_skippedFileListCloneDomains addObject:domainCopy];

  os_unfair_lock_unlock(&self->_lock);
}

@end