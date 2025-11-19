@interface MAMsuDownloadOptions
- (MAMsuDownloadOptions)init;
- (MAMsuDownloadOptions)initWithCoder:(id)a3;
- (MAMsuDownloadOptions)initWithPlist:(id)a3;
- (id)description;
- (id)encodeAsPlist;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAMsuDownloadOptions

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v17.receiver = self;
  v17.super_class = MAMsuDownloadOptions;
  v16 = [(MADownloadOptions *)&v17 description];
  v3 = [(MAMsuDownloadOptions *)self requestedProductVersion];
  v4 = [(MAMsuDownloadOptions *)self requestedBuildVersion];
  v5 = [(MAMsuDownloadOptions *)self delayPeriod];
  v6 = [(MAMsuDownloadOptions *)self supervised];
  v7 = [(MAMsuDownloadOptions *)self allowSameVersion];
  v8 = [(MAMsuDownloadOptions *)self prerequisiteBuildVersion];
  v9 = [(MAMsuDownloadOptions *)self prerequisiteProductVersion];
  if (self->_prerequisiteReleaseTypeIsOverridden)
  {
    prerequisiteReleaseType = self->_prerequisiteReleaseType;
  }

  else
  {
    prerequisiteReleaseType = @"(default)";
  }

  v11 = [(MAMsuDownloadOptions *)self liveAssetAudienceUUID];
  v12 = [(MAMsuDownloadOptions *)self purpose];
  v13 = [v15 stringWithFormat:@"%@  + MAMsuDownloadOptions reqProdVersion: %@ reqBuildVersion: %@ delayPeriod: %ld managedDevice: %d allowSameVersion: %d prereqBuild: %@ prereqVersion: %@ prereqReleaseType: %@ liveAssetAudienceUUID: %@ purpose: %@", v16, v3, v4, v5, v6, v7, v8, v9, prerequisiteReleaseType, v11, v12];

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

