@interface ICCloudSyncingObject
+ (BOOL)hasAnySharedObjectInContext:(id)a3;
+ (BOOL)needsToReFetchServerRecordValue:(id)a3;
+ (ICCloudSyncingObject)objectWithRecordID:(id)a3 accountID:(id)a4 context:(id)a5;
+ (NSArray)bundleIdentifiersWithReplicaID;
+ (NSURL)temporaryAssetDirectoryURL;
+ (id)allCloudObjectIDsInContext:(id)a3 passingTest:(id)a4;
+ (id)allPasswordProtectedObjectsInContext:(id)a3;
+ (id)assetForData:(id)a3;
+ (id)assetForTemporaryURL:(id)a3;
+ (id)assetForURL:(id)a3;
+ (id)cloudObjectWithIdentifier:(id)a3 context:(id)a4;
+ (id)dataForAsset:(id)a3;
+ (id)deletedByThisDeviceOperationQueue;
+ (id)deletedByThisDeviceSet;
+ (id)failedToSyncCountsByIdentifier;
+ (id)failureCountQueue;
+ (id)mergeUnappliedEncryptedRecordsQueue;
+ (id)newObjectWithIdentifier:(id)a3 context:(id)a4;
+ (id)newPlaceholderObjectForRecordName:(id)a3 accountID:(id)a4 context:(id)a5;
+ (id)numberOfPushAttemptsToWaitByIdentifier;
+ (id)objectsWithRecordID:(id)a3 context:(id)a4;
+ (id)predicateForVisibleObjects;
+ (id)recordSystemFieldsTransformer;
+ (id)shareSystemFieldsTransformer;
+ (id)temporaryAssets;
+ (id)versionsByOperationQueue;
+ (id)versionsByRecordIDByOperation;
+ (int64_t)currentNotesVersion;
+ (void)deleteAllTemporaryAssetFilesForAllObjects;
+ (void)deleteTemporaryAssetFilesForOperation:(id)a3;
+ (void)deleteTemporaryFilesForAsset:(id)a3;
+ (void)enumerateAllCloudObjectsInContext:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 relationshipKeyPathsForPrefetching:(id)a6 batchSize:(unint64_t)a7 saveAfterBatch:(BOOL)a8 usingBlock:(id)a9;
+ (void)objc_removeAllCloudSyncingObjectActivityEventsForUnsharedObjectsInContext:(id)a3;
+ (void)resetAllDeletedByThisDeviceProperties;
- (BOOL)canAuthenticate;
- (BOOL)canBeSharedViaICloud;
- (BOOL)canCurrentUserShare;
- (BOOL)canHaveCryptoStrategy;
- (BOOL)cryptoStrategyIsTransient;
- (BOOL)didFailToSaveUserSpecificRecordWithID:(id)a3 accountID:(id)a4 error:(id)a5;
- (BOOL)encryptFileFromURL:(id)a3 toURL:(id)a4;
- (BOOL)hasAllMandatoryFields;
- (BOOL)hasAssetSignaturesForUserSpecific:(BOOL)a3;
- (BOOL)hasContextOptions:(unint64_t)a3;
- (BOOL)hasInvitees;
- (BOOL)hasOutOfDateCommonAssetSignatures;
- (BOOL)hasOutOfDateUserSpecificAssetSignatures;
- (BOOL)hasPassphraseSet;
- (BOOL)hasSuccessfullyPushedLatestVersionToCloud;
- (BOOL)hasUserSpecificAssetSignatures;
- (BOOL)isAuthenticated;
- (BOOL)isEncryptableKeyBinaryData:(id)a3;
- (BOOL)isInCloud;
- (BOOL)isOwnedByCurrentUser;
- (BOOL)isPassphraseCorrect:(id)a3;
- (BOOL)isPasswordProtectedAndLocked;
- (BOOL)isPubliclyShared;
- (BOOL)isPubliclySharedOrHasInvitees;
- (BOOL)isSharedReadOnly;
- (BOOL)isSharedRootObject;
- (BOOL)isSharedThroughParent;
- (BOOL)isSharedViaICloud;
- (BOOL)isUnsupported;
- (BOOL)isValidObject;
- (BOOL)isVisible;
- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6;
- (BOOL)mergeEncryptedDataFromRecord:(id)a3;
- (BOOL)mergeUnappliedEncryptedRecord;
- (BOOL)mergeUnappliedEncryptedRecordRecursively;
- (BOOL)needsInitialFetchFromCloudCheckingParent;
- (BOOL)needsToBeDeletedFromCloud;
- (BOOL)needsToBePushedToCloud;
- (BOOL)needsToDeleteShare;
- (BOOL)needsToFetchAfterServerRecordChanged:(id)a3;
- (BOOL)objectFailedToBePushedToCloudWithOperation:(id)a3 recordID:(id)a4 error:(id)a5;
- (BOOL)shareMatchesRecord;
- (BOOL)shouldBeDeletedFromLocalDatabase;
- (BOOL)shouldBeIgnoredForSync;
- (BOOL)trustsTimestampsFromReplicaID:(id)a3;
- (BOOL)updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded;
- (BOOL)validateIdentifier:(id *)a3 error:(id *)a4;
- (BOOL)wasCreatedByCurrentUser;
- (BOOL)wasRecentlyDeletedByThisDevice;
- (CKRecord)serverRecord;
- (CKRecord)unappliedEncryptedRecord;
- (CKRecord)userSpecificServerRecord;
- (CKRecordID)recordID;
- (CKRecordID)userSpecificRecordID;
- (CKShare)serverShare;
- (CKShare)serverShareCheckingParent;
- (ICCloudSyncingObject)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (ICCloudSyncingObjectCryptoStrategy)cryptoStrategy;
- (ICMergeableDictionary)replicaIDToNotesVersion;
- (ICTTOrderedSetVersionedDocument)activityEventsDocument;
- (NSArray)allChildCloudObjects;
- (NSArray)ancestorCloudObjects;
- (NSData)primaryEncryptedData;
- (NSDate)creationDate;
- (NSDate)modificationDate;
- (NSDate)objc_shareTimestamp;
- (NSDictionary)decryptedValues;
- (NSMutableDictionary)mutableDecryptedValues;
- (NSMutableDictionary)participantHandlesToParticipants;
- (NSSet)deviceReplicaIDs;
- (NSString)debugDescription;
- (NSString)passwordHint;
- (NSString)userSpecificRecordType;
- (NSString)zoneOwnerName;
- (NSUUID)currentReplicaID;
- (id)cloudContext;
- (id)decryptedValueForKey:(id)a3;
- (id)deviceManagementRestrictionsManager;
- (id)ic_loggingValues;
- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4;
- (id)makeUserSpecificCloudKitRecordForApproach:(int64_t)a3;
- (id)mergeDecryptedValue:(id)a3 withOldValue:(id)a4 forKey:(id)a5;
- (id)notesVersionForReplicaID:(id)a3;
- (id)objc_timestampForChecklistItemWithIdentifier:(id)a3;
- (id)objc_userIDForChecklistItemWithIdentifier:(id)a3;
- (id)outOfDateAssetSignaturesForUserSpecific:(BOOL)a3;
- (id)outOfDateUserSpecificAssetSignatures;
- (id)ownerRecordName;
- (id)participantForHandle:(id)a3;
- (id)participantForUserID:(id)a3;
- (id)persistAddParticipantActivityEventForObject:(id)a3 participant:(id)a4;
- (id)persistCopyActivityEventForObject:(id)a3 originalObject:(id)a4 fromParentObject:(id)a5 toParentObject:(id)a6;
- (id)persistMentionActivityEventForObject:(id)a3 mentionAttachments:(id)a4;
- (id)persistMoveActivityEventForObject:(id)a3 fromParentObject:(id)a4 toParentObject:(id)a5;
- (id)persistRemoveParticipantActivityEventForObject:(id)a3 participant:(id)a4;
- (id)persistRenameActivityEventForObject:(id)a3;
- (id)persistToggleChecklistItemActivityEventForObject:(id)a3 todo:(id)a4;
- (id)primaryEncryptedDataFromRecord:(id)a3;
- (id)primitiveValueForEncryptableKey:(id)a3;
- (id)serializedValuesToEncrypt;
- (id)shareDescription;
- (id)shareDescriptionForShareParticipants:(id)a3;
- (id)sharedOwnerName;
- (id)sharedOwnerRecordName;
- (id)sharedRootObject;
- (id)shortLoggingDescription;
- (id)updateFetchFlagsAndReturnRecordIDsNeedingFetchWithContext:(id)a3 shouldFetchObject:(id)a4;
- (id)validatedCreateCryptoStrategy;
- (id)valueForEncryptableKey:(id)a3;
- (id)viewContext;
- (id)workerManagedObjectContext;
- (int64_t)databaseScope;
- (int64_t)failedToSyncCount;
- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)a3;
- (int64_t)isPushingSameOrLaterThanVersion:(int64_t)a3;
- (int64_t)numberOfPushAttemptsToWaitCount;
- (int64_t)versionForOperation:(id)a3;
- (unint64_t)mergeActivityEventsDocument:(id)a3;
- (unint64_t)mergeReplicaIDToNotesVersion:(id)a3;
- (unint64_t)numberOfAssetsInTemporaryRecord:(id)a3;
- (unint64_t)numberOfCommonRecordAssets;
- (unint64_t)numberOfUserSpecificRecordAssets;
- (void)activityEventsDocument;
- (void)addAuthenticationStateObserversIfNeeded;
- (void)addEmailAddressesAndPhoneNumbersToAttributeSet:(id)a3;
- (void)applyRandomCryptoGooIfNeeded;
- (void)assignToPersistentStore:(id)a3;
- (void)authenticationStateDidDeauthenticate:(id)a3;
- (void)authenticationStateWillDeauthenticate:(id)a3;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)clearChangeCountWithReason:(id)a3;
- (void)clearDecryptedData;
- (void)clearReplicaIDsToNotesVersion;
- (void)clearServerRecords;
- (void)cloudAccount;
- (void)cryptoStrategy;
- (void)decrementFailureCounts;
- (void)deleteChangeTokensAndReSync;
- (void)deleteFromLocalDatabase;
- (void)deserializeAndMergeValues:(id)a3;
- (void)didAcceptShare:(id)a3;
- (void)didFetchUserSpecificRecord:(id)a3 accountID:(id)a4 force:(BOOL)a5;
- (void)didSaveUserSpecificRecord:(id)a3;
- (void)didTurnIntoFault;
- (void)findAndResaveUserSpecificRecordThrowingReferenceViolationForDeletionWithError:(id)a3;
- (void)incrementFailureCounts;
- (void)initializeCryptoProperties;
- (void)inlineAssetsForRecord:(id)a3;
- (void)markForDeletion;
- (void)markShareDirtyIfNeededWithReason:(id)a3;
- (void)mergeCryptoFieldsFromRecord:(id)a3;
- (void)mergeCryptoTagAndInitializationVectorFromRecord:(id)a3;
- (void)mergeUnappliedEncryptedRecord;
- (void)mergeUnappliedEncryptedRecordRecursivelyInBackground;
- (void)needsToBePushedToCloud;
- (void)objc_removeAllCloudSyncingObjectActivityEvents;
- (void)objectWasDeletedFromCloud;
- (void)objectWasDeletedFromCloudByAnotherDevice;
- (void)objectWasFetchedButDoesNotExistInCloud;
- (void)objectWasFetchedFromCloudWithRecord:(id)a3 accountID:(id)a4 force:(BOOL)a5;
- (void)objectWasPushedToCloudWithOperation:(id)a3 serverRecord:(id)a4;
- (void)objectWillBePushedToCloudWithOperation:(id)a3;
- (void)persistPendingChangesRecursively;
- (void)recordID;
- (void)redactAuthorAttributionsToCurrentUser;
- (void)replicaIDToNotesVersion;
- (void)requireMinimumSupportedVersionAndPropagateToChildObjects:(int64_t)a3;
- (void)resetFailureCounts;
- (void)serializedValuesToEncrypt;
- (void)setActivityEventsData:(id)a3;
- (void)setCryptoInitializationVector:(id)a3;
- (void)setCryptoIterationCount:(int64_t)a3;
- (void)setCryptoSalt:(id)a3;
- (void)setCryptoTag:(id)a3;
- (void)setCryptoWrappedKey:(id)a3;
- (void)setDecryptedValue:(id)a3 forKey:(id)a4;
- (void)setEncryptedValuesJSON:(id)a3;
- (void)setFailedToSyncCount:(int64_t)a3;
- (void)setHasMissingKeychainItem:(BOOL)a3;
- (void)setInCloud:(BOOL)a3;
- (void)setMarkedForDeletion:(BOOL)a3;
- (void)setNeedsInitialFetchFromCloud:(BOOL)a3;
- (void)setNeedsToBeFetchedFromCloud:(BOOL)a3;
- (void)setNotesVersion:(id)a3 forReplicaID:(id)a4;
- (void)setNumberOfPushAttemptsToWaitCount:(int64_t)a3;
- (void)setPrimaryEncryptedData:(id)a3;
- (void)setPrimitiveValue:(id)a3 forEncryptableKey:(id)a4;
- (void)setServerRecord:(id)a3;
- (void)setServerShare:(id)a3;
- (void)setServerShareIfNewer:(id)a3;
- (void)setUnappliedEncryptedRecord:(id)a3;
- (void)setUserSpecificServerRecord:(id)a3;
- (void)setValue:(id)a3 forEncryptableKey:(id)a4;
- (void)setVersion:(int64_t)a3 forOperation:(id)a4;
- (void)setWasRecentlyDeletedByThisDevice:(BOOL)a3;
- (void)shouldBeDeletedFromLocalDatabase;
- (void)unappliedEncryptedRecord;
- (void)unitTest_injectCryptoStrategy:(id)a3;
- (void)unmarkForDeletion;
- (void)unsafelyClearChangeCountWithReason:(id)a3;
- (void)unsafelyUpdateChangeCountWithReason:(id)a3;
- (void)updateChangeCountWithReason:(id)a3;
- (void)updateChangeCountsForUnsavedParentReferences;
- (void)updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded;
- (void)updateNeedsToSaveUserSpecificRecordToUpdateReferenceActionsIfNeeded;
- (void)updateParentReferenceIfNecessary;
- (void)updateUserSpecificChangeCountWithReason:(id)a3;
- (void)userSpecificRecordID;
- (void)willSave;
@end

@implementation ICCloudSyncingObject

+ (id)predicateForVisibleObjects
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA920];
  v4 = [a1 predicateForUnmarkedForDeletionObjects];
  v5 = [a1 predicateForFetchedFromCloudObjects];
  v12[1] = v5;
  v6 = MEMORY[0x277CCA920];
  v7 = [a1 predicateForDeprecatedObjects];
  v8 = [v6 notPredicateWithSubpredicate:v7];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v10 = [v3 andPredicateWithSubpredicates:v9];

  return v10;
}

- (void)addAuthenticationStateObserversIfNeeded
{
  if (![(ICCloudSyncingObject *)self didAddAuthenticationStateObservers])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = +[ICAuthenticationState sharedState];
    [v3 addObserver:self selector:sel_authenticationStateWillDeauthenticate_ name:@"ICAuthenticationStateWillDeauthenticateNotification" object:v4];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = +[ICAuthenticationState sharedState];
    [v5 addObserver:self selector:sel_authenticationStateDidDeauthenticate_ name:@"ICAuthenticationStateDidDeauthenticateNotification" object:v6];

    [(ICCloudSyncingObject *)self setDidAddAuthenticationStateObservers:1];
  }
}

- (void)awakeFromFetch
{
  v11.receiver = self;
  v11.super_class = ICCloudSyncingObject;
  [(ICCloudSyncingObject *)&v11 awakeFromFetch];
  v3 = [(ICCloudSyncingObject *)self cloudState];

  if (!v3)
  {
    v4 = MEMORY[0x277CBE408];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(ICCloudSyncingObject *)self managedObjectContext];
    v8 = [v4 insertNewObjectForEntityForName:v6 inManagedObjectContext:v7];

    v9 = NSStringFromSelector(sel_cloudState);
    [(ICCloudSyncingObject *)self setPrimitiveValue:v8 forKey:v9];

    v10 = NSStringFromSelector(sel_cloudSyncingObject);
    [v8 setPrimitiveValue:self forKey:v10];
  }

  [(ICCloudSyncingObject *)self setNeedsToLoadDecryptedValues:1];
  [(ICCloudSyncingObject *)self addAuthenticationStateObserversIfNeeded];
}

- (void)didTurnIntoFault
{
  v12.receiver = self;
  v12.super_class = ICCloudSyncingObject;
  [(ICCloudSyncingObject *)&v12 didTurnIntoFault];
  serverRecord = self->_serverRecord;
  self->_serverRecord = 0;

  serverShare = self->_serverShare;
  self->_serverShare = 0;

  userSpecificServerRecord = self->_userSpecificServerRecord;
  self->_userSpecificServerRecord = 0;

  unappliedEncryptedRecord = self->_unappliedEncryptedRecord;
  self->_unappliedEncryptedRecord = 0;

  replicaIDToNotesVersion = self->_replicaIDToNotesVersion;
  self->_replicaIDToNotesVersion = 0;

  activityEventsDocument = self->_activityEventsDocument;
  self->_activityEventsDocument = 0;

  persistedActivityEventsStorage = self->_persistedActivityEventsStorage;
  self->_persistedActivityEventsStorage = 0;

  checklistItemToActivityEventsStorage = self->_checklistItemToActivityEventsStorage;
  self->_checklistItemToActivityEventsStorage = 0;

  participantHandlesToParticipants = self->_participantHandlesToParticipants;
  self->_participantHandlesToParticipants = 0;
}

- (id)shortLoggingDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ICCloudSyncingObject *)self recordName];
  v6 = [(ICCloudSyncingObject *)self objectID];
  v7 = [v3 stringWithFormat:@"<%@ %@[%@]>", v4, v5, v6];

  return v7;
}

- (BOOL)isSharedReadOnly
{
  v2 = [(ICCloudSyncingObject *)self serverShareCheckingParent];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 currentUserParticipant];
    v5 = [v4 permission] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CKShare)serverShareCheckingParent
{
  v2 = self;
  v3 = 0;
  v4 = v2;
  while (v4)
  {
    v5 = [v4 serverShare];

    v6 = [v4 parentCloudObject];

    v3 = v5;
    v4 = v6;
    if (v5)
    {
      if ([(ICCloudSyncingObject *)v2 shareMatchesRecord])
      {
        break;
      }
    }
  }

  return v3;
}

- (CKShare)serverShare
{
  serverShare = self->_serverShare;
  if (!serverShare)
  {
    v4 = [(ICCloudSyncingObject *)self serverShareData];
    if (v4)
    {
      v5 = [objc_opt_class() shareSystemFieldsTransformer];
      v6 = [v5 reverseTransformedValue:v4];
      v7 = self->_serverShare;
      self->_serverShare = v6;
    }

    serverShare = self->_serverShare;
  }

  return serverShare;
}

- (BOOL)isSharedViaICloud
{
  v3 = [(ICCloudSyncingObject *)self serverShare];
  v4 = [v3 ic_nonCurrentUserParticipants];
  if ([v4 count])
  {
    v5 = [(ICCloudSyncingObject *)self shareMatchesRecord];

    if (v5)
    {
      return 1;
    }
  }

  else
  {
  }

  v6 = [(ICCloudSyncingObject *)self serverShare];
  if (v6)
  {
  }

  else
  {
    v16 = [(ICCloudSyncingObject *)self serverRecord];
    v17 = [v16 share];

    if (v17)
    {
      return 1;
    }
  }

  v7 = [(ICCloudSyncingObject *)self zoneOwnerName];
  if (v7)
  {
    v8 = v7;
    v9 = [(ICCloudSyncingObject *)self zoneOwnerName];
    v10 = [v9 isEqualToString:*MEMORY[0x277CBBF28]];

    if (!v10)
    {
      return 1;
    }
  }

  v11 = [(ICCloudSyncingObject *)self serverShare];
  v12 = [v11 ic_isPublicShare];

  if (v12)
  {
    return 1;
  }

  v13 = [(ICCloudSyncingObject *)self parentCloudObject];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 isSharedViaICloud];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (CKRecord)serverRecord
{
  serverRecord = self->_serverRecord;
  if (!serverRecord)
  {
    v4 = [(ICCloudSyncingObject *)self serverRecordData];
    if (v4)
    {
      v5 = [objc_opt_class() recordSystemFieldsTransformer];
      v6 = [v5 reverseTransformedValue:v4];
      v7 = self->_serverRecord;
      self->_serverRecord = v6;
    }

    serverRecord = self->_serverRecord;
  }

  return serverRecord;
}

- (NSString)zoneOwnerName
{
  [(ICCloudSyncingObject *)self willAccessValueForKey:@"zoneOwnerName"];
  v3 = [(ICCloudSyncingObject *)self primitiveZoneOwnerName];
  [(ICCloudSyncingObject *)self didAccessValueForKey:@"zoneOwnerName"];
  if (!v3)
  {
    v4 = [(ICCloudSyncingObject *)self parentCloudObject];
    v5 = v4;
    if (v4)
    {
      v3 = [v4 zoneOwnerName];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)viewContext
{
  v2 = [(ICCloudSyncingObject *)self appContext];
  v3 = [v2 viewContext];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[ICNoteContext sharedContext];
    v5 = [v6 managedObjectContext];
  }

  return v5;
}

- (BOOL)isUnsupported
{
  v3 = +[ICCloudSyncingObject currentNotesVersion];
  if (v3 < [(ICCloudSyncingObject *)self minimumSupportedNotesVersion])
  {
    return 1;
  }

  v5 = [(ICCloudSyncingObject *)self parentCloudObjectForMinimumSupportedVersionPropagation];
  v6 = [v5 isUnsupported];

  return v6;
}

+ (int64_t)currentNotesVersion
{
  v2 = ICDebugDecrementedNotesVersion;
  if (!ICDebugDecrementedNotesVersion)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v3 objectForKey:@"DebugNotesVersionDecrementAmount"];

    v5 = MEMORY[0x277CCABB0];
    if (v4)
    {
      objc_opt_class();
      v6 = ICDynamicCast();
      v7 = [v6 integerValue];
      if (v7 >= 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = -v7;
      }

      v5 = MEMORY[0x277CCABB0];
      v9 = (17 - v8) & ~((17 - v8) >> 63);
    }

    else
    {
      v9 = 17;
    }

    v10 = [v5 numberWithInteger:v9];
    v11 = ICDebugDecrementedNotesVersion;
    ICDebugDecrementedNotesVersion = v10;

    v2 = ICDebugDecrementedNotesVersion;
    if (!ICDebugDecrementedNotesVersion)
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"((ICDebugDecrementedNotesVersion) != nil)" functionName:"+[ICCloudSyncingObject currentNotesVersion]" simulateCrash:1 showAlert:0 format:{@"Expected non-nil value for '%s'", "ICDebugDecrementedNotesVersion"}];
      v2 = ICDebugDecrementedNotesVersion;
    }
  }

  return [v2 intValue];
}

- (NSUUID)currentReplicaID
{
  currentReplicaID = self->_currentReplicaID;
  if (currentReplicaID)
  {
    v3 = currentReplicaID;
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 bundleIdentifier];
    v7 = ICTestHostBundleIdentifier();
    v8 = [v6 isEqual:v7];

    v9 = [(ICCloudSyncingObject *)self cloudAccount];
    if (v8)
    {
      v10 = ICNotesAppBundleIdentifier();
      v11 = [v9 replicaIDForBundleIdentifier:v10];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [MEMORY[0x277CCAD78] UUID];
      }

      v3 = v13;
    }

    else
    {
      v10 = [MEMORY[0x277CCA8D8] mainBundle];
      v12 = [v10 bundleIdentifier];
      v14 = [v9 replicaIDForBundleIdentifier:v12];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = [MEMORY[0x277CCAD78] UUID];
      }

      v3 = v16;
    }
  }

  return v3;
}

