@interface IMDCKSyncState
+ (id)logHandle;
+ (void)removeBuildObjectsFromDict:(id)dict;
- (BOOL)createdChatZone;
- (BOOL)deletedZones;
- (BOOL)hasAvailableRecordsToDownload;
- (BOOL)isDisablingDevices;
- (BOOL)isEligibleForTruthZone;
- (BOOL)isFeatureEnabled;
- (BOOL)isInExitState;
- (BOOL)isRemovedFromBackup;
- (BOOL)isStartingEnabledSettingChange;
- (BOOL)isStartingInitialSyncSetByCloudKitHooks;
- (BOOL)isStartingPeriodicSyncSetByCloudKitHooks;
- (BOOL)isSyncing;
- (BOOL)isSyncingEnabled;
- (BOOL)isSyncingPaused;
- (BOOL)syncCancelled;
- (IMDCKSyncState)init;
- (IMDCKSyncState)initWithKeyValueCollection:(id)collection;
- (IMDCKSyncStateDelegate)delegate;
- (NSArray)syncErrors;
- (NSDate)exitDate;
- (NSDate)lastSyncDate;
- (NSDictionary)analyticSyncDatesDictionary;
- (NSString)description;
- (NSString)micDeviceIdentifier;
- (NSString)syncSessionID;
- (double)lastDownloadProgress;
- (id)_describeErrors:(id)errors;
- (id)describeErrors;
- (id)describeRecordCounts;
- (id)getAnalyticSyncDatesObjectForKey:(id)key;
- (id)logHandle;
- (id)serializedRepresentation;
- (id)syncDateForKey:(id)key;
- (id)syncReportDictionary;
- (id)syncUserType;
- (int64_t)accountStatus;
- (int64_t)syncControllerRecordType;
- (int64_t)syncControllerSyncType;
- (unint64_t)syncControllerSyncState;
- (unint64_t)syncJobState;
- (unint64_t)syncStatus;
- (unint64_t)syncType;
- (void)_finishBatchChange;
- (void)_removeObjectForKey:(id)key forDictionary:(id)dictionary;
- (void)_setObject:(id)object forKey:(id)key forDictionary:(id)dictionary shouldSetBuild:(BOOL)build;
- (void)_setStartingSync;
- (void)_startBatchChange;
- (void)addSyncError:(id)error;
- (void)broadcastSyncState;
- (void)clearLocalCloudKitSyncState;
- (void)clearSyncErrors;
- (void)clearSyncStateForAllRecordTypes;
- (void)deleteAllCloudKitData;
- (void)ensureSaltIsAvailable:(id)available;
- (void)keyValueCollection:(id)collection didUpdateValues:(id)values;
- (void)keyValueCollection:(id)collection willUpdateValues:(id)values;
- (void)removeObjectFromAnalyticSyncDatesDictionaryForKey:(id)key;
- (void)setAccountStatus:(int64_t)status;
- (void)setAnalyticSyncDatesDictionary:(id)dictionary;
- (void)setAnalyticSyncDatesDictionaryObject:(id)object forKey:(id)key shouldOverrideIfExists:(BOOL)exists;
- (void)setErrorToAccountNeedsRepair;
- (void)setErrorToKeyRollingError;
- (void)setExitDate:(id)date;
- (void)setLastDownloadProgress:(double)progress;
- (void)setLastSyncDate:(id)date;
- (void)setMiCDeviceIdentifier:(id)identifier;
- (void)setStartingInitialSyncWithRecordType:(int64_t)type;
- (void)setStartingPeriodicSyncWithRecordType:(int64_t)type;
- (void)setSyncControllerRecordType:(int64_t)type;
- (void)setSyncControllerSyncState:(unint64_t)state;
- (void)setSyncControllerSyncState:(unint64_t)state withRecordType:(int64_t)type;
- (void)setSyncControllerSyncType:(int64_t)type;
- (void)setSyncJobState:(unint64_t)state;
- (void)setSyncSessionID:(id)d;
- (void)setSyncStatus:(unint64_t)status;
- (void)setSyncType:(unint64_t)type;
- (void)setSyncingFinished;
@end

@implementation IMDCKSyncState

