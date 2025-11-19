@interface ENGroupContext
+ (id)_errorWithNotFoundItems:(id)a3;
+ (id)_missingItemsInNotFoundError:(id)a3 remainingErrors:(id *)a4;
- (ENGroupContext)initWithAccountIdentity:(id)a3 dataSource:(id)a4 queue:(id)a5;
- (NSArray)allMiddlewares;
- (id)_middlwareConformingToProtocol:(id)a3;
- (id)_qCacheMiddlewares;
- (id)_qCacheMiddlewaresContainedInCost:(int64_t)a3;
- (void)_cacheGroup:(id)a3 completion:(id)a4;
- (void)_didCacheGroup:(id)a3 completion:(id)a4;
- (void)_didCreateGroup:(id)a3 completion:(id)a4;
- (void)_didReceiveDecryptionFailureForGroup:(id)a3 completion:(id)a4;
- (void)_didReceiveRegistrationIdentityUpdateWithCompletion:(id)a3;
- (void)_didUpdateGroup:(id)a3 withNewGroup:(id)a4 completion:(id)a5;
- (void)_dropLocalCache:(id)a3;
- (void)_dropLocalCacheForGroupID:(id)a3 compeltion:(id)a4;
- (void)_fetchAllLocalKnownGroups:(id)a3;
- (void)_groupFromPublicDataRepresentation:(id)a3 completion:(id)a4;
- (void)_noteDecryptionFailureForGroup:(id)a3 completion:(id)a4;
- (void)_noteRegistrationIdentityUpdate;
- (void)_participantsForCypher:(id)a3 completion:(id)a4;
- (void)_publicDataRepresentationForGroup:(id)a3 completion:(id)a4;
- (void)_qCacheGroup:(id)a3 toMiddlewares:(id)a4 completion:(id)a5;
- (void)_qDidCacheGroup:(id)a3;
- (void)_qDidCreateGroup:(id)a3;
- (void)_qDidReceiveDecryptionFailureForGroup:(id)a3;
- (void)_qDidReceiveRegistrationIdentityUpdate;
- (void)_qDidUpdateGroup:(id)a3 withGroup:(id)a4;
- (void)_qFetchCachedGroupWithGroupID:(id)a3 completion:(id)a4;
- (void)_qFetchDataSourceGroupWithGroupID:(id)a3 completion:(id)a4;
- (void)_qUpsertGroupWithParticipants:(id)a3 previousGroup:(id)a4 sharedApplicationData:(id)a5 completion:(id)a6;
- (void)_validateCachedGroup:(id)a3 isParentOfGroup:(id)a4 completion:(id)a5;
- (void)appendMiddleware:(id)a3;
- (void)cacheIncomingGroup:(id)a3 completion:(id)a4;
- (void)createGroupWithParticipants:(id)a3 sharedApplicationData:(id)a4 completion:(id)a5;
- (void)fetchLatestGroupWithStableID:(id)a3 completion:(id)a4;
- (void)removeMiddleware:(id)a3;
- (void)updateGroup:(id)a3 withParticipants:(id)a4 sharedApplicationData:(id)a5 completion:(id)a6;
@end

@implementation ENGroupContext

- (ENGroupContext)initWithAccountIdentity:(id)a3 dataSource:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = ENGroupContext;
  v12 = [(ENGroupContext *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountIdentity, a3);
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    middlewares = v13->_middlewares;
    v13->_middlewares = v14;

    objc_storeStrong(&v13->_dataSource, a4);
    objc_storeStrong(&v13->_queue, a5);
  }

  return v13;
}

- (void)createGroupWithParticipants:(id)a3 sharedApplicationData:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v11 = a3;
  v10 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v10);

  [(ENGroupContext *)self _qUpsertGroupWithParticipants:v11 previousGroup:0 sharedApplicationData:v9 completion:v8];
}

- (void)updateGroup:(id)a3 withParticipants:(id)a4 sharedApplicationData:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v14 = a3;
  v13 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v13);

  [(ENGroupContext *)self _qUpsertGroupWithParticipants:v12 previousGroup:v14 sharedApplicationData:v11 completion:v10];
}

