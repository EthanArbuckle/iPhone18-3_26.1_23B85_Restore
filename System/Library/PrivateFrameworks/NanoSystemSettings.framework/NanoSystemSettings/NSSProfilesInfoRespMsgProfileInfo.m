@interface NSSProfilesInfoRespMsgProfileInfo
- (id)initWithMCProfileInfo:(id)a3;
- (id)toMCProfileInfo;
@end

@implementation NSSProfilesInfoRespMsgProfileInfo

- (id)initWithMCProfileInfo:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NSSProfilesInfoRespMsgProfileInfo;
  v5 = [(NSSProfilesInfoRespMsgProfileInfo *)&v14 init];
  if (v5)
  {
    v6 = [v4 friendlyName];
    [(NSSProfilesInfoRespMsgProfileInfo *)v5 setFriendlyName:v6];

    v7 = [v4 profileDescription];
    [(NSSProfilesInfoRespMsgProfileInfo *)v5 setProfileDescription:v7];

    v8 = [v4 identifier];
    [(NSSProfilesInfoRespMsgProfileInfo *)v5 setIdentifier:v8];

    v9 = [v4 UUID];
    [(NSSProfilesInfoRespMsgProfileInfo *)v5 setUUID:v9];

    v10 = [v4 organization];
    [(NSSProfilesInfoRespMsgProfileInfo *)v5 setOrganization:v10];

    v11 = [v4 expiryDate];
    v12 = [NSSKeyedArchiverUtil archiveObject:v11];
    [(NSSProfilesInfoRespMsgProfileInfo *)v5 setExpiryDate:v12];

    -[NSSProfilesInfoRespMsgProfileInfo setIsInstalledByDeclarativeManagement:](v5, "setIsInstalledByDeclarativeManagement:", [v4 isInstalledByDeclarativeManagement]);
  }

  return v5;
}

- (id)toMCProfileInfo
{
  v3 = objc_opt_new();
  if (v3)
  {
    v4 = [(NSSProfilesInfoRespMsgProfileInfo *)self friendlyName];
    [v3 setFriendlyName:v4];

    v5 = [(NSSProfilesInfoRespMsgProfileInfo *)self profileDescription];
    [v3 setProfileDescription:v5];

    v6 = [(NSSProfilesInfoRespMsgProfileInfo *)self identifier];
    [v3 setIdentifier:v6];

    v7 = [(NSSProfilesInfoRespMsgProfileInfo *)self uUID];
    [v3 setUUID:v7];

    v8 = [(NSSProfilesInfoRespMsgProfileInfo *)self organization];
    [v3 setOrganization:v8];

    v9 = [NSSet setWithObject:objc_opt_class()];
    v10 = [(NSSProfilesInfoRespMsgProfileInfo *)self expiryDate];
    v11 = [NSSKeyedArchiverUtil unarchiveObjectOfClasses:v9 withData:v10];
    [v3 setExpiryDate:v11];

    [v3 setIsInstalledByDeclarativeManagement:{-[NSSProfilesInfoRespMsgProfileInfo isInstalledByDeclarativeManagement](self, "isInstalledByDeclarativeManagement")}];
  }

  return v3;
}

@end