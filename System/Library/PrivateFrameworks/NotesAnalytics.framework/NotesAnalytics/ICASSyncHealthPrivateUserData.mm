@interface ICASSyncHealthPrivateUserData
- (ICASSyncHealthPrivateUserData)initWithSyncHealthPrivateUserID:(id)d;
- (id)toDict;
@end

@implementation ICASSyncHealthPrivateUserData

- (ICASSyncHealthPrivateUserData)initWithSyncHealthPrivateUserID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ICASSyncHealthPrivateUserData;
  v6 = [(ICASSyncHealthPrivateUserData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_syncHealthPrivateUserID, d);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"syncHealthPrivateUserID";
  syncHealthPrivateUserID = [(ICASSyncHealthPrivateUserData *)self syncHealthPrivateUserID];
  if (syncHealthPrivateUserID)
  {
    syncHealthPrivateUserID2 = [(ICASSyncHealthPrivateUserData *)self syncHealthPrivateUserID];
  }

  else
  {
    syncHealthPrivateUserID2 = objc_opt_new();
  }

  v5 = syncHealthPrivateUserID2;
  v10[0] = syncHealthPrivateUserID2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end