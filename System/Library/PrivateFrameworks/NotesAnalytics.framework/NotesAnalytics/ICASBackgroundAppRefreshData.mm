@interface ICASBackgroundAppRefreshData
- (ICASBackgroundAppRefreshData)initWithAutomaticAppUpdatesAllowed:(id)allowed;
- (id)toDict;
@end

@implementation ICASBackgroundAppRefreshData

- (ICASBackgroundAppRefreshData)initWithAutomaticAppUpdatesAllowed:(id)allowed
{
  allowedCopy = allowed;
  v9.receiver = self;
  v9.super_class = ICASBackgroundAppRefreshData;
  v6 = [(ICASBackgroundAppRefreshData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_automaticAppUpdatesAllowed, allowed);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"automaticAppUpdatesAllowed";
  automaticAppUpdatesAllowed = [(ICASBackgroundAppRefreshData *)self automaticAppUpdatesAllowed];
  if (automaticAppUpdatesAllowed)
  {
    automaticAppUpdatesAllowed2 = [(ICASBackgroundAppRefreshData *)self automaticAppUpdatesAllowed];
  }

  else
  {
    automaticAppUpdatesAllowed2 = objc_opt_new();
  }

  v5 = automaticAppUpdatesAllowed2;
  v10[0] = automaticAppUpdatesAllowed2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end