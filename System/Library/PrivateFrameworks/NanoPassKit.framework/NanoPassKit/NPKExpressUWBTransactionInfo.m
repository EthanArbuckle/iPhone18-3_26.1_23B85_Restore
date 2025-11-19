@interface NPKExpressUWBTransactionInfo
- (NPKExpressUWBTransactionInfo)initWithReaderID:(id)a3 lockStatus:(id)a4 timestamp:(id)a5;
- (id)description;
@end

@implementation NPKExpressUWBTransactionInfo

- (NPKExpressUWBTransactionInfo)initWithReaderID:(id)a3 lockStatus:(id)a4 timestamp:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = NPKExpressUWBTransactionInfo;
  v12 = [(NPKExpressUWBTransactionInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_readerID, a3);
    objc_storeStrong(&v13->_lockStatus, a4);
    objc_storeStrong(&v13->_timestamp, a5);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NPKExpressUWBTransactionInfo *)self readerID];
  v6 = [(NPKExpressUWBTransactionInfo *)self lockStatus];
  v7 = [(NPKExpressUWBTransactionInfo *)self timestamp];
  v8 = [v3 stringWithFormat:@"<%@: %p\n\treaderID: %@\n\tlockStatus: %@\n\ttimestamp: %@\n>", v4, self, v5, v6, v7];

  return v8;
}

@end