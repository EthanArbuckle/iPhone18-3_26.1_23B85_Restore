@interface CHSpotlightIndexManager
+ (CHSpotlightIndexManager)sharedInstance;
+ (CSPerson)mePerson;
+ (NSArray)keyDescriptors;
+ (id)contactStore;
- (BOOL)isTelephonyCall:(id)a3;
- (BOOL)needsProviderRefreshForCallProviderIdentifierQueries:(id)a3;
- (CHSpotlightIndexManager)initWithIndex:(id)a3 metadataCache:(id)a4 contactStore:(id)a5 featureFlags:(id)a6;
- (id)callProviderIdentifiersForProviderManager:(id)a3;
- (id)callsForItems:(id)a3;
- (id)contactHandleForHandle:(id)a3;
- (id)contactsByHandleForCalls:(id)a3;
- (id)contactsByHandleForHandles:(id)a3;
- (id)dialRequestURLForRecentCall:(id)a3;
- (id)fetchAttributesForCall:(id)a3;
- (id)fetchCallMediaTypeForCall:(id)a3;
- (id)fetchCallProviderForCall:(id)a3;
- (id)fetchCallStatusForCall:(id)a3;
- (id)fetchLocalisedCallStatusForCall:(id)a3;
- (id)formattedHandle:(id)a3 isoCountryCode:(id)a4;
- (id)formattedHandleForComponentSearch:(id)a3 isoCountryCode:(id)a4;
- (id)handleIdentifierForHandle:(id)a3;
- (id)joinConversationRequestURLForRecentCall:(id)a3;
- (id)personForHandle:(id)a3 isoCountryCode:(id)a4 contact:(id)a5;
- (id)urlForCall:(id)a3;
- (void)checkAndQuerySpotlightWithSearchString:(id)a3;
- (void)checkProviderStatus;
- (void)checkProviderStatusAfterDelay;
- (void)indexInsertedCalls:(id)a3;
- (void)indexInsertedCallsSync:(id)a3 completion:(id)a4;
- (void)indexTransactions:(id)a3;
- (void)indexTransactionsSync:(id)a3;
- (void)indexedFacetimeAudioCallsWithCompletion:(id)a3;
- (void)indexedFacetimeVideoCallsWithCompletion:(id)a3;
- (void)providersChangedForProviderManager:(id)a3;
- (void)querySpotlightCountWithSearchString:(id)a3 completion:(id)a4;
- (void)querySpotlightWithSearchString:(id)a3 completion:(id)a4;
- (void)refreshCallProvidersWithCallProviderIdentifierQueries:(id)a3;
- (void)reindexItemsForContactsUpdate:(id)a3;
- (void)removeDeletedCalls:(id)a3;
- (void)removeDeletedCallsSync:(id)a3;
- (void)updateCallsForAcceptedContacts;
- (void)updateCallsHavingHandles:(id)a3 orContactIdentifier:(id)a4;
- (void)updateCurrentHistoryToken;
- (void)updateFacetimeCallsSearchableStatus;
- (void)updateSearchableStatusFor:(id)a3 newStatus:(BOOL)a4;
@end

@implementation CHSpotlightIndexManager

+ (NSArray)keyDescriptors
{
  if (qword_10005C108 != -1)
  {
    sub_1000328D4();
  }

  v3 = qword_10005C100;

  return v3;
}

+ (id)contactStore
{
  if (qword_10005C118 != -1)
  {
    sub_1000328E8();
  }

  v3 = qword_10005C110;

  return v3;
}

+ (CHSpotlightIndexManager)sharedInstance
{
  if (qword_10005C128 != -1)
  {
    sub_1000328FC();
  }

  v3 = qword_10005C120;

  return v3;
}