- (BOOL)mergeUnappliedEncryptedRecord
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(ICCloudSyncingObject *)self isMergingUnappliedEncryptedRecord])
  {
    return 1;
  }

  v3 = [(ICCloudSyncingObject *)self unappliedEncryptedRecord];

  if (!v3)
  {
    return 1;
  }

  if ([(ICCloudSyncingObject *)self isAuthenticated])
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(ICCloudSyncingObject *)self shortLoggingDescription];
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, "Merging unapplied encrypted record… {object: %@}", &v15, 0xCu);
    }

    v6 = [(ICCloudSyncingObject *)self unappliedEncryptedRecord];
    if (v6)
    {
      [(ICCloudSyncingObject *)self setMergingRecord:1];
      [(ICCloudSyncingObject *)self setMergingUnappliedEncryptedRecord:1];
      v7 = [(ICCloudSyncingObject *)self cloudAccount];
      v8 = [v7 identifier];
      [(ICCloudSyncingObject *)self mergeCloudKitRecord:v6 accountID:v8 approach:0];

      [(ICCloudSyncingObject *)self setMergingUnappliedEncryptedRecord:0];
      [(ICCloudSyncingObject *)self setMergingRecord:0];
      v9 = [(ICCloudSyncingObject *)self unappliedEncryptedRecord];

      v10 = os_log_create("com.apple.notes", "Crypto");
      v11 = v10;
      if (!v9)
      {
        v12 = 1;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v14 = [(ICCloudSyncingObject *)self shortLoggingDescription];
          v15 = 138412290;
          v16 = v14;
          _os_log_impl(&dword_214D51000, v11, OS_LOG_TYPE_INFO, "Merged unapplied encrypted record {object: %@}", &v15, 0xCu);
        }

        goto LABEL_16;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(ICCloudSyncingObject *)self mergeUnappliedEncryptedRecord];
      }
    }

    else
    {
      v11 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(ICCloudSyncingObject *)self mergeUnappliedEncryptedRecord];
      }
    }

    v12 = 0;
LABEL_16:

    return v12;
  }

  return 0;
}

- (CKRecord)unappliedEncryptedRecord
{
  unappliedEncryptedRecord = self->_unappliedEncryptedRecord;
  if (unappliedEncryptedRecord)
  {
    v3 = unappliedEncryptedRecord;
  }

  else
  {
    v5 = [(ICCloudSyncingObject *)self unappliedEncryptedRecordData];
    if (v5)
    {
      v6 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(ICCloudSyncingObject *)self unappliedEncryptedRecord];
      }

      v11 = 0;
      v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v11];
      v8 = v11;
      if (v8)
      {
        v9 = os_log_create("com.apple.notes", "Crypto");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [ICCloudSyncingObject unappliedEncryptedRecord];
        }

        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObject unappliedEncryptedRecord]" simulateCrash:1 showAlert:1 format:@"Error unarchiving unapplied encrypted record data"];
        v3 = 0;
      }

      else
      {
        objc_storeStrong(&self->_unappliedEncryptedRecord, v7);
        v3 = v7;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)deviceManagementRestrictionsManager
{
  v2 = [(ICCloudSyncingObject *)self appContext];
  v3 = [v2 deviceManagementRestrictionsManager];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[ICDeviceManagementRestrictionsManager sharedManager];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isPasswordProtectedAndLocked
{
  v3 = [(ICCloudSyncingObject *)self isPasswordProtected];
  if (v3)
  {
    LOBYTE(v3) = ![(ICCloudSyncingObject *)self isAuthenticated];
  }

  return v3;
}

- (BOOL)isAuthenticated
{
  v2 = [(ICCloudSyncingObject *)self cryptoStrategy];
  v3 = [v2 isAuthenticated];

  return v3;
}

- (ICCloudSyncingObjectCryptoStrategy)cryptoStrategy
{
  v3 = [(ICCloudSyncingObject *)self cryptoStrategyForMergingEncryptedData];

  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject cryptoStrategy];
    }

    v5 = [(ICCloudSyncingObject *)self cryptoStrategyForMergingEncryptedData];
    goto LABEL_5;
  }

  v7 = [(ICCloudSyncingObject *)self canHaveCryptoStrategy];
  cryptoStrategy = self->_cryptoStrategy;
  if (v7)
  {
    if (cryptoStrategy)
    {
      v5 = cryptoStrategy;
LABEL_5:
      v6 = v5;
      goto LABEL_14;
    }

    v6 = [(ICCloudSyncingObject *)self validatedCreateCryptoStrategy];
    if (![(ICCloudSyncingObject *)self cryptoStrategyIsTransient])
    {
      objc_storeStrong(&self->_cryptoStrategy, v6);
    }
  }

  else
  {
    if (cryptoStrategy)
    {
      v9 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [ICCloudSyncingObject cryptoStrategy];
      }

      [(ICCloudSyncingObjectCryptoStrategy *)self->_cryptoStrategy invalidateStrategy];
      v10 = self->_cryptoStrategy;
      self->_cryptoStrategy = 0;
    }

    v6 = 0;
  }

LABEL_14:

  return v6;
}

- (BOOL)canHaveCryptoStrategy
{
  v3 = [(ICCloudSyncingObject *)self isPasswordProtected];
  if (v3)
  {
    if (([(ICCloudSyncingObject *)self needsInitialFetchFromCloud]& 1) != 0)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(ICCloudSyncingObject *)self isUnsupported];
    }
  }

  return v3;
}

- (NSDate)modificationDate
{
  v3 = NSStringFromSelector(sel_modificationDate);
  [(ICCloudSyncingObject *)self willAccessValueForKey:v3];

  objc_opt_class();
  v4 = NSStringFromSelector(sel_modificationDate);
  v5 = [(ICCloudSyncingObject *)self primitiveValueForKey:v4];
  v6 = ICDynamicCast();

  v7 = NSStringFromSelector(sel_modificationDate);
  [(ICCloudSyncingObject *)self didAccessValueForKey:v7];

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(ICCloudSyncingObject *)self serverRecord];
    v8 = [v9 modificationDate];
  }

  return v8;
}

- (BOOL)canAuthenticate
{
  v2 = [(ICCloudSyncingObject *)self cryptoStrategy];
  v3 = [v2 canAuthenticate];

  return v3;
}

- (void)mergeUnappliedEncryptedRecordRecursivelyInBackground
{
  v3 = [objc_opt_class() mergeUnappliedEncryptedRecordsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__ICCloudSyncingObject_mergeUnappliedEncryptedRecordRecursivelyInBackground__block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  dispatch_async(v3, block);
}

void __59__ICCloudSyncingObject_mergeUnappliedEncryptedRecordsQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.notes.merge-unapplied-encrypted-records-queue", v2);
  v1 = mergeUnappliedEncryptedRecordsQueue_mergeUnappliedEncryptedRecordsQueue;
  mergeUnappliedEncryptedRecordsQueue_mergeUnappliedEncryptedRecordsQueue = v0;
}

+ (id)mergeUnappliedEncryptedRecordsQueue
{
  if (mergeUnappliedEncryptedRecordsQueue_onceToken != -1)
  {
    +[ICCloudSyncingObject mergeUnappliedEncryptedRecordsQueue];
  }

  v3 = mergeUnappliedEncryptedRecordsQueue_mergeUnappliedEncryptedRecordsQueue;

  return v3;
}

void __76__ICCloudSyncingObject_mergeUnappliedEncryptedRecordRecursivelyInBackground__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) workerManagedObjectContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__ICCloudSyncingObject_mergeUnappliedEncryptedRecordRecursivelyInBackground__block_invoke_2;
  v4[3] = &unk_278194AD8;
  v4[4] = *(a1 + 32);
  v5 = v2;
  v3 = v2;
  [v3 performBlockAndWait:v4];
}

- (id)workerManagedObjectContext
{
  v2 = [(ICCloudSyncingObject *)self appContext];
  v3 = [v2 makeBackgroundContext];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = +[ICNoteContext sharedContext];
    v5 = [v6 workerManagedObjectContext];
  }

  return v5;
}

void __76__ICCloudSyncingObject_mergeUnappliedEncryptedRecordRecursivelyInBackground__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectID];
  v5 = [ICCloudSyncingObject ic_existingObjectWithID:v2 context:*(a1 + 40)];

  [v5 mergeUnappliedEncryptedRecordRecursively];
  v3 = *(a1 + 40);
  v4 = [v5 shortLoggingDescription];
  [v3 ic_saveWithLogDescription:{@"Merged unapplied encrypted records {object: %@}", v4}];
}

- (BOOL)mergeUnappliedEncryptedRecordRecursively
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(ICCloudSyncingObject *)self mergeUnappliedEncryptedRecord];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(ICCloudSyncingObject *)self allChildCloudObjects];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3 &= [*(*(&v10 + 1) + 8 * i) mergeUnappliedEncryptedRecordRecursively];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSArray)allChildCloudObjects
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  v4 = [(ICCloudSyncingObject *)self childCloudObjects];
  v5 = [v3 setWithArray:v4];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(ICCloudSyncingObject *)self childCloudObjects];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) allChildCloudObjects];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 allObjects];

  return v12;
}

- (BOOL)isPubliclySharedOrHasInvitees
{
  if ([(ICCloudSyncingObject *)self isPubliclyShared])
  {
    return 1;
  }

  return [(ICCloudSyncingObject *)self hasInvitees];
}

- (BOOL)isPubliclyShared
{
  v2 = [(ICCloudSyncingObject *)self serverShareCheckingParent];
  v3 = [v2 ic_isPublicShare];

  return v3;
}

- (BOOL)hasInvitees
{
  v2 = [(ICCloudSyncingObject *)self serverShareCheckingParent];
  v3 = [v2 ic_nonOwnerInvitedParticipantsCount] != 0;

  return v3;
}

- (ICCloudSyncingObject)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = ICCloudSyncingObject;
  v4 = [(ICCloudSyncingObject *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
  v5 = v4;
  if (v4)
  {
    v4->_needsToLoadDecryptedValues = 1;
    [(ICCloudSyncingObject *)v4 addAuthenticationStateObserversIfNeeded];
  }

  return v5;
}

- (void)awakeFromInsert
{
  v9.receiver = self;
  v9.super_class = ICCloudSyncingObject;
  [(ICCloudSyncingObject *)&v9 awakeFromInsert];
  v3 = MEMORY[0x277CBE408];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICCloudSyncingObject *)self managedObjectContext];
  v7 = [v3 insertNewObjectForEntityForName:v5 inManagedObjectContext:v6];

  v8 = NSStringFromSelector(sel_cloudState);
  [(ICCloudSyncingObject *)self setPrimitiveValue:v7 forKey:v8];

  [(ICCloudSyncingObject *)self setNeedsToLoadDecryptedValues:1];
  [(ICCloudSyncingObject *)self addAuthenticationStateObserversIfNeeded];
}

- (void)willSave
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (BOOL)validateIdentifier:(id *)a3 error:(id *)a4
{
  v11 = *MEMORY[0x277D85DE8];
  if (!*a3)
  {
    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = self;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEFAULT, "Trying to save an object with a nil identifier: %@", &v9, 0xCu);
    }

    v7 = [MEMORY[0x277CCAD78] UUID];
    *a3 = [v7 UUIDString];
  }

  return 1;
}

- (void)assignToPersistentStore:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v7 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObject assignToPersistentStore:?];
    }

    goto LABEL_7;
  }

  v5 = [(ICCloudSyncingObject *)self managedObjectContext];
  [v5 assignObject:self toPersistentStore:v4];

  v6 = [(ICCloudSyncingObject *)self cloudState];

  if (v6)
  {
    v7 = [(ICCloudSyncingObject *)self managedObjectContext];
    v8 = [(ICCloudSyncingObject *)self cloudState];
    [v7 assignObject:v8 toPersistentStore:v4];

LABEL_7:
  }
}

- (void)setNeedsToBeFetchedFromCloud:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICCloudSyncingObject *)self primitiveValueForKey:@"needsToBeFetchedFromCloud"];
  v6 = [v5 BOOLValue];

  if (v6 != v3)
  {
    if (v3)
    {
      [(ICCloudSyncingObject *)self clearServerRecords];
    }

    [(ICCloudSyncingObject *)self willChangeValueForKey:@"needsToBeFetchedFromCloud"];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    [(ICCloudSyncingObject *)self setPrimitiveValue:v7 forKey:@"needsToBeFetchedFromCloud"];

    [(ICCloudSyncingObject *)self didChangeValueForKey:@"needsToBeFetchedFromCloud"];
  }
}

- (void)updateChangeCountWithReason:(id)a3
{
  v4 = a3;
  if ([(ICCloudSyncingObject *)self needsInitialFetchFromCloud])
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [ICCloudSyncingObject updateChangeCountWithReason:];
    }

LABEL_11:

    goto LABEL_12;
  }

  if ([(ICCloudSyncingObject *)self isMergingRecord])
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [ICCloudSyncingObject updateChangeCountWithReason:];
    }

    goto LABEL_11;
  }

  v6 = [(ICCloudSyncingObject *)self cloudState];

  if (!v6)
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObject updateChangeCountWithReason:];
    }

    goto LABEL_11;
  }

  [(ICCloudSyncingObject *)self unsafelyUpdateChangeCountWithReason:v4];
LABEL_12:
}

- (void)unsafelyUpdateChangeCountWithReason:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self cloudState];
  v6 = [v5 currentLocalVersion];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject unsafelyUpdateChangeCountWithReason:?];
    }

    v8 = [(ICCloudSyncingObject *)self cloudState];
    [v8 setCurrentLocalVersion:0];

    v9 = [(ICCloudSyncingObject *)self cloudState];
    [v9 setLatestVersionSyncedToCloud:0];
  }

  v10 = [(ICCloudSyncingObject *)self cloudState];
  [v10 setCurrentLocalVersion:{objc_msgSend(v10, "currentLocalVersion") + 1}];

  v11 = [MEMORY[0x277CBEAA8] now];
  v12 = [(ICCloudSyncingObject *)self cloudState];
  [v12 setLocalVersionDate:v11];

  [(ICCloudSyncingObject *)self setLastUpdateChangeCountReason:v4];
  if (([(ICCloudSyncingObject *)self hasChanges]& 1) == 0)
  {
    v13 = [(ICCloudSyncingObject *)self cloudState];
    [(ICCloudSyncingObject *)self setCloudState:0];
    [(ICCloudSyncingObject *)self setCloudState:v13];
  }

  v14 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(ICCloudSyncingObject *)self unsafelyUpdateChangeCountWithReason:v4, v14];
  }
}

- (void)clearChangeCountWithReason:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self cloudState];

  if (v5)
  {
    [(ICCloudSyncingObject *)self unsafelyClearChangeCountWithReason:v4];
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObject clearChangeCountWithReason:];
    }
  }
}

- (void)unsafelyClearChangeCountWithReason:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self cloudState];
  [v5 setCurrentLocalVersion:0];

  v6 = [(ICCloudSyncingObject *)self cloudState];
  [v6 setLatestVersionSyncedToCloud:0];

  v7 = [(ICCloudSyncingObject *)self cloudState];
  [v7 setLocalVersionDate:0];

  v8 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudSyncingObject unsafelyClearChangeCountWithReason:];
  }
}

- (void)updateUserSpecificChangeCountWithReason:(id)a3
{
  v4 = a3;
  if (([objc_opt_class() supportsUserSpecificRecords] & 1) == 0)
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObject updateUserSpecificChangeCountWithReason:];
    }

    goto LABEL_10;
  }

  if (![(ICCloudSyncingObject *)self wantsUserSpecificRecord])
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObject updateUserSpecificChangeCountWithReason:];
    }

    goto LABEL_10;
  }

  if (([(ICCloudSyncingObject *)self needsToSaveUserSpecificRecord]& 1) == 0)
  {
    [(ICCloudSyncingObject *)self setNeedsToSaveUserSpecificRecord:1];
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject updateUserSpecificChangeCountWithReason:];
    }

LABEL_10:
  }
}

- (void)clearServerRecords
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (ICCloudSyncingObject)objectWithRecordID:(id)a3 accountID:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = [a1 objectsWithRecordID:a3 context:a5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__ICCloudSyncingObject_objectWithRecordID_accountID_context___block_invoke;
  v13[3] = &unk_278196CB0;
  v14 = v8;
  v10 = v8;
  v11 = [v9 ic_objectPassingTest:v13];

  return v11;
}

uint64_t __61__ICCloudSyncingObject_objectWithRecordID_accountID_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 cloudAccount];
  v4 = v3;
  if (v3 && *(a1 + 32))
  {
    v5 = [v3 identifier];
    v6 = [v5 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)objectsWithRecordID:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = [a3 recordName];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier == %@", v7];
    v9 = [a1 ic_objectsMatchingPredicate:v8 context:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)failureCountQueue
{
  if (failureCountQueue_onceToken != -1)
  {
    +[ICCloudSyncingObject failureCountQueue];
  }

  v3 = failureCountQueue_failureCountQueue;

  return v3;
}

void __41__ICCloudSyncingObject_failureCountQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.notes.cloud.failure-counts", v2);
  v1 = failureCountQueue_failureCountQueue;
  failureCountQueue_failureCountQueue = v0;
}

+ (id)failedToSyncCountsByIdentifier
{
  if (failedToSyncCountsByIdentifier_onceToken != -1)
  {
    +[ICCloudSyncingObject failedToSyncCountsByIdentifier];
  }

  v3 = failedToSyncCountsByIdentifier_failedToSyncCountsByIdentifier;

  return v3;
}

void __54__ICCloudSyncingObject_failedToSyncCountsByIdentifier__block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = failedToSyncCountsByIdentifier_failedToSyncCountsByIdentifier;
  failedToSyncCountsByIdentifier_failedToSyncCountsByIdentifier = v0;
}

- (int64_t)failedToSyncCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [objc_opt_class() failureCountQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__ICCloudSyncingObject_failedToSyncCount__block_invoke;
  v6[3] = &unk_278194D68;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __41__ICCloudSyncingObject_failedToSyncCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  if (v2)
  {
    v3 = [objc_opt_class() failedToSyncCountsByIdentifier];
    v4 = [v3 objectForKey:v2];

    *(*(*(a1 + 40) + 8) + 24) = [v4 integerValue];
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Trying to get failed to sync count without identifier", v6, 2u);
    }
  }
}

- (void)setFailedToSyncCount:(int64_t)a3
{
  v5 = [objc_opt_class() failureCountQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__ICCloudSyncingObject_setFailedToSyncCount___block_invoke;
  v6[3] = &unk_278196CD8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

void __45__ICCloudSyncingObject_setFailedToSyncCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [objc_opt_class() failedToSyncCountsByIdentifier];
    v5 = v4;
    if (v3)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
      [v5 setObject:v6 forKey:v2];
    }

    else
    {
      [v4 removeObjectForKey:v2];
    }
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Trying to set failed to sync count without identifier", v7, 2u);
    }
  }
}

+ (id)numberOfPushAttemptsToWaitByIdentifier
{
  if (numberOfPushAttemptsToWaitByIdentifier_onceToken != -1)
  {
    +[ICCloudSyncingObject numberOfPushAttemptsToWaitByIdentifier];
  }

  v3 = numberOfPushAttemptsToWaitByIdentifier_numberOfPushAttemptsToWaitByIdentifier;

  return v3;
}

void __62__ICCloudSyncingObject_numberOfPushAttemptsToWaitByIdentifier__block_invoke()
{
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = numberOfPushAttemptsToWaitByIdentifier_numberOfPushAttemptsToWaitByIdentifier;
  numberOfPushAttemptsToWaitByIdentifier_numberOfPushAttemptsToWaitByIdentifier = v0;
}

- (int64_t)numberOfPushAttemptsToWaitCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [objc_opt_class() failureCountQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__ICCloudSyncingObject_numberOfPushAttemptsToWaitCount__block_invoke;
  v6[3] = &unk_278194D68;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __55__ICCloudSyncingObject_numberOfPushAttemptsToWaitCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  if (v2)
  {
    v3 = [objc_opt_class() numberOfPushAttemptsToWaitByIdentifier];
    v4 = [v3 objectForKey:v2];

    *(*(*(a1 + 40) + 8) + 24) = [v4 integerValue];
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Trying to get number of push attempts to wait without identifier", v6, 2u);
    }
  }
}

- (void)setNumberOfPushAttemptsToWaitCount:(int64_t)a3
{
  v5 = [objc_opt_class() failureCountQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__ICCloudSyncingObject_setNumberOfPushAttemptsToWaitCount___block_invoke;
  v6[3] = &unk_278196CD8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_sync(v5, v6);
}

void __59__ICCloudSyncingObject_setNumberOfPushAttemptsToWaitCount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [objc_opt_class() numberOfPushAttemptsToWaitByIdentifier];
    v5 = v4;
    if (v3)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
      [v5 setObject:v6 forKey:v2];
    }

    else
    {
      [v4 removeObjectForKey:v2];
    }
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Trying to set number of push attempts to wait without identifier", v7, 2u);
    }
  }
}

- (void)incrementFailureCounts
{
  v20 = *MEMORY[0x277D85DE8];
  if (![(ICCloudSyncingObject *)self numberOfPushAttemptsToWaitCount])
  {
    [(ICCloudSyncingObject *)self setNumberOfPushAttemptsToWaitCount:3];
  }

  [(ICCloudSyncingObject *)self setFailedToSyncCount:[(ICCloudSyncingObject *)self failedToSyncCount]+ 1];
  v3 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ICCloudSyncingObject *)self className];
    v5 = [(ICCloudSyncingObject *)self failedToSyncCount];
    v6 = [(ICCloudSyncingObject *)self failedToSyncCount];
    v7 = [(ICCloudSyncingObject *)self loggingDescription];
    v8 = 138413570;
    v9 = v4;
    v10 = 1024;
    v11 = v5;
    v12 = 1024;
    v13 = 3;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = 6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_DEFAULT, "%@ failed to be pushed. Incrementing failedToSyncCount, failure (%d/%d) before being temporarily ignored. (%d/%d) before deleting change tokens and full re-sync. %@", &v8, 0x2Eu);
  }

  if ([(ICCloudSyncingObject *)self failedToSyncCount]>= 6)
  {
    [(ICCloudSyncingObject *)self clearServerRecords];
    [(ICCloudSyncingObject *)self deleteChangeTokensAndReSync];
  }
}

- (void)decrementFailureCounts
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(ICCloudSyncingObject *)self numberOfPushAttemptsToWaitCount]>= 1)
  {
    [(ICCloudSyncingObject *)self setNumberOfPushAttemptsToWaitCount:[(ICCloudSyncingObject *)self numberOfPushAttemptsToWaitCount]- 1];
  }

  v3 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ICCloudSyncingObject *)self className];
    v5 = [(ICCloudSyncingObject *)self numberOfPushAttemptsToWaitCount];
    v6 = [(ICCloudSyncingObject *)self loggingDescription];
    v7 = 138412802;
    v8 = v4;
    v9 = 1024;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_DEFAULT, "Decrementing failure counts for %@, %d push attempts before it is retried. %@", &v7, 0x1Cu);
  }
}

- (void)deleteChangeTokensAndReSync
{
  OUTLINED_FUNCTION_3();
  [v1 className];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() failedToSyncCount];
  v2 = [OUTLINED_FUNCTION_4_2() loggingDescription];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void __51__ICCloudSyncingObject_deleteChangeTokensAndReSync__block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() numberOfPushAttemptsToWaitByIdentifier];
  [v2 removeAllObjects];

  v3 = [objc_opt_class() failedToSyncCountsByIdentifier];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) cloudContext];
  [v4 deleteAllServerChangeTokens];

  [MEMORY[0x277D36278] postBasicEvent:2];
  v5 = [*(a1 + 32) cloudContext];
  [v5 syncWithReason:@"DeletedChangeTokensDueToFailures" completionHandler:0];
}

- (void)resetFailureCounts
{
  [(ICCloudSyncingObject *)self setFailedToSyncCount:0];

  [(ICCloudSyncingObject *)self setNumberOfPushAttemptsToWaitCount:0];
}

- (BOOL)shouldBeIgnoredForSync
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(ICCloudSyncingObject *)self failedToSyncCount]< 3 || [(ICCloudSyncingObject *)self numberOfPushAttemptsToWaitCount]< 1)
  {
    return 0;
  }

  v3 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ICCloudSyncingObject *)self className];
    v5 = [(ICCloudSyncingObject *)self failedToSyncCount];
    v6 = [(ICCloudSyncingObject *)self numberOfPushAttemptsToWaitCount];
    v7 = [(ICCloudSyncingObject *)self loggingDescription];
    v9 = 138413314;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    v13 = 1024;
    v14 = 3;
    v15 = 1024;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_DEFAULT, "%@ failed to be pushed %d times. Max number of retries is %d. It will now be ignored for %d push attempts. %@", &v9, 0x28u);
  }

  return 1;
}

- (CKRecordID)recordID
{
  v3 = [(ICCloudSyncingObject *)self managedObjectContext];

  if (v3)
  {
    v4 = [(ICCloudSyncingObject *)self recordName];
    if ([v4 length])
    {
      v5 = [(ICCloudSyncingObject *)self recordZoneName];
      if ([v5 length])
      {
        v6 = [(ICCloudSyncingObject *)self zoneOwnerName];
        v7 = v6;
        v8 = *MEMORY[0x277CBBF28];
        if (v6)
        {
          v8 = v6;
        }

        v9 = v8;

        v10 = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:v5 ownerName:v9];
        v11 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:v4 zoneID:v10];

        goto LABEL_17;
      }

      v12 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(ICCloudSyncingObject *)self recordID];
      }
    }

    else
    {
      v5 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [(ICCloudSyncingObject *)self recordID];
      }
    }

    v11 = 0;
    goto LABEL_17;
  }

  v5 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICCloudSyncingObject *)self recordID];
  }

  v11 = 0;
  v4 = v5;
