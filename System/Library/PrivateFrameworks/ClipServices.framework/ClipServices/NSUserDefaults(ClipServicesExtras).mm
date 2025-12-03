@interface NSUserDefaults(ClipServicesExtras)
+ (id)cps_clipServicesDefaults;
- (uint64_t)cps_didShowFirstTimeLocationConsent;
- (uint64_t)cps_forceReportProblemErrorFetchProblemTypes;
- (uint64_t)cps_forceReportProblemErrorNoDeveloperSupportURL;
- (uint64_t)cps_forceReportProblemErrorUnableToSubmitResponse;
- (void)setCps_didShowFirstTimeLocationConsent:()ClipServicesExtras;
@end

@implementation NSUserDefaults(ClipServicesExtras)

+ (id)cps_clipServicesDefaults
{
  if (cps_clipServicesDefaults_onceToken != -1)
  {
    +[NSUserDefaults(ClipServicesExtras) cps_clipServicesDefaults];
  }

  v1 = cps_clipServicesDefaults_clipServicesDefaults;

  return v1;
}

- (uint64_t)cps_didShowFirstTimeLocationConsent
{
  cps_clipServicesDefaults = [MEMORY[0x277CBEBD0] cps_clipServicesDefaults];
  v1 = [cps_clipServicesDefaults BOOLForKey:@"CPSDidShowFirstTimeLocationConsent"];

  return v1;
}

- (void)setCps_didShowFirstTimeLocationConsent:()ClipServicesExtras
{
  cps_clipServicesDefaults = [MEMORY[0x277CBEBD0] cps_clipServicesDefaults];
  [cps_clipServicesDefaults setBool:a3 forKey:@"CPSDidShowFirstTimeLocationConsent"];
}

- (uint64_t)cps_forceReportProblemErrorFetchProblemTypes
{
  cps_clipServicesDefaults = [MEMORY[0x277CBEBD0] cps_clipServicesDefaults];
  v1 = [cps_clipServicesDefaults BOOLForKey:@"CPSForceReportProblemErrorFetchProblemTypes"];

  return v1;
}

- (uint64_t)cps_forceReportProblemErrorNoDeveloperSupportURL
{
  cps_clipServicesDefaults = [MEMORY[0x277CBEBD0] cps_clipServicesDefaults];
  v1 = [cps_clipServicesDefaults BOOLForKey:@"CPSForceReportProblemErrorNoDeveloperSupportURL"];

  return v1;
}

- (uint64_t)cps_forceReportProblemErrorUnableToSubmitResponse
{
  cps_clipServicesDefaults = [MEMORY[0x277CBEBD0] cps_clipServicesDefaults];
  v1 = [cps_clipServicesDefaults BOOLForKey:@"CPSForceReportProblemErrorUnableToSubmitResponse"];

  return v1;
}

@end