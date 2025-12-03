@interface DAShareInitiatorResult
- (DAShareInitiatorResult)initWithCoder:(id)coder;
- (id)description;
- (id)initDataRequiredResultWithResponse:(id)response;
- (id)initFailureResultWithResponse:(id)response error:(id)error;
- (id)initInviteAcceptedResultWithResponse:(id)response;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAShareInitiatorResult

- (id)initInviteAcceptedResultWithResponse:(id)response
{
  responseCopy = response;
  v10.receiver = self;
  v10.super_class = DAShareInitiatorResult;
  v6 = [(DAShareInitiatorResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 0;
    objc_storeStrong(&v6->_response, response);
    error = v7->_error;
    v7->_error = 0;
  }

  return v7;
}

- (id)initDataRequiredResultWithResponse:(id)response
{
  responseCopy = response;
  v10.receiver = self;
  v10.super_class = DAShareInitiatorResult;
  v6 = [(DAShareInitiatorResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_response, response);
    error = v7->_error;
    v7->_error = 0;
  }

  return v7;
}

- (id)initFailureResultWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = DAShareInitiatorResult;
  v9 = [(DAShareInitiatorResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 2;
    objc_storeStrong(&v9->_response, response);
    v11 = kmlErrorToDAError(errorCopy);
    error = v10->_error;
    v10->_error = v11;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[DAShareInitiatorResult type](self forKey:{"type"), @"type"}];
  response = [(DAShareInitiatorResult *)self response];
  [coderCopy encodeObject:response forKey:@"response"];

  error = [(DAShareInitiatorResult *)self error];
  [coderCopy encodeObject:error forKey:@"error"];
}

- (DAShareInitiatorResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DAShareInitiatorResult;
  v5 = [(DAShareInitiatorResult *)&v11 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"response"];
    response = v5->_response;
    v5->_response = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v8;
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Type        : %ld\n", self->_type];
  [string appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error       : %@\n", self->_error];
  [string appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Response    : %@\n", self->_response];
  [string appendString:v6];

  return string;
}

@end