@interface MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo
- (MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo)initWithCoder:(id)coder;
- (MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo)initWithEstimatedEvictableBytes:(unint64_t)bytes;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo

- (MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo)initWithEstimatedEvictableBytes:(unint64_t)bytes
{
  v5.receiver = self;
  v5.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo;
  result = [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v5 init];
  if (result)
  {
    result->_estimatedEvictableBytes = bytes;
  }

  return result;
}

- (MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo;
  v5 = [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_estimatedEvictableBytes = [coderCopy decodeIntegerForKey:@"estimatedEvictableBytes"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo;
  coderCopy = coder;
  [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo estimatedEvictableBytes](self forKey:{"estimatedEvictableBytes", v5.receiver, v5.super_class), @"estimatedEvictableBytes"}];
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo;
  summary = [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v7 summary];
  v5 = [v3 stringWithFormat:@"%@|estimatedEvictableBytes:%llu", summary, -[MAAutoAssetSuspendResumeForSoftwareUpdateEstimateEvictableBytesResponseInfo estimatedEvictableBytes](self, "estimatedEvictableBytes")];

  return v5;
}

@end