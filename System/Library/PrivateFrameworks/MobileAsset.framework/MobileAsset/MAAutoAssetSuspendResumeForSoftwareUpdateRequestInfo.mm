@interface MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo
- (MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo)init;
- (MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo)initWithCoder:(id)coder;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo

- (MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo)init
{
  v3.receiver = self;
  v3.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo;
  return [(MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo *)&v3 init];
}

- (MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo;
  return [(MAAutoAssetSuspendResumeForSoftwareUpdateInfo *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo;
  [(MAAutoAssetSuspendResumeForSoftwareUpdateInfo *)&v3 encodeWithCoder:coder];
}

- (id)summary
{
  v2 = MEMORY[0x1E696AEC0];
  v6.receiver = self;
  v6.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo;
  summary = [(MAAutoAssetSuspendResumeForSoftwareUpdateInfo *)&v6 summary];
  v4 = [v2 stringWithFormat:@"%@|request", summary];

  return v4;
}

@end