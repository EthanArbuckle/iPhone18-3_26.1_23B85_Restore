@interface HMDUserCloudShareEstablishShareRequest
- (HMDUser)fromUser;
- (HMDUser)toUser;
- (HMDUserCloudShareEstablishShareRequest)initWithHome:(id)a3 fromUser:(id)a4 toUser:(id)a5 encodedShareURL:(id)a6 shareToken:(id)a7 containerID:(id)a8 currentDate:(id)a9 completion:(id)a10;
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
  v4 = [(HMDUserCloudShareRequest *)self identifier];
  v5 = [(HMDUserCloudShareRequest *)self containerID];
  v6 = [(HMDUserCloudShareRequest *)self startDate];
  v7 = [v3 stringWithFormat:@"<HMDUserCloudShareEstablishShareRequest id = %@, container = %@, startDate = %@>", v4, v5, v6];

  return v7;
}

- (HMDUserCloudShareEstablishShareRequest)initWithHome:(id)a3 fromUser:(id)a4 toUser:(id)a5 encodedShareURL:(id)a6 shareToken:(id)a7 containerID:(id)a8 currentDate:(id)a9 completion:(id)a10
{
  v16 = a4;
  v17 = a5;
  v25 = a6;
  v18 = a7;
  v19 = a10;
  v26.receiver = self;
  v26.super_class = HMDUserCloudShareEstablishShareRequest;
  v20 = [(HMDUserCloudShareRequest *)&v26 initWithStartDate:a9 containerID:a8 home:a3];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_fromUser, v16);
    objc_storeWeak(&v21->_toUser, v17);
    objc_storeStrong(&v21->_encodedShareURL, a6);
    objc_storeStrong(&v21->_shareToken, a7);
    v22 = [v19 copy];
    completion = v21->_completion;
    v21->_completion = v22;
  }

  return v21;
}

@end