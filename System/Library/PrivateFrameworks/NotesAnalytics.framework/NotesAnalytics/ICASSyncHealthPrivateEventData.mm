@interface ICASSyncHealthPrivateEventData
- (ICASSyncHealthPrivateEventData)initWithSyncHealthPrivateSessionID:(id)d;
- (id)toDict;
@end

@implementation ICASSyncHealthPrivateEventData

- (ICASSyncHealthPrivateEventData)initWithSyncHealthPrivateSessionID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ICASSyncHealthPrivateEventData;
  v6 = [(ICASSyncHealthPrivateEventData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_syncHealthPrivateSessionID, d);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"syncHealthPrivateSessionID";
  syncHealthPrivateSessionID = [(ICASSyncHealthPrivateEventData *)self syncHealthPrivateSessionID];
  if (syncHealthPrivateSessionID)
  {
    syncHealthPrivateSessionID2 = [(ICASSyncHealthPrivateEventData *)self syncHealthPrivateSessionID];
  }

  else
  {
    syncHealthPrivateSessionID2 = objc_opt_new();
  }

  v5 = syncHealthPrivateSessionID2;
  v10[0] = syncHealthPrivateSessionID2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end