@interface MEMessageEncodingResult
- (MEMessageEncodingResult)initWithCoder:(id)a3;
- (MEMessageEncodingResult)initWithEncodedMessage:(MEEncodedOutgoingMessage *)encodedMessage signingError:(NSError *)signingError encryptionError:(NSError *)encryptionError;
- (void)encodeWithCoder:(id)a3;
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

- (MEMessageEncodingResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_encodedMessage"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_signingError"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_encryptionError"];
  v8 = [(MEMessageEncodingResult *)self initWithEncodedMessage:v5 signingError:v6 encryptionError:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(MEMessageEncodingResult *)self encodedMessage];
  [v7 encodeObject:v4 forKey:@"EFPropertyKey_encodedMessage"];

  v5 = [(MEMessageEncodingResult *)self signingError];
  [v7 encodeObject:v5 forKey:@"EFPropertyKey_signingError"];

  v6 = [(MEMessageEncodingResult *)self encryptionError];
  [v7 encodeObject:v6 forKey:@"EFPropertyKey_encryptionError"];
}

@end