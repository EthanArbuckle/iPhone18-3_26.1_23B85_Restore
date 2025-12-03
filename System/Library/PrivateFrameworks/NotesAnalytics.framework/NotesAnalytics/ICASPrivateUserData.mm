@interface ICASPrivateUserData
- (ICASPrivateUserData)initWithPrivateUserID:(id)d saltVersion:(id)version userStartMonth:(id)month userStartYear:(id)year;
- (id)toDict;
@end

@implementation ICASPrivateUserData

- (ICASPrivateUserData)initWithPrivateUserID:(id)d saltVersion:(id)version userStartMonth:(id)month userStartYear:(id)year
{
  dCopy = d;
  versionCopy = version;
  monthCopy = month;
  yearCopy = year;
  v18.receiver = self;
  v18.super_class = ICASPrivateUserData;
  v15 = [(ICASPrivateUserData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_privateUserID, d);
    objc_storeStrong(&v16->_saltVersion, version);
    objc_storeStrong(&v16->_userStartMonth, month);
    objc_storeStrong(&v16->_userStartYear, year);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"privateUserID";
  privateUserID = [(ICASPrivateUserData *)self privateUserID];
  if (privateUserID)
  {
    privateUserID2 = [(ICASPrivateUserData *)self privateUserID];
  }

  else
  {
    privateUserID2 = objc_opt_new();
  }

  v5 = privateUserID2;
  v19[0] = privateUserID2;
  v18[1] = @"saltVersion";
  saltVersion = [(ICASPrivateUserData *)self saltVersion];
  if (saltVersion)
  {
    saltVersion2 = [(ICASPrivateUserData *)self saltVersion];
  }

  else
  {
    saltVersion2 = objc_opt_new();
  }

  v8 = saltVersion2;
  v19[1] = saltVersion2;
  v18[2] = @"userStartMonth";
  userStartMonth = [(ICASPrivateUserData *)self userStartMonth];
  if (userStartMonth)
  {
    userStartMonth2 = [(ICASPrivateUserData *)self userStartMonth];
  }

  else
  {
    userStartMonth2 = objc_opt_new();
  }

  v11 = userStartMonth2;
  v19[2] = userStartMonth2;
  v18[3] = @"userStartYear";
  userStartYear = [(ICASPrivateUserData *)self userStartYear];
  if (userStartYear)
  {
    userStartYear2 = [(ICASPrivateUserData *)self userStartYear];
  }

  else
  {
    userStartYear2 = objc_opt_new();
  }

  v14 = userStartYear2;
  v19[3] = userStartYear2;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end