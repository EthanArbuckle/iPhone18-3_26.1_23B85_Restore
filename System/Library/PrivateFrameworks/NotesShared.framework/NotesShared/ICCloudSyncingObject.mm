@interface ICCloudSyncingObject
+ (BOOL)hasAnySharedObjectInContext:(id)context;
+ (BOOL)needsToReFetchServerRecordValue:(id)value;
+ (ICCloudSyncingObject)objectWithRecordID:(id)d accountID:(id)iD context:(id)context;
+ (NSArray)bundleIdentifiersWithReplicaID;
+ (NSURL)temporaryAssetDirectoryURL;
+ (id)allCloudObjectIDsInContext:(id)context passingTest:(id)test;
+ (id)allPasswordProtectedObjectsInContext:(id)context;
+ (id)assetForData:(id)data;
+ (id)assetForTemporaryURL:(id)l;
+ (id)assetForURL:(id)l;
+ (id)cloudObjectWithIdentifier:(id)identifier context:(id)context;
+ (id)dataForAsset:(id)asset;
+ (id)deletedByThisDeviceOperationQueue;
+ (id)deletedByThisDeviceSet;
+ (id)failedToSyncCountsByIdentifier;
+ (id)failureCountQueue;
+ (id)mergeUnappliedEncryptedRecordsQueue;
+ (id)newObjectWithIdentifier:(id)identifier context:(id)context;
+ (id)newPlaceholderObjectForRecordName:(id)name accountID:(id)d context:(id)context;
+ (id)numberOfPushAttemptsToWaitByIdentifier;
+ (id)objectsWithRecordID:(id)d context:(id)context;
+ (id)predicateForVisibleObjects;
+ (id)recordSystemFieldsTransformer;
+ (id)shareSystemFieldsTransformer;
+ (id)temporaryAssets;
+ (id)versionsByOperationQueue;
+ (id)versionsByRecordIDByOperation;
+ (int64_t)currentNotesVersion;
+ (void)deleteAllTemporaryAssetFilesForAllObjects;
+ (void)deleteTemporaryAssetFilesForOperation:(id)operation;
+ (void)deleteTemporaryFilesForAsset:(id)asset;
+ (void)enumerateAllCloudObjectsInContext:(id)context predicate:(id)predicate sortDescriptors:(id)descriptors relationshipKeyPathsForPrefetching:(id)prefetching batchSize:(unint64_t)size saveAfterBatch:(BOOL)batch usingBlock:(id)block;
+ (void)objc_removeAllCloudSyncingObjectActivityEventsForUnsharedObjectsInContext:(id)context;
+ (void)resetAllDeletedByThisDeviceProperties;
- (BOOL)canAuthenticate;
- (BOOL)canBeSharedViaICloud;
- (BOOL)canCurrentUserShare;
- (BOOL)canHaveCryptoStrategy;
- (BOOL)cryptoStrategyIsTransient;
- (BOOL)didFailToSaveUserSpecificRecordWithID:(id)d accountID:(id)iD error:(id)error;
- (BOOL)encryptFileFromURL:(id)l toURL:(id)rL;
- (BOOL)hasAllMandatoryFields;
- (BOOL)hasAssetSignaturesForUserSpecific:(BOOL)specific;
- (BOOL)hasContextOptions:(unint64_t)options;
- (BOOL)hasInvitees;
- (BOOL)hasOutOfDateCommonAssetSignatures;
- (BOOL)hasOutOfDateUserSpecificAssetSignatures;
- (BOOL)hasPassphraseSet;
- (BOOL)hasSuccessfullyPushedLatestVersionToCloud;
- (BOOL)hasUserSpecificAssetSignatures;
- (BOOL)isAuthenticated;
- (BOOL)isEncryptableKeyBinaryData:(id)data;
- (BOOL)isInCloud;
- (BOOL)isOwnedByCurrentUser;
- (BOOL)isPassphraseCorrect:(id)correct;
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
- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state;
- (BOOL)mergeEncryptedDataFromRecord:(id)record;
- (BOOL)mergeUnappliedEncryptedRecord;
- (BOOL)mergeUnappliedEncryptedRecordRecursively;
- (BOOL)needsInitialFetchFromCloudCheckingParent;
- (BOOL)needsToBeDeletedFromCloud;
- (BOOL)needsToBePushedToCloud;
- (BOOL)needsToDeleteShare;
- (BOOL)needsToFetchAfterServerRecordChanged:(id)changed;
- (BOOL)objectFailedToBePushedToCloudWithOperation:(id)operation recordID:(id)d error:(id)error;
- (BOOL)shareMatchesRecord;
- (BOOL)shouldBeDeletedFromLocalDatabase;
- (BOOL)shouldBeIgnoredForSync;
- (BOOL)trustsTimestampsFromReplicaID:(id)d;
- (BOOL)updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded;
- (BOOL)validateIdentifier:(id *)identifier error:(id *)error;
- (BOOL)wasCreatedByCurrentUser;
- (BOOL)wasRecentlyDeletedByThisDevice;
- (CKRecord)serverRecord;
- (CKRecord)unappliedEncryptedRecord;
- (CKRecord)userSpecificServerRecord;
- (CKRecordID)recordID;
- (CKRecordID)userSpecificRecordID;
- (CKShare)serverShare;
- (CKShare)serverShareCheckingParent;
- (ICCloudSyncingObject)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
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
- (id)decryptedValueForKey:(id)key;
- (id)deviceManagementRestrictionsManager;
- (id)ic_loggingValues;
- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state;
- (id)makeUserSpecificCloudKitRecordForApproach:(int64_t)approach;
- (id)mergeDecryptedValue:(id)value withOldValue:(id)oldValue forKey:(id)key;
- (id)notesVersionForReplicaID:(id)d;
- (id)objc_timestampForChecklistItemWithIdentifier:(id)identifier;
- (id)objc_userIDForChecklistItemWithIdentifier:(id)identifier;
- (id)outOfDateAssetSignaturesForUserSpecific:(BOOL)specific;
- (id)outOfDateUserSpecificAssetSignatures;
- (id)ownerRecordName;
- (id)participantForHandle:(id)handle;
- (id)participantForUserID:(id)d;
- (id)persistAddParticipantActivityEventForObject:(id)object participant:(id)participant;
- (id)persistCopyActivityEventForObject:(id)object originalObject:(id)originalObject fromParentObject:(id)parentObject toParentObject:(id)toParentObject;
- (id)persistMentionActivityEventForObject:(id)object mentionAttachments:(id)attachments;
- (id)persistMoveActivityEventForObject:(id)object fromParentObject:(id)parentObject toParentObject:(id)toParentObject;
- (id)persistRemoveParticipantActivityEventForObject:(id)object participant:(id)participant;
- (id)persistRenameActivityEventForObject:(id)object;
- (id)persistToggleChecklistItemActivityEventForObject:(id)object todo:(id)todo;
- (id)primaryEncryptedDataFromRecord:(id)record;
- (id)primitiveValueForEncryptableKey:(id)key;
- (id)serializedValuesToEncrypt;
- (id)shareDescription;
- (id)shareDescriptionForShareParticipants:(id)participants;
- (id)sharedOwnerName;
- (id)sharedOwnerRecordName;
- (id)sharedRootObject;
- (id)shortLoggingDescription;
- (id)updateFetchFlagsAndReturnRecordIDsNeedingFetchWithContext:(id)context shouldFetchObject:(id)object;
- (id)validatedCreateCryptoStrategy;
- (id)valueForEncryptableKey:(id)key;
- (id)viewContext;
- (id)workerManagedObjectContext;
- (int64_t)databaseScope;
- (int64_t)failedToSyncCount;
- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)scenario;
- (int64_t)isPushingSameOrLaterThanVersion:(int64_t)version;
- (int64_t)numberOfPushAttemptsToWaitCount;
- (int64_t)versionForOperation:(id)operation;
- (unint64_t)mergeActivityEventsDocument:(id)document;
- (unint64_t)mergeReplicaIDToNotesVersion:(id)version;
- (unint64_t)numberOfAssetsInTemporaryRecord:(id)record;
- (unint64_t)numberOfCommonRecordAssets;
- (unint64_t)numberOfUserSpecificRecordAssets;
- (void)activityEventsDocument;
- (void)addAuthenticationStateObserversIfNeeded;
- (void)addEmailAddressesAndPhoneNumbersToAttributeSet:(id)set;
- (void)applyRandomCryptoGooIfNeeded;
- (void)assignToPersistentStore:(id)store;
- (void)authenticationStateDidDeauthenticate:(id)deauthenticate;
- (void)authenticationStateWillDeauthenticate:(id)deauthenticate;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)clearChangeCountWithReason:(id)reason;
- (void)clearDecryptedData;
- (void)clearReplicaIDsToNotesVersion;
- (void)clearServerRecords;
- (void)cloudAccount;
- (void)cryptoStrategy;
- (void)decrementFailureCounts;
- (void)deleteChangeTokensAndReSync;
- (void)deleteFromLocalDatabase;
- (void)deserializeAndMergeValues:(id)values;
- (void)didAcceptShare:(id)share;
- (void)didFetchUserSpecificRecord:(id)record accountID:(id)d force:(BOOL)force;
- (void)didSaveUserSpecificRecord:(id)record;
- (void)didTurnIntoFault;
- (void)findAndResaveUserSpecificRecordThrowingReferenceViolationForDeletionWithError:(id)error;
- (void)incrementFailureCounts;
- (void)initializeCryptoProperties;
- (void)inlineAssetsForRecord:(id)record;
- (void)markForDeletion;
- (void)markShareDirtyIfNeededWithReason:(id)reason;
- (void)mergeCryptoFieldsFromRecord:(id)record;
- (void)mergeCryptoTagAndInitializationVectorFromRecord:(id)record;
- (void)mergeUnappliedEncryptedRecord;
- (void)mergeUnappliedEncryptedRecordRecursivelyInBackground;
- (void)needsToBePushedToCloud;
- (void)objc_removeAllCloudSyncingObjectActivityEvents;
- (void)objectWasDeletedFromCloud;
- (void)objectWasDeletedFromCloudByAnotherDevice;
- (void)objectWasFetchedButDoesNotExistInCloud;
- (void)objectWasFetchedFromCloudWithRecord:(id)record accountID:(id)d force:(BOOL)force;
- (void)objectWasPushedToCloudWithOperation:(id)operation serverRecord:(id)record;
- (void)objectWillBePushedToCloudWithOperation:(id)operation;
- (void)persistPendingChangesRecursively;
- (void)recordID;
- (void)redactAuthorAttributionsToCurrentUser;
- (void)replicaIDToNotesVersion;
- (void)requireMinimumSupportedVersionAndPropagateToChildObjects:(int64_t)objects;
- (void)resetFailureCounts;
- (void)serializedValuesToEncrypt;
- (void)setActivityEventsData:(id)data;
- (void)setCryptoInitializationVector:(id)vector;
- (void)setCryptoIterationCount:(int64_t)count;
- (void)setCryptoSalt:(id)salt;
- (void)setCryptoTag:(id)tag;
- (void)setCryptoWrappedKey:(id)key;
- (void)setDecryptedValue:(id)value forKey:(id)key;
- (void)setEncryptedValuesJSON:(id)n;
- (void)setFailedToSyncCount:(int64_t)count;
- (void)setHasMissingKeychainItem:(BOOL)item;
- (void)setInCloud:(BOOL)cloud;
- (void)setMarkedForDeletion:(BOOL)deletion;
- (void)setNeedsInitialFetchFromCloud:(BOOL)cloud;
- (void)setNeedsToBeFetchedFromCloud:(BOOL)cloud;
- (void)setNotesVersion:(id)version forReplicaID:(id)d;
- (void)setNumberOfPushAttemptsToWaitCount:(int64_t)count;
- (void)setPrimaryEncryptedData:(id)data;
- (void)setPrimitiveValue:(id)value forEncryptableKey:(id)key;
- (void)setServerRecord:(id)record;
- (void)setServerShare:(id)share;
- (void)setServerShareIfNewer:(id)newer;
- (void)setUnappliedEncryptedRecord:(id)record;
- (void)setUserSpecificServerRecord:(id)record;
- (void)setValue:(id)value forEncryptableKey:(id)key;
- (void)setVersion:(int64_t)version forOperation:(id)operation;
- (void)setWasRecentlyDeletedByThisDevice:(BOOL)device;
- (void)shouldBeDeletedFromLocalDatabase;
- (void)unappliedEncryptedRecord;
- (void)unitTest_injectCryptoStrategy:(id)strategy;
- (void)unmarkForDeletion;
- (void)unsafelyClearChangeCountWithReason:(id)reason;
- (void)unsafelyUpdateChangeCountWithReason:(id)reason;
- (void)updateChangeCountWithReason:(id)reason;
- (void)updateChangeCountsForUnsavedParentReferences;
- (void)updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded;
- (void)updateNeedsToSaveUserSpecificRecordToUpdateReferenceActionsIfNeeded;
- (void)updateParentReferenceIfNecessary;
- (void)updateUserSpecificChangeCountWithReason:(id)reason;
- (void)userSpecificRecordID;
- (void)willSave;
@end

@implementation ICCloudSyncingObject

+ (id)predicateForVisibleObjects
{
  v12[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA920];
  predicateForUnmarkedForDeletionObjects = [self predicateForUnmarkedForDeletionObjects];
  predicateForFetchedFromCloudObjects = [self predicateForFetchedFromCloudObjects];
  v12[1] = predicateForFetchedFromCloudObjects;
  v6 = MEMORY[0x277CCA920];
  predicateForDeprecatedObjects = [self predicateForDeprecatedObjects];
  v8 = [v6 notPredicateWithSubpredicate:predicateForDeprecatedObjects];
  v12[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v10 = [v3 andPredicateWithSubpredicates:v9];

  return v10;
}

- (void)addAuthenticationStateObserversIfNeeded
{
  if (![(ICCloudSyncingObject *)self didAddAuthenticationStateObservers])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = +[ICAuthenticationState sharedState];
    [defaultCenter addObserver:self selector:sel_authenticationStateWillDeauthenticate_ name:@"ICAuthenticationStateWillDeauthenticateNotification" object:v4];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = +[ICAuthenticationState sharedState];
    [defaultCenter2 addObserver:self selector:sel_authenticationStateDidDeauthenticate_ name:@"ICAuthenticationStateDidDeauthenticateNotification" object:v6];

    [(ICCloudSyncingObject *)self setDidAddAuthenticationStateObservers:1];
  }
}

