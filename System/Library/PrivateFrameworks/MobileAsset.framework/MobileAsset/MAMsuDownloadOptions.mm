@interface MAMsuDownloadOptions
- (MAMsuDownloadOptions)init;
- (MAMsuDownloadOptions)initWithCoder:(id)coder;
- (MAMsuDownloadOptions)initWithPlist:(id)plist;
- (id)description;
- (id)encodeAsPlist;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAMsuDownloadOptions

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v17.receiver = self;
  v17.super_class = MAMsuDownloadOptions;
  v16 = [(MADownloadOptions *)&v17 description];
  requestedProductVersion = [(MAMsuDownloadOptions *)self requestedProductVersion];
  requestedBuildVersion = [(MAMsuDownloadOptions *)self requestedBuildVersion];
  delayPeriod = [(MAMsuDownloadOptions *)self delayPeriod];
  supervised = [(MAMsuDownloadOptions *)self supervised];
  allowSameVersion = [(MAMsuDownloadOptions *)self allowSameVersion];
  prerequisiteBuildVersion = [(MAMsuDownloadOptions *)self prerequisiteBuildVersion];
  prerequisiteProductVersion = [(MAMsuDownloadOptions *)self prerequisiteProductVersion];
  if (self->_prerequisiteReleaseTypeIsOverridden)
  {
    prerequisiteReleaseType = self->_prerequisiteReleaseType;
  }

  else
  {
    prerequisiteReleaseType = @"(default)";
  }

  liveAssetAudienceUUID = [(MAMsuDownloadOptions *)self liveAssetAudienceUUID];
  purpose = [(MAMsuDownloadOptions *)self purpose];
  v13 = [v15 stringWithFormat:@"%@  + MAMsuDownloadOptions reqProdVersion: %@ reqBuildVersion: %@ delayPeriod: %ld managedDevice: %d allowSameVersion: %d prereqBuild: %@ prereqVersion: %@ prereqReleaseType: %@ liveAssetAudienceUUID: %@ purpose: %@", v16, requestedProductVersion, requestedBuildVersion, delayPeriod, supervised, allowSameVersion, prerequisiteBuildVersion, prerequisiteProductVersion, prerequisiteReleaseType, liveAssetAudienceUUID, purpose];

  return v13;
}

- (MAMsuDownloadOptions)init
{
  v12.receiver = self;
  v12.super_class = MAMsuDownloadOptions;
  v2 = [(MADownloadOptions *)&v12 init];
  v3 = v2;
  if (v2)
  {
    requestedProductVersion = v2->_requestedProductVersion;
    v2->_requestedProductVersion = 0;

    requestedBuildVersion = v3->_requestedBuildVersion;
    v3->_requestedBuildVersion = 0;

    v3->_delayPeriod = 0;
    v3->_supervised = 0;
    v3->_allowSameVersion = 0;
    prerequisiteBuildVersion = v3->_prerequisiteBuildVersion;
    v3->_prerequisiteBuildVersion = 0;

    prerequisiteProductVersion = v3->_prerequisiteProductVersion;
    v3->_prerequisiteProductVersion = 0;

    prerequisiteReleaseType = v3->_prerequisiteReleaseType;
    v3->_prerequisiteReleaseType = 0;

    v3->_prerequisiteReleaseTypeIsOverridden = 0;
    liveAssetAudienceUUID = v3->_liveAssetAudienceUUID;
    v3->_liveAssetAudienceUUID = 0;

    purpose = v3->_purpose;
    v3->_purpose = 0;
  }

  return v3;
}

