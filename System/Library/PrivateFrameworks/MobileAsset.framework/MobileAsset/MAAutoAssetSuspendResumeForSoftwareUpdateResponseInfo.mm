@interface MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo
- (MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo)init;
- (MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo)initWithCoder:(id)a3;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo

- (MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo)init
{
  v3.receiver = self;
  v3.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo;
  return [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v3 init];
}

- (MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo;
  return [(MAAutoAssetSuspendResumeForSoftwareUpdateInfo *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo;
  [(MAAutoAssetSuspendResumeForSoftwareUpdateInfo *)&v3 encodeWithCoder:a3];
}

- (id)summary
{
  v2 = MEMORY[0x1E696AEC0];
  v6.receiver = self;
  v6.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo;
  v3 = [(MAAutoAssetSuspendResumeForSoftwareUpdateInfo *)&v6 summary];
  v4 = [v2 stringWithFormat:@"%@|response", v3];

  return v4;
}

@end