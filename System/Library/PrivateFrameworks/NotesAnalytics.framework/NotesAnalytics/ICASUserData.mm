@interface ICASUserData
- (ICASUserData)initWithUserID:(id)a3 userStorefrontID:(id)a4 saltVersion:(id)a5 userStartMonth:(id)a6 userStartYear:(id)a7;
- (id)toDict;
@end

@implementation ICASUserData

- (ICASUserData)initWithUserID:(id)a3 userStorefrontID:(id)a4 saltVersion:(id)a5 userStartMonth:(id)a6 userStartYear:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = ICASUserData;
  v17 = [(ICASUserData *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_userID, a3);
    objc_storeStrong(&v18->_userStorefrontID, a4);
    objc_storeStrong(&v18->_saltVersion, a5);
    objc_storeStrong(&v18->_userStartMonth, a6);
    objc_storeStrong(&v18->_userStartYear, a7);
  }

  return v18;
}

- (id)toDict
{
  v23[5] = *MEMORY[0x277D85DE8];
  v22[0] = @"userID";
  v20 = [(ICASUserData *)self userID];
  if (v20)
  {
    v3 = [(ICASUserData *)self userID];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;
  v23[0] = v3;
  v22[1] = @"userStorefrontID";
  v5 = [(ICASUserData *)self userStorefrontID];
  if (v5)
  {
    v6 = [(ICASUserData *)self userStorefrontID];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;
  v23[1] = v6;
  v22[2] = @"saltVersion";
  v8 = [(ICASUserData *)self saltVersion];
  if (v8)
  {
    v9 = [(ICASUserData *)self saltVersion];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  v23[2] = v9;
  v22[3] = @"userStartMonth";
  v11 = [(ICASUserData *)self userStartMonth];
  if (v11)
  {
    v12 = [(ICASUserData *)self userStartMonth];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;
  v23[3] = v12;
  v22[4] = @"userStartYear";
  v14 = [(ICASUserData *)self userStartYear];
  if (v14)
  {
    v15 = [(ICASUserData *)self userStartYear];
  }

  else
  {
    v15 = objc_opt_new();
  }

  v16 = v15;
  v23[4] = v15;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end