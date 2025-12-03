@interface ICASAppData
- (ICASAppData)initWithAppVersion:(id)version appBuild:(id)build;
- (id)toDict;
@end

@implementation ICASAppData

- (ICASAppData)initWithAppVersion:(id)version appBuild:(id)build
{
  versionCopy = version;
  buildCopy = build;
  v12.receiver = self;
  v12.super_class = ICASAppData;
  v9 = [(ICASAppData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appVersion, version);
    objc_storeStrong(&v10->_appBuild, build);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"appVersion";
  appVersion = [(ICASAppData *)self appVersion];
  if (appVersion)
  {
    appVersion2 = [(ICASAppData *)self appVersion];
  }

  else
  {
    appVersion2 = objc_opt_new();
  }

  v5 = appVersion2;
  v12[1] = @"appBuild";
  v13[0] = appVersion2;
  appBuild = [(ICASAppData *)self appBuild];
  if (appBuild)
  {
    appBuild2 = [(ICASAppData *)self appBuild];
  }

  else
  {
    appBuild2 = objc_opt_new();
  }

  v8 = appBuild2;
  v13[1] = appBuild2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end