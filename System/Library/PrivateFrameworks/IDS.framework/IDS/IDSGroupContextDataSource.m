@interface IDSGroupContextDataSource
- (IDSGroupContextDataSource)initWithQueue:(id)a3;
- (id)_groupContextCacheMiddleware;
- (id)_groupContextDataSource;
- (void)deleteAllKnownGroupsForGroupContext:(id)a3 completion:(id)a4;
- (void)deleteCachedValueForForGroupContext:(id)a3 withGroupID:(id)a4 completion:(id)a5;
- (void)groupContext:(id)a3 fetchAllKnownGroups:(id)a4;
- (void)groupContext:(id)a3 fetchGroupWithID:(id)a4 completion:(id)a5;
- (void)groupContext:(id)a3 latestCachedGroupWithStableID:(id)a4 completion:(id)a5;
- (void)groupContext:(id)a3 upsertGroupWithInfo:(id)a4 previousGroup:(id)a5 completion:(id)a6;
- (void)groupFromPublicDataRepresentation:(id)a3 inContext:(id)a4 completion:(id)a5;
- (void)participantsForCypher:(id)a3 completion:(id)a4;
- (void)publicDataRepresentationForGroup:(id)a3 inContext:(id)a4 completion:(id)a5;
- (void)validateCachedGroup:(id)a3 isParentOfGroup:(id)a4 completion:(id)a5;
@end

@implementation IDSGroupContextDataSource

- (IDSGroupContextDataSource)initWithQueue:(id)a3
{
  v4 = a3;
  if (_IDSRunningInDaemon())
  {
    v5 = [MEMORY[0x1E699BB90] groupContext];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v5);
    }

    v6 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = IDSGroupContextDataSource;
    v7 = [(IDSGroupContextDataSource *)&v11 init];
    if (v7)
    {
      v8 = [MEMORY[0x1E699BB90] groupContext];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_INFO, "Daemon Interfaced Group context controller starting up", v10, 2u);
      }

      [(IDSGroupContextDataSource *)v7 setQueue:v4];
    }

    self = v7;
    v6 = self;
  }

  return v6;
}

- (void)groupContext:(id)a3 upsertGroupWithInfo:(id)a4 previousGroup:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(IDSGroupContextDataSource *)self _groupContextDataSource];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195B1E0EC;
  v14[3] = &unk_1E74434E0;
  v14[4] = self;
  v15 = v9;
  v13 = v9;
  [v12 upsertGroupWithInfo:v11 previousGroup:v10 completion:v14];
}

- (void)groupContext:(id)a3 fetchGroupWithID:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(IDSGroupContextDataSource *)self _groupContextDataSource];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195B1E2B4;
  v11[3] = &unk_1E74434E0;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 fetchGroupWithID:v8 completion:v11];
}

- (void)publicDataRepresentationForGroup:(id)a3 inContext:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(IDSGroupContextDataSource *)self _groupContextDataSource];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195B1E47C;
  v11[3] = &unk_1E7443508;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 publicDataRepresentationForGroup:v8 completion:v11];
}

- (void)groupFromPublicDataRepresentation:(id)a3 inContext:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [(IDSGroupContextDataSource *)self _groupContextDataSource];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195B1E644;
  v11[3] = &unk_1E74434E0;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 groupFromPublicDataRepresentation:v8 completion:v11];
}

- (void)participantsForCypher:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IDSGroupContextDataSource *)self _groupContextDataSource];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195B1E80C;
  v10[3] = &unk_1E7443530;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 participantsForCypher:v7 completion:v10];
}

- (void)validateCachedGroup:(id)a3 isParentOfGroup:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(IDSGroupContextDataSource *)self _groupContextDataSource];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195B1E9D4;
  v13[3] = &unk_1E7443558;
  v13[4] = self;
  v14 = v8;
  v12 = v8;
  [v11 validateCachedGroup:v10 isParentOfGroup:v9 completion:v13];
}

- (void)groupContext:(id)a3 latestCachedGroupWithStableID:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(IDSGroupContextDataSource *)self _groupContextCacheMiddleware];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195B1EBAC;
  v11[3] = &unk_1E7443580;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 latestCachedGroupWithStableID:v8 completion:v11];
}

- (void)groupContext:(id)a3 fetchAllKnownGroups:(id)a4
{
  v5 = a4;
  v6 = [(IDSGroupContextDataSource *)self _groupContextCacheMiddleware];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B1ED38;
  v8[3] = &unk_1E7440CD0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 fetchAllKnownGroups:v8];
}

- (void)deleteAllKnownGroupsForGroupContext:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = [(IDSGroupContextDataSource *)self _groupContextCacheMiddleware];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B1EEC4;
  v8[3] = &unk_1E743EAA8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 deleteAllKnownGroupsWithCompletion:v8];
}

- (void)deleteCachedValueForForGroupContext:(id)a3 withGroupID:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(IDSGroupContextDataSource *)self _groupContextCacheMiddleware];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195B1F03C;
  v11[3] = &unk_1E743EAA8;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v9 deleteAllCachedValuesForGroupWithID:v8 WithCompletion:v11];
}

- (id)_groupContextDataSource
{
  v2 = +[IDSDaemonProtocolController sharedInstance];
  v3 = [v2 groupContextDataSource];

  return v3;
}

- (id)_groupContextCacheMiddleware
{
  v2 = +[IDSDaemonProtocolController sharedInstance];
  v3 = [v2 groupContextCacheMiddleware];

  return v3;
}

@end