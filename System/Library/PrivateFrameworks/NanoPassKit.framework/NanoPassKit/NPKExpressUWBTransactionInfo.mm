@interface NPKExpressUWBTransactionInfo
- (NPKExpressUWBTransactionInfo)initWithReaderID:(id)d lockStatus:(id)status timestamp:(id)timestamp;
- (id)description;
@end

@implementation NPKExpressUWBTransactionInfo

- (NPKExpressUWBTransactionInfo)initWithReaderID:(id)d lockStatus:(id)status timestamp:(id)timestamp
{
  dCopy = d;
  statusCopy = status;
  timestampCopy = timestamp;
  v15.receiver = self;
  v15.super_class = NPKExpressUWBTransactionInfo;
  v12 = [(NPKExpressUWBTransactionInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_readerID, d);
    objc_storeStrong(&v13->_lockStatus, status);
    objc_storeStrong(&v13->_timestamp, timestamp);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  readerID = [(NPKExpressUWBTransactionInfo *)self readerID];
  lockStatus = [(NPKExpressUWBTransactionInfo *)self lockStatus];
  timestamp = [(NPKExpressUWBTransactionInfo *)self timestamp];
  v8 = [v3 stringWithFormat:@"<%@: %p\n\treaderID: %@\n\tlockStatus: %@\n\ttimestamp: %@\n>", v4, self, readerID, lockStatus, timestamp];

  return v8;
}

@end