- (CHSpotlightIndexManager)initWithIndex:(id)a3 metadataCache:(id)a4 contactStore:(id)a5 featureFlags:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v30.receiver = self;
  v30.super_class = CHSpotlightIndexManager;
  v14 = [(CHSpotlightIndexManager *)&v30 initWithName:"CallHistorySpotlightIndexManager"];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_featureFlags, a6);
    v16 = objc_alloc_init(TUCallProviderManager);
    [(CHSpotlightIndexManager *)v15 setCallProviderManager:v16];

    callProviderManager = v15->_callProviderManager;
    v18 = [(CHSpotlightIndexManager *)v15 queue];
    [(TUCallProviderManager *)callProviderManager addDelegate:v15 queue:v18];

    [(CHSpotlightIndexManager *)v15 setCsIndex:v10];
    [(CHSpotlightIndexManager *)v15 setContactStore:v12];
    [(CHSpotlightIndexManager *)v15 setMetadataCache:v11];
    v19 = [CHContactChangeManager alloc];
    v20 = [(CHSpotlightIndexManager *)v15 featureFlags];
    v21 = [(CHContactChangeManager *)v19 initWithSpotlightIndexManager:v15 featureFlags:v20];
    [(CHSpotlightIndexManager *)v15 setContactChangeManager:v21];

    v22 = [TUSubtitleProvider alloc];
    v23 = [(CHSpotlightIndexManager *)v15 metadataCache];
    v24 = [(CHSpotlightIndexManager *)v15 callProviderManager];
    v25 = [v22 initWithMetadataCache:v23 callProviderManager:v24];
    subtitleProvider = v15->_subtitleProvider;
    v15->_subtitleProvider = v25;

    v27 = [[CHSpotlightReindexManager alloc] initWithSpotlightIndexManager:v15];
    reindexManager = v15->_reindexManager;
    v15->_reindexManager = v27;

    [(CHSpotlightIndexManager *)v15 checkProviderStatusAfterDelay];
  }

  return v15;
}

- (void)indexTransactions:(id)a3
{
  v4 = a3;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000B484;
    v5[3] = &unk_100050E90;
    v5[4] = self;
    v6 = v4;
    [(CHSpotlightIndexManager *)self executeSync:v5];
  }
}

- (void)indexTransactionsSync:(id)a3
{
  v4 = a3;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v26 = self;
    v5 = [(CHSpotlightIndexManager *)self logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v34 = [v4 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Need to index calls for %lu transactions", buf, 0xCu);
    }

    v25 = +[NSMutableArray array];
    v24 = +[NSMutableArray array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = v4;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        v10 = 0;
        do
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v29 + 1) + 8 * v10);
          v12 = [v11 transactionType];
          if (v12 == 2)
          {
            v16 = [v11 record];
            v27 = 0;
            v14 = [CHRecentCall unarchivedObjectFromData:v16 error:&v27];
            v15 = v27;

            if (v14)
            {
              v17 = [v14 uniqueId];
              [v24 addObject:v17];
            }

            else
            {
              v17 = [(CHSpotlightIndexManager *)v26 logHandle];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_22;
              }
            }

LABEL_18:

            goto LABEL_19;
          }

          if (v12)
          {
            goto LABEL_20;
          }

          v13 = [v11 record];
          v28 = 0;
          v14 = [CHRecentCall unarchivedObjectFromData:v13 error:&v28];
          v15 = v28;

          if (!v14)
          {
            v17 = [(CHSpotlightIndexManager *)v26 logHandle];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
LABEL_22:
              *buf = 138412546;
              v34 = v11;
              v35 = 2114;
              v36 = v15;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Attempt to unarchive call from transaction %@ failed with error %{public}@", buf, 0x16u);
            }

            goto LABEL_18;
          }

          [v25 addObject:v14];
LABEL_19:

LABEL_20:
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v18 = [v6 countByEnumeratingWithState:&v29 objects:v37 count:16];
        v8 = v18;
      }

      while (v18);
    }

    v19 = [(CHSpotlightIndexManager *)v26 logHandle];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v25 count];
      *buf = 134217984;
      v34 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Inserted calls count: %lu", buf, 0xCu);
    }

    v21 = [(CHSpotlightIndexManager *)v26 logHandle];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v24 count];
      *buf = 134217984;
      v34 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Deleted calls count: %lu", buf, 0xCu);
    }

    [(CHSpotlightIndexManager *)v26 indexInsertedCallsSync:v25 completion:0];
    [(CHSpotlightIndexManager *)v26 removeDeletedCallsSync:v24];

    v4 = v23;
  }
}

