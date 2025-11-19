@interface DAShareInitiatorResult
- (DAShareInitiatorResult)initWithCoder:(id)a3;
- (id)description;
- (id)initDataRequiredResultWithResponse:(id)a3;
- (id)initFailureResultWithResponse:(id)a3 error:(id)a4;
- (id)initInviteAcceptedResultWithResponse:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DAShareInitiatorResult

- (id)initInviteAcceptedResultWithResponse:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = DAShareInitiatorResult;
  v6 = [(DAShareInitiatorResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 0;
    objc_storeStrong(&v6->_response, a3);
    error = v7->_error;
    v7->_error = 0;
  }

  return v7;
}

- (id)initDataRequiredResultWithResponse:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = DAShareInitiatorResult;
  v6 = [(DAShareInitiatorResult *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 1;
    objc_storeStrong(&v6->_response, a3);
    error = v7->_error;
    v7->_error = 0;
  }

  return v7;
}

- (id)initFailureResultWithResponse:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = DAShareInitiatorResult;
  v9 = [(DAShareInitiatorResult *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_type = 2;
    objc_storeStrong(&v9->_response, a3);
    v11 = kmlErrorToDAError(v8);
    error = v10->_error;
    v10->_error = v11;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[DAShareInitiatorResult type](self forKey:{"type"), @"type"}];
  v5 = [(DAShareInitiatorResult *)self response];
  [v4 encodeObject:v5 forKey:@"response"];

  v6 = [(DAShareInitiatorResult *)self error];
  [v4 encodeObject:v6 forKey:@"error"];
}

- (DAShareInitiatorResult)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DAShareInitiatorResult;
  v5 = [(DAShareInitiatorResult *)&v11 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"response"];
    response = v5->_response;
    v5->_response = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v8;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Type        : %ld\n", self->_type];
  [v3 appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error       : %@\n", self->_error];
  [v3 appendString:v5];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Response    : %@\n", self->_response];
  [v3 appendString:v6];

  return v3;
}

@end