- (BOOL)isFeatureEnabled
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection BOOLForKey:*MEMORY[0x277D19AD0] withDefault:0];

  return v3;
}

- (void)_startBatchChange
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  [keyValueCollection _startBatchWrite];
}

- (BOOL)isSyncingEnabled
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection BOOLForKey:*MEMORY[0x277D19C80] withDefault:0];

  return v3;
}

- (void)_finishBatchChange
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  [keyValueCollection _commitBatchWrite];
}

- (void)broadcastSyncState
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4D3F24;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)serializedRepresentation
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = IMCloudKitGetSyncStateDictionary();
  syncStatistics = [(IMDCKSyncState *)self syncStatistics];
  if (syncStatistics && (v5 = syncStatistics, -[IMDCKSyncState syncStatistics](self, "syncStatistics"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v5, v7))
  {
    v8 = objc_alloc(MEMORY[0x277CBEB38]);
    v14 = *MEMORY[0x277D19C18];
    syncStatistics2 = [(IMDCKSyncState *)self syncStatistics];
    v15[0] = syncStatistics2;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    dictionary = [v8 initWithDictionary:v10];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  [dictionary addEntriesFromDictionary:v3];

  v12 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)logHandle
{
  v2 = objc_opt_class();

  return [v2 logHandle];
}

+ (id)logHandle
{
  if (qword_2814212A8 != -1)
  {
    sub_22B7D25B0();
  }

  v3 = qword_281421298;

  return v3;
}

- (id)syncDateForKey:(id)key
{
  v3 = [(IMDCKSyncState *)self getAnalyticSyncDatesObjectForKey:key];
  if ([v3 intValue])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:{objc_msgSend(v3, "longLongValue")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)deleteAllCloudKitData
{
  [(IMDCKSyncState *)self setDeletedZones:1];
  v3 = +[IMDRecordZoneManager sharedInstance];
  [v3 deleteAllZones];

  MEMORY[0x2821F9670](self, sel_clearSyncStateForAllRecordTypes);
}

- (void)clearSyncStateForAllRecordTypes
{
  v2 = +[IMDCKSyncController sharedInstance];
  [v2 clearLocalCloudKitSyncState];
}

- (void)ensureSaltIsAvailable:(id)available
{
  availableCopy = available;
  v4 = +[IMDCKRecordSaltManager sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B4E6638;
  v6[3] = &unk_278702930;
  v7 = availableCopy;
  v5 = availableCopy;
  [v4 fetchLatestRecordKeyFromCKAndCreateIfKeyDoesNotExistWithCompletion:v6];
}

- (IMDCKSyncState)initWithKeyValueCollection:(id)collection
{
  collectionCopy = collection;
  v10.receiver = self;
  v10.super_class = IMDCKSyncState;
  v6 = [(IMDCKSyncState *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, collection);
    keyValueCollection = [(IMDCKSyncState *)v7 keyValueCollection];
    [keyValueCollection setDelegate:v7];
  }

  return v7;
}

- (IMDCKSyncState)init
{
  [(IMDCKSyncState *)self doesNotRecognizeSelector:0];

  return 0;
}

- (BOOL)createdChatZone
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection BOOLForKey:*MEMORY[0x277D199E8] withDefault:0];

  return v3;
}

- (BOOL)deletedZones
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection BOOLForKey:*MEMORY[0x277D199E8] withDefault:0];

  return v3;
}

- (BOOL)isSyncing
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection BOOLForKey:*MEMORY[0x277D19B50] withDefault:0];

  return v3;
}

- (BOOL)isEligibleForTruthZone
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection BOOLForKey:*MEMORY[0x277D19B38] withDefault:0];

  return v3;
}

- (BOOL)isRemovedFromBackup
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection BOOLForKey:*MEMORY[0x277D19B48] withDefault:0];

  return v3;
}

- (BOOL)isInExitState
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection BOOLForKey:*MEMORY[0x277D19B40] withDefault:0];

  return v3;
}

- (BOOL)isSyncingPaused
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection BOOLForKey:*MEMORY[0x277D19C60] withDefault:0];

  return v3;
}

- (BOOL)syncCancelled
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection BOOLForKey:*MEMORY[0x277D19C20] withDefault:0];

  return v3;
}