- (void)indexInsertedCalls:(id)a3
{
  v4 = a3;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000B964;
    v5[3] = &unk_100050E90;
    v5[4] = self;
    v6 = v4;
    [(CHSpotlightIndexManager *)self executeSync:v5];
  }
}

- (void)removeDeletedCalls:(id)a3
{
  v4 = a3;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000BA20;
    v5[3] = &unk_100050E90;
    v5[4] = self;
    v6 = v4;
    [(CHSpotlightIndexManager *)self executeSync:v5];
  }
}

- (void)indexInsertedCallsSync:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (-[CHFeatureFlags callHistorySearchEnabled](self->_featureFlags, "callHistorySearchEnabled") && [v6 count])
  {
    v31 = v7;
    v8 = [(CHSpotlightIndexManager *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v51 = [v6 count];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Indexing %lu inserted calls to spotlight", buf, 0xCu);
    }

    v29 = objc_alloc_init(NSMutableArray);
    v28 = objc_alloc_init(NSMutableDictionary);
    v9 = objc_alloc_init(NSMutableArray);
    v10 = [(CHSpotlightIndexManager *)self contactsByHandleForCalls:v6];
    v11 = [objc_opt_class() mePerson];
    v12 = +[TUCallCapabilities supportsFaceTimeAudioCalls];
    v13 = +[TUCallCapabilities supportsFaceTimeVideoCalls];
    v14 = dispatch_group_create();
    v15 = [(CHSpotlightIndexManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000BDC4;
    block[3] = &unk_100051058;
    v16 = v6;
    v41 = v16;
    v42 = self;
    v17 = v10;
    v48 = v12;
    v49 = v13;
    v43 = v17;
    v44 = v11;
    v18 = v29;
    v45 = v18;
    v19 = v28;
    v46 = v19;
    v20 = v9;
    v47 = v20;
    v30 = v11;
    dispatch_group_async(v14, v15, block);

    v21 = [TUMetadataDestinationID metadataDestinationIDsForCHRecentCalls:v16];
    v22 = [(CHSpotlightIndexManager *)self metadataCache];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10000C540;
    v32[3] = &unk_1000510D0;
    v32[4] = self;
    v33 = v16;
    v34 = v14;
    v35 = v20;
    v36 = v19;
    v37 = v17;
    v38 = v18;
    v7 = v31;
    v39 = v31;
    v23 = v18;
    v24 = v17;
    v25 = v19;
    v26 = v20;
    v27 = v14;
    [v22 updateCacheWithDestinationIDs:v21 completion:v32];
  }
}

- (void)removeDeletedCallsSync:(id)a3
{
  v4 = a3;
  if (-[CHFeatureFlags callHistorySearchEnabled](self->_featureFlags, "callHistorySearchEnabled") && [v4 count])
  {
    v5 = [(CHSpotlightIndexManager *)self csIndex];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000CC10;
    v6[3] = &unk_1000510F8;
    v6[4] = self;
    [v5 deleteSearchableItemsWithIdentifiers:v4 completionHandler:v6];
  }
}

- (void)reindexItemsForContactsUpdate:(id)a3
{
  v4 = a3;
  if (-[CHFeatureFlags callHistorySearchEnabled](self->_featureFlags, "callHistorySearchEnabled") && [v4 count])
  {
    v5 = [(CHSpotlightIndexManager *)self logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v46 = [v4 count];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reindexing %lu items to spotlight", buf, 0xCu);
    }

    v6 = [(CHSpotlightIndexManager *)self callsForItems:v4];
    if ([v6 count])
    {
      v7 = objc_alloc_init(NSMutableArray);
      v8 = objc_alloc_init(NSMutableDictionary);
      v9 = objc_alloc_init(NSMutableArray);
      v10 = [(CHSpotlightIndexManager *)self contactsByHandleForCalls:v6];
      v11 = [objc_opt_class() mePerson];
      v12 = dispatch_group_create();
      v13 = [(CHSpotlightIndexManager *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000D00C;
      block[3] = &unk_100051120;
      v29 = v6;
      v14 = v6;
      v38 = v14;
      v39 = self;
      v15 = v10;
      v40 = v15;
      v41 = v11;
      v16 = v7;
      v42 = v16;
      v17 = v8;
      v43 = v17;
      v18 = v9;
      v44 = v18;
      v28 = v11;
      dispatch_group_async(v12, v13, block);

      v19 = [TUMetadataDestinationID metadataDestinationIDsForCHRecentCalls:v14];
      v20 = [(CHSpotlightIndexManager *)self metadataCache];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10000D5FC;
      v30[3] = &unk_100051120;
      v30[4] = self;
      v21 = v14;
      v6 = v29;
      v31 = v21;
      v32 = v12;
      v33 = v18;
      v34 = v17;
      v35 = v15;
      v36 = v16;
      v22 = v16;
      v23 = v15;
      v24 = v17;
      v25 = v18;
      v26 = v12;
      [v20 updateCacheWithDestinationIDs:v19 completion:v30];

      v27 = v28;
    }

    else
    {
      v27 = [(CHSpotlightIndexManager *)self logHandle];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_100032A20(v4);
      }
    }
  }
}

- (void)updateSearchableStatusFor:(id)a3 newStatus:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (-[CHFeatureFlags callHistorySearchEnabled](self->_featureFlags, "callHistorySearchEnabled") && [v6 count])
  {
    v7 = [(CHSpotlightIndexManager *)self logHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v28 = [v6 count];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reindexing %lu items to spotlight", buf, 0xCu);
    }

    v8 = [(CHSpotlightIndexManager *)self callsForItems:v6];
    if ([v8 count])
    {
      v19 = v8;
      v20 = self;
      v9 = objc_alloc_init(NSMutableArray);
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            v16 = [NSNumber numberWithInt:!v4, v19];
            v17 = [v15 attributeSet];
            [v17 setDisableSearchInSpotlight:v16];

            [v15 setIsUpdate:1];
            [v9 addObject:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v12);
      }

      v18 = [(CHSpotlightIndexManager *)v20 csIndex];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10000DE84;
      v21[3] = &unk_1000510F8;
      v21[4] = v20;
      [v18 indexSearchableItems:v9 completionHandler:v21];

      v8 = v19;
    }

    else
    {
      v9 = [(CHSpotlightIndexManager *)self logHandle];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100032A20(v6);
      }
    }
  }
}

