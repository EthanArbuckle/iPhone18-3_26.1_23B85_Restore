@interface GTDisplayResponse
- (GTDisplayResponse)initWithCoder:(id)coder;
- (GTDisplayResponse)initWithID:(unint64_t)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTDisplayResponse

- (GTDisplayResponse)initWithID:(unint64_t)d
{
  v8.receiver = self;
  v8.super_class = GTDisplayResponse;
  v4 = [(GTDisplayResponse *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_requestID = d;
    v6 = v4;
  }

  return v5;
}

- (GTDisplayResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = GTDisplayResponse;
  v5 = [(GTDisplayResponse *)&v10 init];
  if (v5)
  {
    v5->_requestID = [coderCopy decodeInt64ForKey:@"requestID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  requestID = self->_requestID;
  coderCopy = coder;
  [coderCopy encodeInt64:requestID forKey:@"requestID"];
  [coderCopy encodeObject:self->_error forKey:@"error"];
}

@end