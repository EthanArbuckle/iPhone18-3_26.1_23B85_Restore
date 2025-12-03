@interface HMDUserCloudShareEstablishShareRequest
- (HMDUser)fromUser;
- (HMDUser)toUser;
- (HMDUserCloudShareEstablishShareRequest)initWithHome:(id)home fromUser:(id)user toUser:(id)toUser encodedShareURL:(id)l shareToken:(id)token containerID:(id)d currentDate:(id)date completion:(id)self0;
- (id)description;
@end

@implementation HMDUserCloudShareEstablishShareRequest

- (HMDUser)toUser
{
  WeakRetained = objc_loadWeakRetained(&self->_toUser);

  return WeakRetained;
}

- (HMDUser)fromUser
{
  WeakRetained = objc_loadWeakRetained(&self->_fromUser);

  return WeakRetained;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(HMDUserCloudShareRequest *)self identifier];
  containerID = [(HMDUserCloudShareRequest *)self containerID];
  startDate = [(HMDUserCloudShareRequest *)self startDate];
  v7 = [v3 stringWithFormat:@"<HMDUserCloudShareEstablishShareRequest id = %@, container = %@, startDate = %@>", identifier, containerID, startDate];

  return v7;
}

- (HMDUserCloudShareEstablishShareRequest)initWithHome:(id)home fromUser:(id)user toUser:(id)toUser encodedShareURL:(id)l shareToken:(id)token containerID:(id)d currentDate:(id)date completion:(id)self0
{
  userCopy = user;
  toUserCopy = toUser;
  lCopy = l;
  tokenCopy = token;
  completionCopy = completion;
  v26.receiver = self;
  v26.super_class = HMDUserCloudShareEstablishShareRequest;
  v20 = [(HMDUserCloudShareRequest *)&v26 initWithStartDate:date containerID:d home:home];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_fromUser, userCopy);
    objc_storeWeak(&v21->_toUser, toUserCopy);
    objc_storeStrong(&v21->_encodedShareURL, l);
    objc_storeStrong(&v21->_shareToken, token);
    v22 = [completionCopy copy];
    completion = v21->_completion;
    v21->_completion = v22;
  }

  return v21;
}

@end