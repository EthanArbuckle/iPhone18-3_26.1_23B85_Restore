@interface ICASFastSyncData
- (ICASFastSyncData)initWithFastSyncSessionId:(id)id participantVersions:(id)versions;
- (id)toDict;
@end

@implementation ICASFastSyncData

- (ICASFastSyncData)initWithFastSyncSessionId:(id)id participantVersions:(id)versions
{
  idCopy = id;
  versionsCopy = versions;
  v12.receiver = self;
  v12.super_class = ICASFastSyncData;
  v9 = [(ICASFastSyncData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fastSyncSessionId, id);
    objc_storeStrong(&v10->_participantVersions, versions);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"fastSyncSessionId";
  fastSyncSessionId = [(ICASFastSyncData *)self fastSyncSessionId];
  if (fastSyncSessionId)
  {
    fastSyncSessionId2 = [(ICASFastSyncData *)self fastSyncSessionId];
  }

  else
  {
    fastSyncSessionId2 = objc_opt_new();
  }

  v5 = fastSyncSessionId2;
  v12[1] = @"participantVersions";
  v13[0] = fastSyncSessionId2;
  participantVersions = [(ICASFastSyncData *)self participantVersions];
  if (participantVersions)
  {
    participantVersions2 = [(ICASFastSyncData *)self participantVersions];
  }

  else
  {
    participantVersions2 = objc_opt_new();
  }

  v8 = participantVersions2;
  v13[1] = participantVersions2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end