- (id)fetchAttributesForCall:(id)a3
{
  v4 = a3;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v5 = objc_alloc_init(CSSearchableItemAttributeSet);
    [v5 setContentType:@"kSpotlightItemTypeCall"];
    v6 = [v4 date];
    [v5 setContentCreationDate:v6];

    v7 = [v4 date];
    [v5 setLastUsedDate:v7];

    v8 = [(CHSpotlightIndexManager *)self fetchCallStatusForCall:v4];
    if (v8)
    {
      [v5 setPhoneCallStatus:v8];
    }

    v9 = [(CHSpotlightIndexManager *)self fetchLocalisedCallStatusForCall:v4];

    if (v9)
    {
      v10 = [[CSCustomAttributeKey alloc] initWithKeyName:@"com_apple_mobilephone_localisedCallStatus" searchable:1 searchableByDefault:1 unique:0 multiValued:0];
      [v5 setValue:v9 forCustomKey:v10];
    }

    v11 = [v4 localParticipantUUID];
    v12 = [v11 UUIDString];
    [v5 setPhoneSIM:v12];

    v13 = [(CHSpotlightIndexManager *)self urlForCall:v4];
    [v5 setPhoneCallBackURL:v13];

    v14 = [(CHSpotlightIndexManager *)self fetchCallMediaTypeForCall:v4];
    [v5 setPhoneCallType:v14];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchCallMediaTypeForCall:(id)a3
{
  v4 = a3;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v5 = [v4 mediaType];
    v6 = @"Video";
    if (v5 != 2)
    {
      v6 = 0;
    }

    if (v5 == 1)
    {
      v7 = @"Audio";
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)contactsByHandleForCalls:(id)a3
{
  v4 = a3;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v5 = objc_alloc_init(NSMutableSet);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v24 = v4;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v26 = *v32;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v31 + 1) + 8 * i);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v10 = [v9 remoteParticipantHandles];
          v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v28;
            do
            {
              for (j = 0; j != v12; j = j + 1)
              {
                if (*v28 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [(CHSpotlightIndexManager *)self contactHandleForHandle:*(*(&v27 + 1) + 8 * j)];
                [v5 addObject:v15];
              }

              v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v12);
          }

          v16 = [(CHSpotlightIndexManager *)self fetchCallProviderForCall:v9];
          v17 = [v9 localParticipantUUID];
          v18 = [v16 senderIdentityForAccountUUID:v17];
          v19 = [v18 handle];
          v20 = [v19 normalizedValue];

          if (v20)
          {
            [v5 addObject:v20];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v7);
    }

    v21 = [v5 allObjects];
    v22 = [(CHSpotlightIndexManager *)self contactsByHandleForHandles:v21];

    v4 = v24;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)contactsByHandleForHandles:(id)a3
{
  v4 = a3;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v5 = [(CHSpotlightIndexManager *)self contactStore];
    v6 = [objc_opt_class() keyDescriptors];
    v7 = [v5 contactsByContactHandleForContactHandles:v4 keyDescriptors:v6 error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)personForHandle:(id)a3 isoCountryCode:(id)a4 contact:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v11 = [(CHSpotlightIndexManager *)self formattedHandle:v8 isoCountryCode:v9];
    if (v10)
    {
      v12 = [CNContactFormatter stringFromContact:v10 style:0];

      v11 = v12;
    }

    v13 = [CSPerson alloc];
    v19 = v8;
    v14 = [NSArray arrayWithObjects:&v19 count:1];
    v15 = [(CHSpotlightIndexManager *)self handleIdentifierForHandle:v8];
    v16 = [v13 initWithDisplayName:v11 handles:v14 handleIdentifier:v15];

    if (v10)
    {
      v17 = [v10 identifier];
      [v16 setContactIdentifier:v17];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (CSPerson)mePerson
{
  v2 = [objc_opt_class() contactStore];
  v3 = [CNContactFetchRequest alloc];
  v4 = [objc_opt_class() keyDescriptors];
  v5 = [v3 initWithKeysToFetch:v4];

  v6 = +[CNContact predicateForMeContact];
  [v5 setPredicate:v6];

  v7 = +[CHLogServer sharedInstance];
  v8 = [v7 logHandleForDomain:"CallHistorySpotlightIndexManager"];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138739971;
    v28 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Executing contact fetch request for me contact %{sensitive}@", buf, 0xCu);
  }

  v25 = 0;
  v9 = [v2 executeFetchRequest:v5 error:&v25];
  v10 = v25;
  v11 = v10;
  if (v9)
  {
    v12 = [v9 value];
    v13 = [v12 firstObject];

    if (v13)
    {
      v14 = [CNContactFormatter stringFromContact:v13 style:0];
      v15 = [CSPerson alloc];
      v16 = objc_retainBlock(ch_allPhoneNumbers);
      v26 = v16;
      v17 = [NSArray arrayWithObjects:&v26 count:1];
      v18 = [v13 handlesIncluding:v17];
      v19 = [v15 initWithDisplayName:v14 handles:v18 handleIdentifier:CNContactPhoneNumbersKey];

      v20 = [v13 identifier];
      [v19 setContactIdentifier:v20];

      goto LABEL_14;
    }
  }

  else if (v10 && [v10 code] != 200)
  {
    v21 = +[CHLogServer sharedInstance];
    v22 = [v21 logHandleForDomain:"CallHistorySpotlightIndexManager"];

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100032A98();
    }
  }

  v23 = +[CHLogServer sharedInstance];
  v13 = [v23 logHandleForDomain:"CallHistorySpotlightIndexManager"];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Contact fetch request for me contact returned no contact", buf, 2u);
  }

  v19 = 0;
