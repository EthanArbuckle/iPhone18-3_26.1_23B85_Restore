@interface DAShareRecipientResult
- (DAShareRecipientResult)initWithCoder:(id)coder;
- (id)description;
- (id)initCredentialProvisionedResultWithCredentialIdentifier:(id)identifier keyInformation:(id)information;
- (id)initDataRequiredResultWithCredentialIdentifier:(id)identifier response:(id)response keyInformation:(id)information;
- (id)initFailureResultWithCredentialIdentifier:(id)identifier error:(id)error;
- (id)initPasscodeFailureResultWithCredentialIdentifier:(id)identifier retryCount:(unint64_t)count;
- (id)initSharingCancelledResultWithResponse:(id)response error:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAShareRecipientResult

- (id)initCredentialProvisionedResultWithCredentialIdentifier:(id)identifier keyInformation:(id)information
{
  identifierCopy = identifier;
  informationCopy = information;
  v14.receiver = self;
  v14.super_class = DAShareRecipientResult;
  v9 = [(DAShareRecipientResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 2;
    objc_storeStrong(&v9->_credentialIdentifier, identifier);
    objc_storeStrong(&v10->_keyInformation, information);
    response = v10->_response;
    v10->_response = 0;

    error = v10->_error;
    v10->_error = 0;

    v10->_retryCount = 0;
  }

  return v10;
}

- (id)initDataRequiredResultWithCredentialIdentifier:(id)identifier response:(id)response keyInformation:(id)information
{
  identifierCopy = identifier;
  responseCopy = response;
  informationCopy = information;
  v16.receiver = self;
  v16.super_class = DAShareRecipientResult;
  v12 = [(DAShareRecipientResult *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_type = 0;
    objc_storeStrong(&v12->_credentialIdentifier, identifier);
    objc_storeStrong(&v13->_keyInformation, information);
    objc_storeStrong(&v13->_response, response);
    error = v13->_error;
    v13->_error = 0;

    v13->_retryCount = 0;
  }

  return v13;
}

- (id)initFailureResultWithCredentialIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v16.receiver = self;
  v16.super_class = DAShareRecipientResult;
  v9 = [(DAShareRecipientResult *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 3;
    objc_storeStrong(&v9->_credentialIdentifier, identifier);
    keyInformation = v10->_keyInformation;
    v10->_keyInformation = 0;

    response = v10->_response;
    v10->_response = 0;

    v13 = kmlErrorToDAError(errorCopy);
    error = v10->_error;
    v10->_error = v13;

    v10->_retryCount = 0;
  }

  return v10;
}

- (id)initPasscodeFailureResultWithCredentialIdentifier:(id)identifier retryCount:(unint64_t)count
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = DAShareRecipientResult;
  v8 = [(DAShareRecipientResult *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = 1;
    objc_storeStrong(&v8->_credentialIdentifier, identifier);
    keyInformation = v9->_keyInformation;
    v9->_keyInformation = 0;

    response = v9->_response;
    v9->_response = 0;

    error = v9->_error;
    v9->_error = 0;

    v9->_retryCount = count;
  }

  return v9;
}

- (id)initSharingCancelledResultWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
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

    objc_storeStrong(&v10->_response, response);
    objc_storeStrong(&v10->_error, error);
    v10->_retryCount = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[DAShareRecipientResult type](self forKey:{"type"), @"type"}];
  credentialIdentifier = [(DAShareRecipientResult *)self credentialIdentifier];
  [coderCopy encodeObject:credentialIdentifier forKey:@"credentialIdentifier"];

  keyInformation = [(DAShareRecipientResult *)self keyInformation];
  [coderCopy encodeObject:keyInformation forKey:@"keyInformation"];

  response = [(DAShareRecipientResult *)self response];
  [coderCopy encodeObject:response forKey:@"response"];

  error = [(DAShareRecipientResult *)self error];
  [coderCopy encodeObject:error forKey:@"error"];

  [coderCopy encodeInteger:-[DAShareRecipientResult retryCount](self forKey:{"retryCount"), @"retryCount"}];
}

- (DAShareRecipientResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = DAShareRecipientResult;
  v5 = [(DAShareRecipientResult *)&v15 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyInformation"];
    keyInformation = v5->_keyInformation;
    v5->_keyInformation = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"response"];
    response = v5->_response;
    v5->_response = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v12;

    v5->_retryCount = [coderCopy decodeIntegerForKey:@"retryCount"];
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Type               : %ld\n", self->_type];
  [string appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Retry Count        : %ld\n", self->_retryCount];
  [string appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error              : %@\n", self->_error];
  [string appendString:v6];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Response           : %@\n", self->_response];
  [string appendString:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key Information    : %@\n", self->_keyInformation];
  [string appendString:v8];

  return string;
}

@end