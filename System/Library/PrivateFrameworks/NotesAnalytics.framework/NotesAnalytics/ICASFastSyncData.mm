@interface ICASFastSyncData
- (ICASFastSyncData)initWithFastSyncSessionId:(id)a3 participantVersions:(id)a4;
- (id)toDict;
@end

@implementation ICASFastSyncData

- (ICASFastSyncData)initWithFastSyncSessionId:(id)a3 participantVersions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICASFastSyncData;
  v9 = [(ICASFastSyncData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fastSyncSessionId, a3);
    objc_storeStrong(&v10->_participantVersions, a4);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"fastSyncSessionId";
  v3 = [(ICASFastSyncData *)self fastSyncSessionId];
  if (v3)
  {
    v4 = [(ICASFastSyncData *)self fastSyncSessionId];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v12[1] = @"participantVersions";
  v13[0] = v4;
  v6 = [(ICASFastSyncData *)self participantVersions];
  if (v6)
  {
    v7 = [(ICASFastSyncData *)self participantVersions];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v13[1] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end