- (void)awakeFromFetch
{
  v11.receiver = self;
  v11.super_class = ICCloudSyncingObject;
  [(ICCloudSyncingObject *)&v11 awakeFromFetch];
  cloudState = [(ICCloudSyncingObject *)self cloudState];

  if (!cloudState)
  {
    v4 = MEMORY[0x277CBE408];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    managedObjectContext = [(ICCloudSyncingObject *)self managedObjectContext];
    v8 = [v4 insertNewObjectForEntityForName:v6 inManagedObjectContext:managedObjectContext];

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
  recordName = [(ICCloudSyncingObject *)self recordName];
  objectID = [(ICCloudSyncingObject *)self objectID];
  v7 = [v3 stringWithFormat:@"<%@ %@[%@]>", v4, recordName, objectID];

  return v7;
}

- (BOOL)isSharedReadOnly
{
  serverShareCheckingParent = [(ICCloudSyncingObject *)self serverShareCheckingParent];
  v3 = serverShareCheckingParent;
  if (serverShareCheckingParent)
  {
    currentUserParticipant = [serverShareCheckingParent currentUserParticipant];
    v5 = [currentUserParticipant permission] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CKShare)serverShareCheckingParent
{
  selfCopy = self;
  v3 = 0;
  v4 = selfCopy;
  while (v4)
  {
    serverShare = [v4 serverShare];

    parentCloudObject = [v4 parentCloudObject];

    v3 = serverShare;
    v4 = parentCloudObject;
    if (serverShare)
    {
      if ([(ICCloudSyncingObject *)selfCopy shareMatchesRecord])
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
    serverShareData = [(ICCloudSyncingObject *)self serverShareData];
    if (serverShareData)
    {
      shareSystemFieldsTransformer = [objc_opt_class() shareSystemFieldsTransformer];
      v6 = [shareSystemFieldsTransformer reverseTransformedValue:serverShareData];
      v7 = self->_serverShare;
      self->_serverShare = v6;
    }

    serverShare = self->_serverShare;
  }

  return serverShare;
}

- (BOOL)isSharedViaICloud
{
  serverShare = [(ICCloudSyncingObject *)self serverShare];
  ic_nonCurrentUserParticipants = [serverShare ic_nonCurrentUserParticipants];
  if ([ic_nonCurrentUserParticipants count])
  {
    shareMatchesRecord = [(ICCloudSyncingObject *)self shareMatchesRecord];

    if (shareMatchesRecord)
    {
      return 1;
    }
  }

  else
  {
  }

  serverShare2 = [(ICCloudSyncingObject *)self serverShare];
  if (serverShare2)
  {
  }

  else
  {
    serverRecord = [(ICCloudSyncingObject *)self serverRecord];
    share = [serverRecord share];

    if (share)
    {
      return 1;
    }
  }

  zoneOwnerName = [(ICCloudSyncingObject *)self zoneOwnerName];
  if (zoneOwnerName)
  {
    v8 = zoneOwnerName;
    zoneOwnerName2 = [(ICCloudSyncingObject *)self zoneOwnerName];
    v10 = [zoneOwnerName2 isEqualToString:*MEMORY[0x277CBBF28]];

    if (!v10)
    {
      return 1;
    }
  }

  serverShare3 = [(ICCloudSyncingObject *)self serverShare];
  ic_isPublicShare = [serverShare3 ic_isPublicShare];

  if (ic_isPublicShare)
  {
    return 1;
  }

  parentCloudObject = [(ICCloudSyncingObject *)self parentCloudObject];
  v14 = parentCloudObject;
  if (parentCloudObject)
  {
    isSharedViaICloud = [parentCloudObject isSharedViaICloud];
  }

  else
  {
    isSharedViaICloud = 0;
  }

  return isSharedViaICloud;
}

- (CKRecord)serverRecord
{
  serverRecord = self->_serverRecord;
  if (!serverRecord)
  {
    serverRecordData = [(ICCloudSyncingObject *)self serverRecordData];
    if (serverRecordData)
    {
      recordSystemFieldsTransformer = [objc_opt_class() recordSystemFieldsTransformer];
      v6 = [recordSystemFieldsTransformer reverseTransformedValue:serverRecordData];
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
  primitiveZoneOwnerName = [(ICCloudSyncingObject *)self primitiveZoneOwnerName];
  [(ICCloudSyncingObject *)self didAccessValueForKey:@"zoneOwnerName"];
  if (!primitiveZoneOwnerName)
  {
    parentCloudObject = [(ICCloudSyncingObject *)self parentCloudObject];
    v5 = parentCloudObject;
    if (parentCloudObject)
    {
      primitiveZoneOwnerName = [parentCloudObject zoneOwnerName];
    }

    else
    {
      primitiveZoneOwnerName = 0;
    }
  }

  return primitiveZoneOwnerName;
}

- (id)viewContext
{
  appContext = [(ICCloudSyncingObject *)self appContext];
  viewContext = [appContext viewContext];
  v4 = viewContext;
  if (viewContext)
  {
    managedObjectContext = viewContext;
  }

  else
  {
    v6 = +[ICNoteContext sharedContext];
    managedObjectContext = [v6 managedObjectContext];
  }

  return managedObjectContext;
}

- (BOOL)isUnsupported
{
  v3 = +[ICCloudSyncingObject currentNotesVersion];
  if (v3 < [(ICCloudSyncingObject *)self minimumSupportedNotesVersion])
  {
    return 1;
  }

  parentCloudObjectForMinimumSupportedVersionPropagation = [(ICCloudSyncingObject *)self parentCloudObjectForMinimumSupportedVersionPropagation];
  isUnsupported = [parentCloudObjectForMinimumSupportedVersionPropagation isUnsupported];

  return isUnsupported;
}

+ (int64_t)currentNotesVersion
{
  v2 = ICDebugDecrementedNotesVersion;
  if (!ICDebugDecrementedNotesVersion)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [standardUserDefaults objectForKey:@"DebugNotesVersionDecrementAmount"];

    v5 = MEMORY[0x277CCABB0];
    if (v4)
    {
      objc_opt_class();
      v6 = ICDynamicCast();
      integerValue = [v6 integerValue];
      if (integerValue >= 0)
      {
        v8 = integerValue;
      }

      else
      {
        v8 = -integerValue;
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
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v7 = ICTestHostBundleIdentifier();
    v8 = [bundleIdentifier isEqual:v7];

    cloudAccount = [(ICCloudSyncingObject *)self cloudAccount];
    if (v8)
    {
      mainBundle2 = ICNotesAppBundleIdentifier();
      v11 = [cloudAccount replicaIDForBundleIdentifier:mainBundle2];
      bundleIdentifier2 = v11;
      if (v11)
      {
        uUID = v11;
      }

      else
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
      }

      v3 = uUID;
    }

    else
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier2 = [mainBundle2 bundleIdentifier];
      v14 = [cloudAccount replicaIDForBundleIdentifier:bundleIdentifier2];
      v15 = v14;
      if (v14)
      {
        uUID2 = v14;
      }

      else
      {
        uUID2 = [MEMORY[0x277CCAD78] UUID];
      }

      v3 = uUID2;
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

  unappliedEncryptedRecord = [(ICCloudSyncingObject *)self unappliedEncryptedRecord];

  if (!unappliedEncryptedRecord)
  {
    return 1;
  }

  if ([(ICCloudSyncingObject *)self isAuthenticated])
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
      v15 = 138412290;
      v16 = shortLoggingDescription;
      _os_log_impl(&dword_214D51000, v4, OS_LOG_TYPE_INFO, "Merging unapplied encrypted record… {object: %@}", &v15, 0xCu);
    }

    unappliedEncryptedRecord2 = [(ICCloudSyncingObject *)self unappliedEncryptedRecord];
    if (unappliedEncryptedRecord2)
    {
      [(ICCloudSyncingObject *)self setMergingRecord:1];
      [(ICCloudSyncingObject *)self setMergingUnappliedEncryptedRecord:1];
      cloudAccount = [(ICCloudSyncingObject *)self cloudAccount];
      identifier = [cloudAccount identifier];
      [(ICCloudSyncingObject *)self mergeCloudKitRecord:unappliedEncryptedRecord2 accountID:identifier approach:0];

      [(ICCloudSyncingObject *)self setMergingUnappliedEncryptedRecord:0];
      [(ICCloudSyncingObject *)self setMergingRecord:0];
      unappliedEncryptedRecord3 = [(ICCloudSyncingObject *)self unappliedEncryptedRecord];

      v10 = os_log_create("com.apple.notes", "Crypto");
      v11 = v10;
      if (!unappliedEncryptedRecord3)
      {
        v12 = 1;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          shortLoggingDescription2 = [(ICCloudSyncingObject *)self shortLoggingDescription];
          v15 = 138412290;
          v16 = shortLoggingDescription2;
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
    unappliedEncryptedRecordData = [(ICCloudSyncingObject *)self unappliedEncryptedRecordData];
    if (unappliedEncryptedRecordData)
    {
      v6 = os_log_create("com.apple.notes", "Crypto");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(ICCloudSyncingObject *)self unappliedEncryptedRecord];
      }

      v11 = 0;
      v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:unappliedEncryptedRecordData error:&v11];
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
  appContext = [(ICCloudSyncingObject *)self appContext];
  deviceManagementRestrictionsManager = [appContext deviceManagementRestrictionsManager];
  v4 = deviceManagementRestrictionsManager;
  if (deviceManagementRestrictionsManager)
  {
    v5 = deviceManagementRestrictionsManager;
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
  isPasswordProtected = [(ICCloudSyncingObject *)self isPasswordProtected];
  if (isPasswordProtected)
  {
    LOBYTE(isPasswordProtected) = ![(ICCloudSyncingObject *)self isAuthenticated];
  }

  return isPasswordProtected;
}

- (BOOL)isAuthenticated
{
  cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
  isAuthenticated = [cryptoStrategy isAuthenticated];

  return isAuthenticated;
}

- (ICCloudSyncingObjectCryptoStrategy)cryptoStrategy
{
  cryptoStrategyForMergingEncryptedData = [(ICCloudSyncingObject *)self cryptoStrategyForMergingEncryptedData];

  if (cryptoStrategyForMergingEncryptedData)
  {
    v4 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject cryptoStrategy];
    }

    cryptoStrategyForMergingEncryptedData2 = [(ICCloudSyncingObject *)self cryptoStrategyForMergingEncryptedData];
    goto LABEL_5;
  }

  canHaveCryptoStrategy = [(ICCloudSyncingObject *)self canHaveCryptoStrategy];
  cryptoStrategy = self->_cryptoStrategy;
  if (canHaveCryptoStrategy)
  {
    if (cryptoStrategy)
    {
      cryptoStrategyForMergingEncryptedData2 = cryptoStrategy;
LABEL_5:
      validatedCreateCryptoStrategy = cryptoStrategyForMergingEncryptedData2;
      goto LABEL_14;
    }

    validatedCreateCryptoStrategy = [(ICCloudSyncingObject *)self validatedCreateCryptoStrategy];
    if (![(ICCloudSyncingObject *)self cryptoStrategyIsTransient])
    {
      objc_storeStrong(&self->_cryptoStrategy, validatedCreateCryptoStrategy);
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

    validatedCreateCryptoStrategy = 0;
  }

LABEL_14:

  return validatedCreateCryptoStrategy;
}

- (BOOL)canHaveCryptoStrategy
{
  isPasswordProtected = [(ICCloudSyncingObject *)self isPasswordProtected];
  if (isPasswordProtected)
  {
    if (([(ICCloudSyncingObject *)self needsInitialFetchFromCloud]& 1) != 0)
    {
      LOBYTE(isPasswordProtected) = 0;
    }

    else
    {
      LOBYTE(isPasswordProtected) = ![(ICCloudSyncingObject *)self isUnsupported];
    }
  }

  return isPasswordProtected;
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
    modificationDate = v6;
  }

  else
  {
    serverRecord = [(ICCloudSyncingObject *)self serverRecord];
    modificationDate = [serverRecord modificationDate];
  }

  return modificationDate;
}

- (BOOL)canAuthenticate
{
  cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
  canAuthenticate = [cryptoStrategy canAuthenticate];

  return canAuthenticate;
}

- (void)mergeUnappliedEncryptedRecordRecursivelyInBackground
{
  mergeUnappliedEncryptedRecordsQueue = [objc_opt_class() mergeUnappliedEncryptedRecordsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__ICCloudSyncingObject_mergeUnappliedEncryptedRecordRecursivelyInBackground__block_invoke;
  block[3] = &unk_278194B00;
  block[4] = self;
  dispatch_async(mergeUnappliedEncryptedRecordsQueue, block);
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
  appContext = [(ICCloudSyncingObject *)self appContext];
  makeBackgroundContext = [appContext makeBackgroundContext];
  v4 = makeBackgroundContext;
  if (makeBackgroundContext)
  {
    workerManagedObjectContext = makeBackgroundContext;
  }

  else
  {
    v6 = +[ICNoteContext sharedContext];
    workerManagedObjectContext = [v6 workerManagedObjectContext];
  }

  return workerManagedObjectContext;
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
  mergeUnappliedEncryptedRecord = [(ICCloudSyncingObject *)self mergeUnappliedEncryptedRecord];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allChildCloudObjects = [(ICCloudSyncingObject *)self allChildCloudObjects];
  v5 = [allChildCloudObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(allChildCloudObjects);
        }

        mergeUnappliedEncryptedRecord &= [*(*(&v10 + 1) + 8 * i) mergeUnappliedEncryptedRecordRecursively];
      }

      v6 = [allChildCloudObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return mergeUnappliedEncryptedRecord;
}

- (NSArray)allChildCloudObjects
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  childCloudObjects = [(ICCloudSyncingObject *)self childCloudObjects];
  v5 = [v3 setWithArray:childCloudObjects];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  childCloudObjects2 = [(ICCloudSyncingObject *)self childCloudObjects];
  v7 = [childCloudObjects2 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(childCloudObjects2);
        }

        allChildCloudObjects = [*(*(&v14 + 1) + 8 * i) allChildCloudObjects];
        [v5 addObjectsFromArray:allChildCloudObjects];
      }

      v8 = [childCloudObjects2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  allObjects = [v5 allObjects];

  return allObjects;
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
  serverShareCheckingParent = [(ICCloudSyncingObject *)self serverShareCheckingParent];
  ic_isPublicShare = [serverShareCheckingParent ic_isPublicShare];

  return ic_isPublicShare;
}

- (BOOL)hasInvitees
{
  serverShareCheckingParent = [(ICCloudSyncingObject *)self serverShareCheckingParent];
  v3 = [serverShareCheckingParent ic_nonOwnerInvitedParticipantsCount] != 0;

  return v3;
}

- (ICCloudSyncingObject)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = ICCloudSyncingObject;
  v4 = [(ICCloudSyncingObject *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
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
  managedObjectContext = [(ICCloudSyncingObject *)self managedObjectContext];
  v7 = [v3 insertNewObjectForEntityForName:v5 inManagedObjectContext:managedObjectContext];

  v8 = NSStringFromSelector(sel_cloudState);
  [(ICCloudSyncingObject *)self setPrimitiveValue:v7 forKey:v8];

  [(ICCloudSyncingObject *)self setNeedsToLoadDecryptedValues:1];
  [(ICCloudSyncingObject *)self addAuthenticationStateObserversIfNeeded];
}

- (void)willSave
{
  OUTLINED_FUNCTION_10();
  shortLoggingDescription = [v0 shortLoggingDescription];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (BOOL)validateIdentifier:(id *)identifier error:(id *)error
{
  v11 = *MEMORY[0x277D85DE8];
  if (!*identifier)
  {
    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_DEFAULT, "Trying to save an object with a nil identifier: %@", &v9, 0xCu);
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    *identifier = [uUID UUIDString];
  }

  return 1;
}

- (void)assignToPersistentStore:(id)store
{
  storeCopy = store;
  if (!storeCopy)
  {
    managedObjectContext2 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(managedObjectContext2, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObject assignToPersistentStore:?];
    }

    goto LABEL_7;
  }

  managedObjectContext = [(ICCloudSyncingObject *)self managedObjectContext];
  [managedObjectContext assignObject:self toPersistentStore:storeCopy];

  cloudState = [(ICCloudSyncingObject *)self cloudState];

  if (cloudState)
  {
    managedObjectContext2 = [(ICCloudSyncingObject *)self managedObjectContext];
    cloudState2 = [(ICCloudSyncingObject *)self cloudState];
    [managedObjectContext2 assignObject:cloudState2 toPersistentStore:storeCopy];

LABEL_7:
  }
}

- (void)setNeedsToBeFetchedFromCloud:(BOOL)cloud
{
  cloudCopy = cloud;
  v5 = [(ICCloudSyncingObject *)self primitiveValueForKey:@"needsToBeFetchedFromCloud"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue != cloudCopy)
  {
    if (cloudCopy)
    {
      [(ICCloudSyncingObject *)self clearServerRecords];
    }

    [(ICCloudSyncingObject *)self willChangeValueForKey:@"needsToBeFetchedFromCloud"];
    v7 = [MEMORY[0x277CCABB0] numberWithBool:cloudCopy];
    [(ICCloudSyncingObject *)self setPrimitiveValue:v7 forKey:@"needsToBeFetchedFromCloud"];

    [(ICCloudSyncingObject *)self didChangeValueForKey:@"needsToBeFetchedFromCloud"];
  }
}

- (void)updateChangeCountWithReason:(id)reason
{
  reasonCopy = reason;
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

  cloudState = [(ICCloudSyncingObject *)self cloudState];

  if (!cloudState)
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObject updateChangeCountWithReason:];
    }

    goto LABEL_11;
  }

  [(ICCloudSyncingObject *)self unsafelyUpdateChangeCountWithReason:reasonCopy];
LABEL_12:
}

- (void)unsafelyUpdateChangeCountWithReason:(id)reason
{
  reasonCopy = reason;
  cloudState = [(ICCloudSyncingObject *)self cloudState];
  currentLocalVersion = [cloudState currentLocalVersion];

  if (currentLocalVersion == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject unsafelyUpdateChangeCountWithReason:?];
    }

    cloudState2 = [(ICCloudSyncingObject *)self cloudState];
    [cloudState2 setCurrentLocalVersion:0];

    cloudState3 = [(ICCloudSyncingObject *)self cloudState];
    [cloudState3 setLatestVersionSyncedToCloud:0];
  }

  cloudState4 = [(ICCloudSyncingObject *)self cloudState];
  [cloudState4 setCurrentLocalVersion:{objc_msgSend(cloudState4, "currentLocalVersion") + 1}];

  v11 = [MEMORY[0x277CBEAA8] now];
  cloudState5 = [(ICCloudSyncingObject *)self cloudState];
  [cloudState5 setLocalVersionDate:v11];

  [(ICCloudSyncingObject *)self setLastUpdateChangeCountReason:reasonCopy];
  if (([(ICCloudSyncingObject *)self hasChanges]& 1) == 0)
  {
    cloudState6 = [(ICCloudSyncingObject *)self cloudState];
    [(ICCloudSyncingObject *)self setCloudState:0];
    [(ICCloudSyncingObject *)self setCloudState:cloudState6];
  }

  v14 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [(ICCloudSyncingObject *)self unsafelyUpdateChangeCountWithReason:reasonCopy, v14];
  }
}

- (void)clearChangeCountWithReason:(id)reason
{
  reasonCopy = reason;
  cloudState = [(ICCloudSyncingObject *)self cloudState];

  if (cloudState)
  {
    [(ICCloudSyncingObject *)self unsafelyClearChangeCountWithReason:reasonCopy];
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

- (void)unsafelyClearChangeCountWithReason:(id)reason
{
  reasonCopy = reason;
  cloudState = [(ICCloudSyncingObject *)self cloudState];
  [cloudState setCurrentLocalVersion:0];

  cloudState2 = [(ICCloudSyncingObject *)self cloudState];
  [cloudState2 setLatestVersionSyncedToCloud:0];

  cloudState3 = [(ICCloudSyncingObject *)self cloudState];
  [cloudState3 setLocalVersionDate:0];

  v8 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudSyncingObject unsafelyClearChangeCountWithReason:];
  }
}

