@interface HMDDataStreamBulkSendOpenSessionResult
- (HMDDataStreamBulkSendOpenSessionResult)initWithSession:(id)a3 payload:(id)a4;
- (id)attributeDescriptions;
@end

@implementation HMDDataStreamBulkSendOpenSessionResult

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDDataStreamBulkSendOpenSessionResult *)self session];
  v5 = [v3 initWithName:@"session" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDDataStreamBulkSendOpenSessionResult *)self payload];
  v8 = [v6 initWithName:@"payload" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDDataStreamBulkSendOpenSessionResult)initWithSession:(id)a3 payload:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDDataStreamBulkSendOpenSessionResult;
  v9 = [(HMDDataStreamBulkSendOpenSessionResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, a3);
    objc_storeStrong(&v10->_payload, a4);
  }

  return v10;
}

@end