- (void)fetchLatestGroupWithStableID:(id)a3 completion:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v8);

  v23 = _os_activity_create(&dword_24A04B000, "Fetch latest group by StableGroupID", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v23, &state);
  v9 = +[ENLog groupContext];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v6;
    _os_log_impl(&dword_24A04B000, v9, OS_LOG_TYPE_DEFAULT, "!setState stableGroupID=%@", buf, 0xCu);
  }

  v10 = objc_alloc(MEMORY[0x277CFB968]);
  v11 = [(ENGroupContext *)self _qCacheMiddlewares];
  v12 = [v10 initWithInput:v11 initialValue:0];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_24A050DBC;
  v20[3] = &unk_278FC3490;
  v20[4] = self;
  v13 = v6;
  v21 = v13;
  [v12 setReducerBlock:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_24A050FD0;
  v17[3] = &unk_278FC34B8;
  v14 = v7;
  v19 = v14;
  v15 = v13;
  v18 = v15;
  [v12 reduceWithCompletion:v17];

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v16 = *MEMORY[0x277D85DE8];
}

- (void)cacheIncomingGroup:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v8);

  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v19 = _os_activity_create(&dword_24A04B000, "Cache Incoming Group", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v19, &state);
  v9 = +[ENLog groupContext];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_24A04B000, v9, OS_LOG_TYPE_DEFAULT, "!setState newGroup=%@", buf, 0xCu);
  }

  v10 = [v6 groupID];
  v11 = [v10 stableGroupID];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_24A05144C;
  v15[3] = &unk_278FC3580;
  v15[4] = self;
  v12 = v6;
  v16 = v12;
  v13 = v7;
  v17 = v13;
  [(ENGroupContext *)self fetchLatestGroupWithStableID:v11 completion:v15];

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v14 = *MEMORY[0x277D85DE8];
}

- (void)appendMiddleware:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[ENLog groupContext];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_24A04B000, v6, OS_LOG_TYPE_INFO, "Adding middleware {middleware: %{public}@", &v9, 0xCu);
  }

  v7 = [(ENGroupContext *)self middlewares];
  [v7 addObject:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeMiddleware:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[ENLog groupContext];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_24A04B000, v6, OS_LOG_TYPE_INFO, "Removing middleware {middleware: %{public}@", &v9, 0xCu);
  }

  v7 = [(ENGroupContext *)self middlewares];
  [v7 removeObject:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (NSArray)allMiddlewares
{
  v3 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(ENGroupContext *)self middlewares];
  v5 = [v4 copy];

  return v5;
}

- (void)_didCreateGroup:(id)a3 completion:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v7);

  [(ENGroupContext *)self _qDidCreateGroup:v6];
  v8[2](v8, 0);
}

- (void)_didCacheGroup:(id)a3 completion:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v7);

  [(ENGroupContext *)self _qDidCacheGroup:v6];
  v8[2](v8, 0);
}

- (void)_didUpdateGroup:(id)a3 withNewGroup:(id)a4 completion:(id)a5
{
  v11 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v10);

  [(ENGroupContext *)self _qDidUpdateGroup:v9 withGroup:v8];
  v11[2](v11, 0);
}

- (void)_didReceiveDecryptionFailureForGroup:(id)a3 completion:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v7);

  [(ENGroupContext *)self _qDidReceiveDecryptionFailureForGroup:v6];
  v8[2](v8, 0);
}

- (void)_didReceiveRegistrationIdentityUpdateWithCompletion:(id)a3
{
  v5 = a3;
  v4 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v4);

  [(ENGroupContext *)self _qDidReceiveRegistrationIdentityUpdate];
  v5[2](v5, 0);
}

- (void)_cacheGroup:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(ENGroupContext *)self _qCacheMiddlewares];
  [(ENGroupContext *)self _qCacheGroup:v7 toMiddlewares:v9 completion:v6];
}