LABEL_17:

  return v11;
}

- (int64_t)databaseScope
{
  v2 = [(ICCloudSyncingObject *)self recordID];
  v3 = [v2 databaseScope];

  return v3;
}

- (BOOL)needsToBeDeletedFromCloud
{
  if ([(ICCloudSyncingObject *)self supportsDeletionByTTL]|| ![(ICCloudSyncingObject *)self isInCloud])
  {
    return 0;
  }

  return [(ICCloudSyncingObject *)self markedForDeletion];
}

- (BOOL)isValidObject
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ICCloudSyncingObject *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__ICCloudSyncingObject_isValidObject__block_invoke;
  v5[3] = &unk_278194DE8;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __37__ICCloudSyncingObject_isValidObject__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
  return result;
}

+ (id)newObjectWithIdentifier:(id)a3 context:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__23;
  v24 = __Block_byref_object_dispose__23;
  v25 = [a1 entity];
  if (!v21[5])
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__ICCloudSyncingObject_newObjectWithIdentifier_context___block_invoke;
    v19[3] = &unk_278194D98;
    v19[4] = &v20;
    v19[5] = a1;
    [v7 performBlockAndWait:v19];
  }

  v8 = [v7 persistentStoreCoordinator];
  v9 = [v8 managedObjectModel];
  v10 = [v9 entitiesByName];
  v11 = [v21[5] name];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12 && v12 != v21[5])
  {
    v13 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      +[ICCloudSyncingObject newObjectWithIdentifier:context:];
    }

    objc_storeStrong(v21 + 5, v12);
  }

  v14 = objc_alloc(objc_opt_class());
  v15 = [v14 initWithEntity:v21[5] insertIntoManagedObjectContext:v7];
  [v15 setIdentifier:v6];
  v16 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = [v15 shortLoggingDescription];
    [ICCloudSyncingObject newObjectWithIdentifier:v17 context:v26];
  }

  _Block_object_dispose(&v20, 8);
  return v15;
}

void __56__ICCloudSyncingObject_newObjectWithIdentifier_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) entity];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)newPlaceholderObjectForRecordName:(id)a3 accountID:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 newObjectWithIdentifier:a3 context:v8];
  [v10 setNeedsInitialFetchFromCloud:1];
  [v10 setInCloud:1];
  v11 = [ICAccount accountWithIdentifier:v9 context:v8];

  v12 = [v11 persistentStore];
  [v10 assignToPersistentStore:v12];

  return v10;
}

+ (id)cloudObjectWithIdentifier:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && ([v6 ic_trimmedString], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v9))
  {
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier == %@", v6];
    v11 = [a1 ic_objectsMatchingPredicate:v10 context:v7];
    v12 = [v11 lastObject];
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObject cloudObjectWithIdentifier:v13 context:?];
    }

    v12 = 0;
  }

  return v12;
}

+ (id)allCloudObjectIDsInContext:(id)a3 passingTest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__23;
  v21 = __Block_byref_object_dispose__23;
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __63__ICCloudSyncingObject_allCloudObjectIDsInContext_passingTest___block_invoke;
  v14 = &unk_278196D00;
  v8 = v7;
  v15 = v8;
  v16 = &v17;
  [a1 enumerateAllCloudObjectsInContext:v6 batchSize:20 saveAfterBatch:0 usingBlock:&v11];
  v9 = [v18[5] copy];

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __63__ICCloudSyncingObject_allCloudObjectIDsInContext_passingTest___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v10 = v5;
  if (!v6 || (v7 = (*(v6 + 16))(v6, v5, a3), v5 = v10, v7))
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [v5 objectID];
    [v8 addObject:v9];

    v5 = v10;
  }
}

+ (void)enumerateAllCloudObjectsInContext:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 relationshipKeyPathsForPrefetching:(id)a6 batchSize:(unint64_t)a7 saveAfterBatch:(BOOL)a8 usingBlock:(id)a9
{
  v9 = a8;
  v16 = a9;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __155__ICCloudSyncingObject_enumerateAllCloudObjectsInContext_predicate_sortDescriptors_relationshipKeyPathsForPrefetching_batchSize_saveAfterBatch_usingBlock___block_invoke;
  v26 = &unk_278196D28;
  v27 = v16;
  v17 = v16;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = _Block_copy(&aBlock);
  [a1 ic_enumerateObjectsMatchingPredicate:v20 sortDescriptors:v19 relationshipKeyPathsForPrefetching:v18 context:v21 batchSize:a7 saveAfterBatch:v9 usingBlock:{v22, aBlock, v24, v25, v26}];
}

void __155__ICCloudSyncingObject_enumerateAllCloudObjectsInContext_predicate_sortDescriptors_relationshipKeyPathsForPrefetching_batchSize_saveAfterBatch_usingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if ([v6 isInICloudAccount])
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, v6, a3);
    }
  }
}

- (id)makeCloudKitRecordForApproach:(int64_t)a3 mergeableFieldState:(id)a4
{
  v6 = a4;
  if (a3 == 1)
  {
    v7 = [(ICCloudSyncingObject *)self serverRecord];
    v8 = [v7 ic_copyWithUserFields:0];
  }

  else
  {
    if (a3)
    {
      goto LABEL_11;
    }

    v7 = [(ICCloudSyncingObject *)self serverRecord];
    v8 = [v7 copy];
  }

  v9 = v8;

  if (v9)
  {
    v10 = [(ICCloudSyncingObject *)self recordName];
    if (!v10)
    {
      goto LABEL_17;
    }

    v11 = v10;
    v12 = [v9 recordID];
    v13 = [v12 recordName];
    v14 = [(ICCloudSyncingObject *)self recordName];
    v15 = [v13 ic_isCaseInsensitiveEqualToString:v14];

    if (v15)
    {
      goto LABEL_17;
    }

    v16 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObject makeCloudKitRecordForApproach:mergeableFieldState:];
    }

    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObject makeCloudKitRecordForApproach:mergeableFieldState:]" simulateCrash:1 showAlert:1 format:@"Object has server record with mismatched record name"];
  }

LABEL_11:
  v17 = [(ICCloudSyncingObject *)self recordID];
  if (v17)
  {
    v18 = objc_alloc(MEMORY[0x277CBC5A0]);
    v19 = [(ICCloudSyncingObject *)self recordType];
    v9 = [v18 initWithRecordType:v19 recordID:v17];
  }

  else
  {
    v19 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObject makeCloudKitRecordForApproach:? mergeableFieldState:?];
    }

    v9 = 0;
  }

LABEL_17:
  v20 = [(ICCloudSyncingObject *)self parentCloudObject];
  v21 = [v20 recordID];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 zoneID];
    v24 = [v9 recordID];
    v25 = [v24 zoneID];
    v26 = [v23 isEqual:v25];

    if (v26)
    {
      [v9 setParent:0];
      v27 = [objc_alloc(MEMORY[0x277CBC620]) initWithRecordID:v22 action:0];
      [v9 setParent:v27];
    }
  }

  else if ([v9 ic_isOwnedByCurrentUser])
  {
    [v9 setParent:0];
  }

  if ([(ICCloudSyncingObject *)self shouldSyncMinimumSupportedNotesVersion])
  {
    v28 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ICCloudSyncingObject minimumSupportedNotesVersion](self, "minimumSupportedNotesVersion")}];
    [v9 setObject:v28 forKeyedSubscript:@"MinimumSupportedNotesVersion"];
  }

  if (!a3)
  {
    if ([objc_opt_class() supportsActivityEvents] && (!-[ICCloudSyncingObject isPasswordProtected](self, "isPasswordProtected") || !-[ICCloudSyncingObject needsToLoadDecryptedValues](self, "needsToLoadDecryptedValues")))
    {
      v29 = [(ICCloudSyncingObject *)self activityEventsData];

      if (v29)
      {
        v30 = [(ICCloudSyncingObject *)self activityEventsData];
        [v9 ic_setEncryptedInlineableDataAsset:v30 forKeyPrefix:@"ActivityEventsData" approach:0 withObject:self];
      }
    }

    if ([objc_opt_class() supportsNotesVersionTracking])
    {
      v31 = [(ICCloudSyncingObject *)self replicaIDToNotesVersionData];

      if (v31)
      {
        v32 = [(ICCloudSyncingObject *)self replicaIDToNotesVersionData];
        [v9 ic_setEncryptedInlineableDataAsset:v32 forKeyPrefix:@"ReplicaIDToNotesVersionData" approach:0 withObject:self];
      }
    }

    if ([(ICCloudSyncingObject *)self supportsDeletionByTTL]&& ([(ICCloudSyncingObject *)self isOwnedByCurrentUser]|| ![(ICCloudSyncingObject *)self isSharedRootObject]))
    {
      v33 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICCloudSyncingObject markedForDeletion](self, "markedForDeletion")}];
      [v9 setObject:v33 forKeyedSubscript:@"Deleted"];
    }

    if ([(ICCloudSyncingObject *)self isPasswordProtected]& 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v34 = [(ICCloudSyncingObject *)self cryptoSalt];
      [v9 setObject:v34 forKeyedSubscript:@"CryptoSalt"];

      v35 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ICCloudSyncingObject cryptoIterationCount](self, "cryptoIterationCount")}];
      [v9 setObject:v35 forKeyedSubscript:@"CryptoIterationCount"];

      v36 = [(ICCloudSyncingObject *)self cryptoInitializationVector];
      [v9 setObject:v36 forKeyedSubscript:@"CryptoInitializationVector"];

      v37 = [(ICCloudSyncingObject *)self cryptoTag];
      [v9 setObject:v37 forKeyedSubscript:@"CryptoTag"];

      v38 = [(ICCloudSyncingObject *)self cryptoWrappedKey];
      [v9 setObject:v38 forKeyedSubscript:@"CryptoWrappedKey"];

      v39 = [(ICCloudSyncingObject *)self passwordHint];
      v40 = [v39 dataUsingEncoding:4];
      v41 = [v9 encryptedValues];
      [v41 setObject:v40 forKeyedSubscript:@"PasswordHint"];
    }

    if ([(ICCloudSyncingObject *)self supportsEncryptedValuesDictionary]&& ([(ICCloudSyncingObject *)self encryptedValuesJSON], v42 = objc_claimAutoreleasedReturnValue(), v42, v42))
    {
      v43 = [(ICCloudSyncingObject *)self encryptedValuesJSON];
      [v9 ic_setInlineableDataAsset:v43 forKeyPrefix:@"EncryptedValues" approach:0 withObject:self];
    }

    else
    {
      v44 = [(ICCloudSyncingObject *)self encryptedValuesJSON];

      if (v44)
      {
        v45 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          [ICCloudSyncingObject makeCloudKitRecordForApproach:? mergeableFieldState:?];
        }

        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObject makeCloudKitRecordForApproach:mergeableFieldState:]" simulateCrash:1 showAlert:1 format:@"Encrypted values being ignored for sync"];
      }
    }
  }

  return v9;
}

- (BOOL)mergeCloudKitRecord:(id)a3 accountID:(id)a4 approach:(int64_t)a5 mergeableFieldState:(id)a6
{
  v8 = a3;
  v9 = [v8 recordID];
  v10 = [(ICCloudSyncingObject *)self recordID];
  v11 = [v9 ic_hasEqualRecordNameWithRecordID:v10];

  v12 = os_log_create("com.apple.notes", "Cloud");
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject mergeCloudKitRecord:accountID:approach:mergeableFieldState:];
    }

    v14 = [v8 objectForKeyedSubscript:@"MinimumSupportedNotesVersion"];

    if (v14)
    {
      v15 = [v8 objectForKeyedSubscript:@"MinimumSupportedNotesVersion"];
      -[ICCloudSyncingObject setMinimumSupportedNotesVersion:](self, "setMinimumSupportedNotesVersion:", [v15 unsignedIntegerValue]);
    }

    if (!a5)
    {
      v16 = [v8 objectForKeyedSubscript:@"Deleted"];

      if (v16)
      {
        v17 = [v8 objectForKeyedSubscript:@"Deleted"];
        v18 = [v17 BOOLValue];

        if (v18 != [(ICCloudSyncingObject *)self markedForDeletion])
        {
          v19 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [ICCloudSyncingObject mergeCloudKitRecord:? accountID:? approach:? mergeableFieldState:?];
          }

          [(ICCloudSyncingObject *)self setMarkedForDeletion:v18];
        }
      }

      [(ICCloudSyncingObject *)self mergeCryptoFieldsFromRecord:v8];
      v20 = [v8 ic_encryptedInlineableDataAssetForKeyPrefix:@"ActivityEventsData"];
      if (v20)
      {
        v21 = [ICTTOrderedSetVersionedDocument alloc];
        v22 = [(ICCloudSyncingObject *)self currentReplicaID];
        v23 = [(ICTTVersionedDocument *)v21 initWithData:v20 replicaID:v22];
        [(ICCloudSyncingObject *)self mergeActivityEventsDocument:v23];
      }

      v24 = [v8 ic_encryptedInlineableDataAssetForKeyPrefix:@"ReplicaIDToNotesVersionData"];
      if (v24)
      {
        v25 = [ICMergeableDictionary alloc];
        v26 = [(ICCloudSyncingObject *)self currentReplicaID];
        v27 = [(ICMergeableDictionary *)v25 initWithData:v24 replicaID:v26];

        [(ICCloudSyncingObject *)self mergeReplicaIDToNotesVersion:v27];
      }

      if ([(ICCloudSyncingObject *)self isPasswordProtected]&& ![(ICCloudSyncingObject *)self mergeEncryptedDataFromRecord:v8])
      {
        v28 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [ICCloudSyncingObject mergeCloudKitRecord:? accountID:? approach:? mergeableFieldState:?];
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObject mergeCloudKitRecord:accountID:approach:mergeableFieldState:];
    }

    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObject mergeCloudKitRecord:accountID:approach:mergeableFieldState:]" simulateCrash:1 showAlert:1 format:@"Record mismatch when merging remote record"];
    [MEMORY[0x277D36278] postBasicEvent:9];
  }

  return v11;
}

- (void)setUnappliedEncryptedRecord:(id)a3
{
  v5 = a3;
  v6 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudSyncingObject setUnappliedEncryptedRecord:];
  }

  if (!v5)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (([(ICCloudSyncingObject *)self isPasswordProtected]& 1) != 0)
  {
    [(ICCloudSyncingObject *)self inlineAssetsForRecord:v5];
    v11 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v11];
    v8 = v11;
    if (v8)
    {
      v9 = v8;
      v10 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ICCloudSyncingObject setUnappliedEncryptedRecord:];
      }

      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObject setUnappliedEncryptedRecord:]" simulateCrash:1 showAlert:1 format:@"Error archiving unapplied encrypted record"];
      goto LABEL_14;
    }

LABEL_10:
    objc_storeStrong(&self->_unappliedEncryptedRecord, a3);
    [(ICCloudSyncingObject *)self setUnappliedEncryptedRecordData:v7];
    goto LABEL_14;
  }

  v7 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [ICCloudSyncingObject setUnappliedEncryptedRecord:?];
  }

LABEL_14:
}

- (void)inlineAssetsForRecord:(id)a3
{
  v4 = a3;
  if ([(ICCloudSyncingObject *)self supportsEncryptedValuesDictionary])
  {
    [v4 ic_inlineDataAssetForKeyPrefix:@"EncryptedValues"];
  }
}

- (void)mergeCryptoFieldsFromRecord:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudSyncingObject mergeCryptoFieldsFromRecord:];
  }

  v6 = [v4 objectForKeyedSubscript:@"CryptoSalt"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"CryptoSalt"];
    [(ICCloudSyncingObject *)self setCryptoSalt:v7];
  }

  v8 = [v4 objectForKeyedSubscript:@"CryptoIterationCount"];

  if (v8)
  {
    v9 = [v4 objectForKeyedSubscript:@"CryptoIterationCount"];
    -[ICCloudSyncingObject setCryptoIterationCount:](self, "setCryptoIterationCount:", [v9 unsignedIntegerValue]);
  }

  v10 = [v4 objectForKeyedSubscript:@"CryptoWrappedKey"];

  if (v10)
  {
    v11 = [v4 objectForKeyedSubscript:@"CryptoWrappedKey"];
    [(ICCloudSyncingObject *)self setCryptoWrappedKey:v11];
  }

  v12 = [v4 encryptedValues];
  v13 = [v12 objectForKeyedSubscript:@"PasswordHint"];
  v14 = [v13 ic_stringValue];
  [(ICCloudSyncingObject *)self setPasswordHint:v14];

  v15 = [(ICCloudSyncingObject *)self cryptoSalt];

  if (v15)
  {
    [(ICCloudSyncingObject *)self setIsPasswordProtected:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ICCloudSyncingObject *)self mergeCryptoTagAndInitializationVectorFromRecord:v4];
  }
}

- (void)mergeCryptoTagAndInitializationVectorFromRecord:(id)a3
{
  v8 = a3;
  v4 = [v8 objectForKeyedSubscript:@"CryptoInitializationVector"];

  if (v4)
  {
    v5 = [v8 objectForKeyedSubscript:@"CryptoInitializationVector"];
    [(ICCloudSyncingObject *)self setCryptoInitializationVector:v5];
  }

  v6 = [v8 objectForKeyedSubscript:@"CryptoTag"];

  if (v6)
  {
    v7 = [v8 objectForKeyedSubscript:@"CryptoTag"];
    [(ICCloudSyncingObject *)self setCryptoTag:v7];
  }
}

- (BOOL)needsToBePushedToCloud
{
  if (([(ICCloudSyncingObject *)self needsToBeFetchedFromCloud]& 1) != 0 || [(ICCloudSyncingObject *)self needsInitialFetchFromCloud])
  {
    v3 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(ICCloudSyncingObject *)self needsToBePushedToCloud];
    }

LABEL_5:

    return 0;
  }

  if ([(ICCloudSyncingObject *)self hasSuccessfullyPushedLatestVersionToCloud])
  {
    v3 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(ICCloudSyncingObject *)self needsToBePushedToCloud];
    }

    goto LABEL_5;
  }

  v5 = [(ICCloudSyncingObject *)self cloudState];
  v6 = -[ICCloudSyncingObject isPushingSameOrLaterThanVersion:](self, "isPushingSameOrLaterThanVersion:", [v5 currentLocalVersion]);

  if (v6)
  {
    v3 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(ICCloudSyncingObject *)self needsToBePushedToCloud];
    }

    goto LABEL_5;
  }

  if ([(ICCloudSyncingObject *)self markedForDeletion]&& ![(ICCloudSyncingObject *)self isInCloud])
  {
    v3 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(ICCloudSyncingObject *)self needsToBePushedToCloud];
    }

    goto LABEL_5;
  }

  v7 = [(ICCloudSyncingObject *)self parentCloudObject];
  if ([v7 markedForDeletion])
  {
    v8 = [(ICCloudSyncingObject *)self parentCloudObject];
    v9 = [v8 isInCloud];

    if ((v9 & 1) == 0)
    {
      v3 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        [ICCloudSyncingObject needsToBePushedToCloud];
      }

      goto LABEL_5;
    }
  }

  else
  {
  }

  v10 = [(ICCloudSyncingObject *)self parentCloudObject];
  if ([v10 needsInitialFetchFromCloud])
  {
    v11 = [(ICCloudSyncingObject *)self parentCloudObject];
    v12 = [v11 isInCloud];

    if ((v12 & 1) == 0)
    {
      v3 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        [ICCloudSyncingObject needsToBePushedToCloud];
      }

      goto LABEL_5;
    }
  }

  else
  {
  }

  if ([(ICCloudSyncingObject *)self isSharedReadOnly])
  {
    v3 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(ICCloudSyncingObject *)self needsToBePushedToCloud];
    }

    goto LABEL_5;
  }

  if ([(ICCloudSyncingObject *)self isPasswordProtected])
  {
    v13 = [(ICCloudSyncingObject *)self unappliedEncryptedRecord];
    if (v13 || [(ICCloudSyncingObject *)self isMergingUnappliedEncryptedRecord])
    {
      v14 = [(ICCloudSyncingObject *)self markedForDeletion];

      if ((v14 & 1) == 0)
      {
        v3 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          [(ICCloudSyncingObject *)self needsToBePushedToCloud];
        }

        goto LABEL_5;
      }
    }
  }

  return 1;
}

- (BOOL)hasSuccessfullyPushedLatestVersionToCloud
{
  v3 = [(ICCloudSyncingObject *)self cloudState];
  v4 = [v3 latestVersionSyncedToCloud];
  v5 = [(ICCloudSyncingObject *)self cloudState];
  LOBYTE(v4) = v4 >= [v5 currentLocalVersion];

  return v4;
}

- (BOOL)needsToFetchAfterServerRecordChanged:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [v3 objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        v10 = [objc_opt_class() needsToReFetchServerRecordValue:v9];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

+ (BOOL)needsToReFetchServerRecordValue:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 fileURL];
    v6 = v5 == 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v4;
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            if ([a1 needsToReFetchServerRecordValue:{*(*(&v13 + 1) + 8 * i), v13}])
            {

              v6 = 1;
              goto LABEL_15;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }
    }

    v6 = 0;
  }

LABEL_15:

  return v6;
}

- (void)objectWasDeletedFromCloud
{
  [(ICCloudSyncingObject *)self setInCloud:0];

  [(ICCloudSyncingObject *)self resetFailureCounts];
}

- (void)objectWasDeletedFromCloudByAnotherDevice
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)objectWillBePushedToCloudWithOperation:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self cloudState];
  -[ICCloudSyncingObject setVersion:forOperation:](self, "setVersion:forOperation:", [v5 currentLocalVersion], v4);
}

- (BOOL)objectFailedToBePushedToCloudWithOperation:(id)a3 recordID:(id)a4 error:(id)a5
{
  v56 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ICCloudSyncingObject *)self cloudContext];
  v12 = [v8 database];
  v13 = [v11 accountIDForDatabase:v12];

  v14 = [v10 code];
  v15 = 1;
  if (v14 > 21)
  {
    if (v14 > 29)
    {
      if (v14 != 30)
      {
        if (v14 == 31)
        {
          v17 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v35 = [v9 ic_loggingDescription];
            v36 = [v8 ic_loggingDescription];
            v46 = 138413058;
            v47 = v13;
            v48 = 2112;
            v49 = v35;
            v50 = 2112;
            v51 = v36;
            v52 = 2112;
            v53 = v10;
            _os_log_error_impl(&dword_214D51000, v17, OS_LOG_TYPE_ERROR, "Reference violation for server record in account ID %@: %@ %@: %@", &v46, 0x2Au);
          }

          [(ICCloudSyncingObject *)self fixBrokenReferencesWithError:v10];
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      v19 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v37 = [v9 ic_loggingDescription];
        v38 = [v8 ic_loggingDescription];
        v46 = 138412802;
        v47 = v13;
        v48 = 2112;
        v49 = v37;
        v50 = 2112;
        v51 = v38;
        _os_log_error_impl(&dword_214D51000, v19, OS_LOG_TYPE_ERROR, "Already Shared error in account ID %@: for %@ %@", &v46, 0x20u);
      }

      [(ICCloudSyncingObject *)self setServerShare:0];
      v15 = 1;
      [(ICCloudSyncingObject *)self setNeedsToBeFetchedFromCloud:1];
    }

    else if (v14 != 22 && v14 != 26)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

  if (v14 > 13)
  {
    if (v14 != 14)
    {
      if (v14 != 20)
      {
        goto LABEL_19;
      }

      goto LABEL_42;
    }

    v20 = [v10 userInfo];
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];

    if (v21)
    {
      v22 = [v21 recordID];
      v23 = [(ICCloudSyncingObject *)self recordID];
      v24 = [v22 ic_hasEqualRecordNameWithRecordID:v23];

      if (!v24)
      {
        v31 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v44 = [v21 ic_loggingDescription];
          v45 = [v8 ic_loggingDescription];
          v46 = 138413058;
          v47 = v13;
          v48 = 2112;
          v49 = v44;
          v50 = 2112;
          v51 = v45;
          v52 = 2112;
          v53 = v10;
          _os_log_error_impl(&dword_214D51000, v31, OS_LOG_TYPE_ERROR, "Non-matching server record changed in account ID %@: %@ %@: %@", &v46, 0x2Au);
        }

        [(ICCloudSyncingObject *)self setNeedsToBeFetchedFromCloud:1];
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObject objectFailedToBePushedToCloudWithOperation:recordID:error:]" simulateCrash:1 showAlert:1 format:@"Record mismatch when merging oplock result"];
        [MEMORY[0x277D36278] postBasicEvent:8];
        v15 = 0;
        goto LABEL_41;
      }

      v25 = [(ICCloudSyncingObject *)self needsToFetchAfterServerRecordChanged:v21];
      v26 = os_log_create("com.apple.notes", "Cloud");
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
      if (!v25)
      {
        if (v27)
        {
          v32 = [v21 ic_loggingDescription];
          v33 = [v8 ic_loggingDescription];
          v46 = 138413058;
          v47 = v13;
          v48 = 2112;
          v49 = v32;
          v50 = 2112;
          v51 = v33;
          v52 = 2112;
          v53 = v10;
          _os_log_impl(&dword_214D51000, v26, OS_LOG_TYPE_INFO, "Server record changed in account ID %@: %@ %@: %@", &v46, 0x2Au);
        }

        [(ICCloudSyncingObject *)self objectWasFetchedFromCloudWithRecord:v21 accountID:v13];
        v15 = 1;
        goto LABEL_41;
      }

      if (v27)
      {
        v28 = [v21 ic_loggingDescription];
        v29 = [v8 ic_loggingDescription];
        v46 = 138413058;
        v47 = v13;
        v48 = 2112;
        v49 = v28;
        v50 = 2112;
        v51 = v29;
        v52 = 2112;
        v53 = v10;
        v30 = "Server record changed (needs refetch) in account ID %@: %@ %@: %@";
LABEL_33:
        _os_log_impl(&dword_214D51000, v26, OS_LOG_TYPE_INFO, v30, &v46, 0x2Au);
      }
    }

    else
    {
      v26 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v28 = [(ICCloudSyncingObject *)self shortLoggingDescription];
        v29 = [v8 ic_loggingDescription];
        v46 = 138413058;
        v47 = v13;
        v48 = 2112;
        v49 = v28;
        v50 = 2112;
        v51 = v29;
        v52 = 2112;
        v53 = v10;
        v30 = "Server record changed with no server record in the error in account ID %@: %@ %@: %@";
        goto LABEL_33;
      }
    }

    v15 = 1;
    [(ICCloudSyncingObject *)self setNeedsToBeFetchedFromCloud:1];
