@interface MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo
- (MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo)initWithCoder:(id)a3;
- (MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo)initWithStatus:(int64_t)a3;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo

- (MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo)initWithStatus:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo;
  result = [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v5 init];
  if (result)
  {
    result->_status = a3;
  }

  return result;
}

- (MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo;
  v5 = [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_status = [v4 decodeIntegerForKey:@"status"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo;
  v4 = a3;
  [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo status](self forKey:{"status", v5.receiver, v5.super_class), @"status"}];
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo;
  v4 = [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v8 summary];
  v5 = MAAutoAssetSuspendResumeForSoftwareUpdateStatusString([(MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo *)self status]);
  v6 = [v3 stringWithFormat:@"%@|status:%@", v4, v5];

  return v6;
}

@end