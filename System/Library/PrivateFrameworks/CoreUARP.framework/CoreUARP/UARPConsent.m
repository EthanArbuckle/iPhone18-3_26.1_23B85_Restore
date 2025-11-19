@interface UARPConsent
- (UARPConsent)initWithAccessoryName:(id)a3 appleModelNumber:(id)a4 assetVersion:(id)a5;
- (UARPConsent)initWithAccessoryName:(id)a3 assetVersion:(id)a4;
- (UARPConsent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dumpWithTabDepth:(unint64_t)a3 dumpString:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UARPConsent

- (UARPConsent)initWithAccessoryName:(id)a3 assetVersion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = UARPConsent;
  v8 = [(UARPConsent *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    accessoryName = v8->_accessoryName;
    v8->_accessoryName = v9;

    v11 = [v7 copy];
    assetVersion = v8->_assetVersion;
    v8->_assetVersion = v11;

    *&v8->_isDownloadable = 257;
    v13 = [@"This is a firmware update for " stringByAppendingString:v8->_accessoryName];
    consentDescription = v8->_consentDescription;
    v8->_consentDescription = v13;
  }

  return v8;
}

- (UARPConsent)initWithAccessoryName:(id)a3 appleModelNumber:(id)a4 assetVersion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = UARPConsent;
  v11 = [(UARPConsent *)&v21 init];
  if (v11)
  {
    v12 = [v8 copy];
    accessoryName = v11->_accessoryName;
    v11->_accessoryName = v12;

    v14 = [v10 copy];
    assetVersion = v11->_assetVersion;
    v11->_assetVersion = v14;

    v16 = [v9 copy];
    appleModelNumber = v11->_appleModelNumber;
    v11->_appleModelNumber = v16;

    *&v11->_isDownloadable = 257;
    v18 = [@"This is a firmware update for " stringByAppendingString:v11->_accessoryName];
    consentDescription = v11->_consentDescription;
    v11->_consentDescription = v18;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[UARPConsent alloc] initWithAccessoryName:self->_accessoryName appleModelNumber:self->_appleModelNumber assetVersion:self->_assetVersion];
  v4->_isDownloadable = self->_isDownloadable;
  v4->_isRecommended = self->_isRecommended;
  v5 = [(NSString *)self->_warning copy];
  warning = v4->_warning;
  v4->_warning = v5;

  v4->_downloadSize = self->_downloadSize;
  v7 = [(NSString *)self->_consentDescription copy];
  consentDescription = v4->_consentDescription;
  v4->_consentDescription = v7;

  v4->_needsPostLogoutMode = self->_needsPostLogoutMode;
  v9 = [(NSString *)self->_installerProgressDescription copy];
  installerProgressDescription = v4->_installerProgressDescription;
  v4->_installerProgressDescription = v9;

  v11 = [(NSString *)self->_installerProgressPhase copy];
  installerProgressPhase = v4->_installerProgressPhase;
  v4->_installerProgressPhase = v11;

  objc_storeStrong(&v4->_installerProgressError, self->_installerProgressError);
  v13 = [(NSString *)self->_assetBuildVersion copy];
  assetBuildVersion = v4->_assetBuildVersion;
  v4->_assetBuildVersion = v13;

  objc_storeStrong(&v4->_installerOverallProgress, self->_installerOverallProgress);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  accessoryName = self->_accessoryName;
  v5 = a3;
  [v5 encodeObject:accessoryName forKey:@"accessoryName"];
  [v5 encodeObject:self->_appleModelNumber forKey:@"appleModelNumber"];
  [v5 encodeObject:self->_assetVersion forKey:@"asetVersion"];
  [v5 encodeBool:self->_isDownloadable forKey:@"isDownloadable"];
  [v5 encodeBool:self->_isRecommended forKey:@"isRecommended"];
  [v5 encodeObject:self->_warning forKey:@"warning"];
  [v5 encodeObject:self->_downloadSize forKey:@"downloadSize"];
  [v5 encodeObject:self->_consentDescription forKey:@"consentDescription"];
  [v5 encodeBool:self->_needsPostLogoutMode forKey:@"needsPostLogoutMode"];
  [v5 encodeObject:self->_installerProgressDescription forKey:@"installerProgressDescription"];
  [v5 encodeObject:self->_installerProgressPhase forKey:@"installerProgressPhase"];
  [v5 encodeObject:self->_installerProgressError forKey:@"installerProgressError"];
  [v5 encodeObject:self->_assetBuildVersion forKey:@"assetBuildVersion"];
  [v5 encodeObject:self->_installerOverallProgress forKey:@"installerOverallProgress"];
}