- (BOOL)isDisablingDevices
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection BOOLForKey:*MEMORY[0x277D19BF8] withDefault:0];

  return v3;
}

- (BOOL)isStartingEnabledSettingChange
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection BOOLForKey:*MEMORY[0x277D19C00] withDefault:0];

  return v3;
}

- (BOOL)isStartingPeriodicSyncSetByCloudKitHooks
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection BOOLForKey:*MEMORY[0x277D19C10] withDefault:0];

  return v3;
}

- (BOOL)isStartingInitialSyncSetByCloudKitHooks
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection BOOLForKey:*MEMORY[0x277D19C08] withDefault:0];

  return v3;
}

- (NSDate)exitDate
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection objectForKey:*MEMORY[0x277D19AC8]];

  return v3;
}

- (void)setExitDate:(id)date
{
  dateCopy = date;
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  [keyValueCollection setObject:dateCopy forKey:*MEMORY[0x277D19AC8]];
}

- (NSDate)lastSyncDate
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection objectForKey:*MEMORY[0x277D19C40]];

  return v3;
}

- (void)setLastSyncDate:(id)date
{
  dateCopy = date;
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  [keyValueCollection setObject:dateCopy forKey:*MEMORY[0x277D19C40]];
}

- (NSDictionary)analyticSyncDatesDictionary
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection objectForKey:*MEMORY[0x277D199B0]];

  return v3;
}

- (void)setAnalyticSyncDatesDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  [keyValueCollection setObject:dictionaryCopy forKey:*MEMORY[0x277D199B0]];
}

- (NSString)syncSessionID
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection objectForKey:*MEMORY[0x277D19C68]];

  return v3;
}

- (void)setSyncSessionID:(id)d
{
  dCopy = d;
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  [keyValueCollection setObject:dCopy forKey:*MEMORY[0x277D19C68]];
}

- (NSString)micDeviceIdentifier
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection objectForKey:*MEMORY[0x277D19B88]];

  return v3;
}

- (void)setMiCDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  [keyValueCollection setObject:identifierCopy forKey:*MEMORY[0x277D19B88]];
}

- (unint64_t)syncControllerSyncState
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection integerForKey:*MEMORY[0x277D19C30] withDefault:0];

  return v3;
}

- (void)setSyncControllerSyncState:(unint64_t)state
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  [keyValueCollection setInteger:state forKey:*MEMORY[0x277D19C30]];
}

- (unint64_t)syncType
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection integerForKey:*MEMORY[0x277D19C78] withDefault:0];

  return v3;
}

- (void)setSyncType:(unint64_t)type
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  [keyValueCollection setInteger:type forKey:*MEMORY[0x277D19C78]];
}

- (unint64_t)syncStatus
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection integerForKey:*MEMORY[0x277D19C70] withDefault:0];

  return v3;
}

- (void)setSyncStatus:(unint64_t)status
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  [keyValueCollection setInteger:status forKey:*MEMORY[0x277D19C70]];
}

- (unint64_t)syncJobState
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection integerForKey:*MEMORY[0x277D19C58] withDefault:0];

  return v3;
}

- (void)setSyncJobState:(unint64_t)state
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  [keyValueCollection setInteger:state forKey:*MEMORY[0x277D19C58]];
}

- (int64_t)syncControllerSyncType
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection integerForKey:*MEMORY[0x277D19C38] withDefault:0];

  return v3;
}

- (void)setSyncControllerSyncType:(int64_t)type
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  [keyValueCollection setInteger:type forKey:*MEMORY[0x277D19C38]];
}

- (int64_t)syncControllerRecordType
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection integerForKey:*MEMORY[0x277D19C28] withDefault:0];

  return v3;
}

- (void)setSyncControllerRecordType:(int64_t)type
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  [keyValueCollection setInteger:type forKey:*MEMORY[0x277D19C28]];
}

- (int64_t)accountStatus
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection integerForKey:*MEMORY[0x277D199A8] withDefault:0];

  return v3;
}

- (void)setAccountStatus:(int64_t)status
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  [keyValueCollection setInteger:status forKey:*MEMORY[0x277D199A8]];
}