- (MAMsuDownloadOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MAMsuDownloadOptions;
  v5 = [(MADownloadOptions *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RequestedProductVersion"];
    [(MAMsuDownloadOptions *)v5 setRequestedProductVersion:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RequestedBuildVersion"];
    requestedBuildVersion = v5->_requestedBuildVersion;
    v5->_requestedBuildVersion = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DelayPeriod"];
    v5->_delayPeriod = [v9 longValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Supervised"];
    v5->_supervised = [v10 BOOLValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AllowSameVersion"];
    v5->_allowSameVersion = [v11 BOOLValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteBuildVersion"];
    [(MAMsuDownloadOptions *)v5 setPrerequisiteBuildVersion:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteProductVersion"];
    [(MAMsuDownloadOptions *)v5 setPrerequisiteProductVersion:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteReleaseType"];
    [(MAMsuDownloadOptions *)v5 setPrerequisiteReleaseType:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteReleaseTypeIsOverridden"];
    v5->_prerequisiteReleaseTypeIsOverridden = [v15 BOOLValue];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LiveAssetAudienceUUID"];
    [(MAMsuDownloadOptions *)v5 setLiveAssetAudienceUUID:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Purpose"];
    [(MAMsuDownloadOptions *)v5 setPurpose:v17];
  }

  return v5;
}

- (MAMsuDownloadOptions)initWithPlist:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MAMsuDownloadOptions;
  v5 = [(MADownloadOptions *)&v17 initWithPlist:v4];
  if (v5)
  {
    v6 = getPlistString(v4, @"RequestedProductVersion");
    [(MAMsuDownloadOptions *)v5 setRequestedProductVersion:v6];

    v7 = getPlistString(v4, @"RequestedBuildVersion");
    requestedBuildVersion = v5->_requestedBuildVersion;
    v5->_requestedBuildVersion = v7;

    v9 = getPlistNumber(v4, @"DelayPeriod");
    v5->_delayPeriod = [v9 longValue];

    v5->_supervised = getPlistNumberAsBool(v4, @"Supervised");
    v5->_allowSameVersion = getPlistNumberAsBool(v4, @"AllowSameVersion");
    v10 = getPlistString(v4, @"PrerequisiteBuildVersion");
    [(MAMsuDownloadOptions *)v5 setPrerequisiteBuildVersion:v10];

    v11 = getPlistString(v4, @"PrerequisiteProductVersion");
    [(MAMsuDownloadOptions *)v5 setPrerequisiteProductVersion:v11];

    v12 = getPlistString(v4, @"PrerequisiteReleaseType");
    [(MAMsuDownloadOptions *)v5 setPrerequisiteReleaseType:v12];

    v5->_prerequisiteReleaseTypeIsOverridden = getPlistNumberAsBool(v4, @"PrerequisiteReleaseTypeIsOverridden");
    v13 = getPlistString(v4, @"DownloadAuthorizationHeader");
    [(MADownloadOptions *)v5 setDownloadAuthorizationHeader:v13];

    v14 = getPlistString(v4, @"LiveAssetAudienceUUID");
    [(MAMsuDownloadOptions *)v5 setLiveAssetAudienceUUID:v14];

    v15 = getPlistString(v4, @"Purpose");
    [(MAMsuDownloadOptions *)v5 setPurpose:v15];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MAMsuDownloadOptions;
  [(MADownloadOptions *)&v15 encodeWithCoder:v4];
  requestedProductVersion = self->_requestedProductVersion;
  if (requestedProductVersion)
  {
    [v4 encodeObject:requestedProductVersion forKey:@"RequestedProductVersion"];
  }

  [v4 encodeObject:self->_requestedBuildVersion forKey:@"RequestedBuildVersion"];
  v6 = [MEMORY[0x1E696AD98] numberWithLong:self->_delayPeriod];
  [v4 encodeObject:v6 forKey:@"DelayPeriod"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_supervised];
  [v4 encodeObject:v7 forKey:@"Supervised"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowSameVersion];
  [v4 encodeObject:v8 forKey:@"AllowSameVersion"];

  prerequisiteBuildVersion = self->_prerequisiteBuildVersion;
  if (prerequisiteBuildVersion)
  {
    [v4 encodeObject:prerequisiteBuildVersion forKey:@"PrerequisiteBuildVersion"];
  }

  prerequisiteProductVersion = self->_prerequisiteProductVersion;
  if (prerequisiteProductVersion)
  {
    [v4 encodeObject:prerequisiteProductVersion forKey:@"PrerequisiteProductVersion"];
  }

  prerequisiteReleaseType = self->_prerequisiteReleaseType;
  if (prerequisiteReleaseType)
  {
    [v4 encodeObject:prerequisiteReleaseType forKey:@"PrerequisiteReleaseType"];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_prerequisiteReleaseTypeIsOverridden];
  [v4 encodeObject:v12 forKey:@"PrerequisiteReleaseTypeIsOverridden"];

  v13 = [(MAMsuDownloadOptions *)self liveAssetAudienceUUID];
  [v4 encodeObject:v13 forKey:@"LiveAssetAudienceUUID"];

  v14 = [(MAMsuDownloadOptions *)self purpose];
  [v4 encodeObject:v14 forKey:@"Purpose"];
}

- (id)encodeAsPlist
{
  v18.receiver = self;
  v18.super_class = MAMsuDownloadOptions;
  v3 = [(MADownloadOptions *)&v18 encodeAsPlist];
  v4 = v3;
  requestedProductVersion = self->_requestedProductVersion;
  if (requestedProductVersion)
  {
    [v3 setValue:requestedProductVersion forKey:@"RequestedProductVersion"];
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

  v14 = [(MADownloadOptions *)self downloadAuthorizationHeader];
  [v4 setValue:v14 forKey:@"DownloadAuthorizationHeader"];

  v15 = [(MAMsuDownloadOptions *)self liveAssetAudienceUUID];
  [v4 setValue:v15 forKey:@"LiveAssetAudienceUUID"];

  v16 = [(MAMsuDownloadOptions *)self purpose];
  [v4 setValue:v16 forKey:@"Purpose"];

  return v4;
}

@end