LABEL_41:

    goto LABEL_42;
  }

  if ((v14 - 6) >= 2)
  {
    if (v14 == 11)
    {
      v16 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v39 = [v9 ic_loggingDescription];
        v40 = [v8 ic_loggingDescription];
        v46 = 138413058;
        v47 = v13;
        v48 = 2112;
        v49 = v39;
        v50 = 2112;
        v51 = v40;
        v52 = 2112;
        v53 = v10;
        _os_log_debug_impl(&dword_214D51000, v16, OS_LOG_TYPE_DEBUG, "Invalid cached server record in account ID %@: %@ %@: %@", &v46, 0x2Au);
      }

      [(ICCloudSyncingObject *)self setServerRecord:0];
LABEL_22:
      v15 = 1;
      goto LABEL_42;
    }

LABEL_19:
    v18 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v41 = [v9 ic_loggingDescription];
      v42 = [v8 ic_loggingDescription];
      v43 = [v10 userInfo];
      v46 = 138413314;
      v47 = v13;
      v48 = 2112;
      v49 = v41;
      v50 = 2112;
      v51 = v42;
      v52 = 2112;
      v53 = v10;
      v54 = 2112;
      v55 = v43;
      _os_log_error_impl(&dword_214D51000, v18, OS_LOG_TYPE_ERROR, "Error pushing in account ID %@: %@ %@: %@\nuserInfo: %@", &v46, 0x34u);
    }

    goto LABEL_22;
  }

LABEL_42:
  [objc_opt_class() deleteTemporaryAssetFilesForOperation:v8];

  return v15;
}

- (void)objectWasPushedToCloudWithOperation:(id)a3 serverRecord:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(ICCloudSyncingObject *)self versionForOperation:v7];
  v9 = [(ICCloudSyncingObject *)self cloudState];
  v10 = [v9 latestVersionSyncedToCloud];

  if (v8 > v10)
  {
    v11 = [(ICCloudSyncingObject *)self cloudState];
    [v11 setLatestVersionSyncedToCloud:v8];
  }

  [objc_opt_class() deleteTemporaryAssetFilesForOperation:v7];

  [(ICCloudSyncingObject *)self resetFailureCounts];
  [(ICCloudSyncingObject *)self setInCloud:1];
  v12 = [(ICCloudSyncingObject *)self serverRecord];
  if (v12 && (v13 = v12, -[ICCloudSyncingObject serverRecord](self, "serverRecord"), v14 = objc_claimAutoreleasedReturnValue(), [v14 modificationDate], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "modificationDate"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "ic_isLaterThanDate:", v16), v16, v15, v14, v13, (v17 & 1) != 0))
  {
    v18 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v6 recordID];
      v20 = [v19 recordName];
      v21 = 138412290;
      v22 = v20;
      _os_log_impl(&dword_214D51000, v18, OS_LOG_TYPE_DEFAULT, "Tried to cache a record that is older than or equal to our current version: %@", &v21, 0xCu);
    }
  }

  else
  {
    [(ICCloudSyncingObject *)self setServerRecord:v6];
  }
}

- (void)objectWasFetchedFromCloudWithRecord:(id)a3 accountID:(id)a4 force:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 || (-[ICCloudSyncingObject serverRecord](self, "serverRecord"), v10 = objc_claimAutoreleasedReturnValue(), [v10 recordChangeTag], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "recordChangeTag"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToString:", v12), v12, v11, v10, (v13 & 1) == 0))
  {
    [(ICCloudSyncingObject *)self setMergingRecord:1];
    [(ICCloudSyncingObject *)self mergeCloudKitRecord:v8 accountID:v9 approach:0];
    [(ICCloudSyncingObject *)self setMergingRecord:0];
    v15 = [(ICCloudSyncingObject *)self serverRecord];
    if (v15 && (v16 = v15, -[ICCloudSyncingObject serverRecord](self, "serverRecord"), v17 = objc_claimAutoreleasedReturnValue(), [v17 modificationDate], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "modificationDate"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "ic_isLaterThanDate:", v19), v19, v18, v17, v16, (v20 & 1) != 0))
    {
      v21 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [ICCloudSyncingObject objectWasFetchedFromCloudWithRecord:v8 accountID:? force:?];
      }
    }

    else
    {
      [(ICCloudSyncingObject *)self setServerRecord:v8];
    }

    v22 = [v8 share];
    if (v22)
    {
    }

    else
    {
      v23 = [(ICCloudSyncingObject *)self serverShare];

      if (v23)
      {
        v24 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          [ICCloudSyncingObject objectWasFetchedFromCloudWithRecord:? accountID:? force:?];
        }

        [(ICCloudSyncingObject *)self setServerShare:0];
      }
    }

    [(ICCloudSyncingObject *)self setNeedsInitialFetchFromCloud:0];
    [(ICCloudSyncingObject *)self setInCloud:1];
    if (![(ICCloudSyncingObject *)self supportsDeletionByTTL])
    {
      [(ICCloudSyncingObject *)self setMarkedForDeletion:0];
    }

    [(ICCloudSyncingObject *)self updateParentReferenceIfNecessary];
  }

  else
  {
    v14 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject objectWasFetchedFromCloudWithRecord:v8 accountID:? force:?];
    }
  }

  [(ICCloudSyncingObject *)self setNeedsToBeFetchedFromCloud:0];
}

- (void)objectWasFetchedButDoesNotExistInCloud
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(ICCloudSyncingObject *)self recordID];
  v4 = [v3 ic_isOwnedByCurrentUser];

  if (v4)
  {
    [(ICCloudSyncingObject *)self setServerRecord:0];
    [(ICCloudSyncingObject *)self setNeedsInitialFetchFromCloud:0];
    [(ICCloudSyncingObject *)self setNeedsToBeFetchedFromCloud:0];

    [(ICCloudSyncingObject *)self setInCloud:0];
  }

  else
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(ICCloudSyncingObject *)self shortLoggingDescription];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Deleting shared %@ because it no longer exists in cloud", &v7, 0xCu);
    }

    [(ICCloudSyncingObject *)self deleteFromLocalDatabase];
  }
}

- (unint64_t)numberOfCommonRecordAssets
{
  v3 = [(ICCloudSyncingObject *)self makeCloudKitRecordForApproach:0];
  v4 = [(ICCloudSyncingObject *)self numberOfAssetsInTemporaryRecord:v3];

  return v4;
}

- (unint64_t)numberOfUserSpecificRecordAssets
{
  v3 = [(ICCloudSyncingObject *)self makeUserSpecificCloudKitRecordForApproach:0];
  v4 = [(ICCloudSyncingObject *)self numberOfAssetsInTemporaryRecord:v3];

  return v4;
}

- (unint64_t)numberOfAssetsInTemporaryRecord:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [a3 assetsByKey];
  v17 = [v3 count];
  v4 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudSyncingObject numberOfAssetsInTemporaryRecord:v4];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [v3 allKeys];
  v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v19 = *v27;
    v20 = v3;
    do
    {
      v5 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [v3 objectForKeyedSubscript:*(*(&v26 + 1) + 8 * v5)];
        objc_opt_class();
        v7 = ICDynamicCast();
        objc_opt_class();
        v8 = ICDynamicCast();
        v9 = v8;
        if (v7)
        {
          [objc_opt_class() deleteTemporaryFilesForAsset:v7];
        }

        else if (v8)
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v10 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v23;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v23 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                objc_opt_class();
                v14 = ICDynamicCast();
                if (v14)
                {
                  [objc_opt_class() deleteTemporaryFilesForAsset:v14];
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
            }

            while (v11);
          }
        }

        ++v5;
        v3 = v20;
      }

      while (v5 != v21);
      v15 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      v21 = v15;
    }

    while (v15);
  }

  return v17;
}

- (void)setActivityEventsData:(id)a3
{
  persistedActivityEventsStorage = self->_persistedActivityEventsStorage;
  self->_persistedActivityEventsStorage = 0;
  v6 = a3;

  checklistItemToActivityEventsStorage = self->_checklistItemToActivityEventsStorage;
  self->_checklistItemToActivityEventsStorage = 0;

  [(ICCloudSyncingObject *)self setValue:v6 forEncryptableKey:@"activityEventsData"];
}

- (ICTTOrderedSetVersionedDocument)activityEventsDocument
{
  if ([objc_opt_class() supportsActivityEvents])
  {
    activityEventsDocument = self->_activityEventsDocument;
    if (!activityEventsDocument)
    {
      v4 = [ICTTOrderedSetVersionedDocument alloc];
      v5 = [(ICCloudSyncingObject *)self activityEventsData];
      v6 = [(ICCloudSyncingObject *)self currentReplicaID];
      v7 = [(ICTTVersionedDocument *)v4 initWithData:v5 replicaID:v6];
      v8 = self->_activityEventsDocument;
      self->_activityEventsDocument = v7;

      persistedActivityEventsStorage = self->_persistedActivityEventsStorage;
      self->_persistedActivityEventsStorage = 0;

      checklistItemToActivityEventsStorage = self->_checklistItemToActivityEventsStorage;
      self->_checklistItemToActivityEventsStorage = 0;

      activityEventsDocument = self->_activityEventsDocument;
    }

    v11 = activityEventsDocument;
  }

  else
  {
    v12 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(ICCloudSyncingObject *)self activityEventsDocument];
    }

    v11 = 0;
  }

  return v11;
}

- (unint64_t)mergeActivityEventsDocument:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() supportsActivityEvents])
  {
    v5 = [(ICCloudSyncingObject *)self activityEventsDocument];
    v6 = [v5 mergeWithOrderedSetVersionedDocument:v4];

    if (v6 == 2)
    {
      v7 = [(ICCloudSyncingObject *)self activityEventsDocument];
      v8 = [v7 serialize];
      [(ICCloudSyncingObject *)self setActivityEventsData:v8];

      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)a3
{
  if ([(ICCloudSyncingObject *)self isUnsupported]|| [(ICCloudSyncingObject *)self needsInitialFetchFromCloudCheckingParent])
  {

    return [(ICCloudSyncingObject *)self minimumSupportedNotesVersion];
  }

  else if (a3 == 1 || ![(ICCloudSyncingObject *)self isPasswordProtected])
  {
    return 0;
  }

  else
  {
    v6 = [(ICCloudSyncingObject *)self cryptoStrategy];
    v7 = [v6 intrinsicNotesVersion];

    return v7;
  }
}

- (void)requireMinimumSupportedVersionAndPropagateToChildObjects:(int64_t)a3
{
  v39 = *MEMORY[0x277D85DE8];
  if ([(ICCloudSyncingObject *)self isUnsupported])
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject requireMinimumSupportedVersionAndPropagateToChildObjects:];
    }

LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  if ([(ICCloudSyncingObject *)self needsInitialFetchFromCloud])
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject requireMinimumSupportedVersionAndPropagateToChildObjects:?];
    }

    goto LABEL_7;
  }

  v7 = [(ICCloudSyncingObject *)self parentCloudObjectForMinimumSupportedVersionPropagation];
  v6 = v7;
  if (v7)
  {
    v8 = [v7 minimumSupportedNotesVersion];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(ICCloudSyncingObject *)self intrinsicNotesVersion];
  if (v8 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = v10;
  }

  if ([(ICCloudSyncingObject *)self minimumSupportedNotesVersion]!= v11)
  {
    v12 = [(ICCloudSyncingObject *)self minimumSupportedNotesVersion];
    v13 = os_log_create("com.apple.notes", "Cloud");
    v14 = v13;
    if (v12 <= v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [ICCloudSyncingObject requireMinimumSupportedVersionAndPropagateToChildObjects:];
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(ICCloudSyncingObject *)self minimumSupportedNotesVersion];
      v16 = [(ICCloudSyncingObject *)self shortLoggingDescription];
      *buf = 134218498;
      v34 = v15;
      v35 = 2048;
      v36 = v11;
      v37 = 2112;
      v38 = v16;
      _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEFAULT, "Downgrading minimumSupportedNotesVersion from %lld to %lld for object: %@", buf, 0x20u);
    }

    [(ICCloudSyncingObject *)self setMinimumSupportedNotesVersion:v11];
    [(ICCloudSyncingObject *)self updateChangeCountWithReason:@"Updated minimum version"];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(ICCloudSyncingObject *)self childCloudObjectsForMinimumSupportedVersionPropagation];
  v17 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v26 = v6;
    v19 = *v29;
    v20 = obj;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v20);
        }

        v22 = *(*(&v28 + 1) + 8 * i);
        v23 = objc_autoreleasePoolPush();
        v24 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = [v22 shortLoggingDescription];
          *buf = 134218242;
          v34 = a3;
          v35 = 2112;
          v36 = v25;
          _os_log_debug_impl(&dword_214D51000, v24, OS_LOG_TYPE_DEBUG, "Propagating minimumSupportedNotesVersion %lld to child object: %@", buf, 0x16u);

          v20 = obj;
        }

        [v22 requireMinimumSupportedVersionAndPropagateToChildObjects:a3];
        objc_autoreleasePoolPop(v23);
      }

      v18 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v18);
    v5 = v20;
    v6 = v26;
  }

  else
  {
    v5 = obj;
  }

LABEL_8:
}

+ (NSArray)bundleIdentifiersWithReplicaID
{
  if (bundleIdentifiersWithReplicaID_onceToken != -1)
  {
    +[ICCloudSyncingObject bundleIdentifiersWithReplicaID];
  }

  v3 = bundleIdentifiersWithReplicaID_bundleIdentifiersWithReplicaID;

  return v3;
}

void __54__ICCloudSyncingObject_bundleIdentifiersWithReplicaID__block_invoke()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = ICNotesAppBundleIdentifier();
  v5[0] = v0;
  v1 = ICIntentsExtensionBundleIdentifier();
  v5[1] = v1;
  v2 = ICSharingExtensionBundleIdentifier();
  v5[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v4 = bundleIdentifiersWithReplicaID_bundleIdentifiersWithReplicaID;
  bundleIdentifiersWithReplicaID_bundleIdentifiersWithReplicaID = v3;
}

- (NSSet)deviceReplicaIDs
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  [v3 ic_addNonNilObject:self->_currentReplicaID];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [objc_opt_class() bundleIdentifiersWithReplicaID];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(ICCloudSyncingObject *)self cloudAccount];
        v11 = [v10 replicaIDForBundleIdentifier:v9];
        [v3 ic_addNonNilObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (ICMergeableDictionary)replicaIDToNotesVersion
{
  if ([objc_opt_class() supportsNotesVersionTracking])
  {
    replicaIDToNotesVersion = self->_replicaIDToNotesVersion;
    if (replicaIDToNotesVersion)
    {
      v4 = replicaIDToNotesVersion;
      v5 = self->_replicaIDToNotesVersion;
      self->_replicaIDToNotesVersion = v4;
    }

    else
    {
      v8 = [ICMergeableDictionary alloc];
      v5 = [(ICCloudSyncingObject *)self replicaIDToNotesVersionData];
      v9 = [(ICCloudSyncingObject *)self currentReplicaID];
      v10 = [(ICMergeableDictionary *)v8 initWithData:v5 replicaID:v9];
      v11 = self->_replicaIDToNotesVersion;
      self->_replicaIDToNotesVersion = v10;
    }

    v7 = self->_replicaIDToNotesVersion;
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
    }

    v7 = 0;
  }

  return v7;
}

- (id)notesVersionForReplicaID:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAD78] CR_unserialized];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(objc_opt_class(), "currentNotesVersion")}];
  }

  else
  {
    v8 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
    v7 = [v8 objectForKeyedSubscript:v4];
  }

  return v7;
}

- (void)setNotesVersion:(id)a3 forReplicaID:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v20)
  {
    v10 = 0;
  }

  else
  {
    v10 = v20;
  }

  v11 = v10;
  if (v9 == v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;
  if (v11 | v13)
  {
    v14 = v13;
    if (v11)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {

LABEL_15:
      v17 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
      [v17 setObject:v20 forKeyedSubscript:v6];

      v18 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
      v19 = [v18 encodedData];
      [(ICCloudSyncingObject *)self setReplicaIDToNotesVersionData:v19];

      goto LABEL_16;
    }

    v16 = [v11 isEqual:v13];

    if ((v16 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
}

- (unint64_t)mergeReplicaIDToNotesVersion:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![objc_opt_class() supportsNotesVersionTracking])
  {
    v13 = 0;
    goto LABEL_7;
  }

  v5 = [(ICCloudSyncingObject *)self replicaIDToNotesVersionData];
  if (!v5 || (v6 = v5, -[ICCloudSyncingObject replicaIDToNotesVersion](self, "replicaIDToNotesVersion"), v7 = objc_claimAutoreleasedReturnValue(), [v7 allKeys], v8 = objc_claimAutoreleasedReturnValue(), -[ICCloudSyncingObject deviceReplicaIDs](self, "deviceReplicaIDs"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v7, v6, v10))
  {
    [(ICCloudSyncingObject *)self willChangeValueForKey:@"replicaIDToNotesVersion"];
    v11 = [v4 encodedData];
    [(ICCloudSyncingObject *)self setReplicaIDToNotesVersionData:v11];

    replicaIDToNotesVersion = self->_replicaIDToNotesVersion;
    self->_replicaIDToNotesVersion = 0;

    [(ICCloudSyncingObject *)self didChangeValueForKey:@"replicaIDToNotesVersion"];
LABEL_5:
    v13 = 2;
    goto LABEL_7;
  }

  v15 = [v4 replicaID];
  v16 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
  v17 = [v16 replicaID];
  v18 = [v15 isEqual:v17];

  if (v18)
  {
    v19 = [ICMergeableDictionary alloc];
    v20 = [v4 encodedData];
    v21 = [MEMORY[0x277CCAD78] UUID];
    v22 = [(ICMergeableDictionary *)v19 initWithData:v20 replicaID:v21];

    v4 = v22;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [v4 allKeys];
  v43 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v43)
  {
    v40 = 0;
    v42 = *v45;
    while (1)
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v45 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v44 + 1) + 8 * i);
        v25 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
        v26 = [v25 objectForKeyedSubscript:v24];
        if (v26)
        {
          v27 = v26;
          [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
          v29 = v28 = self;
          v30 = [v29 objectForKeyedSubscript:v24];
          v31 = v4;
          v32 = [v4 objectForKeyedSubscript:v24];
          v33 = [v30 isEqual:v32];

          if (v33)
          {
            v4 = v31;
            self = v28;
            continue;
          }

          v34 = [(ICCloudSyncingObject *)v28 deviceReplicaIDs];
          v35 = [v34 containsObject:v24];

          self = v28;
          if (v35)
          {
            v25 = [(ICCloudSyncingObject *)v28 replicaIDToNotesVersion];
            v36 = [v25 objectForKeyedSubscript:v24];
            v4 = v31;
            [v31 setObject:v36 forKeyedSubscript:v24];
          }

          else
          {
            v4 = v31;
            v25 = [v31 objectForKeyedSubscript:v24];
            v36 = [(ICCloudSyncingObject *)v28 replicaIDToNotesVersion];
            [v36 setObject:v25 forKeyedSubscript:v24];
            v40 = 1;
          }
        }
      }

      v43 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (!v43)
      {
        goto LABEL_27;
      }
    }
  }

  v40 = 0;
LABEL_27:

  v37 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
  v13 = [v37 mergeWithDictionary:v4];

  if ((v40 & 1) != 0 || v13 == 2)
  {
    v38 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
    v39 = [v38 encodedData];
    [(ICCloudSyncingObject *)self setReplicaIDToNotesVersionData:v39];

    goto LABEL_5;
  }

LABEL_7:

  return v13;
}

- (BOOL)updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded
{
  v35 = *MEMORY[0x277D85DE8];
  if ([objc_opt_class() supportsNotesVersionTracking])
  {
    if (([(ICCloudSyncingObject *)self isDeleted]& 1) != 0 || [(ICCloudSyncingObject *)self markedForDeletion])
    {
      v3 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        [(ICCloudSyncingObject *)self updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded];
      }

      v4 = 0;
      v5 = v3;
      goto LABEL_15;
    }

    v6 = [(ICCloudSyncingObject *)self cloudAccount];
    v7 = ICNotesAppBundleIdentifier();
    v5 = [v6 replicaIDForBundleIdentifier:v7];

    if (v5)
    {
      if ([(ICCloudSyncingObject *)self needsInitialFetchFromCloud])
      {
        v3 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          [(ICCloudSyncingObject *)self updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded];
        }
      }

      else if ([(ICCloudSyncingObject *)self isPasswordProtected]&& ![(ICCloudSyncingObject *)self isAuthenticated])
      {
        v3 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          [(ICCloudSyncingObject *)self updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded];
        }
      }

      else
      {
        if (![(ICCloudSyncingObject *)self isPasswordProtected]|| ([(ICCloudSyncingObject *)self unappliedEncryptedRecord], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
        {
          v10 = [(ICCloudSyncingObject *)self notesVersionForReplicaID:v5];
          v11 = [v10 integerValue];

          v12 = [objc_opt_class() currentNotesVersion];
          v13 = v12;
          v14 = v12 - v11;
          if (v12 <= v11)
          {
            if (v12 == v11)
            {
              v4 = 0;
              goto LABEL_16;
            }

            if (v12 < v11)
            {
              v26 = os_log_create("com.apple.notes", "Cloud");
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = [(ICCloudSyncingObject *)self objectID];
                *buf = 138412290;
                v34 = v27;
                _os_log_impl(&dword_214D51000, v26, OS_LOG_TYPE_INFO, "Device Notes version is greater than current Notes version {objectID: %@}", buf, 0xCu);
              }
            }
          }

          else
          {
            v15 = v11 + 1;
            do
            {
              v16 = [(ICCloudSyncingObject *)self cloudState];
              v17 = [v16 currentLocalVersion];

              [(ICCloudSyncingObject *)self willUpdateDeviceReplicaIDsToNotesVersion:v15];
              v18 = [(ICCloudSyncingObject *)self cloudState];
              v19 = [v18 currentLocalVersion];

              if (v19 != v17)
              {
                [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.cloudState.currentLocalVersion == currentLocalVersion" functionName:"-[ICCloudSyncingObject updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded]" simulateCrash:1 showAlert:0 format:@"Updating the device replica IDs must not update the object's change count"];
              }

              ++v15;
              --v14;
            }

            while (v14);
          }

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v3 = [(ICCloudSyncingObject *)self deviceReplicaIDs];
          v20 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v29;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v29 != v22)
                {
                  objc_enumerationMutation(v3);
                }

                v24 = *(*(&v28 + 1) + 8 * i);
                v25 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
                [(ICCloudSyncingObject *)self setNotesVersion:v25 forReplicaID:v24];
              }

              v21 = [v3 countByEnumeratingWithState:&v28 objects:v32 count:16];
              v4 = 1;
            }

            while (v21);
          }

          else
          {
            v4 = 1;
          }

