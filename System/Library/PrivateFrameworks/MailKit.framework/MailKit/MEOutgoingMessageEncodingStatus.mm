@interface MEOutgoingMessageEncodingStatus
- (MEOutgoingMessageEncodingStatus)initWithCanSign:(BOOL)a3 canEncrypt:(BOOL)a4 shouldSign:(BOOL)a5 shouldEncrypt:(BOOL)a6 securityError:(id)a7 addressesFailingEncryption:(id)a8;
- (MEOutgoingMessageEncodingStatus)initWithCanSign:(BOOL)canSign canEncrypt:(BOOL)canEncrypt securityError:(NSError *)securityError addressesFailingEncryption:(NSArray *)addressesFailingEncryption;
- (MEOutgoingMessageEncodingStatus)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MEOutgoingMessageEncodingStatus

- (MEOutgoingMessageEncodingStatus)initWithCanSign:(BOOL)canSign canEncrypt:(BOOL)canEncrypt securityError:(NSError *)securityError addressesFailingEncryption:(NSArray *)addressesFailingEncryption
{
  v11 = securityError;
  v12 = addressesFailingEncryption;
  v16.receiver = self;
  v16.super_class = MEOutgoingMessageEncodingStatus;
  v13 = [(MEOutgoingMessageEncodingStatus *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_canSign = canSign;
    v13->_canEncrypt = canEncrypt;
    objc_storeStrong(&v13->_securityError, securityError);
    objc_storeStrong(&v14->_addressesFailingEncryption, addressesFailingEncryption);
  }

  return v14;
}

- (MEOutgoingMessageEncodingStatus)initWithCanSign:(BOOL)a3 canEncrypt:(BOOL)a4 shouldSign:(BOOL)a5 shouldEncrypt:(BOOL)a6 securityError:(id)a7 addressesFailingEncryption:(id)a8
{
  v15 = a7;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = MEOutgoingMessageEncodingStatus;
  v17 = [(MEOutgoingMessageEncodingStatus *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_canSign = a3;
    v17->_canEncrypt = a4;
    v17->_shouldSign = a5;
    v17->_shouldEncrypt = a6;
    objc_storeStrong(&v17->_securityError, a7);
    objc_storeStrong(&v18->_addressesFailingEncryption, a8);
  }

  return v18;
}

- (MEOutgoingMessageEncodingStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"EFPropertyKey_canSign"];
  v6 = [v4 decodeBoolForKey:@"EFPropertyKey_canEncrypt"];
  v7 = [v4 decodeBoolForKey:@"EFPropertyKey_shouldSign"];
  v8 = [v4 decodeBoolForKey:@"EFPropertyKey_shouldEncrypt"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_securityError"];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"EFPropertyKey_addressesFailingEncryption"];

  v14 = [(MEOutgoingMessageEncodingStatus *)self initWithCanSign:v5 canEncrypt:v6 shouldSign:v7 shouldEncrypt:v8 securityError:v9 addressesFailingEncryption:v13];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeBool:-[MEOutgoingMessageEncodingStatus canSign](self forKey:{"canSign"), @"EFPropertyKey_canSign"}];
  [v6 encodeBool:-[MEOutgoingMessageEncodingStatus canEncrypt](self forKey:{"canEncrypt"), @"EFPropertyKey_canEncrypt"}];
  [v6 encodeBool:-[MEOutgoingMessageEncodingStatus shouldSign](self forKey:{"shouldSign"), @"EFPropertyKey_shouldSign"}];
  [v6 encodeBool:-[MEOutgoingMessageEncodingStatus shouldEncrypt](self forKey:{"shouldEncrypt"), @"EFPropertyKey_shouldEncrypt"}];
  v4 = [(MEOutgoingMessageEncodingStatus *)self securityError];
  [v6 encodeObject:v4 forKey:@"EFPropertyKey_securityError"];

  v5 = [(MEOutgoingMessageEncodingStatus *)self addressesFailingEncryption];
  [v6 encodeObject:v5 forKey:@"EFPropertyKey_addressesFailingEncryption"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(MEOutgoingMessageEncodingStatus *)self canSign];
  v6 = [(MEOutgoingMessageEncodingStatus *)self canEncrypt];
  v7 = [(MEOutgoingMessageEncodingStatus *)self securityError];
  v8 = [v7 ef_publicDescription];
  v9 = [(MEOutgoingMessageEncodingStatus *)self addressesFailingEncryption];
  v10 = [v3 stringWithFormat:@"%@: canSign: %d, canEncrypt: %d, securityError: %@, addressesFailingEncryption: %lu", v4, v5, v6, v8, objc_msgSend(v9, "count")];

  return v10;
}

@end