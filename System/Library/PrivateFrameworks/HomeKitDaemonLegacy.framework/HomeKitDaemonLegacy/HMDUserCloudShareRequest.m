@interface HMDUserCloudShareRequest
- (HMDHome)home;
- (HMDUserCloudShareRequest)initWithStartDate:(id)a3 containerID:(id)a4 home:(id)a5;
@end

@implementation HMDUserCloudShareRequest

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDUserCloudShareRequest)initWithStartDate:(id)a3 containerID:(id)a4 home:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = HMDUserCloudShareRequest;
  v12 = [(HMDUserCloudShareRequest *)&v18 init];
  if (v12)
  {
    v13 = [MEMORY[0x277CCAD78] UUID];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    objc_storeStrong(&v12->_startDate, a3);
    v15 = [v10 copy];
    containerID = v12->_containerID;
    v12->_containerID = v15;

    objc_storeWeak(&v12->_home, v11);
  }

  return v12;
}

@end