LABEL_15:

LABEL_16:
          return v4;
        }

        v3 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          [(ICCloudSyncingObject *)self updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded];
        }
      }
    }

    else
    {
      v3 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        [(ICCloudSyncingObject *)self updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded];
      }
    }

    v4 = 0;
    goto LABEL_15;
  }

  return 0;
}

- (void)clearReplicaIDsToNotesVersion
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
  v4 = [v3 allKeys];
  v5 = [v4 count];

  if (v5)
  {
    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(ICCloudSyncingObject *)self ic_loggingDescription];
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Clearing replicaIDToNotesVersion for: %@", &v11, 0xCu);
    }

    v8 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
    [v8 removeAllObjects];

    v9 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
    v10 = [v9 encodedData];
    [(ICCloudSyncingObject *)self setReplicaIDToNotesVersionData:v10];
  }
}

- (NSString)userSpecificRecordType
{
  v2 = [(ICCloudSyncingObject *)self recordType];
  v3 = [ICUserSpecificRecordIDParser userSpecificRecordTypeForSharedRecordType:v2];

  return v3;
}

- (CKRecordID)userSpecificRecordID
{
  v3 = [(ICCloudSyncingObject *)self managedObjectContext];

  if (v3)
  {
    v4 = [(ICCloudSyncingObject *)self recordID];
    if (v4)
    {
      v5 = [(ICCloudSyncingObject *)self cloudAccount];
      v6 = [v5 userRecordName];

      if ([v6 length])
      {
        v7 = [(ICCloudSyncingObject *)self zoneOwnerName];
        v8 = v7;
        v9 = *MEMORY[0x277CBBF28];
        if (v7)
        {
          v10 = v7;
        }

        else
        {
          v10 = *MEMORY[0x277CBBF28];
        }

        v11 = v10;

        if ([v11 isEqualToString:v9])
        {
          v12 = v6;
        }

        else
        {
          v12 = v11;
        }

        v13 = v12;
        v14 = [ICUserSpecificRecordIDParser alloc];
        v15 = [(ICCloudSyncingObject *)self recordType];
        v16 = [(ICUserSpecificRecordIDParser *)v14 initWithSharedRecordType:v15 sharedRecordID:v4 userRecordName:v6 ownerName:v13];

        v17 = [(ICUserSpecificRecordIDParser *)v16 recordID];

        goto LABEL_21;
      }

      v18 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [(ICCloudSyncingObject *)self userSpecificRecordID];
      }
    }

    else
    {
      v6 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(ICCloudSyncingObject *)self userSpecificRecordID];
      }
    }

    v17 = 0;
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(ICCloudSyncingObject *)self userSpecificRecordID];
    }

    v17 = 0;
    v4 = v6;
  }

LABEL_21:

  return v17;
}

- (id)makeUserSpecificCloudKitRecordForApproach:(int64_t)a3
{
  v4 = [(ICCloudSyncingObject *)self userSpecificServerRecord];
  v5 = [v4 copy];

  if (!v5)
  {
LABEL_7:
    v12 = [(ICCloudSyncingObject *)self userSpecificRecordID];
    if (v12)
    {
      v15 = objc_alloc(MEMORY[0x277CBC5A0]);
      v16 = [(ICCloudSyncingObject *)self userSpecificRecordType];
      v17 = [(ICCloudSyncingObject *)self userSpecificRecordID];
      v5 = [v15 initWithRecordType:v16 recordID:v17];
    }

    else
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObject makeUserSpecificCloudKitRecordForApproach:]" simulateCrash:1 showAlert:0 format:@"Asking for user specific record but no record ID could be created"];
      v5 = 0;
    }

    goto LABEL_10;
  }

  v6 = [(ICCloudSyncingObject *)self recordName];

  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = [ICUserSpecificRecordIDParser alloc];
  v8 = [v5 recordID];
  v9 = [v8 recordName];
  v10 = [(ICUserSpecificRecordIDParser *)v7 initWithRecordName:v9];
  v11 = [(ICUserSpecificRecordIDParser *)v10 sharedRecordID];
  v12 = [v11 recordName];

  v13 = [(ICCloudSyncingObject *)self recordName];
  LOBYTE(v9) = [v12 ic_isCaseInsensitiveEqualToString:v13];

  if ((v9 & 1) == 0)
  {
    v14 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObject makeUserSpecificCloudKitRecordForApproach:];
    }

    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObject makeUserSpecificCloudKitRecordForApproach:]" simulateCrash:1 showAlert:1 format:@"Object has user-specific server record with mismatched record name"];
    goto LABEL_7;
  }

LABEL_10:

LABEL_11:
  if ([(ICCloudSyncingObject *)self supportsDeletionByTTL])
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICCloudSyncingObject markedForDeletion](self, "markedForDeletion")}];
    [v5 setObject:v18 forKeyedSubscript:@"Deleted"];
  }

  return v5;
}

- (void)didFetchUserSpecificRecord:(id)a3 accountID:(id)a4 force:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (a5 || (-[ICCloudSyncingObject userSpecificServerRecord](self, "userSpecificServerRecord"), v10 = objc_claimAutoreleasedReturnValue(), [v10 recordChangeTag], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "recordChangeTag"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToString:", v12), v12, v11, v10, (v13 & 1) == 0))
  {
    [(ICCloudSyncingObject *)self mergeDataFromUserSpecificRecord:v8 accountID:v9];
    v15 = [ICUserSpecificRecordIDParser alloc];
    v16 = [(ICCloudSyncingObject *)self userSpecificServerRecord];
    v17 = [v16 recordID];
    v18 = [v17 recordName];
    v19 = [(ICUserSpecificRecordIDParser *)v15 initWithRecordName:v18];

    if (v19)
    {
      v20 = [(ICCloudSyncingObject *)self userSpecificServerRecord];
      v21 = [v20 modificationDate];
      v22 = [v8 modificationDate];
      v23 = [v21 ic_isEarlierThanDate:v22];

      if ((v23 & 1) == 0)
      {
        v14 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [ICCloudSyncingObject didFetchUserSpecificRecord:v9 accountID:v8 force:?];
        }

        goto LABEL_9;
      }
    }

    else
    {
      v24 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [ICCloudSyncingObject didFetchUserSpecificRecord:accountID:force:];
      }
    }

    [(ICCloudSyncingObject *)self setUserSpecificServerRecord:v8];
    goto LABEL_14;
  }

  v14 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudSyncingObject didFetchUserSpecificRecord:v9 accountID:v8 force:?];
  }

LABEL_9:

LABEL_14:
  [(ICCloudSyncingObject *)self setNeedsToUpdateUserSpecificRecordReferenceActions:[(ICCloudSyncingObject *)self hasExpectedReferenceActionsInUserSpecificRecord:v8]^ 1];
}

- (void)findAndResaveUserSpecificRecordThrowingReferenceViolationForDeletionWithError:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (CKErrorIsCode())
  {
    v4 = [v3 userInfo];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CBBF70]];

    if (v5)
    {
      v48 = v3;
      v6 = [MEMORY[0x277CBEB18] array];
      v47 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"recordID=([^ options:]+)" error:{0, 0}];
      v7 = [v47 firstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
      v8 = v7;
      if (v7 && [v7 numberOfRanges] >= 2)
      {
        v9 = [v8 rangeAtIndex:1];
        v11 = [v5 substringWithRange:{v9, v10}];
        if ([v11 containsString:@"_UserSpecific::"])
        {
          [v6 addObject:v11];
        }
      }

      v46 = v8;
      v45 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\[([^\\]]+)\\]" options:0 error:0];
      v49 = v5;
      v12 = [v45 firstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
      v44 = v12;
      if (v12)
      {
        v13 = v12;
        if ([v12 numberOfRanges] >= 2)
        {
          v14 = [v13 rangeAtIndex:1];
          v16 = [v5 substringWithRange:{v14, v15}];
          v17 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([^]+)" options:0 error:0];
          v18 = [v17 matchesInString:v16 options:0 range:{0, objc_msgSend(v16, "length")}];
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v19 = [v18 countByEnumeratingWithState:&v56 objects:v65 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v57;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v57 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v56 + 1) + 8 * i);
                if ([v23 numberOfRanges] >= 2)
                {
                  v24 = [v23 rangeAtIndex:1];
                  v26 = [v16 substringWithRange:{v24, v25}];
                  if ([v26 containsString:@"_UserSpecific::"])
                  {
                    [v6 addObject:v26];
                  }
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v56 objects:v65 count:16];
            }

            while (v20);
          }
        }
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = v6;
      v27 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v53;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v53 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v52 + 1) + 8 * j);
            v32 = [[ICUserSpecificRecordIDParser alloc] initWithRecordName:v31];
            v33 = v32;
            if (v32)
            {
              v34 = [(ICUserSpecificRecordIDParser *)v32 sharedRecordID];
              v35 = [(ICCloudSyncingObject *)self cloudAccount];
              v36 = [v35 identifier];
              v37 = [(ICCloudSyncingObject *)self managedObjectContext];
              v38 = [ICCloudSyncingObject objectWithRecordID:v34 accountID:v36 context:v37];

              v39 = os_log_create("com.apple.notes", "Cloud");
              v40 = v39;
              if (v38)
              {
                v41 = v39;
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                {
                  v42 = [(ICCloudSyncingObject *)self shortLoggingDescription];
                  v43 = [v38 shortLoggingDescription];
                  *buf = 138412546;
                  v61 = v42;
                  v62 = 2112;
                  v63 = v43;
                  _os_log_debug_impl(&dword_214D51000, v41, OS_LOG_TYPE_DEBUG, "Found user-specific record reference violation for %@, marking referenced object %@ as needing to save user-specific record to correct reference action", buf, 0x16u);
                }

                [v38 setNeedsToSaveUserSpecificRecord:1];
              }

              else
              {
                if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v61 = v31;
                  _os_log_debug_impl(&dword_214D51000, v40, OS_LOG_TYPE_DEBUG, "Local object not found referenced by user-specific record with record name %@", buf, 0xCu);
                }
              }
            }
          }

          v28 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
        }

        while (v28);
      }

      v3 = v48;
      v5 = v49;
    }
  }
}

- (void)didSaveUserSpecificRecord:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self userSpecificServerRecord];
  if (v5 && (v6 = v5, -[ICCloudSyncingObject userSpecificServerRecord](self, "userSpecificServerRecord"), v7 = objc_claimAutoreleasedReturnValue(), [v7 modificationDate], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "modificationDate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "ic_isEarlierThanDate:", v9), v9, v8, v7, v6, !v10))
  {
    v11 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(ICCloudSyncingObject *)self userSpecificServerRecord];
      v13 = [v12 ic_loggingDescription];
      v14 = [v4 ic_loggingDescription];
      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&dword_214D51000, v11, OS_LOG_TYPE_DEFAULT, "Tried to cache user-specific record older than or equal to ours: ours=%@ theirs=%@", &v15, 0x16u);
    }
  }

  else
  {
    [(ICCloudSyncingObject *)self setUserSpecificServerRecord:v4];
  }

  [(ICCloudSyncingObject *)self setNeedsToSaveUserSpecificRecord:0];
}

- (BOOL)didFailToSaveUserSpecificRecordWithID:(id)a3 accountID:(id)a4 error:(id)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 code];
  if (v11 > 0x1A)
  {
    goto LABEL_12;
  }

  if (((1 << v11) & 0x45000C0) == 0)
  {
    if (v11 == 11)
    {
      v22 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v8 ic_loggingDescription];
        v33 = 138412546;
        v34 = v9;
        v35 = 2112;
        v36 = v23;
        _os_log_impl(&dword_214D51000, v22, OS_LOG_TYPE_INFO, "Invalid cached user-specific server record in account ID %@: %@", &v33, 0x16u);
      }

      [(ICCloudSyncingObject *)self setUserSpecificServerRecord:0];
      goto LABEL_3;
    }

    if (v11 == 14)
    {
      v14 = [v10 userInfo];
      v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];

      if (v15)
      {
        v16 = [v15 recordID];
        v17 = [(ICCloudSyncingObject *)self userSpecificRecordID];
        v18 = [v16 ic_hasEqualRecordNameWithRecordID:v17];

        if (!v18)
        {
          v26 = [(ICCloudSyncingObject *)self userSpecificRecordID];

          v27 = os_log_create("com.apple.notes", "Cloud");
          v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
          if (v26)
          {
            if (v28)
            {
              v30 = [v15 ic_loggingDescription];
              v31 = [(ICCloudSyncingObject *)self userSpecificRecordID];
              v32 = [v31 recordName];
              v33 = 138413058;
              v34 = v9;
              v35 = 2112;
              v36 = v30;
              v37 = 2112;
              v38 = v32;
              v39 = 2112;
              v40 = v10;
              _os_log_error_impl(&dword_214D51000, v27, OS_LOG_TYPE_ERROR, "Non-matching user-specific server record changed in account ID %@; record=%@; expectedRecordName=%@; error=%@", &v33, 0x2Au);
            }

            [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObject didFailToSaveUserSpecificRecordWithID:accountID:error:]" simulateCrash:1 showAlert:1 format:@"User-specific record mismatch when merging oplock result"];
            [MEMORY[0x277D36278] postBasicEvent:8];
          }

          else
          {
            if (v28)
            {
              [ICCloudSyncingObject didFailToSaveUserSpecificRecordWithID:accountID:error:];
            }

            [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObject didFailToSaveUserSpecificRecordWithID:accountID:error:]" simulateCrash:1 showAlert:1 format:@"Missed merge of user-specific record because record ID was missing"];
          }

          v12 = 0;
          goto LABEL_30;
        }

        v19 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v15 ic_loggingDescription];
          v33 = 138412546;
          v34 = v9;
          v35 = 2112;
          v36 = v20;
          _os_log_impl(&dword_214D51000, v19, OS_LOG_TYPE_INFO, "User-specific server record changed in account ID %@: %@", &v33, 0x16u);
        }

        [(ICCloudSyncingObject *)self didFetchUserSpecificRecord:v15 accountID:v9 force:0];
      }

      else
      {
        v24 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = [(ICCloudSyncingObject *)self shortLoggingDescription];
          v33 = 138412802;
          v34 = v9;
          v35 = 2112;
          v36 = v25;
          v37 = 2112;
          v38 = v10;
          _os_log_impl(&dword_214D51000, v24, OS_LOG_TYPE_INFO, "User-specific server record changed with no server record in the error in account ID %@: %@: %@", &v33, 0x20u);
        }
      }

      v12 = 1;
LABEL_30:

      goto LABEL_4;
    }

LABEL_12:
    v21 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v29 = [v8 ic_loggingDescription];
      v33 = 138412802;
      v34 = v9;
      v35 = 2112;
      v36 = v29;
      v37 = 2112;
      v38 = v10;
      _os_log_error_impl(&dword_214D51000, v21, OS_LOG_TYPE_ERROR, "Error pushing user-specific record in account ID %@: %@: %@", &v33, 0x20u);
    }
  }

LABEL_3:
  v12 = 1;
LABEL_4:

  return v12;
}

- (void)updateNeedsToSaveUserSpecificRecordToUpdateReferenceActionsIfNeeded
{
  if (([(ICCloudSyncingObject *)self needsToSaveUserSpecificRecord]& 1) == 0)
  {
    if ([objc_opt_class() supportsUserSpecificRecords] && -[ICCloudSyncingObject wantsUserSpecificRecord](self, "wantsUserSpecificRecord"))
    {
      v3 = [(ICCloudSyncingObject *)self needsToUpdateUserSpecificRecordReferenceActions];
    }

    else
    {
      v3 = 0;
    }

    [(ICCloudSyncingObject *)self setNeedsToSaveUserSpecificRecord:v3];
  }
}

+ (id)temporaryAssets
{
  if (temporaryAssets_onceToken != -1)
  {
    +[ICCloudSyncingObject temporaryAssets];
  }

  v3 = temporaryAssets_temporaryAssets;

  return v3;
}

void __39__ICCloudSyncingObject_temporaryAssets__block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = temporaryAssets_temporaryAssets;
  temporaryAssets_temporaryAssets = v0;
}

+ (id)assetForData:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];

  v7 = [a1 temporaryAssetDirectoryURL];
  v8 = [v7 URLByAppendingPathComponent:v6 isDirectory:0];

  if (!v8)
  {
    v10 = 0;
    goto LABEL_7;
  }

  v14 = 0;
  v9 = [v4 writeToURL:v8 options:0 error:&v14];
  v10 = v14;
  if (!v9)
  {
LABEL_7:
    v12 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[ICCloudSyncingObject assetForData:];
    }

    v11 = 0;
    goto LABEL_10;
  }

  v11 = [a1 assetForTemporaryURL:v8];
LABEL_10:

LABEL_11:

  return v11;
}

+ (id)assetForURL:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4 || ([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "path"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "fileExistsAtPath:", v6), v6, v5, !v7))
  {
    v16 = 0;
    goto LABEL_14;
  }

  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v8 UUIDString];

  v10 = [a1 temporaryAssetDirectoryURL];
  v11 = [v10 URLByAppendingPathComponent:v9 isDirectory:0];

  if (!v11)
  {
    v14 = 0;
    goto LABEL_10;
  }

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v19 = 0;
  v13 = [v12 copyItemAtURL:v4 toURL:v11 error:&v19];
  v14 = v19;

  if (!v13)
  {
LABEL_10:
    v17 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v21 = v4;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v14;
      _os_log_error_impl(&dword_214D51000, v17, OS_LOG_TYPE_ERROR, "Error cloning file (%@) for creating temporary asset (%@) {error: %@}", buf, 0x20u);
    }

    v16 = 0;
    goto LABEL_13;
  }

  v15 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    +[ICCloudSyncingObject assetForURL:];
  }

  v16 = [a1 assetForTemporaryURL:v11];
LABEL_13:

LABEL_14:

  return v16;
}

+ (id)assetForTemporaryURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [a1 temporaryAssets];
    objc_sync_enter(v5);
    v6 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:v4];
    v7 = [a1 temporaryAssets];
    [v7 addObject:v6];

    v8 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[ICCloudSyncingObject assetForTemporaryURL:];
    }

    objc_sync_exit(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)dataForAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 fileURL];
  if (v4)
  {
    v5 = MEMORY[0x277CBEA90];
    v6 = [v3 fileURL];
    v11 = 0;
    v7 = [v5 dataWithContentsOfURL:v6 options:0 error:&v11];
    v8 = v11;

    if (v8)
    {
      v9 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[ICCloudSyncingObject dataForAsset:];
      }
    }
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObject dataForAsset:v8];
    }

    v7 = 0;
  }

  return v7;
}

+ (NSURL)temporaryAssetDirectoryURL
{
  if (temporaryAssetDirectoryURL_onceToken != -1)
  {
    +[ICCloudSyncingObject temporaryAssetDirectoryURL];
  }

  v3 = temporaryAssetDirectoryURL_url;

  return v3;
}

void __50__ICCloudSyncingObject_temporaryAssetDirectoryURL__block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = [v0 stringWithFormat:@"%@-%@", v2, @"TemporaryAssetFiles"];

  v4 = MEMORY[0x277CBEBC0];
  v5 = NSTemporaryDirectory();
  v6 = [v4 fileURLWithPath:v5];
  v7 = [v6 URLByAppendingPathComponent:v3 isDirectory:1];
  v8 = temporaryAssetDirectoryURL_url;
  temporaryAssetDirectoryURL_url = v7;

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  v10 = [v9 createDirectoryAtURL:temporaryAssetDirectoryURL_url withIntermediateDirectories:1 attributes:0 error:&v13];
  v11 = v13;

  if ((v10 & 1) == 0)
  {
    v12 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __50__ICCloudSyncingObject_temporaryAssetDirectoryURL__block_invoke_cold_1();
    }
  }
}

+ (void)deleteTemporaryAssetFilesForOperation:(id)a3
{
  v4 = a3;
  if (deleteTemporaryAssetFilesForOperation__onceToken != -1)
  {
    +[ICCloudSyncingObject deleteTemporaryAssetFilesForOperation:];
  }

  v5 = [a1 temporaryAssets];
  objc_sync_enter(v5);
  v6 = [a1 temporaryAssets];
  v7 = [v6 count];

  objc_sync_exit(v5);
  if (v7)
  {
    objc_initWeak(&location, a1);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__ICCloudSyncingObject_deleteTemporaryAssetFilesForOperation___block_invoke_2;
    aBlock[3] = &unk_278196D50;
    objc_copyWeak(&v18, &location);
    v8 = v4;
    v17 = v8;
    v9 = _Block_copy(aBlock);
    v10 = deleteTemporaryAssetFilesForOperation__deleteTemporaryAssetFilesQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__ICCloudSyncingObject_deleteTemporaryAssetFilesForOperation___block_invoke_247;
    v12[3] = &unk_278196D78;
    v15 = a1;
    v13 = v8;
    v14 = v9;
    v11 = v9;
    dispatch_async(v10, v12);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __62__ICCloudSyncingObject_deleteTemporaryAssetFilesForOperation___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("com.apple.notes.cloud.deleteTemporaryAssetFiles", attr);
  v2 = deleteTemporaryAssetFilesForOperation__deleteTemporaryAssetFilesQueue;
  deleteTemporaryAssetFilesForOperation__deleteTemporaryAssetFilesQueue = v1;
}

void __62__ICCloudSyncingObject_deleteTemporaryAssetFilesForOperation___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [WeakRetained temporaryAssets];
    v9 = [v8 containsObject:v5];

    if (v9)
    {
      v10 = v5;
      v11 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = [v10 fileURL];
        v13 = [v6 recordID];
        v14 = [*(a1 + 32) ic_loggingDescription];
        v15 = 138412802;
        v16 = v12;
        v17 = 2112;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        _os_log_debug_impl(&dword_214D51000, v11, OS_LOG_TYPE_DEBUG, "Deleting temporary files for asset (%@) record (%@) operation (%@)", &v15, 0x20u);
      }

      [WeakRetained deleteTemporaryFilesForAsset:v10];
    }
  }
}

void __62__ICCloudSyncingObject_deleteTemporaryAssetFilesForOperation___block_invoke_247(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  obj = [*(a1 + 48) temporaryAssets];
  objc_sync_enter(obj);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = [*(a1 + 32) recordsToSave];
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v3)
  {
    v15 = *v29;
    v17 = v2;
    do
    {
      v16 = 0;
      v18 = v3;
      do
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v2);
        }

        v4 = *(*(&v28 + 1) + 8 * v16);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v5 = [v4 allKeys];
        v6 = [v5 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v6)
        {
          v7 = *v25;
          do
          {
            v19 = v6;
            for (i = 0; i != v19; ++i)
            {
              if (*v25 != v7)
              {
                objc_enumerationMutation(v5);
              }

              v9 = [v4 objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = 0u;
                v23 = 0u;
                v20 = 0u;
                v21 = 0u;
                v10 = v9;
                v11 = [v10 countByEnumeratingWithState:&v20 objects:v32 count:16];
                if (v11)
                {
                  v12 = *v21;
                  do
                  {
                    for (j = 0; j != v11; ++j)
                    {
                      if (*v21 != v12)
                      {
                        objc_enumerationMutation(v10);
                      }

                      (*(*(a1 + 40) + 16))();
                    }

                    v11 = [v10 countByEnumeratingWithState:&v20 objects:v32 count:16];
                  }

                  while (v11);
                }

                v2 = v17;
                v3 = v18;
              }

              else
              {
                (*(*(a1 + 40) + 16))();
              }
            }

            v6 = [v5 countByEnumeratingWithState:&v24 objects:v33 count:16];
          }

          while (v6);
        }

        ++v16;
      }

      while (v16 != v3);
      v3 = [v2 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v3);
  }

  objc_sync_exit(obj);
}

+ (void)deleteTemporaryFilesForAsset:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 temporaryAssets];
  objc_sync_enter(v5);
  v6 = [a1 temporaryAssets];
  [v6 removeObject:v4];

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v4 fileURL];
  v14 = 0;
  v9 = [v7 removeItemAtURL:v8 error:&v14];
  v10 = v14;

  if ((v9 & 1) == 0)
  {
    v11 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[ICCloudSyncingObject deleteTemporaryFilesForAsset:];
    }
  }

  if (!v10)
  {
    v12 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v4 fileURL];
      [(ICCloudSyncingObject *)v13 deleteTemporaryFilesForAsset:v15];
    }
  }

  objc_sync_exit(v5);
}

