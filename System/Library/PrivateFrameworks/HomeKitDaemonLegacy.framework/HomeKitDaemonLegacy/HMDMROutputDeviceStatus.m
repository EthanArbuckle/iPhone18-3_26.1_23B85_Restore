@interface HMDMROutputDeviceStatus
- (BOOL)isEqual:(id)a3;
- (HMDMROutputDeviceStatus)initWithOutputEndpoint:(id)a3 error:(id)a4;
- (HMDMROutputDeviceStatus)initWithOutputUID:(id)a3 error:(id)a4;
- (unint64_t)hash;
@end

@implementation HMDMROutputDeviceStatus

- (unint64_t)hash
{
  v3 = [(HMDMROutputDeviceStatus *)self outputUID];
  v4 = [v3 hash];
  v5 = [(HMDMROutputDeviceStatus *)self outputEndpoint];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HMDMROutputDeviceStatus *)self outputUID];
      v7 = [(HMDMROutputDeviceStatus *)v5 outputUID];
      v8 = HMFEqualObjects();

      if (v8 && ([(HMDMROutputDeviceStatus *)self outputEndpoint], v9 = objc_claimAutoreleasedReturnValue(), [(HMDMROutputDeviceStatus *)v5 outputEndpoint], v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
      {
        v12 = [(HMDMROutputDeviceStatus *)self error];
        v13 = [(HMDMROutputDeviceStatus *)v5 error];
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

- (HMDMROutputDeviceStatus)initWithOutputEndpoint:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDMROutputDeviceStatus;
  v9 = [(HMDMROutputDeviceStatus *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_error, a4);
    objc_storeStrong(&v10->_outputEndpoint, a3);
  }

  return v10;
}

- (HMDMROutputDeviceStatus)initWithOutputUID:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDMROutputDeviceStatus;
  v9 = [(HMDMROutputDeviceStatus *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_error, a4);
    objc_storeStrong(&v10->_outputUID, a3);
  }

  return v10;
}

@end