- (void)updateUserSpecificChangeCountWithReason:(id)reason
{
  reasonCopy = reason;
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
  shortLoggingDescription = [self shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (ICCloudSyncingObject)objectWithRecordID:(id)d accountID:(id)iD context:(id)context
{
  iDCopy = iD;
  v9 = [self objectsWithRecordID:d context:context];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__ICCloudSyncingObject_objectWithRecordID_accountID_context___block_invoke;
  v13[3] = &unk_278196CB0;
  v14 = iDCopy;
  v10 = iDCopy;
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

+ (id)objectsWithRecordID:(id)d context:(id)context
{
  contextCopy = context;
  recordName = [d recordName];
  if (recordName)
  {
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier == %@", recordName];
    v9 = [self ic_objectsMatchingPredicate:v8 context:contextCopy];
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
  failureCountQueue = [objc_opt_class() failureCountQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__ICCloudSyncingObject_failedToSyncCount__block_invoke;
  v6[3] = &unk_278194D68;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(failureCountQueue, v6);

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

- (void)setFailedToSyncCount:(int64_t)count
{
  failureCountQueue = [objc_opt_class() failureCountQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__ICCloudSyncingObject_setFailedToSyncCount___block_invoke;
  v6[3] = &unk_278196CD8;
  v6[4] = self;
  v6[5] = count;
  dispatch_sync(failureCountQueue, v6);
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
  failureCountQueue = [objc_opt_class() failureCountQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__ICCloudSyncingObject_numberOfPushAttemptsToWaitCount__block_invoke;
  v6[3] = &unk_278194D68;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(failureCountQueue, v6);

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

- (void)setNumberOfPushAttemptsToWaitCount:(int64_t)count
{
  failureCountQueue = [objc_opt_class() failureCountQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__ICCloudSyncingObject_setNumberOfPushAttemptsToWaitCount___block_invoke;
  v6[3] = &unk_278196CD8;
  v6[4] = self;
  v6[5] = count;
  dispatch_sync(failureCountQueue, v6);
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
    className = [(ICCloudSyncingObject *)self className];
    failedToSyncCount = [(ICCloudSyncingObject *)self failedToSyncCount];
    failedToSyncCount2 = [(ICCloudSyncingObject *)self failedToSyncCount];
    loggingDescription = [(ICCloudSyncingObject *)self loggingDescription];
    v8 = 138413570;
    v9 = className;
    v10 = 1024;
    v11 = failedToSyncCount;
    v12 = 1024;
    v13 = 3;
    v14 = 1024;
    v15 = failedToSyncCount2;
    v16 = 1024;
    v17 = 6;
    v18 = 2112;
    v19 = loggingDescription;
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
    className = [(ICCloudSyncingObject *)self className];
    numberOfPushAttemptsToWaitCount = [(ICCloudSyncingObject *)self numberOfPushAttemptsToWaitCount];
    loggingDescription = [(ICCloudSyncingObject *)self loggingDescription];
    v7 = 138412802;
    v8 = className;
    v9 = 1024;
    v10 = numberOfPushAttemptsToWaitCount;
    v11 = 2112;
    v12 = loggingDescription;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_DEFAULT, "Decrementing failure counts for %@, %d push attempts before it is retried. %@", &v7, 0x1Cu);
  }
}

- (void)deleteChangeTokensAndReSync
{
  OUTLINED_FUNCTION_3();
  [v1 className];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_4() failedToSyncCount];
  loggingDescription = [OUTLINED_FUNCTION_4_2() loggingDescription];
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
    className = [(ICCloudSyncingObject *)self className];
    failedToSyncCount = [(ICCloudSyncingObject *)self failedToSyncCount];
    numberOfPushAttemptsToWaitCount = [(ICCloudSyncingObject *)self numberOfPushAttemptsToWaitCount];
    loggingDescription = [(ICCloudSyncingObject *)self loggingDescription];
    v9 = 138413314;
    v10 = className;
    v11 = 1024;
    v12 = failedToSyncCount;
    v13 = 1024;
    v14 = 3;
    v15 = 1024;
    v16 = numberOfPushAttemptsToWaitCount;
    v17 = 2112;
    v18 = loggingDescription;
    _os_log_impl(&dword_214D51000, v3, OS_LOG_TYPE_DEFAULT, "%@ failed to be pushed %d times. Max number of retries is %d. It will now be ignored for %d push attempts. %@", &v9, 0x28u);
  }

  return 1;
}

- (CKRecordID)recordID
{
  managedObjectContext = [(ICCloudSyncingObject *)self managedObjectContext];

  if (managedObjectContext)
  {
    recordName = [(ICCloudSyncingObject *)self recordName];
    if ([recordName length])
    {
      recordZoneName = [(ICCloudSyncingObject *)self recordZoneName];
      if ([recordZoneName length])
      {
        zoneOwnerName = [(ICCloudSyncingObject *)self zoneOwnerName];
        v7 = zoneOwnerName;
        v8 = *MEMORY[0x277CBBF28];
        if (zoneOwnerName)
        {
          v8 = zoneOwnerName;
        }

        v9 = v8;

        v10 = [objc_alloc(MEMORY[0x277CBC5F8]) initWithZoneName:recordZoneName ownerName:v9];
        v11 = [objc_alloc(MEMORY[0x277CBC5D0]) initWithRecordName:recordName zoneID:v10];

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
      recordZoneName = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(recordZoneName, OS_LOG_TYPE_DEBUG))
      {
        [(ICCloudSyncingObject *)self recordID];
      }
    }

    v11 = 0;
    goto LABEL_17;
  }

  recordZoneName = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(recordZoneName, OS_LOG_TYPE_DEBUG))
  {
    [(ICCloudSyncingObject *)self recordID];
  }

  v11 = 0;
  recordName = recordZoneName;
LABEL_17:

  return v11;
}

- (int64_t)databaseScope
{
  recordID = [(ICCloudSyncingObject *)self recordID];
  databaseScope = [recordID databaseScope];

  return databaseScope;
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(ICCloudSyncingObject *)self managedObjectContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__ICCloudSyncingObject_isValidObject__block_invoke;
  v5[3] = &unk_278194DE8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __37__ICCloudSyncingObject_isValidObject__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isDeleted];
  *(*(*(a1 + 40) + 8) + 24) = result ^ 1;
  return result;
}

+ (id)newObjectWithIdentifier:(id)identifier context:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__23;
  v24 = __Block_byref_object_dispose__23;
  entity = [self entity];
  if (!v21[5])
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__ICCloudSyncingObject_newObjectWithIdentifier_context___block_invoke;
    v19[3] = &unk_278194D98;
    v19[4] = &v20;
    v19[5] = self;
    [contextCopy performBlockAndWait:v19];
  }

  persistentStoreCoordinator = [contextCopy persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];
  entitiesByName = [managedObjectModel entitiesByName];
  name = [v21[5] name];
  v12 = [entitiesByName objectForKeyedSubscript:name];

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
  v15 = [v14 initWithEntity:v21[5] insertIntoManagedObjectContext:contextCopy];
  [v15 setIdentifier:identifierCopy];
  v16 = os_log_create("com.apple.notes", "CoreData");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    shortLoggingDescription = [v15 shortLoggingDescription];
    [ICCloudSyncingObject newObjectWithIdentifier:shortLoggingDescription context:v26];
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

+ (id)newPlaceholderObjectForRecordName:(id)name accountID:(id)d context:(id)context
{
  contextCopy = context;
  dCopy = d;
  v10 = [self newObjectWithIdentifier:name context:contextCopy];
  [v10 setNeedsInitialFetchFromCloud:1];
  [v10 setInCloud:1];
  v11 = [ICAccount accountWithIdentifier:dCopy context:contextCopy];

  persistentStore = [v11 persistentStore];
  [v10 assignToPersistentStore:persistentStore];

  return v10;
}

+ (id)cloudObjectWithIdentifier:(id)identifier context:(id)context
{
  identifierCopy = identifier;
  contextCopy = context;
  if (identifierCopy && ([identifierCopy ic_trimmedString], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v9))
  {
    identifierCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier == %@", identifierCopy];
    v11 = [self ic_objectsMatchingPredicate:identifierCopy context:contextCopy];
    lastObject = [v11 lastObject];
  }

  else
  {
    v13 = os_log_create("com.apple.notes", "CoreData");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObject cloudObjectWithIdentifier:v13 context:?];
    }

    lastObject = 0;
  }

  return lastObject;
}

+ (id)allCloudObjectIDsInContext:(id)context passingTest:(id)test
{
  contextCopy = context;
  testCopy = test;
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
  v8 = testCopy;
  v15 = v8;
  v16 = &v17;
  [self enumerateAllCloudObjectsInContext:contextCopy batchSize:20 saveAfterBatch:0 usingBlock:&v11];
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

+ (void)enumerateAllCloudObjectsInContext:(id)context predicate:(id)predicate sortDescriptors:(id)descriptors relationshipKeyPathsForPrefetching:(id)prefetching batchSize:(unint64_t)size saveAfterBatch:(BOOL)batch usingBlock:(id)block
{
  batchCopy = batch;
  blockCopy = block;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __155__ICCloudSyncingObject_enumerateAllCloudObjectsInContext_predicate_sortDescriptors_relationshipKeyPathsForPrefetching_batchSize_saveAfterBatch_usingBlock___block_invoke;
  v26 = &unk_278196D28;
  v27 = blockCopy;
  v17 = blockCopy;
  prefetchingCopy = prefetching;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  contextCopy = context;
  v22 = _Block_copy(&aBlock);
  [self ic_enumerateObjectsMatchingPredicate:predicateCopy sortDescriptors:descriptorsCopy relationshipKeyPathsForPrefetching:prefetchingCopy context:contextCopy batchSize:size saveAfterBatch:batchCopy usingBlock:{v22, aBlock, v24, v25, v26}];
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

- (id)makeCloudKitRecordForApproach:(int64_t)approach mergeableFieldState:(id)state
{
  stateCopy = state;
  if (approach == 1)
  {
    serverRecord = [(ICCloudSyncingObject *)self serverRecord];
    v8 = [serverRecord ic_copyWithUserFields:0];
  }

  else
  {
    if (approach)
    {
      goto LABEL_11;
    }

    serverRecord = [(ICCloudSyncingObject *)self serverRecord];
    v8 = [serverRecord copy];
  }

  v9 = v8;

  if (v9)
  {
    recordName = [(ICCloudSyncingObject *)self recordName];
    if (!recordName)
    {
      goto LABEL_17;
    }

    v11 = recordName;
    recordID = [v9 recordID];
    recordName2 = [recordID recordName];
    recordName3 = [(ICCloudSyncingObject *)self recordName];
    v15 = [recordName2 ic_isCaseInsensitiveEqualToString:recordName3];

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
  recordID2 = [(ICCloudSyncingObject *)self recordID];
  if (recordID2)
  {
    v18 = objc_alloc(MEMORY[0x277CBC5A0]);
    recordType = [(ICCloudSyncingObject *)self recordType];
    v9 = [v18 initWithRecordType:recordType recordID:recordID2];
  }

  else
  {
    recordType = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(recordType, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObject makeCloudKitRecordForApproach:? mergeableFieldState:?];
    }

    v9 = 0;
  }

LABEL_17:
  parentCloudObject = [(ICCloudSyncingObject *)self parentCloudObject];
  recordID3 = [parentCloudObject recordID];
  v22 = recordID3;
  if (recordID3)
  {
    zoneID = [recordID3 zoneID];
    recordID4 = [v9 recordID];
    zoneID2 = [recordID4 zoneID];
    v26 = [zoneID isEqual:zoneID2];

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

  if (!approach)
  {
    if ([objc_opt_class() supportsActivityEvents] && (!-[ICCloudSyncingObject isPasswordProtected](self, "isPasswordProtected") || !-[ICCloudSyncingObject needsToLoadDecryptedValues](self, "needsToLoadDecryptedValues")))
    {
      activityEventsData = [(ICCloudSyncingObject *)self activityEventsData];

      if (activityEventsData)
      {
        activityEventsData2 = [(ICCloudSyncingObject *)self activityEventsData];
        [v9 ic_setEncryptedInlineableDataAsset:activityEventsData2 forKeyPrefix:@"ActivityEventsData" approach:0 withObject:self];
      }
    }

    if ([objc_opt_class() supportsNotesVersionTracking])
    {
      replicaIDToNotesVersionData = [(ICCloudSyncingObject *)self replicaIDToNotesVersionData];

      if (replicaIDToNotesVersionData)
      {
        replicaIDToNotesVersionData2 = [(ICCloudSyncingObject *)self replicaIDToNotesVersionData];
        [v9 ic_setEncryptedInlineableDataAsset:replicaIDToNotesVersionData2 forKeyPrefix:@"ReplicaIDToNotesVersionData" approach:0 withObject:self];
      }
    }

    if ([(ICCloudSyncingObject *)self supportsDeletionByTTL]&& ([(ICCloudSyncingObject *)self isOwnedByCurrentUser]|| ![(ICCloudSyncingObject *)self isSharedRootObject]))
    {
      v33 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICCloudSyncingObject markedForDeletion](self, "markedForDeletion")}];
      [v9 setObject:v33 forKeyedSubscript:@"Deleted"];
    }

    if ([(ICCloudSyncingObject *)self isPasswordProtected]& 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      cryptoSalt = [(ICCloudSyncingObject *)self cryptoSalt];
      [v9 setObject:cryptoSalt forKeyedSubscript:@"CryptoSalt"];

      v35 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ICCloudSyncingObject cryptoIterationCount](self, "cryptoIterationCount")}];
      [v9 setObject:v35 forKeyedSubscript:@"CryptoIterationCount"];

      cryptoInitializationVector = [(ICCloudSyncingObject *)self cryptoInitializationVector];
      [v9 setObject:cryptoInitializationVector forKeyedSubscript:@"CryptoInitializationVector"];

      cryptoTag = [(ICCloudSyncingObject *)self cryptoTag];
      [v9 setObject:cryptoTag forKeyedSubscript:@"CryptoTag"];

      cryptoWrappedKey = [(ICCloudSyncingObject *)self cryptoWrappedKey];
      [v9 setObject:cryptoWrappedKey forKeyedSubscript:@"CryptoWrappedKey"];

      passwordHint = [(ICCloudSyncingObject *)self passwordHint];
      v40 = [passwordHint dataUsingEncoding:4];
      encryptedValues = [v9 encryptedValues];
      [encryptedValues setObject:v40 forKeyedSubscript:@"PasswordHint"];
    }

    if ([(ICCloudSyncingObject *)self supportsEncryptedValuesDictionary]&& ([(ICCloudSyncingObject *)self encryptedValuesJSON], v42 = objc_claimAutoreleasedReturnValue(), v42, v42))
    {
      encryptedValuesJSON = [(ICCloudSyncingObject *)self encryptedValuesJSON];
      [v9 ic_setInlineableDataAsset:encryptedValuesJSON forKeyPrefix:@"EncryptedValues" approach:0 withObject:self];
    }

    else
    {
      encryptedValuesJSON2 = [(ICCloudSyncingObject *)self encryptedValuesJSON];

      if (encryptedValuesJSON2)
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

- (BOOL)mergeCloudKitRecord:(id)record accountID:(id)d approach:(int64_t)approach mergeableFieldState:(id)state
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordID2 = [(ICCloudSyncingObject *)self recordID];
  v11 = [recordID ic_hasEqualRecordNameWithRecordID:recordID2];

  v12 = os_log_create("com.apple.notes", "Cloud");
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject mergeCloudKitRecord:accountID:approach:mergeableFieldState:];
    }

    v14 = [recordCopy objectForKeyedSubscript:@"MinimumSupportedNotesVersion"];

    if (v14)
    {
      v15 = [recordCopy objectForKeyedSubscript:@"MinimumSupportedNotesVersion"];
      -[ICCloudSyncingObject setMinimumSupportedNotesVersion:](self, "setMinimumSupportedNotesVersion:", [v15 unsignedIntegerValue]);
    }

    if (!approach)
    {
      v16 = [recordCopy objectForKeyedSubscript:@"Deleted"];

      if (v16)
      {
        v17 = [recordCopy objectForKeyedSubscript:@"Deleted"];
        bOOLValue = [v17 BOOLValue];

        if (bOOLValue != [(ICCloudSyncingObject *)self markedForDeletion])
        {
          v19 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [ICCloudSyncingObject mergeCloudKitRecord:? accountID:? approach:? mergeableFieldState:?];
          }

          [(ICCloudSyncingObject *)self setMarkedForDeletion:bOOLValue];
        }
      }

      [(ICCloudSyncingObject *)self mergeCryptoFieldsFromRecord:recordCopy];
      v20 = [recordCopy ic_encryptedInlineableDataAssetForKeyPrefix:@"ActivityEventsData"];
      if (v20)
      {
        v21 = [ICTTOrderedSetVersionedDocument alloc];
        currentReplicaID = [(ICCloudSyncingObject *)self currentReplicaID];
        v23 = [(ICTTVersionedDocument *)v21 initWithData:v20 replicaID:currentReplicaID];
        [(ICCloudSyncingObject *)self mergeActivityEventsDocument:v23];
      }

      v24 = [recordCopy ic_encryptedInlineableDataAssetForKeyPrefix:@"ReplicaIDToNotesVersionData"];
      if (v24)
      {
        v25 = [ICMergeableDictionary alloc];
        currentReplicaID2 = [(ICCloudSyncingObject *)self currentReplicaID];
        v27 = [(ICMergeableDictionary *)v25 initWithData:v24 replicaID:currentReplicaID2];

        [(ICCloudSyncingObject *)self mergeReplicaIDToNotesVersion:v27];
      }

      if ([(ICCloudSyncingObject *)self isPasswordProtected]&& ![(ICCloudSyncingObject *)self mergeEncryptedDataFromRecord:recordCopy])
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

- (void)setUnappliedEncryptedRecord:(id)record
{
  recordCopy = record;
  v6 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudSyncingObject setUnappliedEncryptedRecord:];
  }

  if (!recordCopy)
  {
    v7 = 0;
    goto LABEL_10;
  }

  if (([(ICCloudSyncingObject *)self isPasswordProtected]& 1) != 0)
  {
    [(ICCloudSyncingObject *)self inlineAssetsForRecord:recordCopy];
    v11 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:recordCopy requiringSecureCoding:1 error:&v11];
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
    objc_storeStrong(&self->_unappliedEncryptedRecord, record);
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

- (void)inlineAssetsForRecord:(id)record
{
  recordCopy = record;
  if ([(ICCloudSyncingObject *)self supportsEncryptedValuesDictionary])
  {
    [recordCopy ic_inlineDataAssetForKeyPrefix:@"EncryptedValues"];
  }
}

- (void)mergeCryptoFieldsFromRecord:(id)record
{
  recordCopy = record;
  v5 = os_log_create("com.apple.notes", "Crypto");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudSyncingObject mergeCryptoFieldsFromRecord:];
  }

  v6 = [recordCopy objectForKeyedSubscript:@"CryptoSalt"];

  if (v6)
  {
    v7 = [recordCopy objectForKeyedSubscript:@"CryptoSalt"];
    [(ICCloudSyncingObject *)self setCryptoSalt:v7];
  }

  v8 = [recordCopy objectForKeyedSubscript:@"CryptoIterationCount"];

  if (v8)
  {
    v9 = [recordCopy objectForKeyedSubscript:@"CryptoIterationCount"];
    -[ICCloudSyncingObject setCryptoIterationCount:](self, "setCryptoIterationCount:", [v9 unsignedIntegerValue]);
  }

  v10 = [recordCopy objectForKeyedSubscript:@"CryptoWrappedKey"];

  if (v10)
  {
    v11 = [recordCopy objectForKeyedSubscript:@"CryptoWrappedKey"];
    [(ICCloudSyncingObject *)self setCryptoWrappedKey:v11];
  }

  encryptedValues = [recordCopy encryptedValues];
  v13 = [encryptedValues objectForKeyedSubscript:@"PasswordHint"];
  ic_stringValue = [v13 ic_stringValue];
  [(ICCloudSyncingObject *)self setPasswordHint:ic_stringValue];

  cryptoSalt = [(ICCloudSyncingObject *)self cryptoSalt];

  if (cryptoSalt)
  {
    [(ICCloudSyncingObject *)self setIsPasswordProtected:1];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ICCloudSyncingObject *)self mergeCryptoTagAndInitializationVectorFromRecord:recordCopy];
  }
}