- (MAMsuDownloadOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = MAMsuDownloadOptions;
  v5 = [(MADownloadOptions *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RequestedProductVersion"];
    [(MAMsuDownloadOptions *)v5 setRequestedProductVersion:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RequestedBuildVersion"];
    requestedBuildVersion = v5->_requestedBuildVersion;
    v5->_requestedBuildVersion = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DelayPeriod"];
    v5->_delayPeriod = [v9 longValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Supervised"];
    v5->_supervised = [v10 BOOLValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AllowSameVersion"];
    v5->_allowSameVersion = [v11 BOOLValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteBuildVersion"];
    [(MAMsuDownloadOptions *)v5 setPrerequisiteBuildVersion:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteProductVersion"];
    [(MAMsuDownloadOptions *)v5 setPrerequisiteProductVersion:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteReleaseType"];
    [(MAMsuDownloadOptions *)v5 setPrerequisiteReleaseType:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteReleaseTypeIsOverridden"];
    v5->_prerequisiteReleaseTypeIsOverridden = [v15 BOOLValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LiveAssetAudienceUUID"];
    [(MAMsuDownloadOptions *)v5 setLiveAssetAudienceUUID:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Purpose"];
    [(MAMsuDownloadOptions *)v5 setPurpose:v17];
  }

  return v5;
}

- (MAMsuDownloadOptions)initWithPlist:(id)plist
{
  plistCopy = plist;
  v17.receiver = self;
  v17.super_class = MAMsuDownloadOptions;
  v5 = [(MADownloadOptions *)&v17 initWithPlist:plistCopy];
  if (v5)
  {
    v6 = getPlistString(plistCopy, @"RequestedProductVersion");
    [(MAMsuDownloadOptions *)v5 setRequestedProductVersion:v6];

    v7 = getPlistString(plistCopy, @"RequestedBuildVersion");
    requestedBuildVersion = v5->_requestedBuildVersion;
    v5->_requestedBuildVersion = v7;

    v9 = getPlistNumber(plistCopy, @"DelayPeriod");
    v5->_delayPeriod = [v9 longValue];

    v5->_supervised = getPlistNumberAsBool(plistCopy, @"Supervised");
    v5->_allowSameVersion = getPlistNumberAsBool(plistCopy, @"AllowSameVersion");
    v10 = getPlistString(plistCopy, @"PrerequisiteBuildVersion");
    [(MAMsuDownloadOptions *)v5 setPrerequisiteBuildVersion:v10];

    v11 = getPlistString(plistCopy, @"PrerequisiteProductVersion");
    [(MAMsuDownloadOptions *)v5 setPrerequisiteProductVersion:v11];

    v12 = getPlistString(plistCopy, @"PrerequisiteReleaseType");
    [(MAMsuDownloadOptions *)v5 setPrerequisiteReleaseType:v12];

    v5->_prerequisiteReleaseTypeIsOverridden = getPlistNumberAsBool(plistCopy, @"PrerequisiteReleaseTypeIsOverridden");
    v13 = getPlistString(plistCopy, @"DownloadAuthorizationHeader");
    [(MADownloadOptions *)v5 setDownloadAuthorizationHeader:v13];

    v14 = getPlistString(plistCopy, @"LiveAssetAudienceUUID");
    [(MAMsuDownloadOptions *)v5 setLiveAssetAudienceUUID:v14];

    v15 = getPlistString(plistCopy, @"Purpose");
    [(MAMsuDownloadOptions *)v5 setPurpose:v15];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MAMsuDownloadOptions;
  [(MADownloadOptions *)&v15 encodeWithCoder:coderCopy];
  requestedProductVersion = self->_requestedProductVersion;
  if (requestedProductVersion)
  {
    [coderCopy encodeObject:requestedProductVersion forKey:@"RequestedProductVersion"];
  }

  [coderCopy encodeObject:self->_requestedBuildVersion forKey:@"RequestedBuildVersion"];
  v6 = [MEMORY[0x1E696AD98] numberWithLong:self->_delayPeriod];
  [coderCopy encodeObject:v6 forKey:@"DelayPeriod"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_supervised];
  [coderCopy encodeObject:v7 forKey:@"Supervised"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowSameVersion];
  [coderCopy encodeObject:v8 forKey:@"AllowSameVersion"];

  prerequisiteBuildVersion = self->_prerequisiteBuildVersion;
  if (prerequisiteBuildVersion)
  {
    [coderCopy encodeObject:prerequisiteBuildVersion forKey:@"PrerequisiteBuildVersion"];
  }

  prerequisiteProductVersion = self->_prerequisiteProductVersion;
  if (prerequisiteProductVersion)
  {
    [coderCopy encodeObject:prerequisiteProductVersion forKey:@"PrerequisiteProductVersion"];
  }

  prerequisiteReleaseType = self->_prerequisiteReleaseType;
  if (prerequisiteReleaseType)
  {
    [coderCopy encodeObject:prerequisiteReleaseType forKey:@"PrerequisiteReleaseType"];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_prerequisiteReleaseTypeIsOverridden];
  [coderCopy encodeObject:v12 forKey:@"PrerequisiteReleaseTypeIsOverridden"];

  liveAssetAudienceUUID = [(MAMsuDownloadOptions *)self liveAssetAudienceUUID];
  [coderCopy encodeObject:liveAssetAudienceUUID forKey:@"LiveAssetAudienceUUID"];

  purpose = [(MAMsuDownloadOptions *)self purpose];
  [coderCopy encodeObject:purpose forKey:@"Purpose"];
}

- (id)encodeAsPlist
{
  v18.receiver = self;
  v18.super_class = MAMsuDownloadOptions;
  encodeAsPlist = [(MADownloadOptions *)&v18 encodeAsPlist];
  v4 = encodeAsPlist;
  requestedProductVersion = self->_requestedProductVersion;
  if (requestedProductVersion)
  {
    [encodeAsPlist setValue:requestedProductVersion forKey:@"RequestedProductVersion"];
  }

  requestedBuildVersion = self->_requestedBuildVersion;
  if (requestedBuildVersion)
  {
    [v4 setValue:requestedBuildVersion forKey:@"RequestedBuildVersion"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithLong:self->_delayPeriod];
  [v4 setValue:v7 forKey:@"DelayPeriod"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_supervised];
  [v4 setValue:v8 forKey:@"Supervised"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowSameVersion];
  [v4 setValue:v9 forKey:@"AllowSameVersion"];

  prerequisiteBuildVersion = self->_prerequisiteBuildVersion;
  if (prerequisiteBuildVersion)
  {
    [v4 setValue:prerequisiteBuildVersion forKey:@"PrerequisiteBuildVersion"];
  }

  prerequisiteProductVersion = self->_prerequisiteProductVersion;
  if (prerequisiteProductVersion)
  {
    [v4 setValue:prerequisiteProductVersion forKey:@"PrerequisiteProductVersion"];
  }

  prerequisiteReleaseType = self->_prerequisiteReleaseType;
  if (prerequisiteReleaseType)
  {
    [v4 setValue:prerequisiteReleaseType forKey:@"PrerequisiteReleaseType"];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_prerequisiteReleaseTypeIsOverridden];
  [v4 setValue:v13 forKey:@"PrerequisiteReleaseTypeIsOverridden"];

  downloadAuthorizationHeader = [(MADownloadOptions *)self downloadAuthorizationHeader];
  [v4 setValue:downloadAuthorizationHeader forKey:@"DownloadAuthorizationHeader"];

  liveAssetAudienceUUID = [(MAMsuDownloadOptions *)self liveAssetAudienceUUID];
  [v4 setValue:liveAssetAudienceUUID forKey:@"LiveAssetAudienceUUID"];

  purpose = [(MAMsuDownloadOptions *)self purpose];
  [v4 setValue:purpose forKey:@"Purpose"];

  return v4;
}

@end