+ (void)deleteAllTemporaryAssetFilesForAllObjects
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [a1 temporaryAssetDirectoryURL];
  v5 = [v3 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:0 errorHandler:&__block_literal_global_250];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    *&v8 = 138412290;
    v17 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        v13 = [MEMORY[0x277CCAA00] defaultManager];
        v18 = 0;
        v14 = [v13 removeItemAtURL:v12 error:&v18];
        v15 = v18;

        if ((v14 & 1) == 0)
        {
          v16 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v24 = v15;
            _os_log_error_impl(&dword_214D51000, v16, OS_LOG_TYPE_ERROR, "Error deleting temporary asset file: %@", buf, 0xCu);
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }
}

uint64_t __65__ICCloudSyncingObject_deleteAllTemporaryAssetFilesForAllObjects__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__ICCloudSyncingObject_deleteAllTemporaryAssetFilesForAllObjects__block_invoke_cold_1();
  }

  return 1;
}

- (id)outOfDateUserSpecificAssetSignatures
{
  if ([objc_opt_class() supportsUserSpecificRecords])
  {
    [(ICCloudSyncingObject *)self outOfDateAssetSignaturesForUserSpecific:1];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v3 = ;

  return v3;
}

- (BOOL)hasOutOfDateCommonAssetSignatures
{
  v2 = [(ICCloudSyncingObject *)self outOfDateCommonAssetSignatures];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)hasOutOfDateUserSpecificAssetSignatures
{
  if (![objc_opt_class() supportsUserSpecificRecords])
  {
    return 0;
  }

  v3 = [(ICCloudSyncingObject *)self outOfDateUserSpecificAssetSignatures];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)hasUserSpecificAssetSignatures
{
  v3 = [objc_opt_class() supportsUserSpecificRecords];
  if (v3)
  {

    LOBYTE(v3) = [(ICCloudSyncingObject *)self hasAssetSignaturesForUserSpecific:1];
  }

  return v3;
}

- (id)updateFetchFlagsAndReturnRecordIDsNeedingFetchWithContext:(id)a3 shouldFetchObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7 && ((*(v7 + 2))(v7, self, v6) & 1) != 0)
  {
    v9 = [MEMORY[0x277CBEB58] set];
    if ([(ICCloudSyncingObject *)self hasOutOfDateCommonAssetSignatures])
    {
      [(ICCloudSyncingObject *)self setNeedsToBeFetchedFromCloud:1];
      v10 = [(ICCloudSyncingObject *)self recordID];
      [v9 ic_addNonNilObject:v10];
    }

    if ([objc_opt_class() supportsUserSpecificRecords] && -[ICCloudSyncingObject hasOutOfDateUserSpecificAssetSignatures](self, "hasOutOfDateUserSpecificAssetSignatures"))
    {
      [(ICCloudSyncingObject *)self setNeedsToFetchUserSpecificRecordAssets:1];
      v11 = [(ICCloudSyncingObject *)self userSpecificRecordID];
      [v9 ic_addNonNilObject:v11];
    }

    v12 = [(ICCloudSyncingObject *)self descendantsNeedingOnDemandAssetFetchWithContext:v6 shouldFetchObject:v8];
    v13 = [v12 allObjects];
    [v9 addObjectsFromArray:v13];

    v14 = [v9 copy];
  }

  else
  {
    v14 = [MEMORY[0x277CBEB98] set];
  }

  return v14;
}

- (id)outOfDateAssetSignaturesForUserSpecific:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = [(ICCloudSyncingObject *)self assetSignatures];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 isUserSpecificRecordKey] == v3 && objc_msgSend(v11, "outOfDate"))
        {
          v12 = [v11 cloudKitRecordKey];
          v13 = [v12 copy];
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (BOOL)hasAssetSignaturesForUserSpecific:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(ICCloudSyncingObject *)self assetSignatures];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) isUserSpecificRecordKey] == v3)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)shouldBeDeletedFromLocalDatabase
{
  v17 = *MEMORY[0x277D85DE8];
  if (![(ICCloudSyncingObject *)self isDeletable])
  {
    v3 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(ICCloudSyncingObject *)self shouldBeDeletedFromLocalDatabase];
    }

LABEL_10:

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  if (([(ICCloudSyncingObject *)self markedForDeletion]& 1) == 0)
  {
    v3 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(ICCloudSyncingObject *)self shouldBeDeletedFromLocalDatabase];
    }

    goto LABEL_10;
  }

  if ([(ICCloudSyncingObject *)self wasRecentlyDeletedByThisDevice])
  {
    v3 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(ICCloudSyncingObject *)self shouldBeDeletedFromLocalDatabase];
    }

    goto LABEL_10;
  }

  if ([(ICCloudSyncingObject *)self isInICloudAccount]&& [(ICCloudSyncingObject *)self isInCloud]&& ![(ICCloudSyncingObject *)self hasSuccessfullyPushedLatestVersionToCloud])
  {
    v3 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(ICCloudSyncingObject *)self shouldBeDeletedFromLocalDatabase];
    }

    goto LABEL_10;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(ICCloudSyncingObject *)self objectsToBeDeletedBeforeThisObject];
  v6 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (([v10 shouldBeDeletedFromLocalDatabase] & 1) == 0)
        {
          v11 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            [ICCloudSyncingObject shouldBeDeletedFromLocalDatabase];
          }

          if ([v10 needsInitialFetchFromCloud])
          {
            [v10 setNeedsToBeFetchedFromCloud:1];
          }

          goto LABEL_11;
        }
      }

      v7 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v4 = 1;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v4 = 1;
  }

LABEL_12:

  return v4;
}

- (void)deleteFromLocalDatabase
{
  v2 = os_log_create("com.apple.notes", "Delete");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [ICCloudSyncingObject deleteFromLocalDatabase];
  }
}

- (void)markForDeletion
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)unmarkForDeletion
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setMarkedForDeletion:(BOOL)a3
{
  v3 = a3;
  v5 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICCloudSyncingObject *)v3 setMarkedForDeletion:?];
  }

  [(ICCloudSyncingObject *)self willChangeValueForKey:@"markedForDeletion"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  [(ICCloudSyncingObject *)self setPrimitiveValue:v6 forKey:@"markedForDeletion"];

  [(ICCloudSyncingObject *)self didChangeValueForKey:@"markedForDeletion"];
}

- (NSDate)creationDate
{
  v3 = NSStringFromSelector(sel_creationDate);
  [(ICCloudSyncingObject *)self willAccessValueForKey:v3];

  objc_opt_class();
  v4 = NSStringFromSelector(sel_creationDate);
  v5 = [(ICCloudSyncingObject *)self primitiveValueForKey:v4];
  v6 = ICDynamicCast();

  v7 = NSStringFromSelector(sel_creationDate);
  [(ICCloudSyncingObject *)self didAccessValueForKey:v7];

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = [(ICCloudSyncingObject *)self serverRecord];
    v8 = [v9 creationDate];
  }

  return v8;
}

- (NSArray)ancestorCloudObjects
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(ICCloudSyncingObject *)self parentCloudObject];
  if (v4)
  {
    v5 = v4;
    do
    {
      [v3 addObject:v5];
      v6 = [v5 parentCloudObject];

      v5 = v6;
    }

    while (v6);
  }

  v7 = [v3 copy];

  return v7;
}

- (void)updateParentReferenceIfNecessary
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)updateChangeCountsForUnsavedParentReferences
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(ICCloudSyncingObject *)self childCloudObjects];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 serverRecord];
        v9 = [v8 parent];

        if (!v9)
        {
          [v7 updateChangeCountWithReason:@"Updated parent reference"];
        }

        [v7 updateChangeCountsForUnsavedParentReferences];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

- (BOOL)needsToDeleteShare
{
  if (![(ICCloudSyncingObject *)self markedForDeletion])
  {
    return 0;
  }

  v3 = [(ICCloudSyncingObject *)self serverShare];
  if (v3)
  {
    v4 = [(ICCloudSyncingObject *)self shareMatchesRecord];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canCurrentUserShare
{
  v3 = [(ICCloudSyncingObject *)self serverShare];

  if (!v3)
  {
    return 1;
  }

  v4 = [(ICCloudSyncingObject *)self serverShare];
  v5 = [v4 currentUserParticipant];
  if ([v5 role] == 1)
  {
    v6 = 1;
  }

  else
  {
    v7 = [(ICCloudSyncingObject *)self serverShare];
    v8 = [v7 currentUserParticipant];
    v6 = [v8 role] == 2;
  }

  return v6;
}

- (BOOL)canBeSharedViaICloud
{
  if (([(ICCloudSyncingObject *)self isPasswordProtected]& 1) != 0)
  {
    return 0;
  }

  v3 = [(ICCloudSyncingObject *)self cloudAccount];
  v4 = [v3 accountType];

  if (v4 != 1)
  {
    return 0;
  }

  else
  {
    return ![(ICCloudSyncingObject *)self isUnsupported];
  }
}

- (BOOL)isSharedThroughParent
{
  v3 = [(ICCloudSyncingObject *)self serverShare];
  if (v3 && [(ICCloudSyncingObject *)self shareMatchesRecord])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(ICCloudSyncingObject *)self serverRecord];
    v6 = [v5 share];
    if (v6)
    {
      v4 = 0;
    }

    else
    {
      v7 = [(ICCloudSyncingObject *)self parentCloudObject];
      v4 = [v7 isSharedViaICloud];
    }
  }

  return v4;
}

- (BOOL)isOwnedByCurrentUser
{
  v2 = [(ICCloudSyncingObject *)self recordID];
  v3 = [v2 ic_isOwnedByCurrentUser];

  return v3;
}

- (BOOL)wasCreatedByCurrentUser
{
  v3 = [(ICCloudSyncingObject *)self cloudAccount];
  v4 = [(ICCloudSyncingObject *)self serverRecord];
  if ([(ICCloudSyncingObject *)self isInICloudAccount])
  {
    v5 = 1;
    if ([(ICCloudSyncingObject *)self isInCloud]&& v4 && v3)
    {
      v6 = [v4 creatorUserRecordID];
      v7 = [v6 recordName];
      v8 = [v3 userRecordName];
      if (([v7 isEqualToString:v8] & 1) == 0)
      {
        v9 = [v4 creatorUserRecordID];
        v10 = [v9 recordName];
        v5 = [v10 isEqualToString:*MEMORY[0x277CBBF28]];
      }
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)isSharedRootObject
{
  v3 = [(ICCloudSyncingObject *)self serverRecord];
  v4 = [v3 share];

  if (v4)
  {
    return 1;
  }

  v6 = [(ICCloudSyncingObject *)self serverShare];
  if (v6)
  {
    v5 = [(ICCloudSyncingObject *)self shareMatchesRecord];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sharedRootObject
{
  if ([(ICCloudSyncingObject *)self isSharedRootObject])
  {
    v3 = self;
  }

  else
  {
    v4 = [(ICCloudSyncingObject *)self parentCloudObject];
    v3 = [v4 sharedRootObject];
  }

  return v3;
}

- (id)ownerRecordName
{
  if ([(ICCloudSyncingObject *)self isInICloudAccount])
  {
    if ([(ICCloudSyncingObject *)self isOwnedByCurrentUser])
    {
      v3 = [(ICCloudSyncingObject *)self zoneOwnerName];
      v4 = v3;
      if (!v3 || [v3 isEqualToString:*MEMORY[0x277CBBF28]])
      {
        v5 = [(ICCloudSyncingObject *)self cloudAccount];
        v6 = [v5 userRecordName];

        v4 = v6;
      }
    }

    else if ([(ICCloudSyncingObject *)self isSharedViaICloud])
    {
      v4 = [(ICCloudSyncingObject *)self sharedOwnerRecordName];
    }

    else
    {
      v4 = 0;
    }

    v7 = [v4 copy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)sharedOwnerRecordName
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(ICCloudSyncingObject *)self isSharedViaICloud]&& ![(ICCloudSyncingObject *)self isOwnedByCurrentUser])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(ICCloudSyncingObject *)self serverShare];
    v5 = [v4 participants];

    v3 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v3)
    {
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          if ([v8 role] == 1)
          {
            v9 = [v8 userIdentity];
            v10 = [v9 userRecordID];
            v3 = [v10 recordName];

            goto LABEL_14;
          }
        }

        v3 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v3 = 0;
  }

  v11 = [v3 copy];

  return v11;
}

- (id)sharedOwnerName
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(ICCloudSyncingObject *)self isSharedViaICloud]&& ![(ICCloudSyncingObject *)self isOwnedByCurrentUser])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [(ICCloudSyncingObject *)self serverShare];
    v5 = [v4 participants];

    v3 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != v3; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if ([v8 role] == 1)
          {
            v3 = [v8 ic_participantName];
            goto LABEL_14;
          }
        }

        v3 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setServerShareIfNewer:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self serverShare];

  if (!v5)
  {
    v7 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject setServerShareIfNewer:];
    }

    goto LABEL_18;
  }

  v6 = [(ICCloudSyncingObject *)self serverShare];
  if ([v6 ic_hasMetadata])
  {
  }

  else
  {
    v8 = [v4 ic_hasMetadata];

    if (v8)
    {
      v7 = os_log_create("com.apple.notes", "Collaboration");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(ICCloudSyncingObject *)self setServerShareIfNewer:v4, v7];
      }

      goto LABEL_18;
    }
  }

  v9 = [(ICCloudSyncingObject *)self serverShare];
  v10 = [v9 recordChangeTag];
  v11 = [v4 recordChangeTag];
  v12 = [v10 isEqualToString:v11];

  if (!v12)
  {
    v13 = [(ICCloudSyncingObject *)self serverShare];
    v14 = [v13 modificationDate];
    v15 = [v4 modificationDate];
    v16 = [v14 ic_isLaterThanDate:v15];

    v7 = os_log_create("com.apple.notes", "Collaboration");
    v17 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      if (v17)
      {
        [(ICCloudSyncingObject *)self setServerShareIfNewer:v4, v7];
      }

      goto LABEL_15;
    }

    if (v17)
    {
      [(ICCloudSyncingObject *)self setServerShareIfNewer:v4, v7];
    }

LABEL_18:

    [(ICCloudSyncingObject *)self setServerShare:v4];
    goto LABEL_19;
  }

  v7 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ICCloudSyncingObject *)self setServerShareIfNewer:v4, v7];
  }

LABEL_15:

LABEL_19:
}

- (void)markShareDirtyIfNeededWithReason:(id)a3
{
  v4 = a3;
  if ([(ICCloudSyncingObject *)self isSharedRootObject]&& ([(ICCloudSyncingObject *)self isShareDirty]& 1) == 0 && ![(ICCloudSyncingObject *)self isSharedReadOnly])
  {
    [(ICCloudSyncingObject *)self setIsShareDirty:1];
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject markShareDirtyIfNeededWithReason:];
    }
  }
}

- (void)didAcceptShare:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self serverShare];

  if (!v5)
  {
    v6 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(ICCloudSyncingObject *)self shortLoggingDescription];
      v8 = [v4 ic_loggingDescription];
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "No server share for %@, setting to %@", &v11, 0x16u);
    }

    [(ICCloudSyncingObject *)self setServerShare:v4];
  }

  if ([(ICCloudSyncingObject *)self markedForDeletion])
  {
    v9 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(ICCloudSyncingObject *)self shortLoggingDescription];
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_INFO, "Undeleting shared %@", &v11, 0xCu);
    }

    [(ICCloudSyncingObject *)self unmarkForDeletion];
  }
}

- (id)shareDescription
{
  v3 = [(ICCloudSyncingObject *)self serverShareCheckingParent];
  v4 = [v3 participants];

  v5 = [(ICCloudSyncingObject *)self shareDescriptionForShareParticipants:v4];

  return v5;
}

- (id)shareDescriptionForShareParticipants:(id)a3
{
  v4 = a3;
  if (![(ICCloudSyncingObject *)self isSharedViaICloud])
  {
    v8 = 0;
    goto LABEL_28;
  }

  if (![(ICCloudSyncingObject *)self isOwnedByCurrentUser])
  {
    v5 = [v4 ic_objectPassingTest:&__block_literal_global_317];
    v9 = [v5 ic_participantName];
    if (v9)
    {
      v10 = MEMORY[0x277CCACA8];
      v11 = __ICLocalizedFrameworkString_impl(@"Shared by %@", @"Shared by %@", 0, 1);
      [v10 localizedStringWithFormat:v11, v9, v18];
      v8 = LABEL_20:;
      goto LABEL_21;
    }

    v14 = __ICLocalizedFrameworkString_impl(@"Shared to you", @"Shared to you", 0, 1);
    goto LABEL_25;
  }

  v5 = [MEMORY[0x277CBC6A0] ic_displayableNames:v4 maximumNamesCount:2];
  if ([v4 count] == 2 && objc_msgSend(v5, "count") == 1)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = @"Shared with %@";
LABEL_12:
    v9 = __ICLocalizedFrameworkString_impl(v7, v7, 0, 1);
    v11 = [v5 firstObject];
    v17 = v11;
LABEL_19:
    [v6 localizedStringWithFormat:v9, v17, v18];
    goto LABEL_20;
  }

  if ([v4 count] == 3 && objc_msgSend(v5, "count") == 1)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = @"Shared with %@ and 1 other";
    goto LABEL_12;
  }

  if ([v4 count] != 3 || objc_msgSend(v5, "count") != 2)
  {
    if ([v4 count] >= 4 && objc_msgSend(v5, "count"))
    {
      v6 = MEMORY[0x277CCACA8];
      v9 = __ICLocalizedFrameworkString_impl(@"Shared with %@ and %lu others", @"Shared with %@ and %lu others", 0, 1);
      v11 = [v5 firstObject];
      v17 = v11;
      v18 = [v4 count] - 2;
      goto LABEL_19;
    }

    if ([v4 count] < 2)
    {
      v8 = __ICLocalizedFrameworkString_impl(@"Shared by me", @"Shared by me", 0, 1);
      goto LABEL_27;
    }

    v15 = MEMORY[0x277CCACA8];
    v9 = __ICLocalizedFrameworkString_impl(@"Shared with %lu others", @"Shared with %lu others", 0, 1);
    v14 = [v15 localizedStringWithFormat:v9, objc_msgSend(v4, "count") - 1];
LABEL_25:
    v8 = v14;
    goto LABEL_26;
  }

  v12 = MEMORY[0x277CCACA8];
  v9 = __ICLocalizedFrameworkString_impl(@"Shared with %@ and %@", @"Shared with %@ and %@", 0, 1);
  v11 = [v5 firstObject];
  v13 = [v5 lastObject];
  v8 = [v12 localizedStringWithFormat:v9, v11, v13];

LABEL_21:
LABEL_26:

LABEL_27:
LABEL_28:

  return v8;
}

- (id)participantForUserID:(id)a3
{
  v4 = a3;
  if ([(ICCloudSyncingObject *)self isSharedViaICloud])
  {
    if (([v4 isEqualToString:*MEMORY[0x277CBBF28]] & 1) != 0 || (-[ICCloudSyncingObject cloudAccount](self, "cloudAccount"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "userRecordName"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v4, "isEqualToString:", v6), v6, v5, v7))
    {
      v8 = [(ICCloudSyncingObject *)self serverShareCheckingParent];
      v9 = [v8 currentUserParticipant];
    }

    else
    {
      v8 = [(ICCloudSyncingObject *)self serverShareCheckingParent];
      v9 = [v8 ic_participantWithUserRecordName:v4];
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSMutableDictionary)participantHandlesToParticipants
{
  participantHandlesToParticipants = self->_participantHandlesToParticipants;
  if (participantHandlesToParticipants)
  {
    v4 = participantHandlesToParticipants;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
  }

  v5 = self->_participantHandlesToParticipants;
  self->_participantHandlesToParticipants = v4;

  v6 = self->_participantHandlesToParticipants;

  return v6;
}

- (id)participantForHandle:(id)a3
{
  v4 = a3;
  if ([(ICCloudSyncingObject *)self isSharedViaICloud])
  {
    v5 = [(ICCloudSyncingObject *)self participantHandlesToParticipants];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (!v6)
    {
      v7 = [(ICCloudSyncingObject *)self serverShareCheckingParent];
      v8 = [v7 ic_participantWithHandle:v4];
      v9 = [(ICCloudSyncingObject *)self participantHandlesToParticipants];
      [v9 setObject:v8 forKeyedSubscript:v4];
    }

    v10 = [(ICCloudSyncingObject *)self participantHandlesToParticipants];
    v11 = [v10 objectForKeyedSubscript:v4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)hasAnySharedObjectInContext:(id)a3
{
  v3 = MEMORY[0x277CBE428];
  v4 = a3;
  v5 = [v3 fetchRequestWithEntityName:@"ICCloudSyncingObject"];
  [v5 setFetchLimit:1];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"serverShareData != nil"];
  [v5 setPredicate:v6];

  v10 = 0;
  v7 = [v4 executeFetchRequest:v5 error:&v10];

  if (v10)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 count] != 0;
  }

  return v8;
}

- (BOOL)shareMatchesRecord
{
  v3 = [(ICCloudSyncingObject *)self serverShare];
  v4 = [v3 rootRecordID];
  v5 = [v4 recordName];
  if (v5)
  {
    v6 = [(ICCloudSyncingObject *)self serverShare];
    v7 = [v6 rootRecordID];
    v8 = [v7 recordName];
    v9 = [(ICCloudSyncingObject *)self recordID];
    v10 = [v9 recordName];
    v11 = [v8 isEqualToString:v10];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)unitTest_injectCryptoStrategy:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ICCloudSyncingObject_unitTest_injectCryptoStrategy___block_invoke;
  v7[3] = &unk_278194AD8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlockAndWait:v7];
}

- (id)validatedCreateCryptoStrategy
{
  v3 = [(ICCloudSyncingObject *)self cryptoStrategyProtocol];
  v4 = [ICCryptoStrategyFactory makeCryptoStrategyForObject:self andValidateProtocolConformance:v3];

  return v4;
}

- (BOOL)cryptoStrategyIsTransient
{
  if (([(ICCloudSyncingObject *)self needsInitialFetchFromCloud]& 1) != 0)
  {
    return 1;
  }

  v4 = [(ICCloudSyncingObject *)self primaryEncryptedData];
  v3 = v4 == 0;

  return v3;
}

- (BOOL)encryptFileFromURL:(id)a3 toURL:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICCloudSyncingObject *)self cryptoStrategy];
  v9 = [v8 encryptFileFromURL:v7 toURL:v6];

  return v9;
}

- (BOOL)mergeEncryptedDataFromRecord:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self cryptoStrategy];
  if (v5)
  {
    v6 = v5;
LABEL_3:
    [(ICCloudSyncingObject *)self setCryptoStrategyForMergingEncryptedData:v6];
    v7 = [v6 mergeEncryptedDataFromRecord:v4];
    [(ICCloudSyncingObject *)self setCryptoStrategyForMergingEncryptedData:0];

    goto LABEL_11;
  }

  v8 = [(ICCloudSyncingObject *)self primaryEncryptedDataFromRecord:v4];
  if ([v8 length])
  {
    v9 = [(ICCloudSyncingObject *)self cryptoStrategyProtocol];
    v6 = [ICCryptoStrategyFactory makeCryptoStrategyForObject:self withCipherMatchingEncryptedData:v8 andValidateProtocolConformance:v9];

    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  v10 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [(ICCloudSyncingObject *)self shortLoggingDescription];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_214D51000, v10, OS_LOG_TYPE_INFO, "Object cannot have crypto strategy, but is asked to decrypt and merge data from record {object: %@}", &v13, 0xCu);
  }

  [(ICCloudSyncingObject *)self setUnappliedEncryptedRecord:v4];
  v7 = 0;
LABEL_11:

  return v7;
}

- (BOOL)hasPassphraseSet
{
  v2 = [(ICCloudSyncingObject *)self cryptoStrategy];
  v3 = [v2 hasPassphraseSet];

  return v3;
}

- (NSString)passwordHint
{
  v2 = [(ICCloudSyncingObject *)self cryptoStrategy];
  v3 = [v2 passphraseHint];

  return v3;
}

- (BOOL)isPassphraseCorrect:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self cryptoStrategy];
  v6 = [v5 isPassphraseCorrect:v4];

  return v6;
}

