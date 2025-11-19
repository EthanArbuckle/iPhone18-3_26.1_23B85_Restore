@interface GTDisplayResponse
- (GTDisplayResponse)initWithCoder:(id)a3;
- (GTDisplayResponse)initWithID:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTDisplayResponse

- (GTDisplayResponse)initWithID:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = GTDisplayResponse;
  v4 = [(GTDisplayResponse *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_requestID = a3;
    v6 = v4;
  }

  return v5;
}

- (GTDisplayResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = GTDisplayResponse;
  v5 = [(GTDisplayResponse *)&v10 init];
  if (v5)
  {
    v5->_requestID = [v4 decodeInt64ForKey:@"requestID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  requestID = self->_requestID;
  v5 = a3;
  [v5 encodeInt64:requestID forKey:@"requestID"];
  [v5 encodeObject:self->_error forKey:@"error"];
}

@end