- (BOOL)hasAvailableRecordsToDownload
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection BOOLForKey:*MEMORY[0x277D19B10] withDefault:0];

  return v3;
}

- (double)lastDownloadProgress
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  [keyValueCollection doubleForKey:*MEMORY[0x277D19B68] withDefault:0.0];
  v4 = v3;

  return v4;
}

- (void)setLastDownloadProgress:(double)progress
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  [keyValueCollection setDouble:*MEMORY[0x277D19B68] forKey:progress];
}

- (NSArray)syncErrors
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  v3 = [keyValueCollection errorArrayForKey:*MEMORY[0x277D19C50]];

  return v3;
}

- (void)clearSyncErrors
{
  keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
  [keyValueCollection removeObjectForKey:*MEMORY[0x277D19C50]];
}

- (void)addSyncError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = +[IMDCKUtilities sharedInstance];
  v6 = [v5 findRootCauses:errorCopy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    v10 = *MEMORY[0x277D19C50];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        keyValueCollection = [(IMDCKSyncState *)self keyValueCollection];
        [keyValueCollection addErrorToArray:v12 forKey:v10];
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setObject:(id)object forKey:(id)key forDictionary:(id)dictionary shouldSetBuild:(BOOL)build
{
  buildCopy = build;
  v22 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  dictionaryCopy = dictionary;
  qword_27D8CBAB8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", keyCopy, qword_27D8CBAB8];
  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  productBuildVersion = [mEMORY[0x277D07DB0] productBuildVersion];

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v19 = objectCopy;
      v20 = 2112;
      v21 = keyCopy;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting object %@ for key %@ in analyticDict.", buf, 0x16u);
    }
  }

  [dictionaryCopy setObject:objectCopy forKey:keyCopy];
  if (buildCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v19 = productBuildVersion;
        v20 = 2112;
        v21 = qword_27D8CBAB8;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Setting ProductBuildVersion %@ for key %@ in analyticDict.", buf, 0x16u);
      }
    }

    [dictionaryCopy setObject:productBuildVersion forKey:qword_27D8CBAB8];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_removeObjectForKey:(id)key forDictionary:(id)dictionary
{
  v14 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  dictionaryCopy = dictionary;
  qword_27D8CBAB8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", keyCopy, qword_27D8CBAB8];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v11 = qword_27D8CBAB8;
      v12 = 2112;
      v13 = keyCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Removing keys %@ %@ from analyticDict.", buf, 0x16u);
    }
  }

  [dictionaryCopy removeObjectForKey:keyCopy];
  [dictionaryCopy removeObjectForKey:qword_27D8CBAB8];

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)removeBuildObjectsFromDict:(id)dict
{
  v17 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{(objc_msgSend(dictCopy, "count") + 1) >> 1}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  keyEnumerator = [dictCopy keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 hasSuffix:qword_27D8CBAB8])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [dictCopy removeObjectsForKeys:v4];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)removeObjectFromAnalyticSyncDatesDictionaryForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy length])
  {
    analyticSyncDatesDictionary = [(IMDCKSyncState *)self analyticSyncDatesDictionary];
    v5 = [analyticSyncDatesDictionary objectForKey:keyCopy];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x277CBEB38]);
      analyticSyncDatesDictionary2 = [(IMDCKSyncState *)self analyticSyncDatesDictionary];
      v8 = [v6 initWithDictionary:analyticSyncDatesDictionary2];

      [(IMDCKSyncState *)self _removeObjectForKey:keyCopy forDictionary:v8];
      v9 = [v8 copy];
      [(IMDCKSyncState *)self setAnalyticSyncDatesDictionary:v9];
    }
  }
}

