@interface UARPConsent
- (UARPConsent)initWithAccessoryName:(id)name appleModelNumber:(id)number assetVersion:(id)version;
- (UARPConsent)initWithAccessoryName:(id)name assetVersion:(id)version;
- (UARPConsent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dumpWithTabDepth:(unint64_t)depth dumpString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UARPConsent

- (UARPConsent)initWithAccessoryName:(id)name assetVersion:(id)version
{
  nameCopy = name;
  versionCopy = version;
  v16.receiver = self;
  v16.super_class = UARPConsent;
  v8 = [(UARPConsent *)&v16 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    accessoryName = v8->_accessoryName;
    v8->_accessoryName = v9;

    v11 = [versionCopy copy];
    assetVersion = v8->_assetVersion;
    v8->_assetVersion = v11;

    *&v8->_isDownloadable = 257;
    v13 = [@"This is a firmware update for " stringByAppendingString:v8->_accessoryName];
    consentDescription = v8->_consentDescription;
    v8->_consentDescription = v13;
  }

  return v8;
}

- (UARPConsent)initWithAccessoryName:(id)name appleModelNumber:(id)number assetVersion:(id)version
{
  nameCopy = name;
  numberCopy = number;
  versionCopy = version;
  v21.receiver = self;
  v21.super_class = UARPConsent;
  v11 = [(UARPConsent *)&v21 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    accessoryName = v11->_accessoryName;
    v11->_accessoryName = v12;

    v14 = [versionCopy copy];
    assetVersion = v11->_assetVersion;
    v11->_assetVersion = v14;

    v16 = [numberCopy copy];
    appleModelNumber = v11->_appleModelNumber;
    v11->_appleModelNumber = v16;

    *&v11->_isDownloadable = 257;
    v18 = [@"This is a firmware update for " stringByAppendingString:v11->_accessoryName];
    consentDescription = v11->_consentDescription;
    v11->_consentDescription = v18;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  accessoryName = self->_accessoryName;
  coderCopy = coder;
  [coderCopy encodeObject:accessoryName forKey:@"accessoryName"];
  [coderCopy encodeObject:self->_appleModelNumber forKey:@"appleModelNumber"];
  [coderCopy encodeObject:self->_assetVersion forKey:@"asetVersion"];
  [coderCopy encodeBool:self->_isDownloadable forKey:@"isDownloadable"];
  [coderCopy encodeBool:self->_isRecommended forKey:@"isRecommended"];
  [coderCopy encodeObject:self->_warning forKey:@"warning"];
  [coderCopy encodeObject:self->_downloadSize forKey:@"downloadSize"];
  [coderCopy encodeObject:self->_consentDescription forKey:@"consentDescription"];
  [coderCopy encodeBool:self->_needsPostLogoutMode forKey:@"needsPostLogoutMode"];
  [coderCopy encodeObject:self->_installerProgressDescription forKey:@"installerProgressDescription"];
  [coderCopy encodeObject:self->_installerProgressPhase forKey:@"installerProgressPhase"];
  [coderCopy encodeObject:self->_installerProgressError forKey:@"installerProgressError"];
  [coderCopy encodeObject:self->_assetBuildVersion forKey:@"assetBuildVersion"];
  [coderCopy encodeObject:self->_installerOverallProgress forKey:@"installerOverallProgress"];
}

- (UARPConsent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appleModelNumber"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asetVersion"];
  v8 = [(UARPConsent *)self initWithAccessoryName:v5 appleModelNumber:v6 assetVersion:v7];
  v8->_isDownloadable = [coderCopy decodeBoolForKey:@"isDownloadable"];
  v8->_isRecommended = [coderCopy decodeBoolForKey:@"isRecommended"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"warning"];
  warning = v8->_warning;
  v8->_warning = v9;

  v8->_downloadSize = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadSize"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"consentDescription"];
  consentDescription = v8->_consentDescription;
  v8->_consentDescription = v11;

  v8->_needsPostLogoutMode = [coderCopy decodeBoolForKey:@"needsPostLogoutMode"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installerProgressDescription"];
  installerProgressDescription = v8->_installerProgressDescription;
  v8->_installerProgressDescription = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installerProgressPhase"];
  installerProgressPhase = v8->_installerProgressPhase;
  v8->_installerProgressPhase = v15;

  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installerProgressError"];
  installerProgressError = v8->_installerProgressError;
  v8->_installerProgressError = v17;

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetBuildVersion"];
  assetBuildVersion = v8->_assetBuildVersion;
  v8->_assetBuildVersion = v19;

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installerOverallProgress"];

  installerOverallProgress = v8->_installerOverallProgress;
  v8->_installerOverallProgress = v21;

  return v8;
}

- (void)dumpWithTabDepth:(unint64_t)depth dumpString:(id)string
{
  stringCopy = string;
  [stringCopy appendWithTabDepth:depth format:{@"%@\n", self->_accessoryName}];
  if (self->_appleModelNumber)
  {
    [stringCopy appendWithTabDepth:depth format:{@"%@\n", self->_appleModelNumber}];
  }

  [stringCopy appendWithTabDepth:depth format:{@"%@\n", self->_assetVersion}];
  if (self->_assetBuildVersion)
  {
    [stringCopy appendWithTabDepth:depth format:{@"%@\n", self->_assetBuildVersion}];
  }

  if (self->_consentDescription)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Consent Description: %@\n", self->_consentDescription}];
  }

  v6 = stringCopy;
  if (self->_warning)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Warning: %@\n", self->_warning}];
    v6 = stringCopy;
  }

  if (self->_downloadSize)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Download Size: %@\n", self->_downloadSize}];
    v6 = stringCopy;
  }

  [v6 appendWithTabDepth:depth + 1 format:{@"Is Downloadable: %d\n", self->_isDownloadable}];
  [stringCopy appendWithTabDepth:depth + 1 format:{@"Is Recommended: %d\n", self->_isRecommended}];
  [stringCopy appendWithTabDepth:depth + 1 format:{@"Needs Post Logout Mode: %d\n", self->_needsPostLogoutMode}];
  if (self->_installerProgressDescription)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Installer Progress Description: %@\n", self->_installerProgressDescription}];
  }

  if (self->_installerProgressPhase)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Installer Progress Phase: %@\n", self->_installerProgressPhase}];
  }

  v7 = stringCopy;
  if (self->_installerOverallProgress)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Installer Overall Progress: %@\n", self->_installerOverallProgress}];
    v7 = stringCopy;
  }

  if (self->_installerProgressError)
  {
    [stringCopy appendWithTabDepth:depth + 1 format:{@"Installer Progress Error: %@\n", self->_installerProgressError}];
    v7 = stringCopy;
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