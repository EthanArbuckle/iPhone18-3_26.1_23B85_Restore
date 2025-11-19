@interface ICASPrivateUserData
- (ICASPrivateUserData)initWithPrivateUserID:(id)a3 saltVersion:(id)a4 userStartMonth:(id)a5 userStartYear:(id)a6;
- (id)toDict;
@end

@implementation ICASPrivateUserData

- (ICASPrivateUserData)initWithPrivateUserID:(id)a3 saltVersion:(id)a4 userStartMonth:(id)a5 userStartYear:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = ICASPrivateUserData;
  v15 = [(ICASPrivateUserData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_privateUserID, a3);
    objc_storeStrong(&v16->_saltVersion, a4);
    objc_storeStrong(&v16->_userStartMonth, a5);
    objc_storeStrong(&v16->_userStartYear, a6);
  }

  return v16;
}

- (id)toDict
{
  v19[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"privateUserID";
  v3 = [(ICASPrivateUserData *)self privateUserID];
  if (v3)
  {
    v4 = [(ICASPrivateUserData *)self privateUserID];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v19[0] = v4;
  v18[1] = @"saltVersion";
  v6 = [(ICASPrivateUserData *)self saltVersion];
  if (v6)
  {
    v7 = [(ICASPrivateUserData *)self saltVersion];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v19[1] = v7;
  v18[2] = @"userStartMonth";
  v9 = [(ICASPrivateUserData *)self userStartMonth];
  if (v9)
  {
    v10 = [(ICASPrivateUserData *)self userStartMonth];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v19[2] = v10;
  v18[3] = @"userStartYear";
  v12 = [(ICASPrivateUserData *)self userStartYear];
  if (v12)
  {
    v13 = [(ICASPrivateUserData *)self userStartYear];
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;
  v19[3] = v13;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end