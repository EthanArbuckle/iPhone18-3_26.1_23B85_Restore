@interface HMDUserCloudShareRepairRequest
- (HMDUserCloudShareRepairRequest)initWithStartDate:(id)a3 containerID:(id)a4 home:(id)a5 repairInfo:(id)a6;
- (id)description;
@end

@implementation HMDUserCloudShareRepairRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDUserCloudShareRequest *)self identifier];
  v5 = [(HMDUserCloudShareRequest *)self containerID];
  v6 = [(HMDUserCloudShareRequest *)self startDate];
  v7 = [v3 stringWithFormat:@"<HMDUserCloudShareRepairRequest id = %@, container = %@, startDate = %@>", v4, v5, v6];

  return v7;
}

- (HMDUserCloudShareRepairRequest)initWithStartDate:(id)a3 containerID:(id)a4 home:(id)a5 repairInfo:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = HMDUserCloudShareRepairRequest;
  v12 = [(HMDUserCloudShareRequest *)&v15 initWithStartDate:a3 containerID:a4 home:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_repairInfo, a6);
  }

  return v13;
}

@end