LABEL_14:

  return v19;
}

- (id)fetchCallProviderForCall:(id)a3
{
  v4 = a3;
  if (-[CHFeatureFlags callHistorySearchEnabled](self->_featureFlags, "callHistorySearchEnabled") && ([v4 serviceProvider], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(CHSpotlightIndexManager *)self callProviderManager];
    v7 = [v6 providerForRecentCall:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)fetchLocalisedCallStatusForCall:(id)a3
{
  v4 = a3;
  if (![(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v6 = 0;
    goto LABEL_12;
  }

  if (([v4 callStatus] & 0xD) != 0)
  {
    v5 = @"INCOMING_CALL";
  }

  else
  {
    if (([v4 callStatus] & 0x12) == 0)
    {
      v6 = 0;
      goto LABEL_8;
    }

    v5 = @"OUTGOING_CALL";
  }

  v6 = [CHLocalization localizedStringForKey:v5];
LABEL_8:
  if ([v4 callStatus] == 8)
  {
    v7 = [CHLocalization localizedStringForKey:@"MISSED_CALL"];
    v8 = [v6 stringByAppendingFormat:@" %@", v7];

    v6 = v8;
  }

  if ([v4 callStatus] == 16)
  {
    v9 = [CHLocalization localizedStringForKey:@"CANCELLED_CALL"];
    v10 = [v6 stringByAppendingFormat:@" %@", v9];

    v6 = v10;
  }

LABEL_12:

  return v6;
}

- (id)fetchCallStatusForCall:(id)a3
{
  v4 = a3;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    if (([v4 callStatus] & 0xD) != 0)
    {
      v5 = @"Incoming";
    }

    else if (([v4 callStatus] & 0x12) != 0)
    {
      v5 = @"Outgoing";
    }

    else
    {
      v5 = 0;
    }

    if ([v4 callStatus] == 8)
    {
      v5 = [(__CFString *)v5 stringByAppendingFormat:@" %@", @"Missed"];
    }

    if ([v4 callStatus] == 16)
    {
      v6 = [(__CFString *)v5 stringByAppendingFormat:@" %@", @"Canceled"];

      v5 = v6;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)urlForCall:(id)a3
{
  v4 = a3;
  if (![(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v12 = 0;
    goto LABEL_12;
  }

  v5 = objc_alloc_init(TUFeatureFlags);
  v6 = [v5 groupConversations];
  v7 = [v4 validRemoteParticipantHandles];
  v8 = [v7 count];
  v9 = v8;
  if (!v6)
  {

    if (v9 >= 2)
    {
      goto LABEL_8;
    }

LABEL_10:
    v13 = [(CHSpotlightIndexManager *)self dialRequestURLForRecentCall:v4];
    goto LABEL_11;
  }

  if (v8 <= 1)
  {

    goto LABEL_10;
  }

  v10 = [v4 serviceProvider];
  v11 = [v10 isEqualToString:@"com.apple.FaceTime"];

  if (!v11)
  {
    goto LABEL_10;
  }

LABEL_8:
  v13 = [(CHSpotlightIndexManager *)self joinConversationRequestURLForRecentCall:v4];
LABEL_11:
  v12 = v13;

LABEL_12:

  return v12;
}

- (id)dialRequestURLForRecentCall:(id)a3
{
  v4 = a3;
  v5 = [(CHSpotlightIndexManager *)self callProviderManager];
  v6 = [v5 dialRequestForRecentCall:v4];

  if (v6)
  {
    [v6 setOriginatingUIType:22];
    v7 = [v6 URL];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)joinConversationRequestURLForRecentCall:(id)a3
{
  v4 = a3;
  v5 = [(CHSpotlightIndexManager *)self callProviderManager];
  v6 = [v5 joinConversationRequestForRecentCall:v4];

  if (v6)
  {
    [v6 setOriginatingUIType:22];
    v7 = [v6 URL];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)handleIdentifierForHandle:(id)a3
{
  v3 = [CHHandle handleTypeForValue:a3];
  v4 = &CNContactPhoneNumbersKey;
  if (v3 != 2)
  {
    v4 = &CNContactEmailAddressesKey;
  }

  v5 = *v4;

  return v5;
}

- (id)formattedHandle:(id)a3 isoCountryCode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = v7;
  if ([CHHandle handleTypeForValue:v7]== 2)
  {
    v9 = [[CHPhoneNumber alloc] initWithDigits:v7 isoCountryCode:v6];
    v10 = v9;
    v8 = v7;
    if (v9)
    {
      v8 = [v9 formattedRepresentation];
    }
  }

  return v8;
}

- (id)formattedHandleForComponentSearch:(id)a3 isoCountryCode:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[CHPhoneNumber alloc] initWithDigits:v5 isoCountryCode:v6];

  v8 = [v7 formattedRepresentation];
  if (v8)
  {
    v9 = [NSCharacterSet characterSetWithCharactersInString:@"() "];
    v10 = [v8 componentsSeparatedByCharactersInSet:v9];

    +[NSMutableArray array];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000F21C;
    v15 = v14[3] = &unk_100051170;
    v11 = v15;
    [v10 enumerateObjectsUsingBlock:v14];
    v12 = [v11 componentsJoinedByString:@"-"];
  }

  else
  {
    v12 = v5;
  }

  return v12;
}

- (BOOL)isTelephonyCall:(id)a3
{
  v3 = a3;
  v4 = [v3 serviceProvider];
  if ([v4 isEqualToString:@"com.apple.Telephony"])
  {
    v5 = [v3 remoteParticipantHandles];
    v6 = [v5 count] == 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)updateCallsHavingHandles:(id)a3 orContactIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000F3C4;
    v8[3] = &unk_100051198;
    v9 = v6;
    v10 = v7;
    v11 = self;
    [(CHSpotlightIndexManager *)self executeSync:v8];
  }
}

- (void)updateCallsForAcceptedContacts
{
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000F4B4;
    v3[3] = &unk_100050FA0;
    v3[4] = self;
    [(CHSpotlightIndexManager *)self executeSync:v3];
  }
}

- (void)updateFacetimeCallsSearchableStatus
{
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10000F5C0;
    v3[3] = &unk_100050FA0;
    v3[4] = self;
    [(CHSpotlightIndexManager *)self executeSync:v3];
  }
}

- (void)indexedFacetimeAudioCallsWithCompletion:(id)a3
{
  v5 = a3;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v4 = +[CHSpotlightSearchQueryUtilities searchStringForFacetimeAudioCalls];
    [(CHSpotlightIndexManager *)self querySpotlightWithSearchString:v4 completion:v5];
  }
}

- (void)indexedFacetimeVideoCallsWithCompletion:(id)a3
{
  v5 = a3;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v4 = +[CHSpotlightSearchQueryUtilities searchStringForFacetimeVideoCalls];
    [(CHSpotlightIndexManager *)self querySpotlightWithSearchString:v4 completion:v5];
  }
}

- (void)checkAndQuerySpotlightWithSearchString:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000F8F8;
  v4[3] = &unk_1000511E8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(CHSpotlightIndexManager *)v5 querySpotlightCountWithSearchString:v3 completion:v4];
}

