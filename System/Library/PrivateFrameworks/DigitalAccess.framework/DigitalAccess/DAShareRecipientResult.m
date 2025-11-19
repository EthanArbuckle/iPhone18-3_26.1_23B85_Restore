@interface DAShareRecipientResult
- (DAShareRecipientResult)initWithCoder:(id)a3;
- (id)description;
- (id)initCredentialProvisionedResultWithCredentialIdentifier:(id)a3 keyInformation:(id)a4;
- (id)initDataRequiredResultWithCredentialIdentifier:(id)a3 response:(id)a4 keyInformation:(id)a5;
- (id)initFailureResultWithCredentialIdentifier:(id)a3 error:(id)a4;
- (id)initPasscodeFailureResultWithCredentialIdentifier:(id)a3 retryCount:(unint64_t)a4;
- (id)initSharingCancelledResultWithResponse:(id)a3 error:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAShareRecipientResult

- (id)initCredentialProvisionedResultWithCredentialIdentifier:(id)a3 keyInformation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = DAShareRecipientResult;
  v9 = [(DAShareRecipientResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 2;
    objc_storeStrong(&v9->_credentialIdentifier, a3);
    objc_storeStrong(&v10->_keyInformation, a4);
    response = v10->_response;
    v10->_response = 0;

    error = v10->_error;
    v10->_error = 0;

    v10->_retryCount = 0;
  }

  return v10;
}

- (id)initDataRequiredResultWithCredentialIdentifier:(id)a3 response:(id)a4 keyInformation:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = DAShareRecipientResult;
  v12 = [(DAShareRecipientResult *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = 0;
    objc_storeStrong(&v12->_credentialIdentifier, a3);
    objc_storeStrong(&v13->_keyInformation, a5);
    objc_storeStrong(&v13->_response, a4);
    error = v13->_error;
    v13->_error = 0;

    v13->_retryCount = 0;
  }

  return v13;
}

- (id)initFailureResultWithCredentialIdentifier:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = DAShareRecipientResult;
  v9 = [(DAShareRecipientResult *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 3;
    objc_storeStrong(&v9->_credentialIdentifier, a3);
    keyInformation = v10->_keyInformation;
    v10->_keyInformation = 0;

    response = v10->_response;
    v10->_response = 0;

    v13 = kmlErrorToDAError(v8);
    error = v10->_error;
    v10->_error = v13;

    v10->_retryCount = 0;
  }

  return v10;
}

- (id)initPasscodeFailureResultWithCredentialIdentifier:(id)a3 retryCount:(unint64_t)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = DAShareRecipientResult;
  v8 = [(DAShareRecipientResult *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 1;
    objc_storeStrong(&v8->_credentialIdentifier, a3);
    keyInformation = v9->_keyInformation;
    v9->_keyInformation = 0;

    response = v9->_response;
    v9->_response = 0;

    error = v9->_error;
    v9->_error = 0;

    v9->_retryCount = a4;
  }

  return v9;
}

- (id)initSharingCancelledResultWithResponse:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = DAShareRecipientResult;
  v9 = [(DAShareRecipientResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    credentialIdentifier = v9->_credentialIdentifier;
    v9->_type = 4;
    v9->_credentialIdentifier = 0;

    keyInformation = v10->_keyInformation;
    v10->_keyInformation = 0;

    objc_storeStrong(&v10->_response, a3);
    objc_storeStrong(&v10->_error, a4);
    v10->_retryCount = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeInteger:-[DAShareRecipientResult type](self forKey:{"type"), @"type"}];
  v4 = [(DAShareRecipientResult *)self credentialIdentifier];
  [v8 encodeObject:v4 forKey:@"credentialIdentifier"];

  v5 = [(DAShareRecipientResult *)self keyInformation];
  [v8 encodeObject:v5 forKey:@"keyInformation"];

  v6 = [(DAShareRecipientResult *)self response];
  [v8 encodeObject:v6 forKey:@"response"];

  v7 = [(DAShareRecipientResult *)self error];
  [v8 encodeObject:v7 forKey:@"error"];

  [v8 encodeInteger:-[DAShareRecipientResult retryCount](self forKey:{"retryCount"), @"retryCount"}];
}

- (DAShareRecipientResult)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DAShareRecipientResult;
  v5 = [(DAShareRecipientResult *)&v15 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyInformation"];
    keyInformation = v5->_keyInformation;
    v5->_keyInformation = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"response"];
    response = v5->_response;
    v5->_response = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v12;

    v5->_retryCount = [v4 decodeIntegerForKey:@"retryCount"];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Type               : %ld\n", self->_type];
  [v3 appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Retry Count        : %ld\n", self->_retryCount];
  [v3 appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error              : %@\n", self->_error];
  [v3 appendString:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Response           : %@\n", self->_response];
  [v3 appendString:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key Information    : %@\n", self->_keyInformation];
  [v3 appendString:v8];

  return v3;
}

@end