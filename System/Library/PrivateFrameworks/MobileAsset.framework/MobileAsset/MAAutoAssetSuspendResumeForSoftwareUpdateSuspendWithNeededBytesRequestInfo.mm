@interface MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo
- (MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo)initWithCoder:(id)coder;
- (id)initWitNeededBytes:(unint64_t)bytes;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo

- (id)initWitNeededBytes:(unint64_t)bytes
{
  v5.receiver = self;
  v5.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo;
  result = [(MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo *)&v5 init];
  if (result)
  {
    *(result + 1) = bytes;
  }

  return result;
}

- (MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo;
  v5 = [(MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_neededBytes = [coderCopy decodeIntegerForKey:@"neededBytes"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo;
  coderCopy = coder;
  [(MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo neededBytes](self forKey:{"neededBytes", v5.receiver, v5.super_class), @"neededBytes"}];
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo;
  summary = [(MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo *)&v7 summary];
  v5 = [v3 stringWithFormat:@"%@|neededBytes:%llu", summary, -[MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo neededBytes](self, "neededBytes")];

  return v5;
}

@end