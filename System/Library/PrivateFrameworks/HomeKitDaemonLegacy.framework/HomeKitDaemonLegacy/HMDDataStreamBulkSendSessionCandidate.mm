@interface HMDDataStreamBulkSendSessionCandidate
- (HMDDataStreamBulkSendProtocol)bulkSendProtocol;
- (HMDDataStreamBulkSendSessionCandidate)initWithProtocol:(id)protocol requestHeader:(id)header metadata:(id)metadata;
- (void)acceptBulkSendSessionOnQueue:(id)queue callback:(id)callback;
@end

@implementation HMDDataStreamBulkSendSessionCandidate

- (HMDDataStreamBulkSendProtocol)bulkSendProtocol
{
  WeakRetained = objc_loadWeakRetained(&self->_bulkSendProtocol);

  return WeakRetained;
}

- (void)acceptBulkSendSessionOnQueue:(id)queue callback:(id)callback
{
  callbackCopy = callback;
  queueCopy = queue;
  bulkSendProtocol = [(HMDDataStreamBulkSendSessionCandidate *)self bulkSendProtocol];
  [bulkSendProtocol asyncBulkSendSessionCandidate:self didAcceptOnQueue:queueCopy callback:callbackCopy];
}

- (HMDDataStreamBulkSendSessionCandidate)initWithProtocol:(id)protocol requestHeader:(id)header metadata:(id)metadata
{
  protocolCopy = protocol;
  headerCopy = header;
  metadataCopy = metadata;
  v16.receiver = self;
  v16.super_class = HMDDataStreamBulkSendSessionCandidate;
  v11 = [(HMDDataStreamBulkSendSessionCandidate *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_bulkSendProtocol, protocolCopy);
    objc_storeStrong(&v12->_requestHeader, header);
    array = [MEMORY[0x277CBEB18] array];
    pendingReads = v12->_pendingReads;
    v12->_pendingReads = array;

    objc_storeStrong(&v12->_metadata, metadata);
  }

  return v12;
}

@end