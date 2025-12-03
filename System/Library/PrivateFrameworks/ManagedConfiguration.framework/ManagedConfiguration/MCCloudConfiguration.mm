@interface MCCloudConfiguration
+ (id)sharedConfiguration;
- (BOOL)alreadySignedIntoFaceTime;
- (BOOL)hasMAIDCredential;
- (BOOL)isAwaitingConfiguration;
- (BOOL)isProvisionallyEnrolled;
- (BOOL)isSupervised;
- (BOOL)isTeslaEnrolled;
- (NSDictionary)details;
- (NSDictionary)setAsideDetails;
- (id)MAIDUsername;
- (id)diagnosticsUploadURL;
- (id)language;
- (id)languageScript;
- (id)mdmVersionProtocol;
- (id)provisionalEnrollmentExpirationDate;
- (id)region;
- (id)skipSetupKeys;
- (id)tvProviderUserToken;
- (void)refreshDetailsFromDisk;
- (void)setDetails:(id)details;
- (void)setSetAsideDetails:(id)details;
@end

@implementation MCCloudConfiguration

+ (id)sharedConfiguration
{
  if (sharedConfiguration_onceToken != -1)
  {
    +[MCCloudConfiguration sharedConfiguration];
  }

  v3 = sharedConfiguration_config;

  return v3;
}

uint64_t __43__MCCloudConfiguration_sharedConfiguration__block_invoke()
{
  sharedConfiguration_config = objc_alloc_init(MCCloudConfiguration);

  return MEMORY[0x1EEE66BB8]();
}

- (void)refreshDetailsFromDisk
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  [mEMORY[0x1E69AD420] refreshDetailsFromDisk];
}

- (NSDictionary)details
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  details = [mEMORY[0x1E69AD420] details];

  return details;
}

- (void)setDetails:(id)details
{
  v3 = MEMORY[0x1E69AD420];
  detailsCopy = details;
  sharedConfiguration = [v3 sharedConfiguration];
  [sharedConfiguration setDetails:detailsCopy];
}

- (NSDictionary)setAsideDetails
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  setAsideDetails = [mEMORY[0x1E69AD420] setAsideDetails];

  return setAsideDetails;
}

- (void)setSetAsideDetails:(id)details
{
  v3 = MEMORY[0x1E69AD420];
  detailsCopy = details;
  sharedConfiguration = [v3 sharedConfiguration];
  [sharedConfiguration setSetAsideDetails:detailsCopy];
}

- (BOOL)isSupervised
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  isSupervised = [mEMORY[0x1E69AD420] isSupervised];

  return isSupervised;
}

- (BOOL)isTeslaEnrolled
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  isTeslaEnrolled = [mEMORY[0x1E69AD420] isTeslaEnrolled];

  return isTeslaEnrolled;
}

- (BOOL)isAwaitingConfiguration
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  isAwaitingConfiguration = [mEMORY[0x1E69AD420] isAwaitingConfiguration];

  return isAwaitingConfiguration;
}

- (id)mdmVersionProtocol
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  mdmVersionProtocol = [mEMORY[0x1E69AD420] mdmVersionProtocol];

  return mdmVersionProtocol;
}

- (id)diagnosticsUploadURL
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  diagnosticsUploadURL = [mEMORY[0x1E69AD420] diagnosticsUploadURL];

  return diagnosticsUploadURL;
}

- (id)MAIDUsername
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  mAIDUsername = [mEMORY[0x1E69AD420] MAIDUsername];

  return mAIDUsername;
}

- (BOOL)hasMAIDCredential
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  hasMAIDCredential = [mEMORY[0x1E69AD420] hasMAIDCredential];

  return hasMAIDCredential;
}

- (BOOL)alreadySignedIntoFaceTime
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  alreadySignedIntoFaceTime = [mEMORY[0x1E69AD420] alreadySignedIntoFaceTime];

  return alreadySignedIntoFaceTime;
}

- (id)language
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  language = [mEMORY[0x1E69AD420] language];

  return language;
}

- (id)region
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  region = [mEMORY[0x1E69AD420] region];

  return region;
}

- (id)languageScript
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  languageScript = [mEMORY[0x1E69AD420] languageScript];

  return languageScript;
}

- (BOOL)isProvisionallyEnrolled
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  isProvisionallyEnrolled = [mEMORY[0x1E69AD420] isProvisionallyEnrolled];

  return isProvisionallyEnrolled;
}

- (id)provisionalEnrollmentExpirationDate
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  provisionalEnrollmentExpirationDate = [mEMORY[0x1E69AD420] provisionalEnrollmentExpirationDate];

  return provisionalEnrollmentExpirationDate;
}

- (id)tvProviderUserToken
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  tvProviderUserToken = [mEMORY[0x1E69AD420] tvProviderUserToken];

  return tvProviderUserToken;
}

- (id)skipSetupKeys
{
  mEMORY[0x1E69AD420] = [MEMORY[0x1E69AD420] sharedConfiguration];
  skipSetupKeys = [mEMORY[0x1E69AD420] skipSetupKeys];

  return skipSetupKeys;
}

@end