- (UARPConsent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appleModelNumber"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asetVersion"];
  v8 = [(UARPConsent *)self initWithAccessoryName:v5 appleModelNumber:v6 assetVersion:v7];
  v8->_isDownloadable = [v4 decodeBoolForKey:@"isDownloadable"];
  v8->_isRecommended = [v4 decodeBoolForKey:@"isRecommended"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"warning"];
  warning = v8->_warning;
  v8->_warning = v9;

  v8->_downloadSize = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadSize"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"consentDescription"];
  consentDescription = v8->_consentDescription;
  v8->_consentDescription = v11;

  v8->_needsPostLogoutMode = [v4 decodeBoolForKey:@"needsPostLogoutMode"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installerProgressDescription"];
  installerProgressDescription = v8->_installerProgressDescription;
  v8->_installerProgressDescription = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installerProgressPhase"];
  installerProgressPhase = v8->_installerProgressPhase;
  v8->_installerProgressPhase = v15;

  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installerProgressError"];
  installerProgressError = v8->_installerProgressError;
  v8->_installerProgressError = v17;

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetBuildVersion"];
  assetBuildVersion = v8->_assetBuildVersion;
  v8->_assetBuildVersion = v19;

  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installerOverallProgress"];

  installerOverallProgress = v8->_installerOverallProgress;
  v8->_installerOverallProgress = v21;

  return v8;
}

- (void)dumpWithTabDepth:(unint64_t)a3 dumpString:(id)a4
{
  v8 = a4;
  [v8 appendWithTabDepth:a3 format:{@"%@\n", self->_accessoryName}];
  if (self->_appleModelNumber)
  {
    [v8 appendWithTabDepth:a3 format:{@"%@\n", self->_appleModelNumber}];
  }

  [v8 appendWithTabDepth:a3 format:{@"%@\n", self->_assetVersion}];
  if (self->_assetBuildVersion)
  {
    [v8 appendWithTabDepth:a3 format:{@"%@\n", self->_assetBuildVersion}];
  }

  if (self->_consentDescription)
  {
    [v8 appendWithTabDepth:a3 + 1 format:{@"Consent Description: %@\n", self->_consentDescription}];
  }

  v6 = v8;
  if (self->_warning)
  {
    [v8 appendWithTabDepth:a3 + 1 format:{@"Warning: %@\n", self->_warning}];
    v6 = v8;
  }

  if (self->_downloadSize)
  {
    [v8 appendWithTabDepth:a3 + 1 format:{@"Download Size: %@\n", self->_downloadSize}];
    v6 = v8;
  }

  [v6 appendWithTabDepth:a3 + 1 format:{@"Is Downloadable: %d\n", self->_isDownloadable}];
  [v8 appendWithTabDepth:a3 + 1 format:{@"Is Recommended: %d\n", self->_isRecommended}];
  [v8 appendWithTabDepth:a3 + 1 format:{@"Needs Post Logout Mode: %d\n", self->_needsPostLogoutMode}];
  if (self->_installerProgressDescription)
  {
    [v8 appendWithTabDepth:a3 + 1 format:{@"Installer Progress Description: %@\n", self->_installerProgressDescription}];
  }

  if (self->_installerProgressPhase)
  {
    [v8 appendWithTabDepth:a3 + 1 format:{@"Installer Progress Phase: %@\n", self->_installerProgressPhase}];
  }

  v7 = v8;
  if (self->_installerOverallProgress)
  {
    [v8 appendWithTabDepth:a3 + 1 format:{@"Installer Overall Progress: %@\n", self->_installerOverallProgress}];
    v7 = v8;
  }

  if (self->_installerProgressError)
  {
    [v8 appendWithTabDepth:a3 + 1 format:{@"Installer Progress Error: %@\n", self->_installerProgressError}];
    v7 = v8;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  assetVersion = self->_assetVersion;
  installerProgressDescription = self->_installerProgressDescription;
  v8 = [v3 stringWithFormat:@"<%@: _accessoryName=%@, _appleModelNumber=%@, _assetVersion=%@, _consentDescription=%@ _warning=%@ _needsPostLogoutMode=%d, _installerProgressDescription=%@, _installerOverallProgress=%@>", v5, self->_accessoryName, self->_appleModelNumber, assetVersion, self->_consentDescription, self->_warning, self->_needsPostLogoutMode, installerProgressDescription, self->_installerOverallProgress];

  return v8;
}

@end