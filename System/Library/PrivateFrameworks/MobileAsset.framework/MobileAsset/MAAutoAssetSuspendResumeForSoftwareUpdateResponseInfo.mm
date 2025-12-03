@interface MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo
- (MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo)init;
- (MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo)initWithCoder:(id)coder;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo

- (MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo)init
{
  v3.receiver = self;
  v3.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo;
  return [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v3 init];
}

- (MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo;
  return [(MAAutoAssetSuspendResumeForSoftwareUpdateInfo *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo;
  [(MAAutoAssetSuspendResumeForSoftwareUpdateInfo *)&v3 encodeWithCoder:coder];
}

- (id)summary
{
  v2 = MEMORY[0x1E696AEC0];
  v6.receiver = self;
  v6.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo;
  summary = [(MAAutoAssetSuspendResumeForSoftwareUpdateInfo *)&v6 summary];
  v4 = [v2 stringWithFormat:@"%@|response", summary];

  return v4;
}

@end