- (void)querySpotlightCountWithSearchString:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [(CHSpotlightIndexManager *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching count for searchString: %@", &buf, 0xCu);
    }

    v9 = [CHSpotlightSearchQueryUtilities searchQueryWithSearchString:v6];
    v10 = [v9 queryContext];
    [v10 setCounting:1];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v18 = 0x2020000000;
    v19 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000FCD4;
    v16[3] = &unk_100051210;
    v16[4] = &buf;
    [v9 setCountChangedHandler:v16];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000FCEC;
    v13[3] = &unk_100051238;
    v13[4] = self;
    p_buf = &buf;
    v14 = v7;
    [v9 setCompletionHandler:v13];
    v11 = [(CHSpotlightIndexManager *)self logHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Beginning search query", v12, 2u);
    }

    [v9 start];
    _Block_object_dispose(&buf, 8);
  }
}

- (void)querySpotlightWithSearchString:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [(CHSpotlightIndexManager *)self logHandle];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching items for searchString: %@", buf, 0xCu);
    }

    v9 = [CHSpotlightSearchQueryUtilities searchQueryWithSearchString:v6];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100010038;
    v20[3] = &unk_1000511C0;
    v10 = objc_alloc_init(NSMutableArray);
    v21 = v10;
    [v9 setFoundItemsHandler:v20];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100010044;
    v16 = &unk_100051260;
    v17 = self;
    v18 = v10;
    v19 = v7;
    v11 = v10;
    [v9 setCompletionHandler:&v13];
    v12 = [(CHSpotlightIndexManager *)self logHandle:v13];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Beginning search query", buf, 2u);
    }

    [v9 start];
  }
}

