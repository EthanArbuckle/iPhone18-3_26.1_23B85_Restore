@interface HMDMROutputDeviceStatus
- (BOOL)isEqual:(id)equal;
- (HMDMROutputDeviceStatus)initWithOutputEndpoint:(id)endpoint error:(id)error;
- (HMDMROutputDeviceStatus)initWithOutputUID:(id)d error:(id)error;
- (unint64_t)hash;
@end

@implementation HMDMROutputDeviceStatus

- (unint64_t)hash
{
  outputUID = [(HMDMROutputDeviceStatus *)self outputUID];
  v4 = [outputUID hash];
  outputEndpoint = [(HMDMROutputDeviceStatus *)self outputEndpoint];
  v6 = [outputEndpoint hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      outputUID = [(HMDMROutputDeviceStatus *)self outputUID];
      outputUID2 = [(HMDMROutputDeviceStatus *)v5 outputUID];
      v8 = HMFEqualObjects();

      if (v8 && ([(HMDMROutputDeviceStatus *)self outputEndpoint], v9 = objc_claimAutoreleasedReturnValue(), [(HMDMROutputDeviceStatus *)v5 outputEndpoint], v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
      {
        error = [(HMDMROutputDeviceStatus *)self error];
        error2 = [(HMDMROutputDeviceStatus *)v5 error];
        v14 = HMFEqualObjects();
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (HMDMROutputDeviceStatus)initWithOutputEndpoint:(id)endpoint error:(id)error
{
  endpointCopy = endpoint;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = HMDMROutputDeviceStatus;
  v9 = [(HMDMROutputDeviceStatus *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_error, error);
    objc_storeStrong(&v10->_outputEndpoint, endpoint);
  }

  return v10;
}

- (HMDMROutputDeviceStatus)initWithOutputUID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = HMDMROutputDeviceStatus;
  v9 = [(HMDMROutputDeviceStatus *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_error, error);
    objc_storeStrong(&v10->_outputUID, d);
  }

  return v10;
}

@end