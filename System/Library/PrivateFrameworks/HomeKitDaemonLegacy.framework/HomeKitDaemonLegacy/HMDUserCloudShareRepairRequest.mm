@interface HMDUserCloudShareRepairRequest
- (HMDUserCloudShareRepairRequest)initWithStartDate:(id)date containerID:(id)d home:(id)home repairInfo:(id)info;
- (id)description;
@end

@implementation HMDUserCloudShareRepairRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(HMDUserCloudShareRequest *)self identifier];
  containerID = [(HMDUserCloudShareRequest *)self containerID];
  startDate = [(HMDUserCloudShareRequest *)self startDate];
  v7 = [v3 stringWithFormat:@"<HMDUserCloudShareRepairRequest id = %@, container = %@, startDate = %@>", identifier, containerID, startDate];

  return v7;
}

- (HMDUserCloudShareRepairRequest)initWithStartDate:(id)date containerID:(id)d home:(id)home repairInfo:(id)info
{
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = HMDUserCloudShareRepairRequest;
  v12 = [(HMDUserCloudShareRequest *)&v15 initWithStartDate:date containerID:d home:home];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_repairInfo, info);
  }

  return v13;
}

@end