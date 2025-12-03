@interface ICASUserData
- (ICASUserData)initWithUserID:(id)d userStorefrontID:(id)iD saltVersion:(id)version userStartMonth:(id)month userStartYear:(id)year;
- (id)toDict;
@end

@implementation ICASUserData

- (ICASUserData)initWithUserID:(id)d userStorefrontID:(id)iD saltVersion:(id)version userStartMonth:(id)month userStartYear:(id)year
{
  dCopy = d;
  iDCopy = iD;
  versionCopy = version;
  monthCopy = month;
  yearCopy = year;
  v21.receiver = self;
  v21.super_class = ICASUserData;
  v17 = [(ICASUserData *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_userID, d);
    objc_storeStrong(&v18->_userStorefrontID, iD);
    objc_storeStrong(&v18->_saltVersion, version);
    objc_storeStrong(&v18->_userStartMonth, month);
    objc_storeStrong(&v18->_userStartYear, year);
  }

  return v18;
}

- (id)toDict
{
  v23[5] = *MEMORY[0x277D85DE8];
  v22[0] = @"userID";
  userID = [(ICASUserData *)self userID];
  if (userID)
  {
    userID2 = [(ICASUserData *)self userID];
  }

  else
  {
    userID2 = objc_opt_new();
  }

  v4 = userID2;
  v23[0] = userID2;
  v22[1] = @"userStorefrontID";
  userStorefrontID = [(ICASUserData *)self userStorefrontID];
  if (userStorefrontID)
  {
    userStorefrontID2 = [(ICASUserData *)self userStorefrontID];
  }

  else
  {
    userStorefrontID2 = objc_opt_new();
  }

  v7 = userStorefrontID2;
  v23[1] = userStorefrontID2;
  v22[2] = @"saltVersion";
  saltVersion = [(ICASUserData *)self saltVersion];
  if (saltVersion)
  {
    saltVersion2 = [(ICASUserData *)self saltVersion];
  }

  else
  {
    saltVersion2 = objc_opt_new();
  }

  v10 = saltVersion2;
  v23[2] = saltVersion2;
  v22[3] = @"userStartMonth";
  userStartMonth = [(ICASUserData *)self userStartMonth];
  if (userStartMonth)
  {
    userStartMonth2 = [(ICASUserData *)self userStartMonth];
  }

  else
  {
    userStartMonth2 = objc_opt_new();
  }

  v13 = userStartMonth2;
  v23[3] = userStartMonth2;
  v22[4] = @"userStartYear";
  userStartYear = [(ICASUserData *)self userStartYear];
  if (userStartYear)
  {
    userStartYear2 = [(ICASUserData *)self userStartYear];
  }

  else
  {
    userStartYear2 = objc_opt_new();
  }

  v16 = userStartYear2;
  v23[4] = userStartYear2;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end