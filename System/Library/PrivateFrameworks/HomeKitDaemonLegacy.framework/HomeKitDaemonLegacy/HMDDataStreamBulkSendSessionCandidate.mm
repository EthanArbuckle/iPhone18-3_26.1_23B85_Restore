@interface HMDDataStreamBulkSendSessionCandidate
- (HMDDataStreamBulkSendProtocol)bulkSendProtocol;
- (HMDDataStreamBulkSendSessionCandidate)initWithProtocol:(id)a3 requestHeader:(id)a4 metadata:(id)a5;
- (void)acceptBulkSendSessionOnQueue:(id)a3 callback:(id)a4;
@end

@implementation HMDDataStreamBulkSendSessionCandidate

- (HMDDataStreamBulkSendProtocol)bulkSendProtocol
{
  WeakRetained = objc_loadWeakRetained(&self->_bulkSendProtocol);

  return WeakRetained;
}

- (void)acceptBulkSendSessionOnQueue:(id)a3 callback:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDDataStreamBulkSendSessionCandidate *)self bulkSendProtocol];
  [v8 asyncBulkSendSessionCandidate:self didAcceptOnQueue:v7 callback:v6];
}

- (HMDDataStreamBulkSendSessionCandidate)initWithProtocol:(id)a3 requestHeader:(id)a4 metadata:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = HMDDataStreamBulkSendSessionCandidate;
  v11 = [(HMDDataStreamBulkSendSessionCandidate *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_bulkSendProtocol, v8);
    objc_storeStrong(&v12->_requestHeader, a4);
    v13 = [MEMORY[0x277CBEB18] array];
    pendingReads = v12->_pendingReads;
    v12->_pendingReads = v13;

    objc_storeStrong(&v12->_metadata, a5);
  }

  return v12;
}

@end