- (NSData)primaryEncryptedData
{
  if ([(ICCloudSyncingObject *)self supportsEncryptedValuesDictionary])
  {
    v3 = [(ICCloudSyncingObject *)self encryptedValuesJSON];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPrimaryEncryptedData:(id)a3
{
  v4 = a3;
  if ([(ICCloudSyncingObject *)self supportsEncryptedValuesDictionary])
  {
    [(ICCloudSyncingObject *)self setEncryptedValuesJSON:v4];
  }
}

- (id)primaryEncryptedDataFromRecord:(id)a3
{
  v4 = a3;
  if ([(ICCloudSyncingObject *)self supportsEncryptedValuesDictionary])
  {
    v5 = [v4 ic_inlineableDataAssetForKeyPrefix:@"EncryptedValues"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setCryptoTag:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self cryptoTag];
  [(ICCloudSyncingObject *)self willChangeValueForKey:@"cryptoTag"];
  [(ICCloudSyncingObject *)self setPrimitiveValue:v4 forKey:@"cryptoTag"];
  [(ICCloudSyncingObject *)self didChangeValueForKey:@"cryptoTag"];
  v6 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;
  if (v6 == v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;
  if (!(v8 | v10))
  {
LABEL_15:
    v14 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject setCryptoTag:];
    }

    goto LABEL_19;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
  }

  else
  {
    v13 = [v8 isEqual:v10];

    if (v13)
    {
      goto LABEL_15;
    }
  }

  v14 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v16 = v15;
    v17 = [(ICCloudSyncingObject *)self identifier];
    v18 = 138412802;
    v19 = v15;
    v20 = 2112;
    v21 = v17;
    v22 = 2048;
    v23 = [v4 hash];
    _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_INFO, "Updated crypto goo for %@ (%@): cryptoTag.hash = %lu", &v18, 0x20u);
  }

LABEL_19:
}

- (void)setCryptoInitializationVector:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self cryptoInitializationVector];
  [(ICCloudSyncingObject *)self willChangeValueForKey:@"cryptoInitializationVector"];
  [(ICCloudSyncingObject *)self setPrimitiveValue:v4 forKey:@"cryptoInitializationVector"];
  [(ICCloudSyncingObject *)self didChangeValueForKey:@"cryptoInitializationVector"];
  v6 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;
  if (v6 == v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;
  if (!(v8 | v10))
  {
LABEL_15:
    v14 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject setCryptoInitializationVector:];
    }

    goto LABEL_19;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
  }

  else
  {
    v13 = [v8 isEqual:v10];

    if (v13)
    {
      goto LABEL_15;
    }
  }

  v14 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v16 = v15;
    v17 = [(ICCloudSyncingObject *)self identifier];
    v18 = 138412802;
    v19 = v15;
    v20 = 2112;
    v21 = v17;
    v22 = 2048;
    v23 = [v4 hash];
    _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_INFO, "Updated crypto goo for %@ (%@): cryptoInitializationVector.hash = %lu", &v18, 0x20u);
  }

LABEL_19:
}

- (void)setCryptoSalt:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self cryptoSalt];
  [(ICCloudSyncingObject *)self willChangeValueForKey:@"cryptoSalt"];
  [(ICCloudSyncingObject *)self setPrimitiveValue:v4 forKey:@"cryptoSalt"];
  [(ICCloudSyncingObject *)self didChangeValueForKey:@"cryptoSalt"];
  v6 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;
  if (v6 == v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;
  if (!(v8 | v10))
  {
LABEL_15:
    v14 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject setCryptoSalt:];
    }

    goto LABEL_19;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
  }

  else
  {
    v13 = [v8 isEqual:v10];

    if (v13)
    {
      goto LABEL_15;
    }
  }

  v14 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v16 = v15;
    v17 = [(ICCloudSyncingObject *)self identifier];
    v18 = 138412802;
    v19 = v15;
    v20 = 2112;
    v21 = v17;
    v22 = 2048;
    v23 = [v4 hash];
    _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_INFO, "Updated crypto goo for %@ (%@): cryptoSalt.hash = %lu", &v18, 0x20u);
  }

LABEL_19:
}

- (void)setCryptoIterationCount:(int64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [(ICCloudSyncingObject *)self cryptoIterationCount];
  [(ICCloudSyncingObject *)self willChangeValueForKey:@"cryptoIterationCount"];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [(ICCloudSyncingObject *)self setPrimitiveValue:v6 forKey:@"cryptoIterationCount"];

  [(ICCloudSyncingObject *)self didChangeValueForKey:@"cryptoIterationCount"];
  v7 = os_log_create("com.apple.notes", "Crypto");
  v8 = v7;
  if (v5 == a3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject setCryptoIterationCount:];
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = v9;
    v11 = [(ICCloudSyncingObject *)self identifier];
    v12 = 138412802;
    v13 = v9;
    v14 = 2112;
    v15 = v11;
    v16 = 2048;
    v17 = a3;
    _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, "Updated crypto goo for %@ (%@): cryptoIterationCount = %lld", &v12, 0x20u);
  }
}

- (void)setCryptoWrappedKey:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self cryptoWrappedKey];
  [(ICCloudSyncingObject *)self willChangeValueForKey:@"cryptoWrappedKey"];
  [(ICCloudSyncingObject *)self setPrimitiveValue:v4 forKey:@"cryptoWrappedKey"];
  [(ICCloudSyncingObject *)self didChangeValueForKey:@"cryptoWrappedKey"];
  v6 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;
  if (v6 == v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;
  if (!(v8 | v10))
  {
LABEL_15:
    v14 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject setCryptoWrappedKey:];
    }

    goto LABEL_19;
  }

  v11 = v10;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
  }

  else
  {
    v13 = [v8 isEqual:v10];

    if (v13)
    {
      goto LABEL_15;
    }
  }

  v14 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v16 = v15;
    v17 = [(ICCloudSyncingObject *)self identifier];
    v18 = 138412802;
    v19 = v15;
    v20 = 2112;
    v21 = v17;
    v22 = 2048;
    v23 = [v4 hash];
    _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_INFO, "Updated crypto goo for %@ (%@): cryptoWrappedKey.hash = %lu", &v18, 0x20u);
  }

LABEL_19:
}

- (void)setEncryptedValuesJSON:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudSyncingObject *)self encryptedValuesJSON];
  [(ICCloudSyncingObject *)self willChangeValueForKey:@"encryptedValuesJSON"];
  [(ICCloudSyncingObject *)self setPrimitiveValue:v4 forKey:@"encryptedValuesJSON"];
  [(ICCloudSyncingObject *)self didChangeValueForKey:@"encryptedValuesJSON"];
  if (([v5 isEqual:v4] & 1) == 0)
  {
    v6 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject setEncryptedValuesJSON:];
    }
  }
}

- (void)persistPendingChangesRecursively
{
  v13 = *MEMORY[0x277D85DE8];
  [(ICCloudSyncingObject *)self persistPendingChanges];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(ICCloudSyncingObject *)self allChildCloudObjects];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) persistPendingChangesRecursively];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)clearDecryptedData
{
  v3 = [(ICCloudSyncingObject *)self mutableDecryptedValues];
  [v3 removeAllObjects];

  [(ICCloudSyncingObject *)self setNeedsToLoadDecryptedValues:1];
}

- (NSDictionary)decryptedValues
{
  decryptedValues = self->_decryptedValues;
  if (decryptedValues)
  {
    v4 = decryptedValues;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
  }

  v5 = self->_decryptedValues;
  self->_decryptedValues = v4;

  v6 = self->_decryptedValues;

  return v6;
}

- (NSMutableDictionary)mutableDecryptedValues
{
  objc_opt_class();
  v3 = [(ICCloudSyncingObject *)self decryptedValues];
  v4 = ICCheckedDynamicCast();

  return v4;
}

- (id)serializedValuesToEncrypt
{
  v3 = [(ICCloudSyncingObject *)self decryptedValues];
  v4 = [v3 mutableCopy];

  if ([v4 count])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__ICCloudSyncingObject_serializedValuesToEncrypt__block_invoke;
    v12[3] = &unk_278196DC0;
    v12[4] = self;
    v5 = v4;
    v13 = v5;
    [v5 enumerateKeysAndObjectsUsingBlock:v12];
    v11 = 0;
    v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:0 error:&v11];
    v7 = v11;
    v8 = v7;
    if (!v6 || v7)
    {
      v9 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ICCloudSyncingObject serializedValuesToEncrypt];
      }

      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObject serializedValuesToEncrypt]" simulateCrash:1 showAlert:1 format:@"Error converting decrypted values to JSON"];
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __49__ICCloudSyncingObject_serializedValuesToEncrypt__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([*(a1 + 32) isEncryptableKeyBinaryData:v5] & 1) == 0)
    {
      v7 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __49__ICCloudSyncingObject_serializedValuesToEncrypt__block_invoke_cold_1();
      }
    }

    v8 = [v6 base64EncodedStringWithOptions:0];
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v5];
  }
}

- (void)deserializeAndMergeValues:(id)a3
{
  if (a3)
  {
    v10 = 0;
    v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:0 error:&v10];
    v5 = v10;
    v6 = v5;
    if (v4)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __50__ICCloudSyncingObject_deserializeAndMergeValues___block_invoke;
      v9[3] = &unk_278196DE8;
      v9[4] = self;
      [v4 enumerateKeysAndObjectsUsingBlock:v9];
    }

    else
    {
      v8 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [ICCloudSyncingObject deserializeAndMergeValues:];
      }

      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObject deserializeAndMergeValues:]" simulateCrash:1 showAlert:1 format:@"Error parsing decrypted JSON"];
    }
  }
}

void __50__ICCloudSyncingObject_deserializeAndMergeValues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if ([*(a1 + 32) isEncryptableKeyBinaryData:v5])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v6 options:0];
  }

  v8 = [*(a1 + 32) decryptedValues];
  v9 = [v8 objectForKeyedSubscript:v5];

  v10 = [*(a1 + 32) mergeDecryptedValue:v7 withOldValue:v9 forKey:v5];
  if (v10 != v9)
  {
    v11 = [*(a1 + 32) mutableDecryptedValues];
    [v11 setObject:v10 forKeyedSubscript:v5];
  }

  if ([v5 isEqualToString:@"mergeableData"])
  {
    objc_opt_class();
    v12 = ICDynamicCast();
    if (v12)
    {
      v13 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v12 length];
        v15 = [*(a1 + 32) className];
        v16 = [*(a1 + 32) identifier];
        v19 = 134218498;
        v20 = v14;
        v21 = 2112;
        v22 = v15;
        v23 = 2112;
        v24 = v16;
        _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_INFO, "Decrypted mergeableData size is %lu for %@ (%@)", &v19, 0x20u);
      }
    }

    else
    {
      if (!v7)
      {
LABEL_13:

        goto LABEL_14;
      }

      v13 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v17 = [*(a1 + 32) className];
        v18 = [*(a1 + 32) identifier];
        v19 = 138412546;
        v20 = v17;
        v21 = 2112;
        v22 = v18;
        _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_INFO, "Decrypted mergeableData is not NSData for %@ (%@)", &v19, 0x16u);
      }
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (void)initializeCryptoProperties
{
  v4 = [(ICCloudSyncingObject *)self cryptoStrategy];
  v3 = [(ICCloudSyncingObject *)self parentEncryptableObject];
  [v4 initializeCryptoPropertiesFromObject:v3];
}

- (id)mergeDecryptedValue:(id)a3 withOldValue:(id)a4 forKey:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_opt_class() mergeableWallClockValueKeyPaths];
  v12 = [v11 containsObject:v10];

  if (v12 && v9)
  {
    v13 = [[ICTTMergeableWallClockValue alloc] initWithData:v9];
    v14 = [[ICTTMergeableWallClockValue alloc] initWithData:v8];
    if (![(ICTTMergeableWallClockValue *)v13 merge:v14])
    {
      v15 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ICCloudSyncingObject mergeDecryptedValue:v10 withOldValue:self forKey:?];
      }
    }

    v16 = [(ICTTMergeableWallClockValue *)v13 serialize];
  }

  else
  {
    v16 = v8;
  }

  return v16;
}

- (id)decryptedValueForKey:(id)a3
{
  v4 = a3;
  if ([(ICCloudSyncingObject *)self isAuthenticated])
  {
    v5 = [(ICCloudSyncingObject *)self cryptoStrategy];
    [v5 loadDecryptedValuesIfNecessary];
  }

  v6 = [(ICCloudSyncingObject *)self decryptedValues];
  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (void)setDecryptedValue:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(ICCloudSyncingObject *)self isAuthenticated])
  {
    v8 = [(ICCloudSyncingObject *)self cryptoStrategy];
    [v8 loadDecryptedValuesIfNecessary];

    v9 = [(ICCloudSyncingObject *)self mutableDecryptedValues];
    [v9 setObject:v7 forKeyedSubscript:v6];

    v10 = [(ICCloudSyncingObject *)self cryptoStrategy];
    [v10 saveEncryptedJSON];
  }

  else
  {
    v10 = [(ICCloudSyncingObject *)self mutableDecryptedValues];
    [v10 setObject:v7 forKeyedSubscript:v6];
  }
}

- (id)valueForEncryptableKey:(id)a3
{
  v4 = a3;
  [(ICCloudSyncingObject *)self willAccessValueForKey:v4];
  v5 = [(ICCloudSyncingObject *)self primitiveValueForEncryptableKey:v4];
  [(ICCloudSyncingObject *)self didAccessValueForKey:v4];

  return v5;
}

- (id)primitiveValueForEncryptableKey:(id)a3
{
  v4 = a3;
  if ([(ICCloudSyncingObject *)self isPasswordProtected])
  {
    [(ICCloudSyncingObject *)self decryptedValueForKey:v4];
  }

  else
  {
    [(ICCloudSyncingObject *)self primitiveValueForKey:v4];
  }
  v5 = ;

  return v5;
}

- (void)setValue:(id)a3 forEncryptableKey:(id)a4
{
  v7 = a4;
  v6 = a3;
  [(ICCloudSyncingObject *)self willChangeValueForKey:v7];
  [(ICCloudSyncingObject *)self setPrimitiveValue:v6 forEncryptableKey:v7];

  [(ICCloudSyncingObject *)self didChangeValueForKey:v7];
}

- (void)setPrimitiveValue:(id)a3 forEncryptableKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(ICCloudSyncingObject *)self isPasswordProtected])
  {
    [(ICCloudSyncingObject *)self setDecryptedValue:v7 forKey:v6];
  }

  else
  {
    [(ICCloudSyncingObject *)self setPrimitiveValue:v7 forKey:v6];
  }
}

- (BOOL)isEncryptableKeyBinaryData:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"sidecarMainKey"] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"activityEventsData"))
  {
    v4 = 1;
  }

  else
  {
    v5 = [objc_opt_class() mergeableWallClockValueKeyPaths];
    v4 = [v5 containsObject:v3];
  }

  return v4;
}

- (void)applyRandomCryptoGooIfNeeded
{
  v3 = [(ICCloudSyncingObject *)self cryptoTag];
  v4 = [v3 length];

  if (!v4)
  {
    v5 = [MEMORY[0x277CBEA90] ic_random128BitData:0];
    [(ICCloudSyncingObject *)self setCryptoTag:v5];
  }

  v6 = [(ICCloudSyncingObject *)self cryptoInitializationVector];
  v7 = [v6 length];

  if (!v7)
  {
    v8 = [MEMORY[0x277CBEA90] ic_random128BitData:0];
    [(ICCloudSyncingObject *)self setCryptoInitializationVector:v8];
  }

  v9 = [(ICCloudSyncingObject *)self cryptoWrappedKey];
  v10 = [v9 length];

  if (!v10)
  {
    v11 = [MEMORY[0x277CBEA90] ic_random128BitData:0];
    [(ICCloudSyncingObject *)self setCryptoWrappedKey:v11];
  }

  v12 = [(ICCloudSyncingObject *)self cryptoSalt];
  v13 = [v12 length];

  if (!v13)
  {
    v14 = [MEMORY[0x277CBEA90] ic_random128BitData:0];
    [(ICCloudSyncingObject *)self setCryptoSalt:v14];
  }
}

- (void)setHasMissingKeychainItem:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  if ([(ICCloudSyncingObject *)self hasMissingKeychainItem]!= a3)
  {
    v5 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(ICCloudSyncingObject *)self shortLoggingDescription];
      v7 = [MEMORY[0x277CCABB0] numberWithBool:v3];
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Setting object has missing Keychain item… {object: %@, hasMissingKeychainItem: %@}", &v12, 0x16u);
    }

    v8 = NSStringFromSelector(sel_hasMissingKeychainItem);
    [(ICCloudSyncingObject *)self willChangeValueForKey:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    v10 = NSStringFromSelector(sel_hasMissingKeychainItem);
    [(ICCloudSyncingObject *)self setPrimitiveValue:v9 forKey:v10];

    v11 = NSStringFromSelector(sel_hasMissingKeychainItem);
    [(ICCloudSyncingObject *)self didChangeValueForKey:v11];
  }
}

- (void)authenticationStateWillDeauthenticate:(id)a3
{
  v11 = a3;
  if (([(ICCloudSyncingObject *)self ic_isTransitioning]& 1) == 0)
  {
    objc_opt_class();
    v4 = [v11 userInfo];
    v5 = [v4 objectForKeyedSubscript:@"ICAuthenticationStateKeyObjectID"];
    v6 = ICCheckedDynamicCast();

    if (!v6 || (-[ICCloudSyncingObject objectID](self, "objectID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isEqual:v7], v7, v8))
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v9 = [(ICCloudSyncingObject *)self managedObjectContext];
        if ([v9 concurrencyType] == 2)
        {
          v10 = [(ICCloudSyncingObject *)self isAuthenticated];

          if (v10)
          {
            [(ICCloudSyncingObject *)self persistPendingChanges];
          }
        }

        else
        {
        }
      }
    }
  }
}

- (void)authenticationStateDidDeauthenticate:(id)a3
{
  v4 = a3;
  if (([(ICCloudSyncingObject *)self ic_isTransitioning]& 1) == 0)
  {
    objc_opt_class();
    v5 = [v4 userInfo];
    v6 = [v5 objectForKeyedSubscript:@"ICAuthenticationStateKeyObjectID"];
    v7 = ICCheckedDynamicCast();

    if (!v7 || (-[ICCloudSyncingObject objectID](self, "objectID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v9))
    {
      v10 = [(ICCloudSyncingObject *)self managedObjectContext];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __61__ICCloudSyncingObject_authenticationStateDidDeauthenticate___block_invoke;
      v11[3] = &unk_278194B00;
      v11[4] = self;
      [v10 performBlock:v11];
    }
  }
}

uint64_t __61__ICCloudSyncingObject_authenticationStateDidDeauthenticate___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) ic_isTransitioning];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) isPasswordProtected];
    if (result)
    {
      v3 = *(a1 + 32);

      return [v3 clearDecryptedData];
    }
  }

  return result;
}

+ (id)versionsByOperationQueue
{
  if (versionsByOperationQueue_onceToken != -1)
  {
    +[ICCloudSyncingObject versionsByOperationQueue];
  }

  v3 = versionsByOperationQueue_sVersionsByOperationQueue;

  return v3;
}

void __48__ICCloudSyncingObject_versionsByOperationQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.notes.cloud.versions-by-operation", v2);
  v1 = versionsByOperationQueue_sVersionsByOperationQueue;
  versionsByOperationQueue_sVersionsByOperationQueue = v0;
}

+ (id)versionsByRecordIDByOperation
{
  if (versionsByRecordIDByOperation_onceToken != -1)
  {
    +[ICCloudSyncingObject versionsByRecordIDByOperation];
  }

  v3 = versionsByRecordIDByOperation_sVersionsByRecordIDByOperation;

  return v3;
}

void __53__ICCloudSyncingObject_versionsByRecordIDByOperation__block_invoke()
{
  v0 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  v1 = versionsByRecordIDByOperation_sVersionsByRecordIDByOperation;
  versionsByRecordIDByOperation_sVersionsByRecordIDByOperation = v0;
}

- (int64_t)versionForOperation:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = [(ICCloudSyncingObject *)self recordID];
  v6 = [objc_opt_class() versionsByOperationQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__ICCloudSyncingObject_versionForOperation___block_invoke;
  v11[3] = &unk_2781960A8;
  v11[4] = self;
  v12 = v4;
  v13 = v5;
  v14 = &v15;
  v7 = v5;
  v8 = v4;
  dispatch_sync(v6, v11);

  v9 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v9;
}

void __44__ICCloudSyncingObject_versionForOperation___block_invoke(void *a1)
{
  v2 = [objc_opt_class() versionsByRecordIDByOperation];
  v4 = [v2 objectForKey:a1[5]];

  if (a1[6])
  {
    v3 = [v4 objectForKeyedSubscript:?];
    *(*(a1[7] + 8) + 24) = [v3 longLongValue];
  }
}

- (void)setVersion:(int64_t)a3 forOperation:(id)a4
{
  v6 = a4;
  v7 = [objc_opt_class() versionsByOperationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ICCloudSyncingObject_setVersion_forOperation___block_invoke;
  block[3] = &unk_278194F70;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_sync(v7, block);
}

void __48__ICCloudSyncingObject_setVersion_forOperation___block_invoke(uint64_t a1)
{
  v5 = [objc_opt_class() versionsByRecordIDByOperation];
  v2 = [v5 objectForKey:*(a1 + 40)];
  if (!v2)
  {
    v2 = [MEMORY[0x277CBEB38] dictionary];
    [v5 setObject:v2 forKey:*(a1 + 40)];
  }

  v3 = [*(a1 + 32) recordID];
  if (v3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 48)];
    [v2 setObject:v4 forKeyedSubscript:v3];
  }
}

- (int64_t)isPushingSameOrLaterThanVersion:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = [objc_opt_class() versionsByOperationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ICCloudSyncingObject_isPushingSameOrLaterThanVersion___block_invoke;
  block[3] = &unk_278196870;
  block[4] = self;
  block[5] = &v9;
  block[6] = a3;
  dispatch_sync(v5, block);

  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __56__ICCloudSyncingObject_isPushingSameOrLaterThanVersion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) recordID];
  if (v2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [objc_opt_class() versionsByRecordIDByOperation];
    v4 = [v3 objectEnumerator];

    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v11 + 1) + 8 * i) objectForKeyedSubscript:v2];
          v10 = v9;
          if (v9 && [v9 longLongValue] >= *(a1 + 48))
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;

            goto LABEL_13;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

+ (id)deletedByThisDeviceOperationQueue
{
  if (deletedByThisDeviceOperationQueue_onceToken != -1)
  {
    +[ICCloudSyncingObject deletedByThisDeviceOperationQueue];
  }

  v3 = deletedByThisDeviceOperationQueue_sDeletedByThisDeviceOperationQueue;

  return v3;
}

void __57__ICCloudSyncingObject_deletedByThisDeviceOperationQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.notes.cloud.deleted-by-this-device", v2);
  v1 = deletedByThisDeviceOperationQueue_sDeletedByThisDeviceOperationQueue;
  deletedByThisDeviceOperationQueue_sDeletedByThisDeviceOperationQueue = v0;
}

+ (id)deletedByThisDeviceSet
{
  if (deletedByThisDeviceSet_onceToken != -1)
  {
    +[ICCloudSyncingObject deletedByThisDeviceSet];
  }

  v3 = deletedByThisDeviceSet_sDeletedByThisDeviceMutableSet;

  return v3;
}

void __46__ICCloudSyncingObject_deletedByThisDeviceSet__block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = deletedByThisDeviceSet_sDeletedByThisDeviceMutableSet;
  deletedByThisDeviceSet_sDeletedByThisDeviceMutableSet = v0;
}

- (void)setWasRecentlyDeletedByThisDevice:(BOOL)a3
{
  [(ICCloudSyncingObject *)self ic_obtainPermanentObjectIDIfNecessary];
  v5 = [objc_opt_class() deletedByThisDeviceOperationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__ICCloudSyncingObject_setWasRecentlyDeletedByThisDevice___block_invoke;
  v6[3] = &unk_278196E10;
  v7 = a3;
  v6[4] = self;
  dispatch_sync(v5, v6);
}

void __58__ICCloudSyncingObject_setWasRecentlyDeletedByThisDevice___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [objc_opt_class() deletedByThisDeviceSet];
  v3 = [*(a1 + 32) objectID];
  if (v2 == 1)
  {
    [v4 addObject:v3];
  }

  else
  {
    [v4 removeObject:v3];
  }
}