- (void)mergeCryptoTagAndInitializationVectorFromRecord:(id)record
{
  recordCopy = record;
  v4 = [recordCopy objectForKeyedSubscript:@"CryptoInitializationVector"];

  if (v4)
  {
    v5 = [recordCopy objectForKeyedSubscript:@"CryptoInitializationVector"];
    [(ICCloudSyncingObject *)self setCryptoInitializationVector:v5];
  }

  v6 = [recordCopy objectForKeyedSubscript:@"CryptoTag"];

  if (v6)
  {
    v7 = [recordCopy objectForKeyedSubscript:@"CryptoTag"];
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

  cloudState = [(ICCloudSyncingObject *)self cloudState];
  v6 = -[ICCloudSyncingObject isPushingSameOrLaterThanVersion:](self, "isPushingSameOrLaterThanVersion:", [cloudState currentLocalVersion]);

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

  parentCloudObject = [(ICCloudSyncingObject *)self parentCloudObject];
  if ([parentCloudObject markedForDeletion])
  {
    parentCloudObject2 = [(ICCloudSyncingObject *)self parentCloudObject];
    isInCloud = [parentCloudObject2 isInCloud];

    if ((isInCloud & 1) == 0)
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

  parentCloudObject3 = [(ICCloudSyncingObject *)self parentCloudObject];
  if ([parentCloudObject3 needsInitialFetchFromCloud])
  {
    parentCloudObject4 = [(ICCloudSyncingObject *)self parentCloudObject];
    isInCloud2 = [parentCloudObject4 isInCloud];

    if ((isInCloud2 & 1) == 0)
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
    unappliedEncryptedRecord = [(ICCloudSyncingObject *)self unappliedEncryptedRecord];
    if (unappliedEncryptedRecord || [(ICCloudSyncingObject *)self isMergingUnappliedEncryptedRecord])
    {
      markedForDeletion = [(ICCloudSyncingObject *)self markedForDeletion];

      if ((markedForDeletion & 1) == 0)
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
  cloudState = [(ICCloudSyncingObject *)self cloudState];
  latestVersionSyncedToCloud = [cloudState latestVersionSyncedToCloud];
  cloudState2 = [(ICCloudSyncingObject *)self cloudState];
  LOBYTE(latestVersionSyncedToCloud) = latestVersionSyncedToCloud >= [cloudState2 currentLocalVersion];

  return latestVersionSyncedToCloud;
}

- (BOOL)needsToFetchAfterServerRecordChanged:(id)changed
{
  v18 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [changedCopy allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v9 = [changedCopy objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        v10 = [objc_opt_class() needsToReFetchServerRecordValue:v9];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
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

+ (BOOL)needsToReFetchServerRecordValue:(id)value
{
  v18 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    fileURL = [valueCopy fileURL];
    v6 = fileURL == 0;
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
      v7 = valueCopy;
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

            if ([self needsToReFetchServerRecordValue:{*(*(&v13 + 1) + 8 * i), v13}])
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
  shortLoggingDescription = [self shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)objectWillBePushedToCloudWithOperation:(id)operation
{
  operationCopy = operation;
  cloudState = [(ICCloudSyncingObject *)self cloudState];
  -[ICCloudSyncingObject setVersion:forOperation:](self, "setVersion:forOperation:", [cloudState currentLocalVersion], operationCopy);
}

- (BOOL)objectFailedToBePushedToCloudWithOperation:(id)operation recordID:(id)d error:(id)error
{
  v56 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  dCopy = d;
  errorCopy = error;
  cloudContext = [(ICCloudSyncingObject *)self cloudContext];
  database = [operationCopy database];
  v13 = [cloudContext accountIDForDatabase:database];

  code = [errorCopy code];
  v15 = 1;
  if (code > 21)
  {
    if (code > 29)
    {
      if (code != 30)
      {
        if (code == 31)
        {
          v17 = os_log_create("com.apple.notes", "Cloud");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            ic_loggingDescription = [dCopy ic_loggingDescription];
            ic_loggingDescription2 = [operationCopy ic_loggingDescription];
            v46 = 138413058;
            v47 = v13;
            v48 = 2112;
            v49 = ic_loggingDescription;
            v50 = 2112;
            v51 = ic_loggingDescription2;
            v52 = 2112;
            v53 = errorCopy;
            _os_log_error_impl(&dword_214D51000, v17, OS_LOG_TYPE_ERROR, "Reference violation for server record in account ID %@: %@ %@: %@", &v46, 0x2Au);
          }

          [(ICCloudSyncingObject *)self fixBrokenReferencesWithError:errorCopy];
          goto LABEL_22;
        }

        goto LABEL_19;
      }

      v19 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        ic_loggingDescription3 = [dCopy ic_loggingDescription];
        ic_loggingDescription4 = [operationCopy ic_loggingDescription];
        v46 = 138412802;
        v47 = v13;
        v48 = 2112;
        v49 = ic_loggingDescription3;
        v50 = 2112;
        v51 = ic_loggingDescription4;
        _os_log_error_impl(&dword_214D51000, v19, OS_LOG_TYPE_ERROR, "Already Shared error in account ID %@: for %@ %@", &v46, 0x20u);
      }

      [(ICCloudSyncingObject *)self setServerShare:0];
      v15 = 1;
      [(ICCloudSyncingObject *)self setNeedsToBeFetchedFromCloud:1];
    }

    else if (code != 22 && code != 26)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

  if (code > 13)
  {
    if (code != 14)
    {
      if (code != 20)
      {
        goto LABEL_19;
      }

      goto LABEL_42;
    }

    userInfo = [errorCopy userInfo];
    v21 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];

    if (v21)
    {
      recordID = [v21 recordID];
      recordID2 = [(ICCloudSyncingObject *)self recordID];
      v24 = [recordID ic_hasEqualRecordNameWithRecordID:recordID2];

      if (!v24)
      {
        v31 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          ic_loggingDescription5 = [v21 ic_loggingDescription];
          ic_loggingDescription6 = [operationCopy ic_loggingDescription];
          v46 = 138413058;
          v47 = v13;
          v48 = 2112;
          v49 = ic_loggingDescription5;
          v50 = 2112;
          v51 = ic_loggingDescription6;
          v52 = 2112;
          v53 = errorCopy;
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
          ic_loggingDescription7 = [v21 ic_loggingDescription];
          ic_loggingDescription8 = [operationCopy ic_loggingDescription];
          v46 = 138413058;
          v47 = v13;
          v48 = 2112;
          v49 = ic_loggingDescription7;
          v50 = 2112;
          v51 = ic_loggingDescription8;
          v52 = 2112;
          v53 = errorCopy;
          _os_log_impl(&dword_214D51000, v26, OS_LOG_TYPE_INFO, "Server record changed in account ID %@: %@ %@: %@", &v46, 0x2Au);
        }

        [(ICCloudSyncingObject *)self objectWasFetchedFromCloudWithRecord:v21 accountID:v13];
        v15 = 1;
        goto LABEL_41;
      }

      if (v27)
      {
        ic_loggingDescription9 = [v21 ic_loggingDescription];
        ic_loggingDescription10 = [operationCopy ic_loggingDescription];
        v46 = 138413058;
        v47 = v13;
        v48 = 2112;
        v49 = ic_loggingDescription9;
        v50 = 2112;
        v51 = ic_loggingDescription10;
        v52 = 2112;
        v53 = errorCopy;
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
        ic_loggingDescription9 = [(ICCloudSyncingObject *)self shortLoggingDescription];
        ic_loggingDescription10 = [operationCopy ic_loggingDescription];
        v46 = 138413058;
        v47 = v13;
        v48 = 2112;
        v49 = ic_loggingDescription9;
        v50 = 2112;
        v51 = ic_loggingDescription10;
        v52 = 2112;
        v53 = errorCopy;
        v30 = "Server record changed with no server record in the error in account ID %@: %@ %@: %@";
        goto LABEL_33;
      }
    }

    v15 = 1;
    [(ICCloudSyncingObject *)self setNeedsToBeFetchedFromCloud:1];
LABEL_41:

    goto LABEL_42;
  }

  if ((code - 6) >= 2)
  {
    if (code == 11)
    {
      v16 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        ic_loggingDescription11 = [dCopy ic_loggingDescription];
        ic_loggingDescription12 = [operationCopy ic_loggingDescription];
        v46 = 138413058;
        v47 = v13;
        v48 = 2112;
        v49 = ic_loggingDescription11;
        v50 = 2112;
        v51 = ic_loggingDescription12;
        v52 = 2112;
        v53 = errorCopy;
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
      ic_loggingDescription13 = [dCopy ic_loggingDescription];
      ic_loggingDescription14 = [operationCopy ic_loggingDescription];
      userInfo2 = [errorCopy userInfo];
      v46 = 138413314;
      v47 = v13;
      v48 = 2112;
      v49 = ic_loggingDescription13;
      v50 = 2112;
      v51 = ic_loggingDescription14;
      v52 = 2112;
      v53 = errorCopy;
      v54 = 2112;
      v55 = userInfo2;
      _os_log_error_impl(&dword_214D51000, v18, OS_LOG_TYPE_ERROR, "Error pushing in account ID %@: %@ %@: %@\nuserInfo: %@", &v46, 0x34u);
    }

    goto LABEL_22;
  }

LABEL_42:
  [objc_opt_class() deleteTemporaryAssetFilesForOperation:operationCopy];

  return v15;
}

- (void)objectWasPushedToCloudWithOperation:(id)operation serverRecord:(id)record
{
  v23 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  operationCopy = operation;
  v8 = [(ICCloudSyncingObject *)self versionForOperation:operationCopy];
  cloudState = [(ICCloudSyncingObject *)self cloudState];
  latestVersionSyncedToCloud = [cloudState latestVersionSyncedToCloud];

  if (v8 > latestVersionSyncedToCloud)
  {
    cloudState2 = [(ICCloudSyncingObject *)self cloudState];
    [cloudState2 setLatestVersionSyncedToCloud:v8];
  }

  [objc_opt_class() deleteTemporaryAssetFilesForOperation:operationCopy];

  [(ICCloudSyncingObject *)self resetFailureCounts];
  [(ICCloudSyncingObject *)self setInCloud:1];
  serverRecord = [(ICCloudSyncingObject *)self serverRecord];
  if (serverRecord && (v13 = serverRecord, -[ICCloudSyncingObject serverRecord](self, "serverRecord"), v14 = objc_claimAutoreleasedReturnValue(), [v14 modificationDate], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(recordCopy, "modificationDate"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "ic_isLaterThanDate:", v16), v16, v15, v14, v13, (v17 & 1) != 0))
  {
    v18 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      recordID = [recordCopy recordID];
      recordName = [recordID recordName];
      v21 = 138412290;
      v22 = recordName;
      _os_log_impl(&dword_214D51000, v18, OS_LOG_TYPE_DEFAULT, "Tried to cache a record that is older than or equal to our current version: %@", &v21, 0xCu);
    }
  }

  else
  {
    [(ICCloudSyncingObject *)self setServerRecord:recordCopy];
  }
}

- (void)objectWasFetchedFromCloudWithRecord:(id)record accountID:(id)d force:(BOOL)force
{
  recordCopy = record;
  dCopy = d;
  if (force || (-[ICCloudSyncingObject serverRecord](self, "serverRecord"), v10 = objc_claimAutoreleasedReturnValue(), [v10 recordChangeTag], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(recordCopy, "recordChangeTag"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToString:", v12), v12, v11, v10, (v13 & 1) == 0))
  {
    [(ICCloudSyncingObject *)self setMergingRecord:1];
    [(ICCloudSyncingObject *)self mergeCloudKitRecord:recordCopy accountID:dCopy approach:0];
    [(ICCloudSyncingObject *)self setMergingRecord:0];
    serverRecord = [(ICCloudSyncingObject *)self serverRecord];
    if (serverRecord && (v16 = serverRecord, -[ICCloudSyncingObject serverRecord](self, "serverRecord"), v17 = objc_claimAutoreleasedReturnValue(), [v17 modificationDate], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(recordCopy, "modificationDate"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v18, "ic_isLaterThanDate:", v19), v19, v18, v17, v16, (v20 & 1) != 0))
    {
      v21 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [ICCloudSyncingObject objectWasFetchedFromCloudWithRecord:recordCopy accountID:? force:?];
      }
    }

    else
    {
      [(ICCloudSyncingObject *)self setServerRecord:recordCopy];
    }

    share = [recordCopy share];
    if (share)
    {
    }

    else
    {
      serverShare = [(ICCloudSyncingObject *)self serverShare];

      if (serverShare)
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
      [ICCloudSyncingObject objectWasFetchedFromCloudWithRecord:recordCopy accountID:? force:?];
    }
  }

  [(ICCloudSyncingObject *)self setNeedsToBeFetchedFromCloud:0];
}

- (void)objectWasFetchedButDoesNotExistInCloud
{
  v9 = *MEMORY[0x277D85DE8];
  recordID = [(ICCloudSyncingObject *)self recordID];
  ic_isOwnedByCurrentUser = [recordID ic_isOwnedByCurrentUser];

  if (ic_isOwnedByCurrentUser)
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
      shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
      v7 = 138412290;
      v8 = shortLoggingDescription;
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

- (unint64_t)numberOfAssetsInTemporaryRecord:(id)record
{
  v32 = *MEMORY[0x277D85DE8];
  assetsByKey = [record assetsByKey];
  v17 = [assetsByKey count];
  v4 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudSyncingObject numberOfAssetsInTemporaryRecord:v4];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [assetsByKey allKeys];
  v21 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v21)
  {
    v19 = *v27;
    v20 = assetsByKey;
    do
    {
      v5 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [assetsByKey objectForKeyedSubscript:*(*(&v26 + 1) + 8 * v5)];
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
        assetsByKey = v20;
      }

      while (v5 != v21);
      v15 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      v21 = v15;
    }

    while (v15);
  }

  return v17;
}

- (void)setActivityEventsData:(id)data
{
  persistedActivityEventsStorage = self->_persistedActivityEventsStorage;
  self->_persistedActivityEventsStorage = 0;
  dataCopy = data;

  checklistItemToActivityEventsStorage = self->_checklistItemToActivityEventsStorage;
  self->_checklistItemToActivityEventsStorage = 0;

  [(ICCloudSyncingObject *)self setValue:dataCopy forEncryptableKey:@"activityEventsData"];
}

- (ICTTOrderedSetVersionedDocument)activityEventsDocument
{
  if ([objc_opt_class() supportsActivityEvents])
  {
    activityEventsDocument = self->_activityEventsDocument;
    if (!activityEventsDocument)
    {
      v4 = [ICTTOrderedSetVersionedDocument alloc];
      activityEventsData = [(ICCloudSyncingObject *)self activityEventsData];
      currentReplicaID = [(ICCloudSyncingObject *)self currentReplicaID];
      v7 = [(ICTTVersionedDocument *)v4 initWithData:activityEventsData replicaID:currentReplicaID];
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

- (unint64_t)mergeActivityEventsDocument:(id)document
{
  documentCopy = document;
  if ([objc_opt_class() supportsActivityEvents])
  {
    activityEventsDocument = [(ICCloudSyncingObject *)self activityEventsDocument];
    v6 = [activityEventsDocument mergeWithOrderedSetVersionedDocument:documentCopy];

    if (v6 == 2)
    {
      activityEventsDocument2 = [(ICCloudSyncingObject *)self activityEventsDocument];
      serialize = [activityEventsDocument2 serialize];
      [(ICCloudSyncingObject *)self setActivityEventsData:serialize];

      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)intrinsicNotesVersionForScenario:(unint64_t)scenario
{
  if ([(ICCloudSyncingObject *)self isUnsupported]|| [(ICCloudSyncingObject *)self needsInitialFetchFromCloudCheckingParent])
  {

    return [(ICCloudSyncingObject *)self minimumSupportedNotesVersion];
  }

  else if (scenario == 1 || ![(ICCloudSyncingObject *)self isPasswordProtected])
  {
    return 0;
  }

  else
  {
    cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
    intrinsicNotesVersion = [cryptoStrategy intrinsicNotesVersion];

    return intrinsicNotesVersion;
  }
}

- (void)requireMinimumSupportedVersionAndPropagateToChildObjects:(int64_t)objects
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

  parentCloudObjectForMinimumSupportedVersionPropagation = [(ICCloudSyncingObject *)self parentCloudObjectForMinimumSupportedVersionPropagation];
  v6 = parentCloudObjectForMinimumSupportedVersionPropagation;
  if (parentCloudObjectForMinimumSupportedVersionPropagation)
  {
    minimumSupportedNotesVersion = [parentCloudObjectForMinimumSupportedVersionPropagation minimumSupportedNotesVersion];
  }

  else
  {
    minimumSupportedNotesVersion = 0;
  }

  intrinsicNotesVersion = [(ICCloudSyncingObject *)self intrinsicNotesVersion];
  if (minimumSupportedNotesVersion <= intrinsicNotesVersion)
  {
    v10 = intrinsicNotesVersion;
  }

  else
  {
    v10 = minimumSupportedNotesVersion;
  }

  if (v10 <= objects)
  {
    objectsCopy = objects;
  }

  else
  {
    objectsCopy = v10;
  }

  if ([(ICCloudSyncingObject *)self minimumSupportedNotesVersion]!= objectsCopy)
  {
    minimumSupportedNotesVersion2 = [(ICCloudSyncingObject *)self minimumSupportedNotesVersion];
    v13 = os_log_create("com.apple.notes", "Cloud");
    v14 = v13;
    if (minimumSupportedNotesVersion2 <= objectsCopy)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [ICCloudSyncingObject requireMinimumSupportedVersionAndPropagateToChildObjects:];
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      minimumSupportedNotesVersion3 = [(ICCloudSyncingObject *)self minimumSupportedNotesVersion];
      shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
      *buf = 134218498;
      objectsCopy2 = minimumSupportedNotesVersion3;
      v35 = 2048;
      v36 = objectsCopy;
      v37 = 2112;
      v38 = shortLoggingDescription;
      _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_DEFAULT, "Downgrading minimumSupportedNotesVersion from %lld to %lld for object: %@", buf, 0x20u);
    }

    [(ICCloudSyncingObject *)self setMinimumSupportedNotesVersion:objectsCopy];
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
          shortLoggingDescription2 = [v22 shortLoggingDescription];
          *buf = 134218242;
          objectsCopy2 = objects;
          v35 = 2112;
          v36 = shortLoggingDescription2;
          _os_log_debug_impl(&dword_214D51000, v24, OS_LOG_TYPE_DEBUG, "Propagating minimumSupportedNotesVersion %lld to child object: %@", buf, 0x16u);

          v20 = obj;
        }

        [v22 requireMinimumSupportedVersionAndPropagateToChildObjects:objects];
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
  bundleIdentifiersWithReplicaID = [objc_opt_class() bundleIdentifiersWithReplicaID];
  v5 = [bundleIdentifiersWithReplicaID countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(bundleIdentifiersWithReplicaID);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        cloudAccount = [(ICCloudSyncingObject *)self cloudAccount];
        v11 = [cloudAccount replicaIDForBundleIdentifier:v9];
        [v3 ic_addNonNilObject:v11];
      }

      v6 = [bundleIdentifiersWithReplicaID countByEnumeratingWithState:&v14 objects:v18 count:16];
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
      replicaIDToNotesVersionData = self->_replicaIDToNotesVersion;
      self->_replicaIDToNotesVersion = v4;
    }

    else
    {
      v8 = [ICMergeableDictionary alloc];
      replicaIDToNotesVersionData = [(ICCloudSyncingObject *)self replicaIDToNotesVersionData];
      currentReplicaID = [(ICCloudSyncingObject *)self currentReplicaID];
      v10 = [(ICMergeableDictionary *)v8 initWithData:replicaIDToNotesVersionData replicaID:currentReplicaID];
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

- (id)notesVersionForReplicaID:(id)d
{
  dCopy = d;
  cR_unserialized = [MEMORY[0x277CCAD78] CR_unserialized];
  v6 = [dCopy isEqual:cR_unserialized];

  if (v6)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(objc_opt_class(), "currentNotesVersion")}];
  }

  else
  {
    replicaIDToNotesVersion = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
    v7 = [replicaIDToNotesVersion objectForKeyedSubscript:dCopy];
  }

  return v7;
}

- (void)setNotesVersion:(id)version forReplicaID:(id)d
{
  versionCopy = version;
  dCopy = d;
  replicaIDToNotesVersion = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
  v8 = [replicaIDToNotesVersion objectForKeyedSubscript:dCopy];

  v9 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == versionCopy)
  {
    v10 = 0;
  }

  else
  {
    v10 = versionCopy;
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
      replicaIDToNotesVersion2 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
      [replicaIDToNotesVersion2 setObject:versionCopy forKeyedSubscript:dCopy];

      replicaIDToNotesVersion3 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
      encodedData = [replicaIDToNotesVersion3 encodedData];
      [(ICCloudSyncingObject *)self setReplicaIDToNotesVersionData:encodedData];

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

- (unint64_t)mergeReplicaIDToNotesVersion:(id)version
{
  v49 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  if (![objc_opt_class() supportsNotesVersionTracking])
  {
    v13 = 0;
    goto LABEL_7;
  }

  replicaIDToNotesVersionData = [(ICCloudSyncingObject *)self replicaIDToNotesVersionData];
  if (!replicaIDToNotesVersionData || (v6 = replicaIDToNotesVersionData, -[ICCloudSyncingObject replicaIDToNotesVersion](self, "replicaIDToNotesVersion"), v7 = objc_claimAutoreleasedReturnValue(), [v7 allKeys], v8 = objc_claimAutoreleasedReturnValue(), -[ICCloudSyncingObject deviceReplicaIDs](self, "deviceReplicaIDs"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v7, v6, v10))
  {
    [(ICCloudSyncingObject *)self willChangeValueForKey:@"replicaIDToNotesVersion"];
    encodedData = [versionCopy encodedData];
    [(ICCloudSyncingObject *)self setReplicaIDToNotesVersionData:encodedData];

    replicaIDToNotesVersion = self->_replicaIDToNotesVersion;
    self->_replicaIDToNotesVersion = 0;

    [(ICCloudSyncingObject *)self didChangeValueForKey:@"replicaIDToNotesVersion"];
LABEL_5:
    v13 = 2;
    goto LABEL_7;
  }

  replicaID = [versionCopy replicaID];
  replicaIDToNotesVersion = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
  replicaID2 = [replicaIDToNotesVersion replicaID];
  v18 = [replicaID isEqual:replicaID2];

  if (v18)
  {
    v19 = [ICMergeableDictionary alloc];
    encodedData2 = [versionCopy encodedData];
    uUID = [MEMORY[0x277CCAD78] UUID];
    v22 = [(ICMergeableDictionary *)v19 initWithData:encodedData2 replicaID:uUID];

    versionCopy = v22;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [versionCopy allKeys];
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
        replicaIDToNotesVersion2 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
        v26 = [replicaIDToNotesVersion2 objectForKeyedSubscript:v24];
        if (v26)
        {
          v27 = v26;
          [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
          v29 = v28 = self;
          v30 = [v29 objectForKeyedSubscript:v24];
          v31 = versionCopy;
          v32 = [versionCopy objectForKeyedSubscript:v24];
          v33 = [v30 isEqual:v32];

          if (v33)
          {
            versionCopy = v31;
            self = v28;
            continue;
          }

          deviceReplicaIDs = [(ICCloudSyncingObject *)v28 deviceReplicaIDs];
          v35 = [deviceReplicaIDs containsObject:v24];

          self = v28;
          if (v35)
          {
            replicaIDToNotesVersion2 = [(ICCloudSyncingObject *)v28 replicaIDToNotesVersion];
            replicaIDToNotesVersion3 = [replicaIDToNotesVersion2 objectForKeyedSubscript:v24];
            versionCopy = v31;
            [v31 setObject:replicaIDToNotesVersion3 forKeyedSubscript:v24];
          }

          else
          {
            versionCopy = v31;
            replicaIDToNotesVersion2 = [v31 objectForKeyedSubscript:v24];
            replicaIDToNotesVersion3 = [(ICCloudSyncingObject *)v28 replicaIDToNotesVersion];
            [replicaIDToNotesVersion3 setObject:replicaIDToNotesVersion2 forKeyedSubscript:v24];
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

  replicaIDToNotesVersion4 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
  v13 = [replicaIDToNotesVersion4 mergeWithDictionary:versionCopy];

  if ((v40 & 1) != 0 || v13 == 2)
  {
    replicaIDToNotesVersion5 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
    encodedData3 = [replicaIDToNotesVersion5 encodedData];
    [(ICCloudSyncingObject *)self setReplicaIDToNotesVersionData:encodedData3];

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
      deviceReplicaIDs = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(deviceReplicaIDs, OS_LOG_TYPE_DEBUG))
      {
        [(ICCloudSyncingObject *)self updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded];
      }

      v4 = 0;
      v5 = deviceReplicaIDs;
      goto LABEL_15;
    }

    cloudAccount = [(ICCloudSyncingObject *)self cloudAccount];
    v7 = ICNotesAppBundleIdentifier();
    v5 = [cloudAccount replicaIDForBundleIdentifier:v7];

    if (v5)
    {
      if ([(ICCloudSyncingObject *)self needsInitialFetchFromCloud])
      {
        deviceReplicaIDs = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(deviceReplicaIDs, OS_LOG_TYPE_DEBUG))
        {
          [(ICCloudSyncingObject *)self updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded];
        }
      }

      else if ([(ICCloudSyncingObject *)self isPasswordProtected]&& ![(ICCloudSyncingObject *)self isAuthenticated])
      {
        deviceReplicaIDs = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(deviceReplicaIDs, OS_LOG_TYPE_DEBUG))
        {
          [(ICCloudSyncingObject *)self updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded];
        }
      }

      else
      {
        if (![(ICCloudSyncingObject *)self isPasswordProtected]|| ([(ICCloudSyncingObject *)self unappliedEncryptedRecord], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
        {
          v10 = [(ICCloudSyncingObject *)self notesVersionForReplicaID:v5];
          integerValue = [v10 integerValue];

          currentNotesVersion = [objc_opt_class() currentNotesVersion];
          v13 = currentNotesVersion;
          v14 = currentNotesVersion - integerValue;
          if (currentNotesVersion <= integerValue)
          {
            if (currentNotesVersion == integerValue)
            {
              v4 = 0;
              goto LABEL_16;
            }

            if (currentNotesVersion < integerValue)
            {
              v26 = os_log_create("com.apple.notes", "Cloud");
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                objectID = [(ICCloudSyncingObject *)self objectID];
                *buf = 138412290;
                v34 = objectID;
                _os_log_impl(&dword_214D51000, v26, OS_LOG_TYPE_INFO, "Device Notes version is greater than current Notes version {objectID: %@}", buf, 0xCu);
              }
            }
          }

          else
          {
            v15 = integerValue + 1;
            do
            {
              cloudState = [(ICCloudSyncingObject *)self cloudState];
              currentLocalVersion = [cloudState currentLocalVersion];

              [(ICCloudSyncingObject *)self willUpdateDeviceReplicaIDsToNotesVersion:v15];
              cloudState2 = [(ICCloudSyncingObject *)self cloudState];
              currentLocalVersion2 = [cloudState2 currentLocalVersion];

              if (currentLocalVersion2 != currentLocalVersion)
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
          deviceReplicaIDs = [(ICCloudSyncingObject *)self deviceReplicaIDs];
          v20 = [deviceReplicaIDs countByEnumeratingWithState:&v28 objects:v32 count:16];
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
                  objc_enumerationMutation(deviceReplicaIDs);
                }

                v24 = *(*(&v28 + 1) + 8 * i);
                v25 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
                [(ICCloudSyncingObject *)self setNotesVersion:v25 forReplicaID:v24];
              }

              v21 = [deviceReplicaIDs countByEnumeratingWithState:&v28 objects:v32 count:16];
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

        deviceReplicaIDs = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(deviceReplicaIDs, OS_LOG_TYPE_DEBUG))
        {
          [(ICCloudSyncingObject *)self updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded];
        }
      }
    }

    else
    {
      deviceReplicaIDs = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(deviceReplicaIDs, OS_LOG_TYPE_DEBUG))
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
  replicaIDToNotesVersion = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
  allKeys = [replicaIDToNotesVersion allKeys];
  v5 = [allKeys count];

  if (v5)
  {
    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      ic_loggingDescription = [(ICCloudSyncingObject *)self ic_loggingDescription];
      v11 = 138412290;
      v12 = ic_loggingDescription;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "Clearing replicaIDToNotesVersion for: %@", &v11, 0xCu);
    }

    replicaIDToNotesVersion2 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
    [replicaIDToNotesVersion2 removeAllObjects];

    replicaIDToNotesVersion3 = [(ICCloudSyncingObject *)self replicaIDToNotesVersion];
    encodedData = [replicaIDToNotesVersion3 encodedData];
    [(ICCloudSyncingObject *)self setReplicaIDToNotesVersionData:encodedData];
  }
}

- (NSString)userSpecificRecordType
{
  recordType = [(ICCloudSyncingObject *)self recordType];
  v3 = [ICUserSpecificRecordIDParser userSpecificRecordTypeForSharedRecordType:recordType];

  return v3;
}

- (CKRecordID)userSpecificRecordID
{
  managedObjectContext = [(ICCloudSyncingObject *)self managedObjectContext];

  if (managedObjectContext)
  {
    recordID = [(ICCloudSyncingObject *)self recordID];
    if (recordID)
    {
      cloudAccount = [(ICCloudSyncingObject *)self cloudAccount];
      userRecordName = [cloudAccount userRecordName];

      if ([userRecordName length])
      {
        zoneOwnerName = [(ICCloudSyncingObject *)self zoneOwnerName];
        v8 = zoneOwnerName;
        v9 = *MEMORY[0x277CBBF28];
        if (zoneOwnerName)
        {
          v10 = zoneOwnerName;
        }

        else
        {
          v10 = *MEMORY[0x277CBBF28];
        }

        v11 = v10;

        if ([v11 isEqualToString:v9])
        {
          v12 = userRecordName;
        }

        else
        {
          v12 = v11;
        }

        v13 = v12;
        v14 = [ICUserSpecificRecordIDParser alloc];
        recordType = [(ICCloudSyncingObject *)self recordType];
        v16 = [(ICUserSpecificRecordIDParser *)v14 initWithSharedRecordType:recordType sharedRecordID:recordID userRecordName:userRecordName ownerName:v13];

        recordID2 = [(ICUserSpecificRecordIDParser *)v16 recordID];

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
      userRecordName = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(userRecordName, OS_LOG_TYPE_DEBUG))
      {
        [(ICCloudSyncingObject *)self userSpecificRecordID];
      }
    }

    recordID2 = 0;
  }

  else
  {
    userRecordName = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(userRecordName, OS_LOG_TYPE_DEBUG))
    {
      [(ICCloudSyncingObject *)self userSpecificRecordID];
    }

    recordID2 = 0;
    recordID = userRecordName;
  }

LABEL_21:

  return recordID2;
}

- (id)makeUserSpecificCloudKitRecordForApproach:(int64_t)approach
{
  userSpecificServerRecord = [(ICCloudSyncingObject *)self userSpecificServerRecord];
  v5 = [userSpecificServerRecord copy];

  if (!v5)
  {
LABEL_7:
    userSpecificRecordID = [(ICCloudSyncingObject *)self userSpecificRecordID];
    if (userSpecificRecordID)
    {
      v15 = objc_alloc(MEMORY[0x277CBC5A0]);
      userSpecificRecordType = [(ICCloudSyncingObject *)self userSpecificRecordType];
      userSpecificRecordID2 = [(ICCloudSyncingObject *)self userSpecificRecordID];
      v5 = [v15 initWithRecordType:userSpecificRecordType recordID:userSpecificRecordID2];
    }

    else
    {
      [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObject makeUserSpecificCloudKitRecordForApproach:]" simulateCrash:1 showAlert:0 format:@"Asking for user specific record but no record ID could be created"];
      v5 = 0;
    }

    goto LABEL_10;
  }

  recordName = [(ICCloudSyncingObject *)self recordName];

  if (!recordName)
  {
    goto LABEL_11;
  }

  v7 = [ICUserSpecificRecordIDParser alloc];
  recordID = [v5 recordID];
  recordName2 = [recordID recordName];
  v10 = [(ICUserSpecificRecordIDParser *)v7 initWithRecordName:recordName2];
  sharedRecordID = [(ICUserSpecificRecordIDParser *)v10 sharedRecordID];
  userSpecificRecordID = [sharedRecordID recordName];

  recordName3 = [(ICCloudSyncingObject *)self recordName];
  LOBYTE(recordName2) = [userSpecificRecordID ic_isCaseInsensitiveEqualToString:recordName3];

  if ((recordName2 & 1) == 0)
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

- (void)didFetchUserSpecificRecord:(id)record accountID:(id)d force:(BOOL)force
{
  recordCopy = record;
  dCopy = d;
  if (force || (-[ICCloudSyncingObject userSpecificServerRecord](self, "userSpecificServerRecord"), v10 = objc_claimAutoreleasedReturnValue(), [v10 recordChangeTag], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(recordCopy, "recordChangeTag"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToString:", v12), v12, v11, v10, (v13 & 1) == 0))
  {
    [(ICCloudSyncingObject *)self mergeDataFromUserSpecificRecord:recordCopy accountID:dCopy];
    v15 = [ICUserSpecificRecordIDParser alloc];
    userSpecificServerRecord = [(ICCloudSyncingObject *)self userSpecificServerRecord];
    recordID = [userSpecificServerRecord recordID];
    recordName = [recordID recordName];
    v19 = [(ICUserSpecificRecordIDParser *)v15 initWithRecordName:recordName];

    if (v19)
    {
      userSpecificServerRecord2 = [(ICCloudSyncingObject *)self userSpecificServerRecord];
      modificationDate = [userSpecificServerRecord2 modificationDate];
      modificationDate2 = [recordCopy modificationDate];
      v23 = [modificationDate ic_isEarlierThanDate:modificationDate2];

      if ((v23 & 1) == 0)
      {
        v14 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [ICCloudSyncingObject didFetchUserSpecificRecord:dCopy accountID:recordCopy force:?];
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

    [(ICCloudSyncingObject *)self setUserSpecificServerRecord:recordCopy];
    goto LABEL_14;
  }

  v14 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ICCloudSyncingObject didFetchUserSpecificRecord:dCopy accountID:recordCopy force:?];
  }

LABEL_9:

LABEL_14:
  [(ICCloudSyncingObject *)self setNeedsToUpdateUserSpecificRecordReferenceActions:[(ICCloudSyncingObject *)self hasExpectedReferenceActionsInUserSpecificRecord:recordCopy]^ 1];
}

- (void)findAndResaveUserSpecificRecordThrowingReferenceViolationForDeletionWithError:(id)error
{
  v66 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (CKErrorIsCode())
  {
    userInfo = [errorCopy userInfo];
    v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBF70]];

    if (v5)
    {
      v48 = errorCopy;
      array = [MEMORY[0x277CBEB18] array];
      v47 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"recordID=([^ options:]+)" error:{0, 0}];
      v7 = [v47 firstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];
      v8 = v7;
      if (v7 && [v7 numberOfRanges] >= 2)
      {
        v9 = [v8 rangeAtIndex:1];
        v11 = [v5 substringWithRange:{v9, v10}];
        if ([v11 containsString:@"_UserSpecific::"])
        {
          [array addObject:v11];
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
                    [array addObject:v26];
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
      obj = array;
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
              sharedRecordID = [(ICUserSpecificRecordIDParser *)v32 sharedRecordID];
              cloudAccount = [(ICCloudSyncingObject *)self cloudAccount];
              identifier = [cloudAccount identifier];
              managedObjectContext = [(ICCloudSyncingObject *)self managedObjectContext];
              v38 = [ICCloudSyncingObject objectWithRecordID:sharedRecordID accountID:identifier context:managedObjectContext];

              v39 = os_log_create("com.apple.notes", "Cloud");
              v40 = v39;
              if (v38)
              {
                v41 = v39;
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                {
                  shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
                  shortLoggingDescription2 = [v38 shortLoggingDescription];
                  *buf = 138412546;
                  v61 = shortLoggingDescription;
                  v62 = 2112;
                  v63 = shortLoggingDescription2;
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

      errorCopy = v48;
      v5 = v49;
    }
  }
}

- (void)didSaveUserSpecificRecord:(id)record
{
  v19 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  userSpecificServerRecord = [(ICCloudSyncingObject *)self userSpecificServerRecord];
  if (userSpecificServerRecord && (v6 = userSpecificServerRecord, -[ICCloudSyncingObject userSpecificServerRecord](self, "userSpecificServerRecord"), v7 = objc_claimAutoreleasedReturnValue(), [v7 modificationDate], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(recordCopy, "modificationDate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "ic_isEarlierThanDate:", v9), v9, v8, v7, v6, !v10))
  {
    v11 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      userSpecificServerRecord2 = [(ICCloudSyncingObject *)self userSpecificServerRecord];
      ic_loggingDescription = [userSpecificServerRecord2 ic_loggingDescription];
      ic_loggingDescription2 = [recordCopy ic_loggingDescription];
      v15 = 138412546;
      v16 = ic_loggingDescription;
      v17 = 2112;
      v18 = ic_loggingDescription2;
      _os_log_impl(&dword_214D51000, v11, OS_LOG_TYPE_DEFAULT, "Tried to cache user-specific record older than or equal to ours: ours=%@ theirs=%@", &v15, 0x16u);
    }
  }

  else
  {
    [(ICCloudSyncingObject *)self setUserSpecificServerRecord:recordCopy];
  }

  [(ICCloudSyncingObject *)self setNeedsToSaveUserSpecificRecord:0];
}

- (BOOL)didFailToSaveUserSpecificRecordWithID:(id)d accountID:(id)iD error:(id)error
{
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  errorCopy = error;
  code = [errorCopy code];
  if (code > 0x1A)
  {
    goto LABEL_12;
  }

  if (((1 << code) & 0x45000C0) == 0)
  {
    if (code == 11)
    {
      v22 = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        ic_loggingDescription = [dCopy ic_loggingDescription];
        v33 = 138412546;
        v34 = iDCopy;
        v35 = 2112;
        v36 = ic_loggingDescription;
        _os_log_impl(&dword_214D51000, v22, OS_LOG_TYPE_INFO, "Invalid cached user-specific server record in account ID %@: %@", &v33, 0x16u);
      }

      [(ICCloudSyncingObject *)self setUserSpecificServerRecord:0];
      goto LABEL_3;
    }

    if (code == 14)
    {
      userInfo = [errorCopy userInfo];
      v15 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];

      if (v15)
      {
        recordID = [v15 recordID];
        userSpecificRecordID = [(ICCloudSyncingObject *)self userSpecificRecordID];
        v18 = [recordID ic_hasEqualRecordNameWithRecordID:userSpecificRecordID];

        if (!v18)
        {
          userSpecificRecordID2 = [(ICCloudSyncingObject *)self userSpecificRecordID];

          v27 = os_log_create("com.apple.notes", "Cloud");
          v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
          if (userSpecificRecordID2)
          {
            if (v28)
            {
              ic_loggingDescription2 = [v15 ic_loggingDescription];
              userSpecificRecordID3 = [(ICCloudSyncingObject *)self userSpecificRecordID];
              recordName = [userSpecificRecordID3 recordName];
              v33 = 138413058;
              v34 = iDCopy;
              v35 = 2112;
              v36 = ic_loggingDescription2;
              v37 = 2112;
              v38 = recordName;
              v39 = 2112;
              v40 = errorCopy;
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
          ic_loggingDescription3 = [v15 ic_loggingDescription];
          v33 = 138412546;
          v34 = iDCopy;
          v35 = 2112;
          v36 = ic_loggingDescription3;
          _os_log_impl(&dword_214D51000, v19, OS_LOG_TYPE_INFO, "User-specific server record changed in account ID %@: %@", &v33, 0x16u);
        }

        [(ICCloudSyncingObject *)self didFetchUserSpecificRecord:v15 accountID:iDCopy force:0];
      }

      else
      {
        v24 = os_log_create("com.apple.notes", "Cloud");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
          v33 = 138412802;
          v34 = iDCopy;
          v35 = 2112;
          v36 = shortLoggingDescription;
          v37 = 2112;
          v38 = errorCopy;
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
      ic_loggingDescription4 = [dCopy ic_loggingDescription];
      v33 = 138412802;
      v34 = iDCopy;
      v35 = 2112;
      v36 = ic_loggingDescription4;
      v37 = 2112;
      v38 = errorCopy;
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
      needsToUpdateUserSpecificRecordReferenceActions = [(ICCloudSyncingObject *)self needsToUpdateUserSpecificRecordReferenceActions];
    }

    else
    {
      needsToUpdateUserSpecificRecordReferenceActions = 0;
    }

    [(ICCloudSyncingObject *)self setNeedsToSaveUserSpecificRecord:needsToUpdateUserSpecificRecordReferenceActions];
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

+ (id)assetForData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    v11 = 0;
    goto LABEL_11;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  temporaryAssetDirectoryURL = [self temporaryAssetDirectoryURL];
  v8 = [temporaryAssetDirectoryURL URLByAppendingPathComponent:uUIDString isDirectory:0];

  if (!v8)
  {
    v10 = 0;
    goto LABEL_7;
  }

  v14 = 0;
  v9 = [dataCopy writeToURL:v8 options:0 error:&v14];
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

  v11 = [self assetForTemporaryURL:v8];
LABEL_10:

LABEL_11:

  return v11;
}

+ (id)assetForURL:(id)l
{
  v26 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy || ([MEMORY[0x277CCAA00] defaultManager], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(lCopy, "path"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "fileExistsAtPath:", v6), v6, v5, !v7))
  {
    v16 = 0;
    goto LABEL_14;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  temporaryAssetDirectoryURL = [self temporaryAssetDirectoryURL];
  v11 = [temporaryAssetDirectoryURL URLByAppendingPathComponent:uUIDString isDirectory:0];

  if (!v11)
  {
    v14 = 0;
    goto LABEL_10;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v19 = 0;
  v13 = [defaultManager copyItemAtURL:lCopy toURL:v11 error:&v19];
  v14 = v19;

  if (!v13)
  {
LABEL_10:
    v17 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v21 = lCopy;
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

  v16 = [self assetForTemporaryURL:v11];
LABEL_13:

LABEL_14:

  return v16;
}

+ (id)assetForTemporaryURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    temporaryAssets = [self temporaryAssets];
    objc_sync_enter(temporaryAssets);
    v6 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:lCopy];
    temporaryAssets2 = [self temporaryAssets];
    [temporaryAssets2 addObject:v6];

    v8 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[ICCloudSyncingObject assetForTemporaryURL:];
    }

    objc_sync_exit(temporaryAssets);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)dataForAsset:(id)asset
{
  assetCopy = asset;
  fileURL = [assetCopy fileURL];
  if (fileURL)
  {
    v5 = MEMORY[0x277CBEA90];
    fileURL2 = [assetCopy fileURL];
    v11 = 0;
    v7 = [v5 dataWithContentsOfURL:fileURL2 options:0 error:&v11];
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

+ (void)deleteTemporaryAssetFilesForOperation:(id)operation
{
  operationCopy = operation;
  if (deleteTemporaryAssetFilesForOperation__onceToken != -1)
  {
    +[ICCloudSyncingObject deleteTemporaryAssetFilesForOperation:];
  }

  temporaryAssets = [self temporaryAssets];
  objc_sync_enter(temporaryAssets);
  temporaryAssets2 = [self temporaryAssets];
  v7 = [temporaryAssets2 count];

  objc_sync_exit(temporaryAssets);
  if (v7)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__ICCloudSyncingObject_deleteTemporaryAssetFilesForOperation___block_invoke_2;
    aBlock[3] = &unk_278196D50;
    objc_copyWeak(&v18, &location);
    v8 = operationCopy;
    v17 = v8;
    v9 = _Block_copy(aBlock);
    v10 = deleteTemporaryAssetFilesForOperation__deleteTemporaryAssetFilesQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__ICCloudSyncingObject_deleteTemporaryAssetFilesForOperation___block_invoke_247;
    v12[3] = &unk_278196D78;
    selfCopy = self;
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

+ (void)deleteTemporaryFilesForAsset:(id)asset
{
  v16 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  temporaryAssets = [self temporaryAssets];
  objc_sync_enter(temporaryAssets);
  temporaryAssets2 = [self temporaryAssets];
  [temporaryAssets2 removeObject:assetCopy];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  fileURL = [assetCopy fileURL];
  v14 = 0;
  v9 = [defaultManager removeItemAtURL:fileURL error:&v14];
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
      fileURL2 = [assetCopy fileURL];
      [(ICCloudSyncingObject *)fileURL2 deleteTemporaryFilesForAsset:v15];
    }
  }

  objc_sync_exit(temporaryAssets);
}

+ (void)deleteAllTemporaryAssetFilesForAllObjects
{
  v26 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  temporaryAssetDirectoryURL = [self temporaryAssetDirectoryURL];
  v5 = [defaultManager enumeratorAtURL:temporaryAssetDirectoryURL includingPropertiesForKeys:0 options:0 errorHandler:&__block_literal_global_250];

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
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v18 = 0;
        v14 = [defaultManager2 removeItemAtURL:v12 error:&v18];
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
  outOfDateCommonAssetSignatures = [(ICCloudSyncingObject *)self outOfDateCommonAssetSignatures];
  v3 = [outOfDateCommonAssetSignatures count] != 0;

  return v3;
}

- (BOOL)hasOutOfDateUserSpecificAssetSignatures
{
  if (![objc_opt_class() supportsUserSpecificRecords])
  {
    return 0;
  }

  outOfDateUserSpecificAssetSignatures = [(ICCloudSyncingObject *)self outOfDateUserSpecificAssetSignatures];
  v4 = [outOfDateUserSpecificAssetSignatures count] != 0;

  return v4;
}

- (BOOL)hasUserSpecificAssetSignatures
{
  supportsUserSpecificRecords = [objc_opt_class() supportsUserSpecificRecords];
  if (supportsUserSpecificRecords)
  {

    LOBYTE(supportsUserSpecificRecords) = [(ICCloudSyncingObject *)self hasAssetSignaturesForUserSpecific:1];
  }

  return supportsUserSpecificRecords;
}

- (id)updateFetchFlagsAndReturnRecordIDsNeedingFetchWithContext:(id)context shouldFetchObject:(id)object
{
  contextCopy = context;
  objectCopy = object;
  v8 = objectCopy;
  if (contextCopy && objectCopy && ((*(objectCopy + 2))(objectCopy, self, contextCopy) & 1) != 0)
  {
    v9 = [MEMORY[0x277CBEB58] set];
    if ([(ICCloudSyncingObject *)self hasOutOfDateCommonAssetSignatures])
    {
      [(ICCloudSyncingObject *)self setNeedsToBeFetchedFromCloud:1];
      recordID = [(ICCloudSyncingObject *)self recordID];
      [v9 ic_addNonNilObject:recordID];
    }

    if ([objc_opt_class() supportsUserSpecificRecords] && -[ICCloudSyncingObject hasOutOfDateUserSpecificAssetSignatures](self, "hasOutOfDateUserSpecificAssetSignatures"))
    {
      [(ICCloudSyncingObject *)self setNeedsToFetchUserSpecificRecordAssets:1];
      userSpecificRecordID = [(ICCloudSyncingObject *)self userSpecificRecordID];
      [v9 ic_addNonNilObject:userSpecificRecordID];
    }

    v12 = [(ICCloudSyncingObject *)self descendantsNeedingOnDemandAssetFetchWithContext:contextCopy shouldFetchObject:v8];
    allObjects = [v12 allObjects];
    [v9 addObjectsFromArray:allObjects];

    v14 = [v9 copy];
  }

  else
  {
    v14 = [MEMORY[0x277CBEB98] set];
  }

  return v14;
}

- (id)outOfDateAssetSignaturesForUserSpecific:(BOOL)specific
{
  specificCopy = specific;
  v21 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB58] set];
  assetSignatures = [(ICCloudSyncingObject *)self assetSignatures];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [assetSignatures countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(assetSignatures);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 isUserSpecificRecordKey] == specificCopy && objc_msgSend(v11, "outOfDate"))
        {
          cloudKitRecordKey = [v11 cloudKitRecordKey];
          v13 = [cloudKitRecordKey copy];
          [v5 addObject:v13];
        }
      }

      v8 = [assetSignatures countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];

  return v14;
}

- (BOOL)hasAssetSignaturesForUserSpecific:(BOOL)specific
{
  specificCopy = specific;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  assetSignatures = [(ICCloudSyncingObject *)self assetSignatures];
  v5 = [assetSignatures countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(assetSignatures);
        }

        if ([*(*(&v11 + 1) + 8 * i) isUserSpecificRecordKey] == specificCopy)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [assetSignatures countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    objectsToBeDeletedBeforeThisObject = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(objectsToBeDeletedBeforeThisObject, OS_LOG_TYPE_ERROR))
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
    objectsToBeDeletedBeforeThisObject = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(objectsToBeDeletedBeforeThisObject, OS_LOG_TYPE_ERROR))
    {
      [(ICCloudSyncingObject *)self shouldBeDeletedFromLocalDatabase];
    }

    goto LABEL_10;
  }

  if ([(ICCloudSyncingObject *)self wasRecentlyDeletedByThisDevice])
  {
    objectsToBeDeletedBeforeThisObject = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(objectsToBeDeletedBeforeThisObject, OS_LOG_TYPE_DEBUG))
    {
      [(ICCloudSyncingObject *)self shouldBeDeletedFromLocalDatabase];
    }

    goto LABEL_10;
  }

  if ([(ICCloudSyncingObject *)self isInICloudAccount]&& [(ICCloudSyncingObject *)self isInCloud]&& ![(ICCloudSyncingObject *)self hasSuccessfullyPushedLatestVersionToCloud])
  {
    objectsToBeDeletedBeforeThisObject = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(objectsToBeDeletedBeforeThisObject, OS_LOG_TYPE_DEBUG))
    {
      [(ICCloudSyncingObject *)self shouldBeDeletedFromLocalDatabase];
    }

    goto LABEL_10;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectsToBeDeletedBeforeThisObject = [(ICCloudSyncingObject *)self objectsToBeDeletedBeforeThisObject];
  v6 = [objectsToBeDeletedBeforeThisObject countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(objectsToBeDeletedBeforeThisObject);
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

      v7 = [objectsToBeDeletedBeforeThisObject countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  shortLoggingDescription = [self shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)unmarkForDeletion
{
  shortLoggingDescription = [self shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)setMarkedForDeletion:(BOOL)deletion
{
  deletionCopy = deletion;
  v5 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICCloudSyncingObject *)deletionCopy setMarkedForDeletion:?];
  }

  [(ICCloudSyncingObject *)self willChangeValueForKey:@"markedForDeletion"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:deletionCopy];
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
    creationDate = v6;
  }

  else
  {
    serverRecord = [(ICCloudSyncingObject *)self serverRecord];
    creationDate = [serverRecord creationDate];
  }

  return creationDate;
}

- (NSArray)ancestorCloudObjects
{
  array = [MEMORY[0x277CBEB18] array];
  parentCloudObject = [(ICCloudSyncingObject *)self parentCloudObject];
  if (parentCloudObject)
  {
    v5 = parentCloudObject;
    do
    {
      [array addObject:v5];
      parentCloudObject2 = [v5 parentCloudObject];

      v5 = parentCloudObject2;
    }

    while (parentCloudObject2);
  }

  v7 = [array copy];

  return v7;
}

- (void)updateParentReferenceIfNecessary
{
  shortLoggingDescription = [self shortLoggingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)updateChangeCountsForUnsavedParentReferences
{
  v15 = *MEMORY[0x277D85DE8];
  childCloudObjects = [(ICCloudSyncingObject *)self childCloudObjects];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [childCloudObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(childCloudObjects);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        serverRecord = [v7 serverRecord];
        parent = [serverRecord parent];

        if (!parent)
        {
          [v7 updateChangeCountWithReason:@"Updated parent reference"];
        }

        [v7 updateChangeCountsForUnsavedParentReferences];
      }

      v4 = [childCloudObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
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

  serverShare = [(ICCloudSyncingObject *)self serverShare];
  if (serverShare)
  {
    shareMatchesRecord = [(ICCloudSyncingObject *)self shareMatchesRecord];
  }

  else
  {
    shareMatchesRecord = 0;
  }

  return shareMatchesRecord;
}

- (BOOL)canCurrentUserShare
{
  serverShare = [(ICCloudSyncingObject *)self serverShare];

  if (!serverShare)
  {
    return 1;
  }

  serverShare2 = [(ICCloudSyncingObject *)self serverShare];
  currentUserParticipant = [serverShare2 currentUserParticipant];
  if ([currentUserParticipant role] == 1)
  {
    v6 = 1;
  }

  else
  {
    serverShare3 = [(ICCloudSyncingObject *)self serverShare];
    currentUserParticipant2 = [serverShare3 currentUserParticipant];
    v6 = [currentUserParticipant2 role] == 2;
  }

  return v6;
}

- (BOOL)canBeSharedViaICloud
{
  if (([(ICCloudSyncingObject *)self isPasswordProtected]& 1) != 0)
  {
    return 0;
  }

  cloudAccount = [(ICCloudSyncingObject *)self cloudAccount];
  accountType = [cloudAccount accountType];

  if (accountType != 1)
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
  serverShare = [(ICCloudSyncingObject *)self serverShare];
  if (serverShare && [(ICCloudSyncingObject *)self shareMatchesRecord])
  {
    isSharedViaICloud = 0;
  }

  else
  {
    serverRecord = [(ICCloudSyncingObject *)self serverRecord];
    share = [serverRecord share];
    if (share)
    {
      isSharedViaICloud = 0;
    }

    else
    {
      parentCloudObject = [(ICCloudSyncingObject *)self parentCloudObject];
      isSharedViaICloud = [parentCloudObject isSharedViaICloud];
    }
  }

  return isSharedViaICloud;
}

- (BOOL)isOwnedByCurrentUser
{
  recordID = [(ICCloudSyncingObject *)self recordID];
  ic_isOwnedByCurrentUser = [recordID ic_isOwnedByCurrentUser];

  return ic_isOwnedByCurrentUser;
}

- (BOOL)wasCreatedByCurrentUser
{
  cloudAccount = [(ICCloudSyncingObject *)self cloudAccount];
  serverRecord = [(ICCloudSyncingObject *)self serverRecord];
  if ([(ICCloudSyncingObject *)self isInICloudAccount])
  {
    v5 = 1;
    if ([(ICCloudSyncingObject *)self isInCloud]&& serverRecord && cloudAccount)
    {
      creatorUserRecordID = [serverRecord creatorUserRecordID];
      recordName = [creatorUserRecordID recordName];
      userRecordName = [cloudAccount userRecordName];
      if (([recordName isEqualToString:userRecordName] & 1) == 0)
      {
        creatorUserRecordID2 = [serverRecord creatorUserRecordID];
        recordName2 = [creatorUserRecordID2 recordName];
        v5 = [recordName2 isEqualToString:*MEMORY[0x277CBBF28]];
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
  serverRecord = [(ICCloudSyncingObject *)self serverRecord];
  share = [serverRecord share];

  if (share)
  {
    return 1;
  }

  serverShare = [(ICCloudSyncingObject *)self serverShare];
  if (serverShare)
  {
    shareMatchesRecord = [(ICCloudSyncingObject *)self shareMatchesRecord];
  }

  else
  {
    shareMatchesRecord = 0;
  }

  return shareMatchesRecord;
}

- (id)sharedRootObject
{
  if ([(ICCloudSyncingObject *)self isSharedRootObject])
  {
    selfCopy = self;
  }

  else
  {
    parentCloudObject = [(ICCloudSyncingObject *)self parentCloudObject];
    selfCopy = [parentCloudObject sharedRootObject];
  }

  return selfCopy;
}

- (id)ownerRecordName
{
  if ([(ICCloudSyncingObject *)self isInICloudAccount])
  {
    if ([(ICCloudSyncingObject *)self isOwnedByCurrentUser])
    {
      zoneOwnerName = [(ICCloudSyncingObject *)self zoneOwnerName];
      sharedOwnerRecordName = zoneOwnerName;
      if (!zoneOwnerName || [zoneOwnerName isEqualToString:*MEMORY[0x277CBBF28]])
      {
        cloudAccount = [(ICCloudSyncingObject *)self cloudAccount];
        userRecordName = [cloudAccount userRecordName];

        sharedOwnerRecordName = userRecordName;
      }
    }

    else if ([(ICCloudSyncingObject *)self isSharedViaICloud])
    {
      sharedOwnerRecordName = [(ICCloudSyncingObject *)self sharedOwnerRecordName];
    }

    else
    {
      sharedOwnerRecordName = 0;
    }

    v7 = [sharedOwnerRecordName copy];
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
    serverShare = [(ICCloudSyncingObject *)self serverShare];
    participants = [serverShare participants];

    recordName = [participants countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (recordName)
    {
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != recordName; i = i + 1)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(participants);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          if ([v8 role] == 1)
          {
            userIdentity = [v8 userIdentity];
            userRecordID = [userIdentity userRecordID];
            recordName = [userRecordID recordName];

            goto LABEL_14;
          }
        }

        recordName = [participants countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (recordName)
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
    recordName = 0;
  }

  v11 = [recordName copy];

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
    serverShare = [(ICCloudSyncingObject *)self serverShare];
    participants = [serverShare participants];

    ic_participantName = [participants countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (ic_participantName)
    {
      v6 = *v11;
      while (2)
      {
        for (i = 0; i != ic_participantName; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(participants);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if ([v8 role] == 1)
          {
            ic_participantName = [v8 ic_participantName];
            goto LABEL_14;
          }
        }

        ic_participantName = [participants countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (ic_participantName)
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
    ic_participantName = 0;
  }

  return ic_participantName;
}

- (void)setServerShareIfNewer:(id)newer
{
  newerCopy = newer;
  serverShare = [(ICCloudSyncingObject *)self serverShare];

  if (!serverShare)
  {
    v7 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ICCloudSyncingObject setServerShareIfNewer:];
    }

    goto LABEL_18;
  }

  serverShare2 = [(ICCloudSyncingObject *)self serverShare];
  if ([serverShare2 ic_hasMetadata])
  {
  }

  else
  {
    ic_hasMetadata = [newerCopy ic_hasMetadata];

    if (ic_hasMetadata)
    {
      v7 = os_log_create("com.apple.notes", "Collaboration");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [(ICCloudSyncingObject *)self setServerShareIfNewer:newerCopy, v7];
      }

      goto LABEL_18;
    }
  }

  serverShare3 = [(ICCloudSyncingObject *)self serverShare];
  recordChangeTag = [serverShare3 recordChangeTag];
  recordChangeTag2 = [newerCopy recordChangeTag];
  v12 = [recordChangeTag isEqualToString:recordChangeTag2];

  if (!v12)
  {
    serverShare4 = [(ICCloudSyncingObject *)self serverShare];
    modificationDate = [serverShare4 modificationDate];
    modificationDate2 = [newerCopy modificationDate];
    v16 = [modificationDate ic_isLaterThanDate:modificationDate2];

    v7 = os_log_create("com.apple.notes", "Collaboration");
    v17 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (v16)
    {
      if (v17)
      {
        [(ICCloudSyncingObject *)self setServerShareIfNewer:newerCopy, v7];
      }

      goto LABEL_15;
    }

    if (v17)
    {
      [(ICCloudSyncingObject *)self setServerShareIfNewer:newerCopy, v7];
    }

LABEL_18:

    [(ICCloudSyncingObject *)self setServerShare:newerCopy];
    goto LABEL_19;
  }

  v7 = os_log_create("com.apple.notes", "Collaboration");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(ICCloudSyncingObject *)self setServerShareIfNewer:newerCopy, v7];
  }

LABEL_15:

LABEL_19:
}

- (void)markShareDirtyIfNeededWithReason:(id)reason
{
  reasonCopy = reason;
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

- (void)didAcceptShare:(id)share
{
  v15 = *MEMORY[0x277D85DE8];
  shareCopy = share;
  serverShare = [(ICCloudSyncingObject *)self serverShare];

  if (!serverShare)
  {
    v6 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
      ic_loggingDescription = [shareCopy ic_loggingDescription];
      v11 = 138412546;
      v12 = shortLoggingDescription;
      v13 = 2112;
      v14 = ic_loggingDescription;
      _os_log_impl(&dword_214D51000, v6, OS_LOG_TYPE_INFO, "No server share for %@, setting to %@", &v11, 0x16u);
    }

    [(ICCloudSyncingObject *)self setServerShare:shareCopy];
  }

  if ([(ICCloudSyncingObject *)self markedForDeletion])
  {
    v9 = os_log_create("com.apple.notes", "Collaboration");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      shortLoggingDescription2 = [(ICCloudSyncingObject *)self shortLoggingDescription];
      v11 = 138412290;
      v12 = shortLoggingDescription2;
      _os_log_impl(&dword_214D51000, v9, OS_LOG_TYPE_INFO, "Undeleting shared %@", &v11, 0xCu);
    }

    [(ICCloudSyncingObject *)self unmarkForDeletion];
  }
}

- (id)shareDescription
{
  serverShareCheckingParent = [(ICCloudSyncingObject *)self serverShareCheckingParent];
  participants = [serverShareCheckingParent participants];

  v5 = [(ICCloudSyncingObject *)self shareDescriptionForShareParticipants:participants];

  return v5;
}

- (id)shareDescriptionForShareParticipants:(id)participants
{
  participantsCopy = participants;
  if (![(ICCloudSyncingObject *)self isSharedViaICloud])
  {
    v8 = 0;
    goto LABEL_28;
  }

  if (![(ICCloudSyncingObject *)self isOwnedByCurrentUser])
  {
    v5 = [participantsCopy ic_objectPassingTest:&__block_literal_global_317];
    ic_participantName = [v5 ic_participantName];
    if (ic_participantName)
    {
      v10 = MEMORY[0x277CCACA8];
      firstObject = __ICLocalizedFrameworkString_impl(@"Shared by %@", @"Shared by %@", 0, 1);
      [v10 localizedStringWithFormat:firstObject, ic_participantName, v18];
      v8 = LABEL_20:;
      goto LABEL_21;
    }

    v14 = __ICLocalizedFrameworkString_impl(@"Shared to you", @"Shared to you", 0, 1);
    goto LABEL_25;
  }

  v5 = [MEMORY[0x277CBC6A0] ic_displayableNames:participantsCopy maximumNamesCount:2];
  if ([participantsCopy count] == 2 && objc_msgSend(v5, "count") == 1)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = @"Shared with %@";
LABEL_12:
    ic_participantName = __ICLocalizedFrameworkString_impl(v7, v7, 0, 1);
    firstObject = [v5 firstObject];
    v17 = firstObject;
LABEL_19:
    [v6 localizedStringWithFormat:ic_participantName, v17, v18];
    goto LABEL_20;
  }

  if ([participantsCopy count] == 3 && objc_msgSend(v5, "count") == 1)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = @"Shared with %@ and 1 other";
    goto LABEL_12;
  }

  if ([participantsCopy count] != 3 || objc_msgSend(v5, "count") != 2)
  {
    if ([participantsCopy count] >= 4 && objc_msgSend(v5, "count"))
    {
      v6 = MEMORY[0x277CCACA8];
      ic_participantName = __ICLocalizedFrameworkString_impl(@"Shared with %@ and %lu others", @"Shared with %@ and %lu others", 0, 1);
      firstObject = [v5 firstObject];
      v17 = firstObject;
      v18 = [participantsCopy count] - 2;
      goto LABEL_19;
    }

    if ([participantsCopy count] < 2)
    {
      v8 = __ICLocalizedFrameworkString_impl(@"Shared by me", @"Shared by me", 0, 1);
      goto LABEL_27;
    }

    v15 = MEMORY[0x277CCACA8];
    ic_participantName = __ICLocalizedFrameworkString_impl(@"Shared with %lu others", @"Shared with %lu others", 0, 1);
    v14 = [v15 localizedStringWithFormat:ic_participantName, objc_msgSend(participantsCopy, "count") - 1];
LABEL_25:
    v8 = v14;
    goto LABEL_26;
  }

  v12 = MEMORY[0x277CCACA8];
  ic_participantName = __ICLocalizedFrameworkString_impl(@"Shared with %@ and %@", @"Shared with %@ and %@", 0, 1);
  firstObject = [v5 firstObject];
  lastObject = [v5 lastObject];
  v8 = [v12 localizedStringWithFormat:ic_participantName, firstObject, lastObject];

LABEL_21:
LABEL_26:

LABEL_27:
LABEL_28:

  return v8;
}

- (id)participantForUserID:(id)d
{
  dCopy = d;
  if ([(ICCloudSyncingObject *)self isSharedViaICloud])
  {
    if (([dCopy isEqualToString:*MEMORY[0x277CBBF28]] & 1) != 0 || (-[ICCloudSyncingObject cloudAccount](self, "cloudAccount"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "userRecordName"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(dCopy, "isEqualToString:", v6), v6, v5, v7))
    {
      serverShareCheckingParent = [(ICCloudSyncingObject *)self serverShareCheckingParent];
      currentUserParticipant = [serverShareCheckingParent currentUserParticipant];
    }

    else
    {
      serverShareCheckingParent = [(ICCloudSyncingObject *)self serverShareCheckingParent];
      currentUserParticipant = [serverShareCheckingParent ic_participantWithUserRecordName:dCopy];
    }

    v10 = currentUserParticipant;
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
    dictionary = participantHandlesToParticipants;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v5 = self->_participantHandlesToParticipants;
  self->_participantHandlesToParticipants = dictionary;

  v6 = self->_participantHandlesToParticipants;

  return v6;
}

- (id)participantForHandle:(id)handle
{
  handleCopy = handle;
  if ([(ICCloudSyncingObject *)self isSharedViaICloud])
  {
    participantHandlesToParticipants = [(ICCloudSyncingObject *)self participantHandlesToParticipants];
    v6 = [participantHandlesToParticipants objectForKeyedSubscript:handleCopy];

    if (!v6)
    {
      serverShareCheckingParent = [(ICCloudSyncingObject *)self serverShareCheckingParent];
      v8 = [serverShareCheckingParent ic_participantWithHandle:handleCopy];
      participantHandlesToParticipants2 = [(ICCloudSyncingObject *)self participantHandlesToParticipants];
      [participantHandlesToParticipants2 setObject:v8 forKeyedSubscript:handleCopy];
    }

    participantHandlesToParticipants3 = [(ICCloudSyncingObject *)self participantHandlesToParticipants];
    v11 = [participantHandlesToParticipants3 objectForKeyedSubscript:handleCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)hasAnySharedObjectInContext:(id)context
{
  v3 = MEMORY[0x277CBE428];
  contextCopy = context;
  v5 = [v3 fetchRequestWithEntityName:@"ICCloudSyncingObject"];
  [v5 setFetchLimit:1];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"serverShareData != nil"];
  [v5 setPredicate:v6];

  v10 = 0;
  v7 = [contextCopy executeFetchRequest:v5 error:&v10];

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
  serverShare = [(ICCloudSyncingObject *)self serverShare];
  rootRecordID = [serverShare rootRecordID];
  recordName = [rootRecordID recordName];
  if (recordName)
  {
    serverShare2 = [(ICCloudSyncingObject *)self serverShare];
    rootRecordID2 = [serverShare2 rootRecordID];
    recordName2 = [rootRecordID2 recordName];
    recordID = [(ICCloudSyncingObject *)self recordID];
    recordName3 = [recordID recordName];
    v11 = [recordName2 isEqualToString:recordName3];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)unitTest_injectCryptoStrategy:(id)strategy
{
  strategyCopy = strategy;
  managedObjectContext = [(ICCloudSyncingObject *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ICCloudSyncingObject_unitTest_injectCryptoStrategy___block_invoke;
  v7[3] = &unk_278194AD8;
  v7[4] = self;
  v8 = strategyCopy;
  v6 = strategyCopy;
  [managedObjectContext performBlockAndWait:v7];
}

- (id)validatedCreateCryptoStrategy
{
  cryptoStrategyProtocol = [(ICCloudSyncingObject *)self cryptoStrategyProtocol];
  v4 = [ICCryptoStrategyFactory makeCryptoStrategyForObject:self andValidateProtocolConformance:cryptoStrategyProtocol];

  return v4;
}

- (BOOL)cryptoStrategyIsTransient
{
  if (([(ICCloudSyncingObject *)self needsInitialFetchFromCloud]& 1) != 0)
  {
    return 1;
  }

  primaryEncryptedData = [(ICCloudSyncingObject *)self primaryEncryptedData];
  v3 = primaryEncryptedData == 0;

  return v3;
}

- (BOOL)encryptFileFromURL:(id)l toURL:(id)rL
{
  rLCopy = rL;
  lCopy = l;
  cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
  v9 = [cryptoStrategy encryptFileFromURL:lCopy toURL:rLCopy];

  return v9;
}

- (BOOL)mergeEncryptedDataFromRecord:(id)record
{
  v15 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
  if (cryptoStrategy)
  {
    v6 = cryptoStrategy;
LABEL_3:
    [(ICCloudSyncingObject *)self setCryptoStrategyForMergingEncryptedData:v6];
    v7 = [v6 mergeEncryptedDataFromRecord:recordCopy];
    [(ICCloudSyncingObject *)self setCryptoStrategyForMergingEncryptedData:0];

    goto LABEL_11;
  }

  v8 = [(ICCloudSyncingObject *)self primaryEncryptedDataFromRecord:recordCopy];
  if ([v8 length])
  {
    cryptoStrategyProtocol = [(ICCloudSyncingObject *)self cryptoStrategyProtocol];
    v6 = [ICCryptoStrategyFactory makeCryptoStrategyForObject:self withCipherMatchingEncryptedData:v8 andValidateProtocolConformance:cryptoStrategyProtocol];

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
    shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
    v13 = 138412290;
    v14 = shortLoggingDescription;
    _os_log_impl(&dword_214D51000, v10, OS_LOG_TYPE_INFO, "Object cannot have crypto strategy, but is asked to decrypt and merge data from record {object: %@}", &v13, 0xCu);
  }

  [(ICCloudSyncingObject *)self setUnappliedEncryptedRecord:recordCopy];
  v7 = 0;
LABEL_11:

  return v7;
}

- (BOOL)hasPassphraseSet
{
  cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
  hasPassphraseSet = [cryptoStrategy hasPassphraseSet];

  return hasPassphraseSet;
}

- (NSString)passwordHint
{
  cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
  passphraseHint = [cryptoStrategy passphraseHint];

  return passphraseHint;
}

- (BOOL)isPassphraseCorrect:(id)correct
{
  correctCopy = correct;
  cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
  v6 = [cryptoStrategy isPassphraseCorrect:correctCopy];

  return v6;
}

- (NSData)primaryEncryptedData
{
  if ([(ICCloudSyncingObject *)self supportsEncryptedValuesDictionary])
  {
    encryptedValuesJSON = [(ICCloudSyncingObject *)self encryptedValuesJSON];
  }

  else
  {
    encryptedValuesJSON = 0;
  }

  return encryptedValuesJSON;
}

- (void)setPrimaryEncryptedData:(id)data
{
  dataCopy = data;
  if ([(ICCloudSyncingObject *)self supportsEncryptedValuesDictionary])
  {
    [(ICCloudSyncingObject *)self setEncryptedValuesJSON:dataCopy];
  }
}

- (id)primaryEncryptedDataFromRecord:(id)record
{
  recordCopy = record;
  if ([(ICCloudSyncingObject *)self supportsEncryptedValuesDictionary])
  {
    v5 = [recordCopy ic_inlineableDataAssetForKeyPrefix:@"EncryptedValues"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setCryptoTag:(id)tag
{
  v24 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  cryptoTag = [(ICCloudSyncingObject *)self cryptoTag];
  [(ICCloudSyncingObject *)self willChangeValueForKey:@"cryptoTag"];
  [(ICCloudSyncingObject *)self setPrimitiveValue:tagCopy forKey:@"cryptoTag"];
  [(ICCloudSyncingObject *)self didChangeValueForKey:@"cryptoTag"];
  v6 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == tagCopy)
  {
    v7 = 0;
  }

  else
  {
    v7 = tagCopy;
  }

  v8 = v7;
  if (v6 == cryptoTag)
  {
    v9 = 0;
  }

  else
  {
    v9 = cryptoTag;
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
    identifier = [(ICCloudSyncingObject *)self identifier];
    v18 = 138412802;
    v19 = v15;
    v20 = 2112;
    v21 = identifier;
    v22 = 2048;
    v23 = [tagCopy hash];
    _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_INFO, "Updated crypto goo for %@ (%@): cryptoTag.hash = %lu", &v18, 0x20u);
  }

LABEL_19:
}

- (void)setCryptoInitializationVector:(id)vector
{
  v24 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  cryptoInitializationVector = [(ICCloudSyncingObject *)self cryptoInitializationVector];
  [(ICCloudSyncingObject *)self willChangeValueForKey:@"cryptoInitializationVector"];
  [(ICCloudSyncingObject *)self setPrimitiveValue:vectorCopy forKey:@"cryptoInitializationVector"];
  [(ICCloudSyncingObject *)self didChangeValueForKey:@"cryptoInitializationVector"];
  v6 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == vectorCopy)
  {
    v7 = 0;
  }

  else
  {
    v7 = vectorCopy;
  }

  v8 = v7;
  if (v6 == cryptoInitializationVector)
  {
    v9 = 0;
  }

  else
  {
    v9 = cryptoInitializationVector;
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
    identifier = [(ICCloudSyncingObject *)self identifier];
    v18 = 138412802;
    v19 = v15;
    v20 = 2112;
    v21 = identifier;
    v22 = 2048;
    v23 = [vectorCopy hash];
    _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_INFO, "Updated crypto goo for %@ (%@): cryptoInitializationVector.hash = %lu", &v18, 0x20u);
  }

LABEL_19:
}

- (void)setCryptoSalt:(id)salt
{
  v24 = *MEMORY[0x277D85DE8];
  saltCopy = salt;
  cryptoSalt = [(ICCloudSyncingObject *)self cryptoSalt];
  [(ICCloudSyncingObject *)self willChangeValueForKey:@"cryptoSalt"];
  [(ICCloudSyncingObject *)self setPrimitiveValue:saltCopy forKey:@"cryptoSalt"];
  [(ICCloudSyncingObject *)self didChangeValueForKey:@"cryptoSalt"];
  v6 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == saltCopy)
  {
    v7 = 0;
  }

  else
  {
    v7 = saltCopy;
  }

  v8 = v7;
  if (v6 == cryptoSalt)
  {
    v9 = 0;
  }

  else
  {
    v9 = cryptoSalt;
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
    identifier = [(ICCloudSyncingObject *)self identifier];
    v18 = 138412802;
    v19 = v15;
    v20 = 2112;
    v21 = identifier;
    v22 = 2048;
    v23 = [saltCopy hash];
    _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_INFO, "Updated crypto goo for %@ (%@): cryptoSalt.hash = %lu", &v18, 0x20u);
  }

LABEL_19:
}

- (void)setCryptoIterationCount:(int64_t)count
{
  v18 = *MEMORY[0x277D85DE8];
  cryptoIterationCount = [(ICCloudSyncingObject *)self cryptoIterationCount];
  [(ICCloudSyncingObject *)self willChangeValueForKey:@"cryptoIterationCount"];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:count];
  [(ICCloudSyncingObject *)self setPrimitiveValue:v6 forKey:@"cryptoIterationCount"];

  [(ICCloudSyncingObject *)self didChangeValueForKey:@"cryptoIterationCount"];
  v7 = os_log_create("com.apple.notes", "Crypto");
  v8 = v7;
  if (cryptoIterationCount == count)
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
    identifier = [(ICCloudSyncingObject *)self identifier];
    v12 = 138412802;
    v13 = v9;
    v14 = 2112;
    v15 = identifier;
    v16 = 2048;
    countCopy = count;
    _os_log_impl(&dword_214D51000, v8, OS_LOG_TYPE_INFO, "Updated crypto goo for %@ (%@): cryptoIterationCount = %lld", &v12, 0x20u);
  }
}

- (void)setCryptoWrappedKey:(id)key
{
  v24 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  cryptoWrappedKey = [(ICCloudSyncingObject *)self cryptoWrappedKey];
  [(ICCloudSyncingObject *)self willChangeValueForKey:@"cryptoWrappedKey"];
  [(ICCloudSyncingObject *)self setPrimitiveValue:keyCopy forKey:@"cryptoWrappedKey"];
  [(ICCloudSyncingObject *)self didChangeValueForKey:@"cryptoWrappedKey"];
  v6 = *MEMORY[0x277CBEEE8];
  if (*MEMORY[0x277CBEEE8] == keyCopy)
  {
    v7 = 0;
  }

  else
  {
    v7 = keyCopy;
  }

  v8 = v7;
  if (v6 == cryptoWrappedKey)
  {
    v9 = 0;
  }

  else
  {
    v9 = cryptoWrappedKey;
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
    identifier = [(ICCloudSyncingObject *)self identifier];
    v18 = 138412802;
    v19 = v15;
    v20 = 2112;
    v21 = identifier;
    v22 = 2048;
    v23 = [keyCopy hash];
    _os_log_impl(&dword_214D51000, v14, OS_LOG_TYPE_INFO, "Updated crypto goo for %@ (%@): cryptoWrappedKey.hash = %lu", &v18, 0x20u);
  }

LABEL_19:
}

- (void)setEncryptedValuesJSON:(id)n
{
  nCopy = n;
  encryptedValuesJSON = [(ICCloudSyncingObject *)self encryptedValuesJSON];
  [(ICCloudSyncingObject *)self willChangeValueForKey:@"encryptedValuesJSON"];
  [(ICCloudSyncingObject *)self setPrimitiveValue:nCopy forKey:@"encryptedValuesJSON"];
  [(ICCloudSyncingObject *)self didChangeValueForKey:@"encryptedValuesJSON"];
  if (([encryptedValuesJSON isEqual:nCopy] & 1) == 0)
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
  allChildCloudObjects = [(ICCloudSyncingObject *)self allChildCloudObjects];
  v4 = [allChildCloudObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(allChildCloudObjects);
        }

        [*(*(&v8 + 1) + 8 * v7++) persistPendingChangesRecursively];
      }

      while (v5 != v7);
      v5 = [allChildCloudObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)clearDecryptedData
{
  mutableDecryptedValues = [(ICCloudSyncingObject *)self mutableDecryptedValues];
  [mutableDecryptedValues removeAllObjects];

  [(ICCloudSyncingObject *)self setNeedsToLoadDecryptedValues:1];
}

- (NSDictionary)decryptedValues
{
  decryptedValues = self->_decryptedValues;
  if (decryptedValues)
  {
    dictionary = decryptedValues;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v5 = self->_decryptedValues;
  self->_decryptedValues = dictionary;

  v6 = self->_decryptedValues;

  return v6;
}

- (NSMutableDictionary)mutableDecryptedValues
{
  objc_opt_class();
  decryptedValues = [(ICCloudSyncingObject *)self decryptedValues];
  v4 = ICCheckedDynamicCast();

  return v4;
}

- (id)serializedValuesToEncrypt
{
  decryptedValues = [(ICCloudSyncingObject *)self decryptedValues];
  v4 = [decryptedValues mutableCopy];

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

- (void)deserializeAndMergeValues:(id)values
{
  if (values)
  {
    v10 = 0;
    v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:values options:0 error:&v10];
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
  cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
  parentEncryptableObject = [(ICCloudSyncingObject *)self parentEncryptableObject];
  [cryptoStrategy initializeCryptoPropertiesFromObject:parentEncryptableObject];
}

- (id)mergeDecryptedValue:(id)value withOldValue:(id)oldValue forKey:(id)key
{
  valueCopy = value;
  oldValueCopy = oldValue;
  keyCopy = key;
  mergeableWallClockValueKeyPaths = [objc_opt_class() mergeableWallClockValueKeyPaths];
  v12 = [mergeableWallClockValueKeyPaths containsObject:keyCopy];

  if (v12 && oldValueCopy)
  {
    v13 = [[ICTTMergeableWallClockValue alloc] initWithData:oldValueCopy];
    v14 = [[ICTTMergeableWallClockValue alloc] initWithData:valueCopy];
    if (![(ICTTMergeableWallClockValue *)v13 merge:v14])
    {
      v15 = os_log_create("com.apple.notes", "CoreData");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ICCloudSyncingObject mergeDecryptedValue:keyCopy withOldValue:self forKey:?];
      }
    }

    serialize = [(ICTTMergeableWallClockValue *)v13 serialize];
  }

  else
  {
    serialize = valueCopy;
  }

  return serialize;
}

- (id)decryptedValueForKey:(id)key
{
  keyCopy = key;
  if ([(ICCloudSyncingObject *)self isAuthenticated])
  {
    cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
    [cryptoStrategy loadDecryptedValuesIfNecessary];
  }

  decryptedValues = [(ICCloudSyncingObject *)self decryptedValues];
  v7 = [decryptedValues objectForKeyedSubscript:keyCopy];

  return v7;
}

- (void)setDecryptedValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  if ([(ICCloudSyncingObject *)self isAuthenticated])
  {
    cryptoStrategy = [(ICCloudSyncingObject *)self cryptoStrategy];
    [cryptoStrategy loadDecryptedValuesIfNecessary];

    mutableDecryptedValues = [(ICCloudSyncingObject *)self mutableDecryptedValues];
    [mutableDecryptedValues setObject:valueCopy forKeyedSubscript:keyCopy];

    cryptoStrategy2 = [(ICCloudSyncingObject *)self cryptoStrategy];
    [cryptoStrategy2 saveEncryptedJSON];
  }

  else
  {
    cryptoStrategy2 = [(ICCloudSyncingObject *)self mutableDecryptedValues];
    [cryptoStrategy2 setObject:valueCopy forKeyedSubscript:keyCopy];
  }
}

- (id)valueForEncryptableKey:(id)key
{
  keyCopy = key;
  [(ICCloudSyncingObject *)self willAccessValueForKey:keyCopy];
  v5 = [(ICCloudSyncingObject *)self primitiveValueForEncryptableKey:keyCopy];
  [(ICCloudSyncingObject *)self didAccessValueForKey:keyCopy];

  return v5;
}

- (id)primitiveValueForEncryptableKey:(id)key
{
  keyCopy = key;
  if ([(ICCloudSyncingObject *)self isPasswordProtected])
  {
    [(ICCloudSyncingObject *)self decryptedValueForKey:keyCopy];
  }

  else
  {
    [(ICCloudSyncingObject *)self primitiveValueForKey:keyCopy];
  }
  v5 = ;

  return v5;
}

- (void)setValue:(id)value forEncryptableKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  [(ICCloudSyncingObject *)self willChangeValueForKey:keyCopy];
  [(ICCloudSyncingObject *)self setPrimitiveValue:valueCopy forEncryptableKey:keyCopy];

  [(ICCloudSyncingObject *)self didChangeValueForKey:keyCopy];
}

- (void)setPrimitiveValue:(id)value forEncryptableKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  if ([(ICCloudSyncingObject *)self isPasswordProtected])
  {
    [(ICCloudSyncingObject *)self setDecryptedValue:valueCopy forKey:keyCopy];
  }

  else
  {
    [(ICCloudSyncingObject *)self setPrimitiveValue:valueCopy forKey:keyCopy];
  }
}

- (BOOL)isEncryptableKeyBinaryData:(id)data
{
  dataCopy = data;
  if ([dataCopy isEqual:@"sidecarMainKey"] & 1) != 0 || (objc_msgSend(dataCopy, "isEqual:", @"activityEventsData"))
  {
    v4 = 1;
  }

  else
  {
    mergeableWallClockValueKeyPaths = [objc_opt_class() mergeableWallClockValueKeyPaths];
    v4 = [mergeableWallClockValueKeyPaths containsObject:dataCopy];
  }

  return v4;
}

- (void)applyRandomCryptoGooIfNeeded
{
  cryptoTag = [(ICCloudSyncingObject *)self cryptoTag];
  v4 = [cryptoTag length];

  if (!v4)
  {
    v5 = [MEMORY[0x277CBEA90] ic_random128BitData:0];
    [(ICCloudSyncingObject *)self setCryptoTag:v5];
  }

  cryptoInitializationVector = [(ICCloudSyncingObject *)self cryptoInitializationVector];
  v7 = [cryptoInitializationVector length];

  if (!v7)
  {
    v8 = [MEMORY[0x277CBEA90] ic_random128BitData:0];
    [(ICCloudSyncingObject *)self setCryptoInitializationVector:v8];
  }

  cryptoWrappedKey = [(ICCloudSyncingObject *)self cryptoWrappedKey];
  v10 = [cryptoWrappedKey length];

  if (!v10)
  {
    v11 = [MEMORY[0x277CBEA90] ic_random128BitData:0];
    [(ICCloudSyncingObject *)self setCryptoWrappedKey:v11];
  }

  cryptoSalt = [(ICCloudSyncingObject *)self cryptoSalt];
  v13 = [cryptoSalt length];

  if (!v13)
  {
    v14 = [MEMORY[0x277CBEA90] ic_random128BitData:0];
    [(ICCloudSyncingObject *)self setCryptoSalt:v14];
  }
}

- (void)setHasMissingKeychainItem:(BOOL)item
{
  itemCopy = item;
  v16 = *MEMORY[0x277D85DE8];
  if ([(ICCloudSyncingObject *)self hasMissingKeychainItem]!= item)
  {
    v5 = os_log_create("com.apple.notes", "Crypto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
      v7 = [MEMORY[0x277CCABB0] numberWithBool:itemCopy];
      v12 = 138412546;
      v13 = shortLoggingDescription;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&dword_214D51000, v5, OS_LOG_TYPE_INFO, "Setting object has missing Keychain item… {object: %@, hasMissingKeychainItem: %@}", &v12, 0x16u);
    }

    v8 = NSStringFromSelector(sel_hasMissingKeychainItem);
    [(ICCloudSyncingObject *)self willChangeValueForKey:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithBool:itemCopy];
    v10 = NSStringFromSelector(sel_hasMissingKeychainItem);
    [(ICCloudSyncingObject *)self setPrimitiveValue:v9 forKey:v10];

    v11 = NSStringFromSelector(sel_hasMissingKeychainItem);
    [(ICCloudSyncingObject *)self didChangeValueForKey:v11];
  }
}

- (void)authenticationStateWillDeauthenticate:(id)deauthenticate
{
  deauthenticateCopy = deauthenticate;
  if (([(ICCloudSyncingObject *)self ic_isTransitioning]& 1) == 0)
  {
    objc_opt_class();
    userInfo = [deauthenticateCopy userInfo];
    v5 = [userInfo objectForKeyedSubscript:@"ICAuthenticationStateKeyObjectID"];
    v6 = ICCheckedDynamicCast();

    if (!v6 || (-[ICCloudSyncingObject objectID](self, "objectID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isEqual:v7], v7, v8))
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        managedObjectContext = [(ICCloudSyncingObject *)self managedObjectContext];
        if ([managedObjectContext concurrencyType] == 2)
        {
          isAuthenticated = [(ICCloudSyncingObject *)self isAuthenticated];

          if (isAuthenticated)
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

- (void)authenticationStateDidDeauthenticate:(id)deauthenticate
{
  deauthenticateCopy = deauthenticate;
  if (([(ICCloudSyncingObject *)self ic_isTransitioning]& 1) == 0)
  {
    objc_opt_class();
    userInfo = [deauthenticateCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:@"ICAuthenticationStateKeyObjectID"];
    v7 = ICCheckedDynamicCast();

    if (!v7 || (-[ICCloudSyncingObject objectID](self, "objectID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v9))
    {
      managedObjectContext = [(ICCloudSyncingObject *)self managedObjectContext];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __61__ICCloudSyncingObject_authenticationStateDidDeauthenticate___block_invoke;
      v11[3] = &unk_278194B00;
      v11[4] = self;
      [managedObjectContext performBlock:v11];
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

- (int64_t)versionForOperation:(id)operation
{
  operationCopy = operation;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  recordID = [(ICCloudSyncingObject *)self recordID];
  versionsByOperationQueue = [objc_opt_class() versionsByOperationQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__ICCloudSyncingObject_versionForOperation___block_invoke;
  v11[3] = &unk_2781960A8;
  v11[4] = self;
  v12 = operationCopy;
  v13 = recordID;
  v14 = &v15;
  v7 = recordID;
  v8 = operationCopy;
  dispatch_sync(versionsByOperationQueue, v11);

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

- (void)setVersion:(int64_t)version forOperation:(id)operation
{
  operationCopy = operation;
  versionsByOperationQueue = [objc_opt_class() versionsByOperationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ICCloudSyncingObject_setVersion_forOperation___block_invoke;
  block[3] = &unk_278194F70;
  block[4] = self;
  v10 = operationCopy;
  versionCopy = version;
  v8 = operationCopy;
  dispatch_sync(versionsByOperationQueue, block);
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

- (int64_t)isPushingSameOrLaterThanVersion:(int64_t)version
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  versionsByOperationQueue = [objc_opt_class() versionsByOperationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__ICCloudSyncingObject_isPushingSameOrLaterThanVersion___block_invoke;
  block[3] = &unk_278196870;
  block[4] = self;
  block[5] = &v9;
  block[6] = version;
  dispatch_sync(versionsByOperationQueue, block);

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

- (void)setWasRecentlyDeletedByThisDevice:(BOOL)device
{
  [(ICCloudSyncingObject *)self ic_obtainPermanentObjectIDIfNecessary];
  deletedByThisDeviceOperationQueue = [objc_opt_class() deletedByThisDeviceOperationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__ICCloudSyncingObject_setWasRecentlyDeletedByThisDevice___block_invoke;
  v6[3] = &unk_278196E10;
  deviceCopy = device;
  v6[4] = self;
  dispatch_sync(deletedByThisDeviceOperationQueue, v6);
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
  selfCopy = self;
  [(ICCloudSyncingObject *)self ic_obtainPermanentObjectIDIfNecessary];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  deletedByThisDeviceOperationQueue = [objc_opt_class() deletedByThisDeviceOperationQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__ICCloudSyncingObject_wasRecentlyDeletedByThisDevice__block_invoke;
  v5[3] = &unk_278194DE8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(deletedByThisDeviceOperationQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __54__ICCloudSyncingObject_wasRecentlyDeletedByThisDevice__block_invoke(uint64_t a1)
{
  v3 = [objc_opt_class() deletedByThisDeviceSet];
  v2 = [*(a1 + 32) objectID];
  *(*(*(a1 + 40) + 8) + 24) = [v3 containsObject:v2];
}

+ (void)resetAllDeletedByThisDeviceProperties
{
  deletedByThisDeviceOperationQueue = [objc_opt_class() deletedByThisDeviceOperationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ICCloudSyncingObject_resetAllDeletedByThisDeviceProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_sync(deletedByThisDeviceOperationQueue, block);
}

void __61__ICCloudSyncingObject_resetAllDeletedByThisDeviceProperties__block_invoke()
{
  v0 = [objc_opt_class() deletedByThisDeviceSet];
  [v0 removeAllObjects];
}

- (void)setInCloud:(BOOL)cloud
{
  cloudCopy = cloud;
  cloudState = [(ICCloudSyncingObject *)self cloudState];
  [cloudState setInCloud:cloudCopy];
}

- (BOOL)isInCloud
{
  cloudState = [(ICCloudSyncingObject *)self cloudState];
  isInCloud = [cloudState isInCloud];

  return isInCloud;
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

  parentCloudObjectForMinimumSupportedVersionPropagation = [(ICCloudSyncingObject *)self parentCloudObjectForMinimumSupportedVersionPropagation];
  needsInitialFetchFromCloudCheckingParent = [parentCloudObjectForMinimumSupportedVersionPropagation needsInitialFetchFromCloudCheckingParent];

  return needsInitialFetchFromCloudCheckingParent;
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

- (void)setServerRecord:(id)record
{
  v18 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  recordName = [(ICCloudSyncingObject *)self recordName];
  recordID = [recordCopy recordID];
  recordName2 = [recordID recordName];

  if (recordName && recordName2 && ([recordName2 ic_isCaseInsensitiveEqualToString:recordName] & 1) == 0)
  {
    v14 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ICCloudSyncingObject setServerRecord:];
    }

    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCloudSyncingObject setServerRecord:]" simulateCrash:1 showAlert:1 format:@"Setting server record with mismatched record name"];
  }

  else if (([(CKRecord *)self->_serverRecord isEqual:recordCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_serverRecord, record);
    if (recordCopy)
    {
      recordSystemFieldsTransformer = [objc_opt_class() recordSystemFieldsTransformer];
      v10 = [recordSystemFieldsTransformer transformedValue:recordCopy];
      [(ICCloudSyncingObject *)self setServerRecordData:v10];

      recordID2 = [recordCopy recordID];
      zoneID = [recordID2 zoneID];
      ownerName = [zoneID ownerName];

      if (([ownerName isEqualToString:*MEMORY[0x277CBBF28]]& 1) == 0)
      {
        [(ICCloudSyncingObject *)self setZoneOwnerName:ownerName];
      }
    }

    else
    {
      [(ICCloudSyncingObject *)self setServerRecordData:0];
      ownerName = os_log_create("com.apple.notes", "Cloud");
      if (os_log_type_enabled(ownerName, OS_LOG_TYPE_INFO))
      {
        shortLoggingDescription = [(ICCloudSyncingObject *)self shortLoggingDescription];
        v16 = 138412290;
        v17 = shortLoggingDescription;
        _os_log_impl(&dword_214D51000, ownerName, OS_LOG_TYPE_INFO, "Clearing serverRecord for: %@", &v16, 0xCu);
      }
    }
  }
}

- (void)setServerShare:(id)share
{
  shareCopy = share;
  if (([(CKShare *)self->_serverShare isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_serverShare, share);
    if (shareCopy)
    {
      shareSystemFieldsTransformer = [objc_opt_class() shareSystemFieldsTransformer];
      v6 = [shareSystemFieldsTransformer transformedValue:shareCopy];
      [(ICCloudSyncingObject *)self setServerShareData:v6];
    }

    else
    {
      [(ICCloudSyncingObject *)self setServerShareData:0];
    }

    [(ICCloudSyncingObject *)self resetToIntrinsicNotesVersionAndPropagateToChildObjects];
  }
}

- (void)setUserSpecificServerRecord:(id)record
{
  recordCopy = record;
  recordName = [(ICCloudSyncingObject *)self recordName];
  v7 = recordName;
  if (!recordCopy || !recordName)
  {
LABEL_6:
    if (([(CKRecord *)self->_userSpecificServerRecord isEqual:recordCopy]& 1) == 0)
    {
      objc_storeStrong(&self->_userSpecificServerRecord, record);
      if (recordCopy)
      {
        recordSystemFieldsTransformer = [objc_opt_class() recordSystemFieldsTransformer];
        v15 = [recordSystemFieldsTransformer transformedValue:recordCopy];
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
  recordID = [recordCopy recordID];
  recordName2 = [recordID recordName];
  v11 = [(ICUserSpecificRecordIDParser *)v8 initWithRecordName:recordName2];
  sharedRecordID = [(ICUserSpecificRecordIDParser *)v11 sharedRecordID];
  recordName3 = [sharedRecordID recordName];

  if (!recordName3 || ([recordName3 ic_isCaseInsensitiveEqualToString:v7] & 1) != 0)
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
    userSpecificServerRecordData = [(ICCloudSyncingObject *)self userSpecificServerRecordData];
    if (userSpecificServerRecordData)
    {
      recordSystemFieldsTransformer = [objc_opt_class() recordSystemFieldsTransformer];
      v6 = [recordSystemFieldsTransformer reverseTransformedValue:userSpecificServerRecordData];
      v7 = self->_userSpecificServerRecord;
      self->_userSpecificServerRecord = v6;
    }

    userSpecificServerRecord = self->_userSpecificServerRecord;
  }

  return userSpecificServerRecord;
}

- (void)setNeedsInitialFetchFromCloud:(BOOL)cloud
{
  cloudCopy = cloud;
  if ([(ICCloudSyncingObject *)self needsInitialFetchFromCloud]!= cloud)
  {
    [(ICCloudSyncingObject *)self willChangeValueForKey:@"needsInitialFetchFromCloud"];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:cloudCopy];
    [(ICCloudSyncingObject *)self setPrimitiveValue:v5 forKey:@"needsInitialFetchFromCloud"];

    [(ICCloudSyncingObject *)self didChangeValueForKey:@"needsInitialFetchFromCloud"];
    if (cloudCopy)
    {

      [(ICCloudSyncingObject *)self clearChangeCountWithReason:@"Set as needing initial fetch"];
    }
  }
}

- (BOOL)hasAllMandatoryFields
{
  identifier = [(ICCloudSyncingObject *)self identifier];
  v3 = [identifier length] != 0;

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
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  managedObjectContext = [(ICCloudSyncingObject *)self managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__ICCloudSyncingObject_ic_loggingValues__block_invoke;
  v8[3] = &unk_278194AD8;
  v5 = dictionary;
  v9 = v5;
  selfCopy = self;
  [managedObjectContext performBlockAndWait:v8];

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

+ (id)allPasswordProtectedObjectsInContext:(id)context
{
  v3 = MEMORY[0x277CCAC30];
  contextCopy = context;
  v5 = [v3 predicateWithFormat:@"isPasswordProtected==YES"];
  v6 = [ICCloudSyncingObject ic_objectsMatchingPredicate:v5 context:contextCopy];

  return v6;
}

- (BOOL)trustsTimestampsFromReplicaID:(id)d
{
  v3 = [(ICCloudSyncingObject *)self notesVersionForReplicaID:d];
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
  childCloudObjects = [(ICCloudSyncingObject *)self childCloudObjects];
  v3 = [childCloudObjects countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(childCloudObjects);
        }

        [*(*(&v7 + 1) + 8 * v6++) redactAuthorAttributionsToCurrentUser];
      }

      while (v4 != v6);
      v4 = [childCloudObjects countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)cloudContext
{
  appContext = [(ICCloudSyncingObject *)self appContext];
  cloudContext = [appContext cloudContext];
  v4 = cloudContext;
  if (cloudContext)
  {
    v5 = cloudContext;
  }

  else
  {
    v5 = +[ICCloudContext sharedContext];
  }

  v6 = v5;

  return v6;
}

- (BOOL)hasContextOptions:(unint64_t)options
{
  appContext = [(ICCloudSyncingObject *)self appContext];
  if (appContext)
  {
    [(ICCloudSyncingObject *)self appContext];
  }

  else
  {
    +[ICNoteContext sharedContext];
  }
  v6 = ;
  v7 = [v6 hasContextOptions:options];

  return v7;
}

- (void)addEmailAddressesAndPhoneNumbersToAttributeSet:(id)set
{
  v27 = *MEMORY[0x277D85DE8];
  setCopy = set;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  serverShareCheckingParent = [(ICCloudSyncingObject *)self serverShareCheckingParent];
  participants = [serverShareCheckingParent participants];

  v8 = [participants countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(participants);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        if (([v12 isCurrentUser] & 1) == 0)
        {
          userIdentity = [v12 userIdentity];
          lookupInfo = [userIdentity lookupInfo];
          emailAddress = [lookupInfo emailAddress];
          [array ic_addNonNilObject:emailAddress];

          userIdentity2 = [v12 userIdentity];
          lookupInfo2 = [userIdentity2 lookupInfo];
          phoneNumber = [lookupInfo2 phoneNumber];
          [array2 ic_addNonNilObject:phoneNumber];
        }
      }

      v9 = [participants countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  if ([array count])
  {
    v19 = [array copy];
    [setCopy setEmailAddresses:v19];
  }

  if ([array2 count])
  {
    v20 = [array2 copy];
    [setCopy setPhoneNumbers:v20];
  }
}

- (NSDate)objc_shareTimestamp
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
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

- (id)objc_timestampForChecklistItemWithIdentifier:(id)identifier
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_2150A4AD0();
  v9 = v8;
  selfCopy = self;
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

- (id)objc_userIDForChecklistItemWithIdentifier:(id)identifier
{
  v4 = sub_2150A4AD0();
  v6 = v5;
  selfCopy = self;
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

- (id)persistMoveActivityEventForObject:(id)object fromParentObject:(id)parentObject toParentObject:(id)toParentObject
{
  objectCopy = object;
  parentObjectCopy = parentObject;
  toParentObjectCopy = toParentObject;
  selfCopy = self;
  v12 = ICCloudSyncingObject.persistMoveActivityEvent(forObject:fromParentObject:toParentObject:)(objectCopy, parentObject, toParentObject);

  return v12;
}

- (id)persistCopyActivityEventForObject:(id)object originalObject:(id)originalObject fromParentObject:(id)parentObject toParentObject:(id)toParentObject
{
  objectCopy = object;
  originalObjectCopy = originalObject;
  parentObjectCopy = parentObject;
  toParentObjectCopy = toParentObject;
  selfCopy = self;
  v15 = ICCloudSyncingObject.persistCopyActivityEvent(forObject:originalObject:fromParentObject:toParentObject:)(objectCopy, originalObjectCopy, parentObject, toParentObject);

  return v15;
}

- (id)persistRenameActivityEventForObject:(id)object
{
  v5 = sub_2150A3960();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  objectCopy = object;
  selfCopy = self;
  sub_2150A3950();
  v14 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v11, object, v8);

  (*(v6 + 8))(v8, v5);
  sub_2150742A4(v11, type metadata accessor for PersistedActivityEvent.Activities);

  return v14;
}

- (id)persistAddParticipantActivityEventForObject:(id)object participant:(id)participant
{
  objectCopy = object;
  participantCopy = participant;
  selfCopy = self;
  v9 = ICCloudSyncingObject.persistAddParticipantActivityEvent(forObject:participant:)(objectCopy, participantCopy);

  return v9;
}

- (id)persistRemoveParticipantActivityEventForObject:(id)object participant:(id)participant
{
  objectCopy = object;
  participantCopy = participant;
  selfCopy = self;
  v9 = ICCloudSyncingObject.persistRemoveParticipantActivityEvent(forObject:participant:)(objectCopy, participantCopy);

  return v9;
}

- (id)persistToggleChecklistItemActivityEventForObject:(id)object todo:(id)todo
{
  v7 = sub_2150A3960();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B20) + 48);
  objectCopy = object;
  todoCopy = todo;
  selfCopy = self;
  uuid = [todoCopy uuid];
  sub_2150A39C0();

  v13[v14] = [todoCopy done];
  swift_storeEnumTagMultiPayload();
  sub_2150A3950();
  v19 = ICCloudSyncingObject.persist(activity:for:timestamp:)(v13, objectCopy, v10);

  (*(v8 + 8))(v10, v7);
  sub_2150742A4(v13, type metadata accessor for PersistedActivityEvent.Activities);

  return v19;
}

- (id)persistMentionActivityEventForObject:(id)object mentionAttachments:(id)attachments
{
  sub_214D55670(0, &qword_27CA44B48);
  v6 = sub_2150A4ED0();
  objectCopy = object;
  selfCopy = self;
  v9 = ICCloudSyncingObject.persistMentionActivityEvent(forObject:mentionAttachments:)(objectCopy, v6);

  return v9;
}

- (void)objc_removeAllCloudSyncingObjectActivityEvents
{
  selfCopy = self;
  ICCloudSyncingObject.removeAllCloudSyncingObjectActivityEvents()();
}

+ (void)objc_removeAllCloudSyncingObjectActivityEventsForUnsharedObjectsInContext:(id)context
{
  v4 = swift_allocObject();
  *(v4 + 16) = context;
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
  contextCopy = context;

  [contextCopy performBlockAndWait_];
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
  parentCloudObject = [v27 parentCloudObject];
  [parentCloudObject ic_loggingIdentifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_3();
  objc_opt_class();
  ic_loggingIdentifier = [OUTLINED_FUNCTION_19() ic_loggingIdentifier];
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
  shortLoggingDescription = [self shortLoggingDescription];
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
  shortLoggingDescription = [v0 shortLoggingDescription];
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
  shortLoggingDescription = [self shortLoggingDescription];
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
  objectID = [self objectID];
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
  objectID = [self objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)updateDeviceReplicaIDsToCurrentNotesVersionIfNeeded
{
  objectID = [self objectID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)userSpecificRecordID
{
  shortLoggingDescription = [self shortLoggingDescription];
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
  shortLoggingDescription = [self shortLoggingDescription];
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
  shortLoggingDescription = [OUTLINED_FUNCTION_4() shortLoggingDescription];
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
  identifier = [OUTLINED_FUNCTION_3_3() identifier];
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
  shortLoggingDescription = [self shortLoggingDescription];
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