- (void)setAnalyticSyncDatesDictionaryObject:(id)object forKey:(id)key shouldOverrideIfExists:(BOOL)exists
{
  existsCopy = exists;
  v27 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  keyCopy = key;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      *v24 = 138412802;
      *&v24[4] = objectCopy;
      *&v24[12] = 2112;
      if (existsCopy)
      {
        v11 = @"YES";
      }

      *&v24[14] = keyCopy;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Request to set analytic sync date for object %@ and key %@ shouldOverrideIfExists %@", v24, 0x20u);
    }
  }

  v12 = [keyCopy length];
  if (objectCopy && v12)
  {
    analyticSyncDatesDictionary = [(IMDCKSyncState *)self analyticSyncDatesDictionary];
    v14 = analyticSyncDatesDictionary == 0;

    if (v14)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277CBEB38]);
      analyticSyncDatesDictionary2 = [(IMDCKSyncState *)self analyticSyncDatesDictionary];
      v17 = [v15 initWithDictionary:analyticSyncDatesDictionary2];

      if (!existsCopy)
      {
        v18 = [v17 objectForKey:keyCopy];
        v19 = v18 == 0;

        if (!v19)
        {
LABEL_20:

          goto LABEL_21;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = MEMORY[0x277CCABB0];
      [objectCopy timeIntervalSince1970];
      v21 = [v20 numberWithDouble:?];
      if (v21)
      {
        [(IMDCKSyncState *)self _setObject:v21 forKey:keyCopy forDictionary:v17 shouldSetBuild:1];
      }
    }

    else
    {
      [(IMDCKSyncState *)self _setObject:objectCopy forKey:keyCopy forDictionary:v17 shouldSetBuild:0];
    }

    v22 = [v17 copy];
    [(IMDCKSyncState *)self setAnalyticSyncDatesDictionary:v22];

    goto LABEL_20;
  }

LABEL_21:

  v23 = *MEMORY[0x277D85DE8];
}

- (id)getAnalyticSyncDatesObjectForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy length])
  {
    analyticSyncDatesDictionary = [(IMDCKSyncState *)self analyticSyncDatesDictionary];
    v6 = [analyticSyncDatesDictionary objectForKey:keyCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)describeErrors
{
  syncErrors = [(IMDCKSyncState *)self syncErrors];
  v4 = [(IMDCKSyncState *)self _describeErrors:syncErrors];

  return v4;
}

- (id)_describeErrors:(id)errors
{
  v18 = *MEMORY[0x277D85DE8];
  errorsCopy = errors;
  if ([errorsCopy count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
    [v4 appendFormat:@"Errors(%lu total)", objc_msgSend(errorsCopy, "count")];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = errorsCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          logString = [*(*(&v13 + 1) + 8 * i) logString];
          [v4 appendFormat:@"|%@", logString];
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)syncUserType
{
  if ([(IMDCKSyncState *)self _shouldReportNewUserIfCreatedChatZones:[(IMDCKSyncState *)self createdChatZone] deletedZones:[(IMDCKSyncState *)self deletedZones]])
  {
    return @"NewUser";
  }

  else
  {
    return @"RestoringUser";
  }
}

- (id)syncReportDictionary
{
  v3 = MEMORY[0x277CBEB38];
  analyticSyncDatesDictionary = [(IMDCKSyncState *)self analyticSyncDatesDictionary];
  v5 = [v3 dictionaryWithDictionary:analyticSyncDatesDictionary];

  [IMDCKSyncState removeBuildObjectsFromDict:v5];
  syncUserType = [(IMDCKSyncState *)self syncUserType];
  [v5 setObject:syncUserType forKey:*MEMORY[0x277D19CB8]];

  syncSessionID = [(IMDCKSyncState *)self syncSessionID];

  if (syncSessionID)
  {
    syncSessionID2 = [(IMDCKSyncState *)self syncSessionID];
    [v5 setObject:syncSessionID2 forKey:@"syncSessionID"];
  }

  micDeviceIdentifier = [(IMDCKSyncState *)self micDeviceIdentifier];

  if (micDeviceIdentifier)
  {
    micDeviceIdentifier2 = [(IMDCKSyncState *)self micDeviceIdentifier];
    [v5 setObject:micDeviceIdentifier2 forKey:*MEMORY[0x277D19B88]];
  }

  describeErrors = [(IMDCKSyncState *)self describeErrors];
  if ([describeErrors length])
  {
    [v5 setObject:describeErrors forKey:@"syncErrors"];
  }

  return v5;
}

- (id)describeRecordCounts
{
  v13 = MEMORY[0x277CCACA8];
  v16 = +[IMDCKChatSyncController sharedInstance];
  describeRecordCounts = [v16 describeRecordCounts];
  v15 = +[(IMDCKMessageSyncController *)IMDCKInitialMessageSyncController];
  describeRecordCounts2 = [v15 describeRecordCounts];
  v4 = +[(IMDCKAttachmentSyncController *)IMDCKInitialAttachmentSyncController];
  describeRecordCounts3 = [v4 describeRecordCounts];
  v6 = +[IMDCKMessageSyncController sharedInstance];
  describeRecordCounts4 = [v6 describeRecordCounts];
  v8 = +[IMDCKAttachmentSyncController sharedInstance];
  describeRecordCounts5 = [v8 describeRecordCounts];
  v10 = +[IMDCKRecoverableMessageSyncController sharedInstance];
  describeRecordCounts6 = [v10 describeRecordCounts];
  v14 = [v13 stringWithFormat:@"chat %@ init %@ %@ full %@ %@ %@", describeRecordCounts, describeRecordCounts2, describeRecordCounts3, describeRecordCounts4, describeRecordCounts5, describeRecordCounts6];

  return v14;
}

- (NSString)description
{
  v35 = MEMORY[0x277CCACA8];
  v36.receiver = self;
  v36.super_class = IMDCKSyncState;
  v34 = [(IMDCKSyncState *)&v36 description];
  if ([(IMDCKSyncState *)self isFeatureEnabled])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v33 = v3;
  if ([(IMDCKSyncState *)self isSyncing])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v32 = v4;
  if ([(IMDCKSyncState *)self isEligibleForTruthZone])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v31 = v5;
  if ([(IMDCKSyncState *)self isSyncingEnabled])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v30 = v6;
  if ([(IMDCKSyncState *)self isRemovedFromBackup])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v29 = v7;
  if ([(IMDCKSyncState *)self isInExitState])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v28 = v8;
  exitDate = [(IMDCKSyncState *)self exitDate];
  if ([(IMDCKSyncState *)self isDisablingDevices])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v26 = v9;
  lastSyncDate = [(IMDCKSyncState *)self lastSyncDate];
  if ([(IMDCKSyncState *)self isSyncingPaused])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v25 = v11;
  if ([(IMDCKSyncState *)self isStartingEnabledSettingChange])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v24 = v12;
  if ([(IMDCKSyncState *)self isSyncingPaused])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [(IMDCKSyncState *)self syncControllerSyncState];
  v23 = IMStringFromIMCloudKitSyncControllerSyncState();
  [(IMDCKSyncState *)self syncType];
  v14 = IMStringFromIMCloudKitSyncType();
  [(IMDCKSyncState *)self syncStatus];
  v22 = IMStringFromIMCloudKitSyncStatus();
  [(IMDCKSyncState *)self syncJobState];
  v15 = IMStringFromIMCloudKitSyncJobState();
  [(IMDCKSyncState *)self syncControllerRecordType];
  v16 = IMStringFromIMCloudKitSyncControllerSyncRecordType();
  [(IMDCKSyncState *)self syncControllerSyncType];
  v17 = IMStringFromIMCloudKitSyncControllerSyncType();
  [(IMDCKSyncState *)self accountStatus];
  v18 = IMStringFromIMCloudKitAccountStatus();
  syncErrors = [(IMDCKSyncState *)self syncErrors];
  v20 = [v35 stringWithFormat:@"%@, isFeatureEnabled: %@, isSyncing: %@, isEligibleForTruthzone %@, isSyncingEnabled: %@, isRemovedFromBackup: %@, isInExitState: %@, exitDate: %@, isStartingDisabledDisableDevice: %@, lastSyncDate: %@, isSyncingPaused: %@, startingChangingEnabledSetting: %@, isPaused: %@, syncControllerSyncState: %@, syncType: %@, syncStatus: %@, syncJobState: %@, syncControllerRecordType: %@, syncType: %@, accountStatus: %@, syncErrors: %@", v34, v33, v32, v31, v30, v29, v28, exitDate, v26, lastSyncDate, v25, v24, v13, v23, v14, v22, v15, v16, v17, v18, syncErrors];

  return v20;
}

- (void)setSyncingFinished
{
  logHandle = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, logHandle, OS_LOG_TYPE_INFO, "syncing finished", v4, 2u);
  }

  [(IMDCKSyncState *)self _startBatchChange];
  [(IMDCKSyncState *)self setStartingPeriodicSyncSetByCloudKitHooks:0];
  [(IMDCKSyncState *)self setStartingInitialSyncSetByCloudKitHooks:0];
  [(IMDCKSyncState *)self setSyncControllerSyncState:0];
  [(IMDCKSyncState *)self setSyncControllerRecordType:0];
  [(IMDCKSyncState *)self setSyncControllerSyncType:0];
  [(IMDCKSyncState *)self setSyncStatus:0];
  [(IMDCKSyncState *)self setSyncJobState:0];
  [(IMDCKSyncState *)self _finishBatchChange];
}

- (void)clearLocalCloudKitSyncState
{
  logHandle = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, logHandle, OS_LOG_TYPE_INFO, "clearing all sync states", v4, 2u);
  }

  [(IMDCKSyncState *)self _startBatchChange];
  [(IMDCKSyncState *)self setSyncControllerSyncState:0];
  [(IMDCKSyncState *)self setSyncControllerRecordType:0];
  [(IMDCKSyncState *)self setSyncStatus:0];
  [(IMDCKSyncState *)self setSyncJobState:0];
  [(IMDCKSyncState *)self setSyncingPaused:0];
  [(IMDCKSyncState *)self setSyncCancelled:0];
  [(IMDCKSyncState *)self setStartingEnabledSettingChange:0];
  [(IMDCKSyncState *)self setDisablingDevices:0];
  [(IMDCKSyncState *)self clearSyncErrors];
  [(IMDCKSyncState *)self setStartingPeriodicSyncSetByCloudKitHooks:0];
  [(IMDCKSyncState *)self setStartingInitialSyncSetByCloudKitHooks:0];
  [(IMDCKSyncState *)self setSyncControllerSyncType:0];
  [(IMDCKSyncState *)self setHasAvailableRecordsToDownload:0];
  [(IMDCKSyncState *)self setLastDownloadProgress:0.0];
  [(IMDCKSyncState *)self _finishBatchChange];
}