- (id)callsForItems:(id)a3
{
  v4 = a3;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v16 + 1) + 8 * i) uniqueIdentifier];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = objc_alloc_init(CHManager);
    v13 = [CHRecentCall predicateForCallsWithAnyUniqueIDs:v5];
    v14 = [v12 callsWithPredicate:v13 limit:0 offset:0 batchSize:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)contactHandleForHandle:(id)a3
{
  v4 = a3;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v5 = [v4 normalizedValue];
    if (![v5 length])
    {
      v6 = [v4 value];

      v5 = v6;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)updateCurrentHistoryToken
{
  v2 = [(CHSpotlightIndexManager *)self contactChangeManager];
  [v2 updateCurrentHistoryToken];
}

- (void)providersChangedForProviderManager:(id)a3
{
  v4 = [(CHSpotlightIndexManager *)self callProviderIdentifiersForProviderManager:a3];
  v5 = [(CHSpotlightIndexManager *)self logHandle];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received providersChangedForProviderManager callback", v6, 2u);
  }

  if ([(CHSpotlightIndexManager *)self needsProviderRefreshForCallProviderIdentifierQueries:v4])
  {
    [(CHSpotlightIndexManager *)self refreshCallProvidersWithCallProviderIdentifierQueries:v4];
  }
}

