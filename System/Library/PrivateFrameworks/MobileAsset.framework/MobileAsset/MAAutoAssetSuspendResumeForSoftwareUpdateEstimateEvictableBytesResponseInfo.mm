@interface MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo
- (MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo)initWithCoder:(id)a3;
- (MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo)initWithEstimatedEvictableBytes:(unint64_t)a3;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo

- (MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo)initWithEstimatedEvictableBytes:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo;
  result = [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v5 init];
  if (result)
  {
    result->_estimatedEvictableBytes = a3;
  }

  return result;
}

- (MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo;
  v5 = [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_estimatedEvictableBytes = [v4 decodeIntegerForKey:@"estimatedEvictableBytes"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo;
  v4 = a3;
  [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo estimatedEvictableBytes](self forKey:{"estimatedEvictableBytes", v5.receiver, v5.super_class), @"estimatedEvictableBytes"}];
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo;
  v4 = [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v7 summary];
  v5 = [v3 stringWithFormat:@"%@|estimatedEvictableBytes:%llu", v4, -[MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo estimatedEvictableBytes](self, "estimatedEvictableBytes")];

  return v5;
}

@end