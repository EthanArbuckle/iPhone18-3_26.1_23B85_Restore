@interface MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo
- (MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo)initWithCoder:(id)coder;
- (MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo)initWithStatus:(int64_t)status;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo

- (MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo)initWithStatus:(int64_t)status
{
  v5.receiver = self;
  v5.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo;
  result = [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v5 init];
  if (result)
  {
    result->_status = status;
  }

  return result;
}

- (MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo;
  v5 = [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_status = [coderCopy decodeIntegerForKey:@"status"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo;
  coderCopy = coder;
  [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo status](self forKey:{"status", v5.receiver, v5.super_class), @"status"}];
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo;
  summary = [(MAAutoAssetSuspendResumeForSoftwareUpdateResponseInfo *)&v8 summary];
  v5 = MAAutoAssetSuspendResumeForSoftwareUpdateStatusString([(MAAutoAssetSuspendResumeForSoftwareUpdateStatusResponseInfo *)self status]);
  v6 = [v3 stringWithFormat:@"%@|status:%@", summary, v5];

  return v6;
}

@end