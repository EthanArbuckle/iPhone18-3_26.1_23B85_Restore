@interface MDMDeviceQueryUtilities
+ (id)allowedDeviceQueriesForAccessRights:(unint64_t)a3 isDataSeparated:(BOOL)a4;
+ (id)allowedDeviceQueriesOnUserChannelForAccessRights:(unint64_t)a3;
+ (id)allowedDeviceQueriesWithUserEnrollment;
@end

@implementation MDMDeviceQueryUtilities

+ (id)allowedDeviceQueriesForAccessRights:(unint64_t)a3 isDataSeparated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = MEMORY[0x277CBEB58];
  v7 = _alwaysAllowedQueries();
  v8 = [v6 setWithSet:v7];

  if ((v5 & 0x10) != 0)
  {
    v9 = _deviceInformationQueries();
    [v8 unionSet:v9];

    if ((v5 & 0x1000) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v5 & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  v10 = _appInstallationQueries();
  [v8 unionSet:v10];

  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if (!v4)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_8:
  v11 = _networkInformationQueries();
  [v8 unionSet:v11];

  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (_unavailableAppInstallationQueriesWithDataSeparation_onceToken != -1)
  {
    +[MDMDeviceQueryUtilities allowedDeviceQueriesForAccessRights:isDataSeparated:];
  }

  [v8 minusSet:_unavailableAppInstallationQueriesWithDataSeparation_set];
LABEL_12:
  v12 = +[MDMCloudConfiguration sharedConfiguration];
  if ([v12 userMode] == 1)
  {
    v13 = [MEMORY[0x277D03538] isSharediPad];
  }

  else
  {
    v13 = 0;
  }

  v14 = +[MDMCloudConfiguration sharedConfiguration];
  v15 = [v14 isSupervised];

  if (v15 && (v13 & 1) == 0)
  {
    [v8 addObject:@"AccessibilitySettings"];
  }

  v16 = [v8 copy];

  return v16;
}

+ (id)allowedDeviceQueriesOnUserChannelForAccessRights:(unint64_t)a3
{
  v3 = a3;
  v4 = MEMORY[0x277CBEB58];
  if (_alwaysAllowedUserQueries_onceToken != -1)
  {
    +[MDMDeviceQueryUtilities allowedDeviceQueriesOnUserChannelForAccessRights:];
  }

  v5 = [v4 setWithSet:_alwaysAllowedUserQueries_set];
  if ((v3 & 0x1000) != 0)
  {
    v6 = _appInstallationQueries();
    [v5 unionSet:v6];
  }

  v7 = +[MDMCloudConfiguration sharedConfiguration];
  if ([v7 userMode] == 1)
  {
    v8 = [MEMORY[0x277D03538] isSharediPad];
  }

  else
  {
    v8 = 0;
  }

  v9 = +[MDMCloudConfiguration sharedConfiguration];
  v10 = [v9 isSupervised];

  if (v10 && v8)
  {
    [v5 addObject:@"AccessibilitySettings"];
  }

  v11 = [v5 copy];

  return v11;
}

+ (id)allowedDeviceQueriesWithUserEnrollment
{
  if (allowedDeviceQueriesWithUserEnrollment_onceToken != -1)
  {
    +[MDMDeviceQueryUtilities allowedDeviceQueriesWithUserEnrollment];
  }

  v3 = allowedDeviceQueriesWithUserEnrollment_allowedQueries;

  return v3;
}

void __65__MDMDeviceQueryUtilities_allowedDeviceQueriesWithUserEnrollment__block_invoke()
{
  v0 = MEMORY[0x277CBEB58];
  v1 = _alwaysAllowedQueries();
  v7 = [v0 setWithSet:v1];

  v2 = _deviceInformationQueries();
  [v7 unionSet:v2];

  v3 = _appInstallationQueries();
  [v7 unionSet:v3];

  v4 = _networkInformationQueries();
  [v7 unionSet:v4];

  if (_validDeviceQueriesWithUserEnrollment_onceToken != -1)
  {
    __65__MDMDeviceQueryUtilities_allowedDeviceQueriesWithUserEnrollment__block_invoke_cold_1();
  }

  [v7 intersectSet:_validDeviceQueriesWithUserEnrollment_validMCKeys];
  v5 = [v7 copy];
  v6 = allowedDeviceQueriesWithUserEnrollment_allowedQueries;
  allowedDeviceQueriesWithUserEnrollment_allowedQueries = v5;
}

@end