- (void)_setStartingSync
{
  [(IMDCKSyncState *)self setStartingPeriodicSyncSetByCloudKitHooks:0];
  [(IMDCKSyncState *)self setStartingInitialSyncSetByCloudKitHooks:0];

  [(IMDCKSyncState *)self clearSyncErrors];
}

- (void)setStartingPeriodicSyncWithRecordType:(int64_t)type
{
  logHandle = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22B4CC000, logHandle, OS_LOG_TYPE_INFO, "Set starting periodic sync", v6, 2u);
  }

  [(IMDCKSyncState *)self _startBatchChange];
  [(IMDCKSyncState *)self _setStartingSync];
  [(IMDCKSyncState *)self setSyncControllerSyncType:2];
  [(IMDCKSyncState *)self setSyncControllerSyncState:1 withRecordType:type];
  [(IMDCKSyncState *)self _finishBatchChange];
}

- (void)setStartingInitialSyncWithRecordType:(int64_t)type
{
  logHandle = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_22B4CC000, logHandle, OS_LOG_TYPE_INFO, "Set starting initial sync", v6, 2u);
  }

  [(IMDCKSyncState *)self _startBatchChange];
  [(IMDCKSyncState *)self _setStartingSync];
  [(IMDCKSyncState *)self setSyncControllerSyncType:1];
  [(IMDCKSyncState *)self setSyncControllerSyncState:1 withRecordType:type];
  [(IMDCKSyncState *)self _finishBatchChange];
}

