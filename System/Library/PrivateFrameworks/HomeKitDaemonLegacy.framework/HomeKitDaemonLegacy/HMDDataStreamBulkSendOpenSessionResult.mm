@interface HMDDataStreamBulkSendOpenSessionResult
- (HMDDataStreamBulkSendOpenSessionResult)initWithSession:(id)session payload:(id)payload;
- (id)attributeDescriptions;
@end

@implementation HMDDataStreamBulkSendOpenSessionResult

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  session = [(HMDDataStreamBulkSendOpenSessionResult *)self session];
  v5 = [v3 initWithName:@"session" value:session];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  payload = [(HMDDataStreamBulkSendOpenSessionResult *)self payload];
  v8 = [v6 initWithName:@"payload" value:payload];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDDataStreamBulkSendOpenSessionResult)initWithSession:(id)session payload:(id)payload
{
  sessionCopy = session;
  payloadCopy = payload;
  v12.receiver = self;
  v12.super_class = HMDDataStreamBulkSendOpenSessionResult;
  v9 = [(HMDDataStreamBulkSendOpenSessionResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_session, session);
    objc_storeStrong(&v10->_payload, payload);
  }

  return v10;
}

@end