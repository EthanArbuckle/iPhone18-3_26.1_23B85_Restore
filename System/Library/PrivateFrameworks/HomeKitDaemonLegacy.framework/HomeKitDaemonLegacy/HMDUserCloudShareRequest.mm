@interface HMDUserCloudShareRequest
- (HMDHome)home;
- (HMDUserCloudShareRequest)initWithStartDate:(id)date containerID:(id)d home:(id)home;
@end

@implementation HMDUserCloudShareRequest

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (HMDUserCloudShareRequest)initWithStartDate:(id)date containerID:(id)d home:(id)home
{
  dateCopy = date;
  dCopy = d;
  homeCopy = home;
  v18.receiver = self;
  v18.super_class = HMDUserCloudShareRequest;
  v12 = [(HMDUserCloudShareRequest *)&v18 init];
  if (v12)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v12->_identifier;
    v12->_identifier = uUID;

    objc_storeStrong(&v12->_startDate, date);
    v15 = [dCopy copy];
    containerID = v12->_containerID;
    v12->_containerID = v15;

    objc_storeWeak(&v12->_home, homeCopy);
  }

  return v12;
}

@end