- (BOOL)wasRecentlyDeletedByThisDevice
{
  v2 = self;
  [(ICCloudSyncingObject *)self ic_obtainPermanentObjectIDIfNecessary];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [objc_opt_class() deletedByThisDeviceOperationQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__ICCloudSyncingObject_wasRecentlyDeletedByThisDevice__block_invoke;
  v5[3] = &unk_278194DE8;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __54__ICCloudSyncingObject_wasRecentlyDeletedByThisDevice__block_invoke(uint64_t a1)
{
  v3 = [objc_opt_class() deletedByThisDeviceSet];
  v2 = [*(a1 + 32) objectID];
  *(*(*(a1 + 40) + 8) + 24) = [v3 containsObject:v2];
}

+ (void)resetAllDeletedByThisDeviceProperties
{
  v3 = [objc_opt_class() deletedByThisDeviceOperationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ICCloudSyncingObject_resetAllDeletedByThisDeviceProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_sync(v3, block);
}

void __61__ICCloudSyncingObject_resetAllDeletedByThisDeviceProperties__block_invoke()
{
  v0 = [objc_opt_class() deletedByThisDeviceSet];
  [v0 removeAllObjects];
}

- (void)setInCloud:(BOOL)a3
{
  v3 = a3;
  v4 = [(ICCloudSyncingObject *)self cloudState];
  [v4 setInCloud:v3];
}

- (BOOL)isInCloud
{
  v2 = [(ICCloudSyncingObject *)self cloudState];
  v3 = [v2 isInCloud];

  return v3;
}

- (BOOL)isVisible
{
  if (([(ICCloudSyncingObject *)self markedForDeletion]& 1) != 0 || ([(ICCloudSyncingObject *)self needsInitialFetchFromCloud]& 1) != 0)
  {
    return 0;
  }

  else
  {
    return ![(ICCloudSyncingObject *)self isDeprecated];
  }
}

- (BOOL)needsInitialFetchFromCloudCheckingParent
{
  if (([(ICCloudSyncingObject *)self needsInitialFetchFromCloud]& 1) != 0)
  {
    return 1;
  }

  v4 = [(ICCloudSyncingObject *)self parentCloudObjectForMinimumSupportedVersionPropagation];
  v5 = [v4 needsInitialFetchFromCloudCheckingParent];

  return v5;
}

+ (id)recordSystemFieldsTransformer
{
  if (recordSystemFieldsTransformer_onceToken != -1)
  {
    +[ICCloudSyncingObject recordSystemFieldsTransformer];
  }

  v3 = recordSystemFieldsTransformer_recordSystemFieldsTransformer;

  return v3;
}

void __53__ICCloudSyncingObject_recordSystemFieldsTransformer__block_invoke()
{
  v0 = [MEMORY[0x277CBC5A0] ic_systemFieldsValueTransformer];
  v1 = recordSystemFieldsTransformer_recordSystemFieldsTransformer;
  recordSystemFieldsTransformer_recordSystemFieldsTransformer = v0;
}

+ (id)shareSystemFieldsTransformer
{
  if (shareSystemFieldsTransformer_onceToken != -1)
  {
    +[ICCloudSyncingObject shareSystemFieldsTransformer];
  }

  v3 = shareSystemFieldsTransformer_shareSystemFieldsTransformer;

  return v3;
}

void __52__ICCloudSyncingObject_shareSystemFieldsTransformer__block_invoke()
{
  v0 = [MEMORY[0x277CBC680] ic_systemFieldsValueTransformer];
  v1 = shareSystemFieldsTransformer_shareSystemFieldsTransformer;
  shareSystemFieldsTransformer_shareSystemFieldsTransformer = v0;
}

- (void)setServerRecord:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(ICCloudSyncingObject *)self recordName];
  v7 = [v5 recordID];
  v8 = [v7 recordName];

  if (v6 && v8 && ([v8 ic_isCaseInsensitiveEqualToString:v6] & 1) == 0)
  {
    v14 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObject setServerRecord:];
    }

    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObject setServerRecord:]" simulateCrash:1 showAlert:1 format:@"Setting server record with mismatched record name"];
  }

  else if (([(CKRecord *)self->_serverRecord isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_serverRecord, a3);
    if (v5)
    {
      v9 = [objc_opt_class() recordSystemFieldsTransformer];
      v10 = [v9 transformedValue:v5];
      [(ICCloudSyncingObject *)self setServerRecordData:v10];

      v11 = [v5 recordID];
      v12 = [v11 zoneID];
      v13 = [v12 ownerName];

      if (([v13 isEqualToString:*MEMORY[0x277CBBF28]]& 1) == 0)
      {
        [(ICCloudSyncingObject *)self setZoneOwnerName:v13];
      }
    }

    else
    {
      [(ICCloudSyncingObject *)self setServerRecordData:0];
      v13 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = [(ICCloudSyncingObject *)self shortLoggingDescription];
        v16 = 138412290;
        v17 = v15;
        _os_log_impl(&dword_214D51000, v13, OS_LOG_TYPE_INFO, "Clearing serverRecord for: %@", &v16, 0xCu);
      }
    }
  }
}

- (void)setServerShare:(id)a3
{
  v7 = a3;
  if (([(CKShare *)self->_serverShare isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_serverShare, a3);
    if (v7)
    {
      v5 = [objc_opt_class() shareSystemFieldsTransformer];
      v6 = [v5 transformedValue:v7];
      [(ICCloudSyncingObject *)self setServerShareData:v6];
    }

    else
    {
      [(ICCloudSyncingObject *)self setServerShareData:0];
    }

    [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
  }
}

- (void)setUserSpecificServerRecord:(id)a3
{
  v5 = a3;
  v6 = [(ICCloudSyncingObject *)self recordName];
  v7 = v6;
  if (!v5 || !v6)
  {
LABEL_6:
    if (([(CKRecord *)self->_userSpecificServerRecord isEqual:v5]& 1) == 0)
    {
      objc_storeStrong(&self->_userSpecificServerRecord, a3);
      if (v5)
      {
        v14 = [objc_opt_class() recordSystemFieldsTransformer];
        v15 = [v14 transformedValue:v5];
        [(ICCloudSyncingObject *)self setUserSpecificServerRecordData:v15];
      }

      else
      {
        [(ICCloudSyncingObject *)self setUserSpecificServerRecordData:0];
      }
    }

    goto LABEL_13;
  }

  v8 = [ICUserSpecificRecordIDParser alloc];
  v9 = [v5 recordID];
  v10 = [v9 recordName];
  v11 = [(ICUserSpecificRecordIDParser *)v8 initWithRecordName:v10];
  v12 = [(ICUserSpecificRecordIDParser *)v11 sharedRecordID];
  v13 = [v12 recordName];

  if (!v13 || ([v13 ic_isCaseInsensitiveEqualToString:v7] & 1) != 0)
  {

    goto LABEL_6;
  }

  v16 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [ICCloudSyncingObject setUserSpecificServerRecord:];
  }

  [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObject setUserSpecificServerRecord:]" simulateCrash:1 showAlert:1 format:@"Setting user-specific server record with mismatched shared record name"];
LABEL_13:
}

- (CKRecord)userSpecificServerRecord
{
  userSpecificServerRecord = self->_userSpecificServerRecord;
  if (!userSpecificServerRecord)
  {
    v4 = [(ICCloudSyncingObject *)self userSpecificServerRecordData];
    if (v4)
    {
      v5 = [objc_opt_class() recordSystemFieldsTransformer];
      v6 = [v5 reverseTransformedValue:v4];
      v7 = self->_userSpecificServerRecord;
      self->_userSpecificServerRecord = v6;
    }

    userSpecificServerRecord = self->_userSpecificServerRecord;
  }

  return userSpecificServerRecord;
}

- (void)setNeedsInitialFetchFromCloud:(BOOL)a3
{
  v3 = a3;
  if ([(ICCloudSyncingObject *)self needsInitialFetchFromCloud]!= a3)
  {
    [(ICCloudSyncingObject *)self willChangeValueForKey:@"needsInitialFetchFromCloud"];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    [(ICCloudSyncingObject *)self setPrimitiveValue:v5 forKey:@"needsInitialFetchFromCloud"];

    [(ICCloudSyncingObject *)self didChangeValueForKey:@"needsInitialFetchFromCloud"];
    if (v3)
    {

      [(ICCloudSyncingObject *)self clearChangeCountWithReason:@"Set as needing initial fetch"];
    }
  }
}

- (BOOL)hasAllMandatoryFields
{
  v2 = [(ICCloudSyncingObject *)self identifier];
  v3 = [v2 length] != 0;

  return v3;
}

- (NSString)debugDescription
{
  v4.receiver = self;
  v4.super_class = ICCloudSyncingObject;
  v2 = [(ICCloudSyncingObject *)&v4 description];

  return v2;
}

- (id)ic_loggingValues
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(ICCloudSyncingObject *)self managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__ICCloudSyncingObject_ic_loggingValues__block_invoke;
  v8[3] = &unk_278194AD8;
  v5 = v3;
  v9 = v5;
  v10 = self;
  [v4 performBlockAndWait:v8];

  v6 = v5;
  return v5;
}

void __40__ICCloudSyncingObject_ic_loggingValues__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [*(a1 + 40) cloudState];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "inCloud")}];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"inCloud"];

  v5 = MEMORY[0x277CCABB0];
  v6 = [*(a1 + 40) cloudState];
  v7 = [v5 numberWithLongLong:{objc_msgSend(v6, "latestVersionSyncedToCloud")}];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:@"latestVersionSyncedToCloud"];

  v8 = MEMORY[0x277CCABB0];
  v9 = [*(a1 + 40) cloudState];
  v10 = [v8 numberWithLongLong:{objc_msgSend(v9, "currentLocalVersion")}];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:@"currentLocalVersion"];

  v11 = [*(a1 + 40) cloudState];
  v12 = [v11 localVersionDate];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"nil";
  }

  [*(a1 + 32) setObject:v14 forKeyedSubscript:@"localVersionDate"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "hasAllMandatoryFields")}];
  [*(a1 + 32) setObject:v15 forKeyedSubscript:@"hasAllMandatoryFields"];

  if ([*(a1 + 40) wantsUserSpecificRecord])
  {
    v16 = [*(a1 + 40) userSpecificRecordID];
    v17 = [v16 recordName];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = @"nil";
    }

    [*(a1 + 32) setObject:v19 forKeyedSubscript:@"userSpecificRecordID"];
  }

  if ([*(a1 + 40) isPasswordProtected])
  {
    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isPasswordProtected"];
    v20 = [*(a1 + 40) cryptoInitializationVector];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = @"nil";
    }

    [*(a1 + 32) setObject:v22 forKeyedSubscript:@"cryptoInitializationVector"];

    v23 = [*(a1 + 40) cryptoTag];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = @"nil";
    }

    [*(a1 + 32) setObject:v25 forKeyedSubscript:@"cryptoTag"];

    v26 = [*(a1 + 40) cryptoWrappedKey];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = @"nil";
    }

    [*(a1 + 32) setObject:v28 forKeyedSubscript:@"cryptoWrappedKey"];
  }

  if ([*(a1 + 40) markedForDeletion])
  {
    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"markedForDeletion"];
  }

  if ([*(a1 + 40) needsToBePushedToCloud])
  {
    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"needsToBePushedToCloud"];
  }

  if ([*(a1 + 40) needsToBeFetchedFromCloud])
  {
    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"needsToBeFetchedFromCloud"];
  }

  if ([*(a1 + 40) needsInitialFetchFromCloud])
  {
    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"needsInitialFetchFromCloud"];
  }

  if ([*(a1 + 40) needsToBeDeletedFromCloud])
  {
    [*(a1 + 32) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"needsToBeDeletedFromCloud"];
  }

  if ([*(a1 + 40) failedToSyncCount] >= 1)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "failedToSyncCount")}];
    [*(a1 + 32) setObject:v29 forKeyedSubscript:@"failedToSyncCount"];
  }

  if ([*(a1 + 40) numberOfPushAttemptsToWaitCount] >= 1)
  {
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "numberOfPushAttemptsToWaitCount")}];
    [*(a1 + 32) setObject:v30 forKeyedSubscript:@"numberOfPushAttemptsToWaitCount"];
  }

  v31 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 40), "minimumSupportedNotesVersion")}];
  [*(a1 + 32) setObject:v31 forKeyedSubscript:@"minimumSupportedNotesVersion"];

  v32 = [*(a1 + 40) serverShare];

  if (v32)
  {
    v33 = [*(a1 + 40) serverShare];
    v34 = [v33 ic_loggingDescription];
    [*(a1 + 32) setObject:v34 forKeyedSubscript:@"serverShare"];
  }

  v35 = [*(a1 + 40) serverRecord];

  if (v35)
  {
    v37 = [*(a1 + 40) serverRecord];
    v36 = [v37 ic_loggingDescription];
    [*(a1 + 32) setObject:v36 forKeyedSubscript:@"serverRecord"];
  }
}

+ (id)allPasswordProtectedObjectsInContext:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = [v3 predicateWithFormat:@"isPasswordProtected==YES"];
  v6 = [ICCloudSyncingObject ic_objectsMatchingPredicate:v5 context:v4];

  return v6;
}

- (BOOL)trustsTimestampsFromReplicaID:(id)a3
{
  v3 = [(ICCloudSyncingObject *)self notesVersionForReplicaID:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue] > 5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)redactAuthorAttributionsToCurrentUser
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(ICCloudSyncingObject *)self childCloudObjects];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) redactAuthorAttributionsToCurrentUser];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)cloudContext
{
  v2 = [(ICCloudSyncingObject *)self appContext];
  v3 = [v2 cloudContext];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[ICCloudContext sharedContext];
  }

  v6 = v5;

  return v6;
}

- (BOOL)hasContextOptions:(unint64_t)a3
{
  v5 = [(ICCloudSyncingObject *)self appContext];
  if (v5)
  {
    [(ICCloudSyncingObject *)self appContext];
  }

  else
  {
    +[ICNoteContext sharedContext];
  }
  v6 = ;
  v7 = [v6 hasContextOptions:a3];

  return v7;
}

- (void)addEmailAddressesAndPhoneNumbersToAttributeSet:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [(ICCloudSyncingObject *)self serverShareCheckingParent];
  v7 = [v6 participants];

  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (([v12 isCurrentUser] & 1) == 0)
        {
          v13 = [v12 userIdentity];
          v14 = [v13 lookupInfo];
          v15 = [v14 emailAddress];
          [v4 ic_addNonNilObject:v15];

          v16 = [v12 userIdentity];
          v17 = [v16 lookupInfo];
          v18 = [v17 phoneNumber];
          [v5 ic_addNonNilObject:v18];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  if ([v4 count])
  {
    v19 = [v4 copy];
    [v21 setEmailAddresses:v19];
  }

  if ([v5 count])
  {
    v20 = [v5 copy];
    [v21 setPhoneNumbers:v20];
  }
}

- (NSDate)objc_shareTimestamp
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = self;
  ICCloudSyncingObject.shareTimestamp.getter(v5);

  v7 = sub_2150A3960();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_2150A38F0();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (id)objc_timestampForChecklistItemWithIdentifier:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_2150A4AD0();
  v9 = v8;
  v10 = self;
  ICCloudSyncingObject.timestampForChecklistItem(identifier:)(v7, v9, v6);

  v11 = sub_2150A3960();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v6, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = sub_2150A38F0();
    (*(v12 + 8))(v6, v11);
    v14 = v15;
  }

  return v14;
}

- (id)objc_userIDForChecklistItemWithIdentifier:(id)a3
{
  v4 = sub_2150A4AD0();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  object = ICCloudSyncingObject.userIdForChecklistItem(identifier:)(v8).value._object;

  if (object)
  {
    v10 = sub_2150A4A90();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)persistMoveActivityEventForObject:(id)a3 fromParentObject:(id)a4 toParentObject:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = ICCloudSyncingObject.persistMoveActivityEvent(forObject:fromParentObject:toParentObject:)(v8, a4, a5);

  return v12;
}

- (id)persistCopyActivityEventForObject:(id)a3 originalObject:(id)a4 fromParentObject:(id)a5 toParentObject:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  v15 = ICCloudSyncingObject.persistCopyActivityEvent(forObject:originalObject:fromParentObject:toParentObject:)(v10, v11, a5, a6);

  return v15;
}

- (id)persistRenameActivityEventForObject:(id)a3
{
  v5 = sub_2150A3960();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v12 = a3;
  v13 = self;
  sub_2150A3950();
  v14 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v11, a3, v8);

  (*(v6 + 8))(v8, v5);
  sub_2150742A4(v11, type metadata accessor for PersistedActivityEvent.Activities);

  return v14;
}

- (id)persistAddParticipantActivityEventForObject:(id)a3 participant:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = ICCloudSyncingObject.persistAddParticipantActivityEvent(forObject:participant:)(v6, v7);

  return v9;
}

- (id)persistRemoveParticipantActivityEventForObject:(id)a3 participant:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = ICCloudSyncingObject.persistRemoveParticipantActivityEvent(forObject:participant:)(v6, v7);

  return v9;
}

- (id)persistToggleChecklistItemActivityEventForObject:(id)a3 todo:(id)a4
{
  v7 = sub_2150A3960();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B20) + 48);
  v15 = a3;
  v16 = a4;
  v17 = self;
  v18 = [v16 uuid];
  sub_2150A39C0();

  v13[v14] = [v16 done];
  swift_storeEnumTagMultiPayload();
  sub_2150A3950();
  v19 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v13, v15, v10);

  (*(v8 + 8))(v10, v7);
  sub_2150742A4(v13, type metadata accessor for PersistedActivityEvent.Activities);

  return v19;
}

- (id)persistMentionActivityEventForObject:(id)a3 mentionAttachments:(id)a4
{
  sub_214D55670(0, &qword_27CA44B48);
  v6 = sub_2150A4ED0();
  v7 = a3;
  v8 = self;
  v9 = ICCloudSyncingObject.persistMentionActivityEvent(forObject:mentionAttachments:)(v7, v6);

  return v9;
}

- (void)objc_removeAllCloudSyncingObjectActivityEvents
{
  v2 = self;
  ICCloudSyncingObject.removeAllCloudSyncingObjectActivityEvents()();
}

+ (void)objc_removeAllCloudSyncingObjectActivityEventsForUnsharedObjectsInContext:(id)a3
{
  v4 = swift_allocObject();
  *(v4 + 16) = a3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21507432C;
  *(v5 + 24) = v4;
  v8[4] = sub_214F43F50;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_214F34100;
  v8[3] = &block_descriptor_31;
  v6 = _Block_copy(v8);
  v7 = a3;

  [v7 performBlockAndWait_];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

- (void)cloudAccount
{
  OUTLINED_FUNCTION_22();
  a20 = v23;
  a21 = v24;
  v26 = v25;
  a13 = *MEMORY[0x277D85DE8];
  v28 = [v27 parentCloudObject];
  [v28 ic_loggingIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_3();
  objc_opt_class();
  v29 = [OUTLINED_FUNCTION_19() ic_loggingIdentifier];
  OUTLINED_FUNCTION_4_0();
  *(&a10 + 6) = v22;
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(&dword_214D51000, v26, OS_LOG_TYPE_ERROR, "Failed to find cloud account from PCS parent %@ for %@ %@", &a9, 0x20u);

  OUTLINED_FUNCTION_23();
}

- (void)assignToPersistentStore:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)updateChangeCountWithReason:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)updateChangeCountWithReason:.cold.2()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_20();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)updateChangeCountWithReason:.cold.3()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_20();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)unsafelyUpdateChangeCountWithReason:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)clearChangeCountWithReason:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)unsafelyClearChangeCountWithReason:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)updateUserSpecificChangeCountWithReason:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)updateUserSpecificChangeCountWithReason:.cold.2()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)updateUserSpecificChangeCountWithReason:.cold.3()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)recordID
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)newObjectWithIdentifier:context:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)newObjectWithIdentifier:(void *)a1 context:(uint64_t)a2 .cold.2(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)makeCloudKitRecordForApproach:mergeableFieldState:.cold.1()
{
  OUTLINED_FUNCTION_10();
  [v1 recordName];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() recordID];
  v3 = [v2 recordName];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)makeCloudKitRecordForApproach:(void *)a1 mergeableFieldState:.cold.2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)makeCloudKitRecordForApproach:(void *)a1 mergeableFieldState:.cold.3(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)mergeCloudKitRecord:accountID:approach:mergeableFieldState:.cold.1()
{
  OUTLINED_FUNCTION_10();
  [v1 recordID];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() recordID];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)mergeCloudKitRecord:accountID:approach:mergeableFieldState:.cold.2()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 ic_loggingIdentifier];
  OUTLINED_FUNCTION_2();
  v3 = v2;
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)mergeCloudKitRecord:(void *)a1 accountID:approach:mergeableFieldState:.cold.3(void *a1)
{
  v6 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x12u);
}

- (void)mergeCloudKitRecord:(void *)a1 accountID:approach:mergeableFieldState:.cold.4(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)unappliedEncryptedRecord
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)setUnappliedEncryptedRecord:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v2 = [v1 shortLoggingDescription];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:v0 != 0];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);
}

- (void)setUnappliedEncryptedRecord:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setUnappliedEncryptedRecord:.cold.3()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)mergeCryptoFieldsFromRecord:.cold.1()
{
  OUTLINED_FUNCTION_10();
  [v1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() ic_loggingDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)needsToBePushedToCloud
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)objectWasFetchedFromCloudWithRecord:(void *)a1 accountID:force:.cold.1(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)objectWasFetchedFromCloudWithRecord:(void *)a1 accountID:force:.cold.2(void *a1)
{
  v1 = [a1 ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)objectWasFetchedFromCloudWithRecord:(void *)a1 accountID:force:.cold.3(void *a1)
{
  v1 = [a1 serverShare];
  v2 = [v1 ic_loggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)activityEventsDocument
{
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)requireMinimumSupportedVersionAndPropagateToChildObjects:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [v0 minimumSupportedNotesVersion];
  v1 = [OUTLINED_FUNCTION_3_3() shortLoggingDescription];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)requireMinimumSupportedVersionAndPropagateToChildObjects:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)requireMinimumSupportedVersionAndPropagateToChildObjects:.cold.3()
{
  OUTLINED_FUNCTION_3();
  [v0 minimumSupportedNotesVersion];
  OUTLINED_FUNCTION_4();
  [objc_opt_class() currentNotesVersion];
  v1 = [OUTLINED_FUNCTION_4_2() shortLoggingDescription];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)replicaIDToNotesVersion
{
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded
{
  v1 = [a1 objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)userSpecificRecordID
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)makeUserSpecificCloudKitRecordForApproach:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 recordName];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)didFetchUserSpecificRecord:(uint64_t)a1 accountID:(void *)a2 force:.cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 ic_loggingDescription];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)didFetchUserSpecificRecord:(uint64_t)a1 accountID:(void *)a2 force:.cold.2(uint64_t a1, void *a2)
{
  v2 = [a2 ic_loggingDescription];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)didFetchUserSpecificRecord:accountID:force:.cold.3()
{
  OUTLINED_FUNCTION_10();
  v2 = [v1 userSpecificServerRecord];
  [v2 ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_4_2() ic_loggingDescription];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)didFailToSaveUserSpecificRecordWithID:accountID:error:.cold.1()
{
  OUTLINED_FUNCTION_10();
  [v1 ic_loggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() shortLoggingDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

+ (void)assetForURL:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)assetForTemporaryURL:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_214D51000, v0, OS_LOG_TYPE_DEBUG, "Created temporary asset for file URL: %@", v1, 0xCu);
}

+ (void)deleteTemporaryFilesForAsset:(void *)a1 .cold.2(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)shouldBeDeletedFromLocalDatabase
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setMarkedForDeletion:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v7 = [a2 shortLoggingDescription];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)setServerShareIfNewer:.cold.5()
{
  OUTLINED_FUNCTION_10();
  [v1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_4() ic_loggingDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)markShareDirtyIfNeededWithReason:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v1 = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)cryptoStrategy
{
  OUTLINED_FUNCTION_10();
  objc_opt_class();
  v0 = [OUTLINED_FUNCTION_4() shortLoggingDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)setCryptoTag:.cold.1()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_1();
  v2 = objc_opt_class();
  [OUTLINED_FUNCTION_19() identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() hash];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  OUTLINED_FUNCTION_23();
}

- (void)setCryptoInitializationVector:.cold.1()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_1();
  v2 = objc_opt_class();
  [OUTLINED_FUNCTION_19() identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() hash];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  OUTLINED_FUNCTION_23();
}

- (void)setCryptoSalt:.cold.1()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_1();
  v2 = objc_opt_class();
  [OUTLINED_FUNCTION_19() identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() hash];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  OUTLINED_FUNCTION_23();
}

- (void)setCryptoIterationCount:.cold.1()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_1();
  v1 = objc_opt_class();
  v2 = [OUTLINED_FUNCTION_19() identifier];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  OUTLINED_FUNCTION_23();
}

- (void)setCryptoWrappedKey:.cold.1()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_1();
  v2 = objc_opt_class();
  [OUTLINED_FUNCTION_19() identifier];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() hash];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  OUTLINED_FUNCTION_23();
}

- (void)setEncryptedValuesJSON:.cold.1()
{
  OUTLINED_FUNCTION_10();
  [v1 shortLoggingDescription];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() hash];
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)serializedValuesToEncrypt
{
  OUTLINED_FUNCTION_1();
  [v1 className];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3_3() identifier];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)deserializeAndMergeValues:.cold.1()
{
  OUTLINED_FUNCTION_1();
  [v1 className];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3_3() identifier];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)mergeUnappliedEncryptedRecord
{
  v1 = [a1 shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)mergeDecryptedValue:(uint64_t)a1 withOldValue:(void *)a2 forKey:.cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 ic_loggingDescription];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

@end