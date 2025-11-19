@interface ICASFastSyncParticipantData
- (ICASFastSyncParticipantData)initWithCountOfUniqueAccounts:(id)a3 countOfUniqueDevices:(id)a4;
- (id)toDict;
@end

@implementation ICASFastSyncParticipantData

- (ICASFastSyncParticipantData)initWithCountOfUniqueAccounts:(id)a3 countOfUniqueDevices:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICASFastSyncParticipantData;
  v9 = [(ICASFastSyncParticipantData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_countOfUniqueAccounts, a3);
    objc_storeStrong(&v10->_countOfUniqueDevices, a4);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"countOfUniqueAccounts";
  v3 = [(ICASFastSyncParticipantData *)self countOfUniqueAccounts];
  if (v3)
  {
    v4 = [(ICASFastSyncParticipantData *)self countOfUniqueAccounts];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v12[1] = @"countOfUniqueDevices";
  v13[0] = v4;
  v6 = [(ICASFastSyncParticipantData *)self countOfUniqueDevices];
  if (v6)
  {
    v7 = [(ICASFastSyncParticipantData *)self countOfUniqueDevices];
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