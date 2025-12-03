@interface ICASInternalUserData
- (ICASInternalUserData)initWithRawUserDSID:(id)d;
- (id)toDict;
@end

@implementation ICASInternalUserData

- (ICASInternalUserData)initWithRawUserDSID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = ICASInternalUserData;
  v6 = [(ICASInternalUserData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawUserDSID, d);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"rawUserDSID";
  rawUserDSID = [(ICASInternalUserData *)self rawUserDSID];
  if (rawUserDSID)
  {
    rawUserDSID2 = [(ICASInternalUserData *)self rawUserDSID];
  }

  else
  {
    rawUserDSID2 = objc_opt_new();
  }

  v5 = rawUserDSID2;
  v10[0] = rawUserDSID2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end