- (void)_fetchAllLocalKnownGroups:(id)a3
{
  v4 = a3;
  v5 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ENGroupContext *)self _qCacheMiddlewaresContainedInCost:300];
  v7 = objc_alloc(MEMORY[0x277CFB968]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v9 = [v7 initWithInput:v6 initialValue:v8];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_24A0520D8;
  v13[3] = &unk_278FC35D0;
  v13[4] = self;
  [v9 setReducerBlock:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_24A052238;
  v11[3] = &unk_278FC35F8;
  v12 = v4;
  v10 = v4;
  [v9 reduceWithCompletion:v11];
}

- (void)_dropLocalCache:(id)a3
{
  v4 = a3;
  v5 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ENGroupContext *)self _qCacheMiddlewaresContainedInCost:300];
  v7 = [objc_alloc(MEMORY[0x277CFB968]) initWithInput:v6 initialValue:&stru_285D2E030];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_24A05242C;
  v11[3] = &unk_278FC35D0;
  v11[4] = self;
  [v7 setReducerBlock:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_24A052538;
  v9[3] = &unk_278FC35F8;
  v10 = v4;
  v8 = v4;
  [v7 reduceWithCompletion:v9];
}

- (void)_dropLocalCacheForGroupID:(id)a3 compeltion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(ENGroupContext *)self _qCacheMiddlewaresContainedInCost:300];
  v10 = [objc_alloc(MEMORY[0x277CFB968]) initWithInput:v9 initialValue:&stru_285D2E030];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_24A0526B8;
  v15[3] = &unk_278FC3490;
  v15[4] = self;
  v16 = v6;
  v11 = v6;
  [v10 setReducerBlock:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_24A0527C8;
  v13[3] = &unk_278FC35F8;
  v14 = v7;
  v12 = v7;
  [v10 reduceWithCompletion:v13];
}

- (void)_publicDataRepresentationForGroup:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(ENGroupContext *)self dataSource];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_24A0528BC;
  v11[3] = &unk_278FC3648;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 publicDataRepresentationForGroup:v7 inContext:self completion:v11];
}

- (void)_groupFromPublicDataRepresentation:(id)a3 completion:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v8);

  if ([v6 length])
  {
    v9 = [(ENGroupContext *)self dataSource];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_24A052AFC;
    v15[3] = &unk_278FC3558;
    v15[4] = self;
    v16 = v7;
    [v9 groupFromPublicDataRepresentation:v6 inContext:self completion:v15];
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = ENGroupIDErrorDomain;
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"Received group data is nil or empty";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v10 errorWithDomain:v11 code:-4000 userInfo:v12];
    (*(v7 + 2))(v7, 0, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_participantsForCypher:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(ENGroupContext *)self dataSource];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_24A0532B4;
  v11[3] = &unk_278FC36E8;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 participantsForCypher:v7 completion:v11];
}

- (void)_noteDecryptionFailureForGroup:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = +[ENLog groupContext];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_24A04B000, v9, OS_LOG_TYPE_DEFAULT, "Noting decryption failure", v10, 2u);
  }

  [(ENGroupContext *)self _qDidReceiveDecryptionFailureForGroup:v7];
  v6[2](v6, 0);
}

- (void)_noteRegistrationIdentityUpdate
{
  v3 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = +[ENLog groupContext];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_24A04B000, v4, OS_LOG_TYPE_DEFAULT, "Noting registration identity update", v5, 2u);
  }

  [(ENGroupContext *)self _qDidReceiveRegistrationIdentityUpdate];
}

- (void)_validateCachedGroup:(id)a3 isParentOfGroup:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = [(ENGroupContext *)self dataSource];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_24A053594;
  v14[3] = &unk_278FC3710;
  v14[4] = self;
  v15 = v8;
  v13 = v8;
  [v12 validateCachedGroup:v10 isParentOfGroup:v9 completion:v14];
}

