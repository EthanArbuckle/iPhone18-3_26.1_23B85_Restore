@interface ICASPasswordModeData
- (ICASPasswordModeData)initWithPwdModeChangeContextPath:(id)path startMode:(id)mode endMode:(id)endMode;
- (id)toDict;
@end

@implementation ICASPasswordModeData

- (ICASPasswordModeData)initWithPwdModeChangeContextPath:(id)path startMode:(id)mode endMode:(id)endMode
{
  pathCopy = path;
  modeCopy = mode;
  endModeCopy = endMode;
  v15.receiver = self;
  v15.super_class = ICASPasswordModeData;
  v12 = [(ICASPasswordModeData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pwdModeChangeContextPath, path);
    objc_storeStrong(&v13->_startMode, mode);
    objc_storeStrong(&v13->_endMode, endMode);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"pwdModeChangeContextPath";
  pwdModeChangeContextPath = [(ICASPasswordModeData *)self pwdModeChangeContextPath];
  if (pwdModeChangeContextPath)
  {
    pwdModeChangeContextPath2 = [(ICASPasswordModeData *)self pwdModeChangeContextPath];
  }

  else
  {
    pwdModeChangeContextPath2 = objc_opt_new();
  }

  v5 = pwdModeChangeContextPath2;
  v16[0] = pwdModeChangeContextPath2;
  v15[1] = @"startMode";
  startMode = [(ICASPasswordModeData *)self startMode];
  if (startMode)
  {
    startMode2 = [(ICASPasswordModeData *)self startMode];
  }

  else
  {
    startMode2 = objc_opt_new();
  }

  v8 = startMode2;
  v16[1] = startMode2;
  v15[2] = @"endMode";
  endMode = [(ICASPasswordModeData *)self endMode];
  if (endMode)
  {
    endMode2 = [(ICASPasswordModeData *)self endMode];
  }

  else
  {
    endMode2 = objc_opt_new();
  }

  v11 = endMode2;
  v16[2] = endMode2;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end