@interface MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo
- (MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo)initWithCoder:(id)a3;
- (id)initWitNeededBytes:(unint64_t)a3;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo

- (id)initWitNeededBytes:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo;
  result = [(MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

- (MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo;
  v5 = [(MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_neededBytes = [v4 decodeIntegerForKey:@"neededBytes"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo;
  v4 = a3;
  [(MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo neededBytes](self forKey:{"neededBytes", v5.receiver, v5.super_class), @"neededBytes"}];
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo;
  v4 = [(MAAutoAssetSuspendResumeForSoftwareUpdateRequestInfo *)&v7 summary];
  v5 = [v3 stringWithFormat:@"%@|neededBytes:%llu", v4, -[MAAutoAssetSuspendResumeForSoftwareUpdateSuspendWithNeededBytesRequestInfo neededBytes](self, "neededBytes")];

  return v5;
}

@end