- (void)_qCacheGroup:(id)a3 toMiddlewares:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[ENLog groupContext];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24A04B000, v11, OS_LOG_TYPE_INFO, "Caching group", buf, 2u);
  }

  v12 = [objc_alloc(MEMORY[0x277CFB968]) initWithInput:v9 initialValue:&stru_285D2E030];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = sub_24A05390C;
  v36[3] = &unk_278FC3490;
  v36[4] = self;
  v13 = v8;
  v37 = v13;
  [v12 setReducerBlock:v36];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  *buf = 0;
  v29 = buf;
  v30 = 0x3032000000;
  v31 = sub_24A053AA0;
  v32 = sub_24A053AB0;
  v33 = 0;
  v14 = [v13 groupID];
  v15 = [v14 stableGroupID];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_24A053AB8;
  v24[3] = &unk_278FC3738;
  v16 = v13;
  v25 = v16;
  v26 = v34;
  v27 = buf;
  [(ENGroupContext *)self fetchLatestGroupWithStableID:v15 completion:v24];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_24A053C4C;
  v19[3] = &unk_278FC3760;
  v19[4] = self;
  v17 = v16;
  v20 = v17;
  v22 = v34;
  v23 = buf;
  v18 = v10;
  v21 = v18;
  [v12 reduceWithCompletion:v19];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v34, 8);
}

- (id)_qCacheMiddlewares
{
  v3 = [(ENGroupContext *)self _middlwareConformingToProtocol:&unk_285D318F0];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_24A053E20;
  v6[3] = &unk_278FC3788;
  v6[4] = self;
  v4 = [v3 sortedArrayUsingComparator:v6];

  return v4;
}

- (id)_middlwareConformingToProtocol:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(ENGroupContext *)self middlewares];
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

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 conformsToProtocol:v4])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_qCacheMiddlewaresContainedInCost:(int64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [(ENGroupContext *)self _qCacheMiddlewares];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 middlewareCacheCostForContext:{self, v15}] <= a3)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_qUpsertGroupWithParticipants:(id)a3 previousGroup:(id)a4 sharedApplicationData:(id)a5 completion:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v34 = _os_activity_create(&dword_24A04B000, "Create Group", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v34, &state);
  v14 = +[ENLog groupContext];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "length")}];
    *buf = 138412290;
    v36 = v15;
    _os_log_impl(&dword_24A04B000, v14, OS_LOG_TYPE_DEFAULT, "!setState applicationData.length=%@", buf, 0xCu);
  }

  v16 = +[ENLog groupContext];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = MEMORY[0x277CCABB0];
    v18 = [(ENGroupContext *)self middlewares];
    v19 = [v17 numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
    *buf = 138412290;
    v36 = v19;
    _os_log_impl(&dword_24A04B000, v16, OS_LOG_TYPE_DEFAULT, "!setState middlewares.count=%@", buf, 0xCu);
  }

  v20 = +[ENLog groupContext];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    *buf = 138412290;
    v36 = v21;
    _os_log_impl(&dword_24A04B000, v20, OS_LOG_TYPE_DEFAULT, "!setState participatns.count=%@", buf, 0xCu);
  }

  v22 = +[ENLog groupContext];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v36 = v10;
    _os_log_impl(&dword_24A04B000, v22, OS_LOG_TYPE_INFO, "Creating group {participants: %{private}@}", buf, 0xCu);
  }

  v23 = [_ENGroupInfo alloc];
  v24 = [(ENGroupContext *)self accountIdentity];
  v25 = [(_ENGroupInfo *)v23 initWithAccountIdentity:v24 paricipants:v10 sharedApplicationData:v12];

  v26 = [(ENGroupContext *)self dataSource];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_24A054560;
  v30[3] = &unk_278FC37D0;
  v30[4] = self;
  v27 = v13;
  v32 = v27;
  v28 = v11;
  v31 = v28;
  [v26 groupContext:self upsertGroupWithInfo:v25 previousGroup:v28 completion:v30];

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_qFetchCachedGroupWithGroupID:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[ENLog groupContext];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24A04B000, v8, OS_LOG_TYPE_INFO, "Fetching from Caches", buf, 2u);
  }

  v9 = [(ENGroupContext *)self _qCacheMiddlewares];
  v10 = [objc_alloc(MEMORY[0x277CFB968]) initWithInput:v9 initialValue:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_24A0549E0;
  v15[3] = &unk_278FC3490;
  v15[4] = self;
  v16 = v6;
  v11 = v6;
  [v10 setReducerBlock:v15];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_24A054C28;
  v13[3] = &unk_278FC35F8;
  v14 = v7;
  v12 = v7;
  [v10 reduceWithCompletion:v13];
}