- (void)setSyncControllerSyncState:(unint64_t)state withRecordType:(int64_t)type
{
  v15 = *MEMORY[0x277D85DE8];
  logHandle = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    v8 = IMStringFromIMCloudKitSyncControllerSyncState();
    v9 = IMStringFromIMCloudKitSyncControllerSyncRecordType();
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&dword_22B4CC000, logHandle, OS_LOG_TYPE_INFO, "Setting controller sync type to %@ for record type: %@", &v11, 0x16u);
  }

  [(IMDCKSyncState *)self _startBatchChange];
  [(IMDCKSyncState *)self setStartingPeriodicSyncSetByCloudKitHooks:0];
  [(IMDCKSyncState *)self setStartingInitialSyncSetByCloudKitHooks:0];
  [(IMDCKSyncState *)self setSyncControllerRecordType:type];
  [(IMDCKSyncState *)self setSyncControllerSyncState:state];
  [(IMDCKSyncState *)self _finishBatchChange];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)keyValueCollection:(id)collection willUpdateValues:(id)values
{
  v22 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  logHandle = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_22B7D25C4(valuesCopy, logHandle);
  }

  isSyncing = [(IMDCKSyncState *)self isSyncing];
  v8 = [valuesCopy objectForKey:*MEMORY[0x277D19C80]];

  if (v8)
  {
    LODWORD(cloudKitSyncingEnabled) = [(IMDCKSyncState *)self isSyncingEnabled];
  }

  else
  {
    v10 = +[IMDCKUtilities sharedInstance];
    cloudKitSyncingEnabled = [v10 cloudKitSyncingEnabled];

    [(IMDCKSyncState *)self setSyncingEnabled:cloudKitSyncingEnabled];
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMessagesIniCloudVersion2 = [mEMORY[0x277D1A9B8] isMessagesIniCloudVersion2];

  if (isMessagesIniCloudVersion2)
  {
    if (cloudKitSyncingEnabled)
    {
      syncStatus = [(IMDCKSyncState *)self syncStatus];
LABEL_11:
      v14 = syncStatus != 0;
      if (isSyncing == v14)
      {
        goto LABEL_18;
      }

      v15 = syncStatus != 0;
      goto LABEL_15;
    }
  }

  else if (cloudKitSyncingEnabled)
  {
    syncStatus = [(IMDCKSyncState *)self syncControllerSyncState];
    goto LABEL_11;
  }

  if ((isSyncing & 1) == 0)
  {
    goto LABEL_18;
  }

  v14 = 0;
  v15 = 0;
LABEL_15:
  [(IMDCKSyncState *)self setSyncing:v15];
  [(IMDCKSyncState *)self setStartingPeriodicSyncSetByCloudKitHooks:0];
  [(IMDCKSyncState *)self setStartingInitialSyncSetByCloudKitHooks:0];
  logHandle2 = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_INFO))
  {
    v21[0] = 67109120;
    v21[1] = v14;
    _os_log_impl(&dword_22B4CC000, logHandle2, OS_LOG_TYPE_INFO, "Updating syncing to: %{BOOL}d", v21, 8u);
  }

LABEL_18:
  delegate = [(IMDCKSyncState *)self delegate];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    delegate2 = [(IMDCKSyncState *)self delegate];
    [delegate2 syncStateWillUpdate:self];
  }

  [(IMDCKSyncState *)self setStartingEnabledSettingChange:0];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)keyValueCollection:(id)collection didUpdateValues:(id)values
{
  valuesCopy = values;
  logHandle = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_22B7D263C(valuesCopy, logHandle);
  }

  delegate = [(IMDCKSyncState *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(IMDCKSyncState *)self delegate];
    [delegate2 syncStateDidUpdate:self];
  }

  [(IMDCKSyncState *)self broadcastSyncState];
}

- (void)setErrorToAccountNeedsRepair
{
  v11[1] = *MEMORY[0x277D85DE8];
  logHandle = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_22B4CC000, logHandle, OS_LOG_TYPE_INFO, "Account in need of repair detected, setting sync error", v9, 2u);
  }

  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D19C48];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = @"Account needs repair";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 errorWithDomain:v5 code:3 userInfo:v6];
  [(IMDCKSyncState *)self addSyncError:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setErrorToKeyRollingError
{
  v11[1] = *MEMORY[0x277D85DE8];
  logHandle = [(IMDCKSyncState *)self logHandle];
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_22B4CC000, logHandle, OS_LOG_TYPE_INFO, "Account in need of repair detected, setting sync error", v9, 2u);
  }

  v4 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277D19C48];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = @"Account needs repair";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v4 errorWithDomain:v5 code:6 userInfo:v6];
  [(IMDCKSyncState *)self addSyncError:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (IMDCKSyncStateDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end