@interface NSSProfilesInfoRespMsgProfileInfo
- (id)initWithMCProfileInfo:(id)info;
- (id)toMCProfileInfo;
@end

@implementation NSSProfilesInfoRespMsgProfileInfo

- (id)initWithMCProfileInfo:(id)info
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = NSSProfilesInfoRespMsgProfileInfo;
  v5 = [(NSSProfilesInfoRespMsgProfileInfo *)&v14 init];
  if (v5)
  {
    friendlyName = [infoCopy friendlyName];
    [(NSSProfilesInfoRespMsgProfileInfo *)v5 setFriendlyName:friendlyName];

    profileDescription = [infoCopy profileDescription];
    [(NSSProfilesInfoRespMsgProfileInfo *)v5 setProfileDescription:profileDescription];

    identifier = [infoCopy identifier];
    [(NSSProfilesInfoRespMsgProfileInfo *)v5 setIdentifier:identifier];

    uUID = [infoCopy UUID];
    [(NSSProfilesInfoRespMsgProfileInfo *)v5 setUUID:uUID];

    organization = [infoCopy organization];
    [(NSSProfilesInfoRespMsgProfileInfo *)v5 setOrganization:organization];

    expiryDate = [infoCopy expiryDate];
    v12 = [NSSKeyedArchiverUtil archiveObject:expiryDate];
    [(NSSProfilesInfoRespMsgProfileInfo *)v5 setExpiryDate:v12];

    -[NSSProfilesInfoRespMsgProfileInfo setIsInstalledByDeclarativeManagement:](v5, "setIsInstalledByDeclarativeManagement:", [infoCopy isInstalledByDeclarativeManagement]);
  }

  return v5;
}

- (id)toMCProfileInfo
{
  v3 = objc_opt_new();
  if (v3)
  {
    friendlyName = [(NSSProfilesInfoRespMsgProfileInfo *)self friendlyName];
    [v3 setFriendlyName:friendlyName];

    profileDescription = [(NSSProfilesInfoRespMsgProfileInfo *)self profileDescription];
    [v3 setProfileDescription:profileDescription];

    identifier = [(NSSProfilesInfoRespMsgProfileInfo *)self identifier];
    [v3 setIdentifier:identifier];

    uUID = [(NSSProfilesInfoRespMsgProfileInfo *)self uUID];
    [v3 setUUID:uUID];

    organization = [(NSSProfilesInfoRespMsgProfileInfo *)self organization];
    [v3 setOrganization:organization];

    v9 = [NSSet setWithObject:objc_opt_class()];
    expiryDate = [(NSSProfilesInfoRespMsgProfileInfo *)self expiryDate];
    v11 = [NSSKeyedArchiverUtil unarchiveObjectOfClasses:v9 withData:expiryDate];
    [v3 setExpiryDate:v11];

    [v3 setIsInstalledByDeclarativeManagement:{-[NSSProfilesInfoRespMsgProfileInfo isInstalledByDeclarativeManagement](self, "isInstalledByDeclarativeManagement")}];
  }

  return v3;
}

@end