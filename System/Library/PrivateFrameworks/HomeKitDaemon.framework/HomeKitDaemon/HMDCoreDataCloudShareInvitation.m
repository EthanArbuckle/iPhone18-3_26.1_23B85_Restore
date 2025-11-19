@interface HMDCoreDataCloudShareInvitation
- (HMDCoreDataCloudShareInvitation)initWithURL:(id)a3 token:(id)a4;
- (NSDictionary)content;
@end

@implementation HMDCoreDataCloudShareInvitation

- (NSDictionary)content
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDCoreDataCloudShareInvitation *)self url];
  v8 = v3;
  v4 = [(HMDCoreDataCloudShareInvitation *)self token];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMDCoreDataCloudShareInvitation)initWithURL:(id)a3 token:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDCoreDataCloudShareInvitation;
  v9 = [(HMDCoreDataCloudShareInvitation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, a3);
    objc_storeStrong(&v10->_token, a4);
  }

  return v10;
}

@end