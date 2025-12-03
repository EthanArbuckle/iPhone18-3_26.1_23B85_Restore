@interface MEOutgoingMessageEncodingStatus
- (MEOutgoingMessageEncodingStatus)initWithCanSign:(BOOL)canSign canEncrypt:(BOOL)canEncrypt securityError:(NSError *)securityError addressesFailingEncryption:(NSArray *)addressesFailingEncryption;
- (MEOutgoingMessageEncodingStatus)initWithCanSign:(BOOL)sign canEncrypt:(BOOL)encrypt shouldSign:(BOOL)shouldSign shouldEncrypt:(BOOL)shouldEncrypt securityError:(id)error addressesFailingEncryption:(id)encryption;
- (MEOutgoingMessageEncodingStatus)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (MEOutgoingMessageEncodingStatus)initWithCanSign:(BOOL)sign canEncrypt:(BOOL)encrypt shouldSign:(BOOL)shouldSign shouldEncrypt:(BOOL)shouldEncrypt securityError:(id)error addressesFailingEncryption:(id)encryption
{
  errorCopy = error;
  encryptionCopy = encryption;
  v20.receiver = self;
  v20.super_class = MEOutgoingMessageEncodingStatus;
  v17 = [(MEOutgoingMessageEncodingStatus *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_canSign = sign;
    v17->_canEncrypt = encrypt;
    v17->_shouldSign = shouldSign;
    v17->_shouldEncrypt = shouldEncrypt;
    objc_storeStrong(&v17->_securityError, error);
    objc_storeStrong(&v18->_addressesFailingEncryption, encryption);
  }

  return v18;
}

- (MEOutgoingMessageEncodingStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"EFPropertyKey_canSign"];
  v6 = [coderCopy decodeBoolForKey:@"EFPropertyKey_canEncrypt"];
  v7 = [coderCopy decodeBoolForKey:@"EFPropertyKey_shouldSign"];
  v8 = [coderCopy decodeBoolForKey:@"EFPropertyKey_shouldEncrypt"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_securityError"];
  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"EFPropertyKey_addressesFailingEncryption"];

  v14 = [(MEOutgoingMessageEncodingStatus *)self initWithCanSign:v5 canEncrypt:v6 shouldSign:v7 shouldEncrypt:v8 securityError:v9 addressesFailingEncryption:v13];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[MEOutgoingMessageEncodingStatus canSign](self forKey:{"canSign"), @"EFPropertyKey_canSign"}];
  [coderCopy encodeBool:-[MEOutgoingMessageEncodingStatus canEncrypt](self forKey:{"canEncrypt"), @"EFPropertyKey_canEncrypt"}];
  [coderCopy encodeBool:-[MEOutgoingMessageEncodingStatus shouldSign](self forKey:{"shouldSign"), @"EFPropertyKey_shouldSign"}];
  [coderCopy encodeBool:-[MEOutgoingMessageEncodingStatus shouldEncrypt](self forKey:{"shouldEncrypt"), @"EFPropertyKey_shouldEncrypt"}];
  securityError = [(MEOutgoingMessageEncodingStatus *)self securityError];
  [coderCopy encodeObject:securityError forKey:@"EFPropertyKey_securityError"];

  addressesFailingEncryption = [(MEOutgoingMessageEncodingStatus *)self addressesFailingEncryption];
  [coderCopy encodeObject:addressesFailingEncryption forKey:@"EFPropertyKey_addressesFailingEncryption"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  canSign = [(MEOutgoingMessageEncodingStatus *)self canSign];
  canEncrypt = [(MEOutgoingMessageEncodingStatus *)self canEncrypt];
  securityError = [(MEOutgoingMessageEncodingStatus *)self securityError];
  ef_publicDescription = [securityError ef_publicDescription];
  addressesFailingEncryption = [(MEOutgoingMessageEncodingStatus *)self addressesFailingEncryption];
  v10 = [v3 stringWithFormat:@"%@: canSign: %d, canEncrypt: %d, securityError: %@, addressesFailingEncryption: %lu", v4, canSign, canEncrypt, ef_publicDescription, objc_msgSend(addressesFailingEncryption, "count")];

  return v10;
}

@end