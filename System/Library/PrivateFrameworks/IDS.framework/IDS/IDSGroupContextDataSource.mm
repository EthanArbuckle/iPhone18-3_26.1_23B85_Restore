@interface IDSGroupContextDataSource
- (IDSGroupContextDataSource)initWithQueue:(id)queue;
- (id)_groupContextCacheMiddleware;
- (id)_groupContextDataSource;
- (void)deleteAllKnownGroupsForGroupContext:(id)context completion:(id)completion;
- (void)deleteCachedValueForForGroupContext:(id)context withGroupID:(id)d completion:(id)completion;
- (void)groupContext:(id)context fetchAllKnownGroups:(id)groups;
- (void)groupContext:(id)context fetchGroupWithID:(id)d completion:(id)completion;
- (void)groupContext:(id)context latestCachedGroupWithStableID:(id)d completion:(id)completion;
- (void)groupContext:(id)context upsertGroupWithInfo:(id)info previousGroup:(id)group completion:(id)completion;
- (void)groupFromPublicDataRepresentation:(id)representation inContext:(id)context completion:(id)completion;
- (void)participantsForCypher:(id)cypher completion:(id)completion;
- (void)publicDataRepresentationForGroup:(id)group inContext:(id)context completion:(id)completion;
- (void)validateCachedGroup:(id)group isParentOfGroup:(id)ofGroup completion:(id)completion;
@end

@implementation IDSGroupContextDataSource

- (IDSGroupContextDataSource)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (_IDSRunningInDaemon())
  {
    groupContext = [MEMORY[0x1E699BB90] groupContext];
    if (os_log_type_enabled(groupContext, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, groupContext);
    }

    selfCopy = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = IDSGroupContextDataSource;
    v7 = [(IDSGroupContextDataSource *)&v11 init];
    if (v7)
    {
      groupContext2 = [MEMORY[0x1E699BB90] groupContext];
      if (os_log_type_enabled(groupContext2, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1959FF000, groupContext2, OS_LOG_TYPE_INFO, "Daemon Interfaced Group context controller starting up", v10, 2u);
      }

      [(IDSGroupContextDataSource *)v7 setQueue:queueCopy];
    }

    self = v7;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)groupContext:(id)context upsertGroupWithInfo:(id)info previousGroup:(id)group completion:(id)completion
{
  completionCopy = completion;
  groupCopy = group;
  infoCopy = info;
  _groupContextDataSource = [(IDSGroupContextDataSource *)self _groupContextDataSource];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_195B1E0EC;
  v14[3] = &unk_1E74434E0;
  v14[4] = self;
  v15 = completionCopy;
  v13 = completionCopy;
  [_groupContextDataSource upsertGroupWithInfo:infoCopy previousGroup:groupCopy completion:v14];
}

- (void)groupContext:(id)context fetchGroupWithID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  _groupContextDataSource = [(IDSGroupContextDataSource *)self _groupContextDataSource];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195B1E2B4;
  v11[3] = &unk_1E74434E0;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [_groupContextDataSource fetchGroupWithID:dCopy completion:v11];
}

- (void)publicDataRepresentationForGroup:(id)group inContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  groupCopy = group;
  _groupContextDataSource = [(IDSGroupContextDataSource *)self _groupContextDataSource];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195B1E47C;
  v11[3] = &unk_1E7443508;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [_groupContextDataSource publicDataRepresentationForGroup:groupCopy completion:v11];
}

- (void)groupFromPublicDataRepresentation:(id)representation inContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  representationCopy = representation;
  _groupContextDataSource = [(IDSGroupContextDataSource *)self _groupContextDataSource];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195B1E644;
  v11[3] = &unk_1E74434E0;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [_groupContextDataSource groupFromPublicDataRepresentation:representationCopy completion:v11];
}

- (void)participantsForCypher:(id)cypher completion:(id)completion
{
  completionCopy = completion;
  cypherCopy = cypher;
  _groupContextDataSource = [(IDSGroupContextDataSource *)self _groupContextDataSource];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195B1E80C;
  v10[3] = &unk_1E7443530;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [_groupContextDataSource participantsForCypher:cypherCopy completion:v10];
}

- (void)validateCachedGroup:(id)group isParentOfGroup:(id)ofGroup completion:(id)completion
{
  completionCopy = completion;
  ofGroupCopy = ofGroup;
  groupCopy = group;
  _groupContextDataSource = [(IDSGroupContextDataSource *)self _groupContextDataSource];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195B1E9D4;
  v13[3] = &unk_1E7443558;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  [_groupContextDataSource validateCachedGroup:groupCopy isParentOfGroup:ofGroupCopy completion:v13];
}

- (void)groupContext:(id)context latestCachedGroupWithStableID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  _groupContextCacheMiddleware = [(IDSGroupContextDataSource *)self _groupContextCacheMiddleware];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195B1EBAC;
  v11[3] = &unk_1E7443580;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [_groupContextCacheMiddleware latestCachedGroupWithStableID:dCopy completion:v11];
}

- (void)groupContext:(id)context fetchAllKnownGroups:(id)groups
{
  groupsCopy = groups;
  _groupContextCacheMiddleware = [(IDSGroupContextDataSource *)self _groupContextCacheMiddleware];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B1ED38;
  v8[3] = &unk_1E7440CD0;
  v8[4] = self;
  v9 = groupsCopy;
  v7 = groupsCopy;
  [_groupContextCacheMiddleware fetchAllKnownGroups:v8];
}

- (void)deleteAllKnownGroupsForGroupContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  _groupContextCacheMiddleware = [(IDSGroupContextDataSource *)self _groupContextCacheMiddleware];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_195B1EEC4;
  v8[3] = &unk_1E743EAA8;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [_groupContextCacheMiddleware deleteAllKnownGroupsWithCompletion:v8];
}

- (void)deleteCachedValueForForGroupContext:(id)context withGroupID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  _groupContextCacheMiddleware = [(IDSGroupContextDataSource *)self _groupContextCacheMiddleware];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_195B1F03C;
  v11[3] = &unk_1E743EAA8;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [_groupContextCacheMiddleware deleteAllCachedValuesForGroupWithID:dCopy WithCompletion:v11];
}

- (id)_groupContextDataSource
{
  v2 = +[IDSDaemonProtocolController sharedInstance];
  groupContextDataSource = [v2 groupContextDataSource];

  return groupContextDataSource;
}

- (id)_groupContextCacheMiddleware
{
  v2 = +[IDSDaemonProtocolController sharedInstance];
  groupContextCacheMiddleware = [v2 groupContextCacheMiddleware];

  return groupContextCacheMiddleware;
}

@end