- (void)refreshCallProvidersWithCallProviderIdentifierQueries:(id)a3
{
  v4 = a3;
  v5 = +[CHSpotlightSearchQueryUtilities userDefaults];
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 hash]);
  [v5 setObject:v6 forKey:@"CHCallProvidersHashKey"];

  if ([v4 count])
  {
    v7 = [v4 allObjects];
    v8 = [v7 componentsJoinedByString:@" && "];

    v9 = [(CHSpotlightIndexManager *)self logHandle];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Provider list changed. Deleted Providers searchString: %@", buf, 0xCu);
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001062C;
    v10[3] = &unk_1000511C0;
    v10[4] = self;
    [(CHSpotlightIndexManager *)self querySpotlightWithSearchString:v8 completion:v10];
  }
}

- (id)callProviderIdentifiersForProviderManager:(id)a3
{
  v3 = [a3 providers];
  v4 = [v3 arrayByApplyingSelector:"bundleIdentifier"];

  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v4 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = MDItemRelatedAppBundleIdentifier;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [NSString stringWithFormat:@"%@!=%@", v10, *(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)needsProviderRefreshForCallProviderIdentifierQueries:(id)a3
{
  v3 = a3;
  v4 = +[CHSpotlightSearchQueryUtilities userDefaults];
  v5 = [v4 objectForKey:@"CHCallProvidersHashKey"];
  v6 = [v5 unsignedIntValue];

  v7 = [v3 hash];
  return v7 != v6;
}

- (void)checkProviderStatusAfterDelay
{
  v3 = dispatch_time(0, 5000000000);
  v4 = [(CHSpotlightIndexManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001096C;
  block[3] = &unk_100050FA0;
  block[4] = self;
  dispatch_after(v3, v4, block);
}

- (void)checkProviderStatus
{
  v3 = [(CHSpotlightIndexManager *)self callProviderManager];
  v4 = [(CHSpotlightIndexManager *)self callProviderIdentifiersForProviderManager:v3];

  if ([(CHSpotlightIndexManager *)self needsProviderRefreshForCallProviderIdentifierQueries:v4])
  {
    [(CHSpotlightIndexManager *)self refreshCallProvidersWithCallProviderIdentifierQueries:v4];
  }
}

@end