- (void)_qFetchDataSourceGroupWithGroupID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ENGroupContext *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = +[ENLog groupContext];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24A04B000, v9, OS_LOG_TYPE_INFO, "Fetching from DataSource", buf, 2u);
  }

  v10 = [(ENGroupContext *)self dataSource];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_24A054DF0;
  v12[3] = &unk_278FC3558;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v10 groupContext:self fetchGroupWithID:v7 completion:v12];
}

- (void)_qDidCreateGroup:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(ENGroupContext *)self _qObserverMiddlewares];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 groupContext:self didCreateGroup:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_qDidCacheGroup:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(ENGroupContext *)self _qObserverMiddlewares];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 groupContext:self didCacheGroup:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_qDidUpdateGroup:(id)a3 withGroup:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(ENGroupContext *)self _qObserverMiddlewares];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 groupContext:self didUpdateGroup:v6 withNewGroup:v7];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_qDidReceiveDecryptionFailureForGroup:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(ENGroupContext *)self _qObserverMiddlewares];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 groupContext:self didReceiveDecryptionFailureForGroup:v4];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_qDidReceiveRegistrationIdentityUpdate
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = +[ENLog groupContext];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(ENGroupContext *)self _qObserverMiddlewares];
    *buf = 138543362;
    v18 = v4;
    _os_log_impl(&dword_24A04B000, v3, OS_LOG_TYPE_INFO, "Did receive registration identity update {observerMiddlewares: %{public}@}", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(ENGroupContext *)self _qObserverMiddlewares];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 groupContextDidReceiveRegistrationIdentityUpdate:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)_errorWithNotFoundItems:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = MEMORY[0x277CCA9B8];
          v25 = @"ENGroupContextErrorItemKey";
          v26 = v10;
          v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          v13 = [v11 errorWithDomain:@"ENGroupContextErrorDomain" code:-2000 userInfo:v12];

          [v4 setObject:v13 forKey:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v7);
    }

    v14 = MEMORY[0x277CCA9B8];
    v23 = @"ENGroupContextErrorItemKey";
    v24 = v4;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v16 = [v14 errorWithDomain:@"ENGroupContextErrorDomain" code:-3000 userInfo:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_missingItemsInNotFoundError:(id)a3 remainingErrors:(id *)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v45 = _os_activity_create(&dword_24A04B000, "Find missing items in error", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v45, &state);
  v38 = v4;
  if (!v4)
  {
    v12 = +[ENLog groupContext];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v51 = 0;
      v13 = "No error -- Fail {error: %{public}@}";
LABEL_12:
      _os_log_impl(&dword_24A04B000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
    }

LABEL_13:
    v39 = MEMORY[0x277CBEBF8];
LABEL_14:

    v11 = v39;
    v10 = v11;
    goto LABEL_15;
  }

  v5 = [v4 domain];
  v6 = [v5 isEqualToString:@"ENGroupContextErrorDomain"];

  if (!v6)
  {
    v12 = +[ENLog groupContext];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v51 = v38;
      v13 = "Unexpected domain -- Fail {error: %{public}@}";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if ([v38 code] != -2000)
  {
    if ([v38 code] != -3000)
    {
      v12 = +[ENLog groupContext];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 138543362;
      v51 = v38;
      v13 = "Unexpected code -- Fail {error: %{public}@}";
      goto LABEL_12;
    }

    v16 = [v38 userInfo];
    v36 = [v16 objectForKeyedSubscript:@"ENGroupContextErrorItemKey"];

    if (!v36)
    {
      v17 = +[ENLog groupContext];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v51 = v38;
        _os_log_impl(&dword_24A04B000, v17, OS_LOG_TYPE_DEFAULT, "No items -- Fail {error: %{public}@}", buf, 0xCu);
      }

      v39 = MEMORY[0x277CBEBF8];
LABEL_57:

      v12 = v36;
      goto LABEL_14;
    }

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSObject count](v36, "count")}];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v18 = v36;
    v19 = [v18 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (!v19)
    {
      goto LABEL_39;
    }

    v20 = *v41;
LABEL_22:
    v21 = 0;
    while (1)
    {
      if (*v41 != v20)
      {
        objc_enumerationMutation(v18);
      }

      v22 = *(*(&v40 + 1) + 8 * v21);
      v23 = [v22 domain];
      if (![v23 isEqualToString:@"ENGroupContextErrorDomain"])
      {
        break;
      }

      v24 = [v22 code] == -2000;

      if (!v24)
      {
        goto LABEL_30;
      }

      v25 = [v22 userInfo];
      v26 = [v25 objectForKeyedSubscript:@"ENGroupContextErrorItemKey"];

      if (v26)
      {
        [v39 addObject:v26];
      }

      else
      {
        v28 = +[ENLog groupContext];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v51 = v22;
          _os_log_impl(&dword_24A04B000, v28, OS_LOG_TYPE_DEFAULT, "Missing item -- Ignore {suberror: %{public}@}", buf, 0xCu);
        }
      }

LABEL_37:
      if (v19 == ++v21)
      {
        v19 = [v18 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (!v19)
        {
LABEL_39:

          if ([v17 count])
          {
            v29 = +[ENLog groupContext];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [v17 count];
              *buf = 134217984;
              v51 = v30;
              _os_log_impl(&dword_24A04B000, v29, OS_LOG_TYPE_DEFAULT, "Found remaining errors {remainingErrors.count: %ld}", buf, 0xCu);
            }

            if (a4)
            {
              v31 = MEMORY[0x277CCA9B8];
              v46 = @"ENGroupContextErrorItemKey";
              v47 = v17;
              v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
              *a4 = [v31 errorWithDomain:@"ENGroupContextErrorDomain" code:-3000 userInfo:v32];
            }

            else
            {
              v32 = +[ENLog groupContext];
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                v33 = [v17 count];
                *buf = 134217984;
                v51 = v33;
                _os_log_impl(&dword_24A04B000, v32, OS_LOG_TYPE_DEFAULT, "Ignorning remaining errors due to missing out error parameter {remainingErrors.count: %ld}", buf, 0xCu);
              }
            }
          }

          v34 = +[ENLog groupContext];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            v35 = [v39 count];
            *buf = 134217984;
            v51 = v35;
            _os_log_impl(&dword_24A04B000, v34, OS_LOG_TYPE_INFO, "Found missing items -- Done {items.count: %ld}", buf, 0xCu);
          }

          goto LABEL_57;
        }

        goto LABEL_22;
      }
    }

LABEL_30:
    v27 = +[ENLog groupContext];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v51 = v22;
      _os_log_impl(&dword_24A04B000, v27, OS_LOG_TYPE_DEFAULT, "Unexpected error -- Collect {suberror: %{public}@}", buf, 0xCu);
    }

    [v17 addObject:v22];
    goto LABEL_37;
  }

  v7 = [v38 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"ENGroupContextErrorItemKey"];

  if (!v8)
  {
    v12 = +[ENLog groupContext];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 138543362;
    v51 = v38;
    v13 = "Missing item -- Fail {error: %{public}@";
    goto LABEL_12;
  }

  v9 = +[ENLog groupContext];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v51 = v8;
    _os_log_impl(&dword_24A04B000, v9, OS_LOG_TYPE_INFO, "Found one item {item: %{public}@}", buf, 0xCu);
  }

  v49 = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];

  v11 = MEMORY[0x277CBEBF8];
LABEL_15:

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

@end