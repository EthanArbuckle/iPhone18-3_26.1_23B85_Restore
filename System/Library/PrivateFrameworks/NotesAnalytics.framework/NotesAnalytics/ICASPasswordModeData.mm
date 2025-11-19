@interface ICASPasswordModeData
- (ICASPasswordModeData)initWithPwdModeChangeContextPath:(id)a3 startMode:(id)a4 endMode:(id)a5;
- (id)toDict;
@end

@implementation ICASPasswordModeData

- (ICASPasswordModeData)initWithPwdModeChangeContextPath:(id)a3 startMode:(id)a4 endMode:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICASPasswordModeData;
  v12 = [(ICASPasswordModeData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pwdModeChangeContextPath, a3);
    objc_storeStrong(&v13->_startMode, a4);
    objc_storeStrong(&v13->_endMode, a5);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"pwdModeChangeContextPath";
  v3 = [(ICASPasswordModeData *)self pwdModeChangeContextPath];
  if (v3)
  {
    v4 = [(ICASPasswordModeData *)self pwdModeChangeContextPath];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v16[0] = v4;
  v15[1] = @"startMode";
  v6 = [(ICASPasswordModeData *)self startMode];
  if (v6)
  {
    v7 = [(ICASPasswordModeData *)self startMode];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v16[1] = v7;
  v15[2] = @"endMode";
  v9 = [(ICASPasswordModeData *)self endMode];
  if (v9)
  {
    v10 = [(ICASPasswordModeData *)self endMode];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v16[2] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end