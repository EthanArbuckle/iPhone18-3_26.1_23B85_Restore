@interface MEMessageEncodingResult
- (MEMessageEncodingResult)initWithCoder:(id)coder;
- (MEMessageEncodingResult)initWithEncodedMessage:(MEEncodedOutgoingMessage *)encodedMessage signingError:(NSError *)signingError encryptionError:(NSError *)encryptionError;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MEMessageEncodingResult

- (MEMessageEncodingResult)initWithEncodedMessage:(MEEncodedOutgoingMessage *)encodedMessage signingError:(NSError *)signingError encryptionError:(NSError *)encryptionError
{
  v9 = encodedMessage;
  v10 = signingError;
  v11 = encryptionError;
  v15.receiver = self;
  v15.super_class = MEMessageEncodingResult;
  v12 = [(MEMessageEncodingResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_encodedMessage, encodedMessage);
    objc_storeStrong(&v13->_signingError, signingError);
    objc_storeStrong(&v13->_encryptionError, encryptionError);
  }

  return v13;
}

- (MEMessageEncodingResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_encodedMessage"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_signingError"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_encryptionError"];
  v8 = [(MEMessageEncodingResult *)self initWithEncodedMessage:v5 signingError:v6 encryptionError:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodedMessage = [(MEMessageEncodingResult *)self encodedMessage];
  [coderCopy encodeObject:encodedMessage forKey:@"EFPropertyKey_encodedMessage"];

  signingError = [(MEMessageEncodingResult *)self signingError];
  [coderCopy encodeObject:signingError forKey:@"EFPropertyKey_signingError"];

  encryptionError = [(MEMessageEncodingResult *)self encryptionError];
  [coderCopy encodeObject:encryptionError forKey:@"EFPropertyKey_encryptionError"];
}

@end