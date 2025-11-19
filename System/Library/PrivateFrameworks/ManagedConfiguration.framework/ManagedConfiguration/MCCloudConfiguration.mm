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
- (void)setDetails:(id)a3;
- (void)setSetAsideDetails:(id)a3;
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
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  [v2 refreshDetailsFromDisk];
}

- (NSDictionary)details
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 details];

  return v3;
}

- (void)setDetails:(id)a3
{
  v3 = MEMORY[0x1E69AD420];
  v4 = a3;
  v5 = [v3 sharedConfiguration];
  [v5 setDetails:v4];
}

- (NSDictionary)setAsideDetails
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 setAsideDetails];

  return v3;
}

- (void)setSetAsideDetails:(id)a3
{
  v3 = MEMORY[0x1E69AD420];
  v4 = a3;
  v5 = [v3 sharedConfiguration];
  [v5 setSetAsideDetails:v4];
}

- (BOOL)isSupervised
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 isSupervised];

  return v3;
}

- (BOOL)isTeslaEnrolled
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 isTeslaEnrolled];

  return v3;
}

- (BOOL)isAwaitingConfiguration
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 isAwaitingConfiguration];

  return v3;
}

- (id)mdmVersionProtocol
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 mdmVersionProtocol];

  return v3;
}

- (id)diagnosticsUploadURL
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 diagnosticsUploadURL];

  return v3;
}

- (id)MAIDUsername
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 MAIDUsername];

  return v3;
}

- (BOOL)hasMAIDCredential
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 hasMAIDCredential];

  return v3;
}

- (BOOL)alreadySignedIntoFaceTime
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 alreadySignedIntoFaceTime];

  return v3;
}

- (id)language
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 language];

  return v3;
}

- (id)region
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 region];

  return v3;
}

- (id)languageScript
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 languageScript];

  return v3;
}

- (BOOL)isProvisionallyEnrolled
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 isProvisionallyEnrolled];

  return v3;
}

- (id)provisionalEnrollmentExpirationDate
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 provisionalEnrollmentExpirationDate];

  return v3;
}

- (id)tvProviderUserToken
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 tvProviderUserToken];

  return v3;
}

- (id)skipSetupKeys
{
  v2 = [MEMORY[0x1E69AD420] sharedConfiguration];
  v3 = [v2 skipSetupKeys];

  return v3;
}

@end