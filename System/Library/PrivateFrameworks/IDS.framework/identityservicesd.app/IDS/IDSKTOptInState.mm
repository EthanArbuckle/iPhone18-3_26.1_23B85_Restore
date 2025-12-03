@interface IDSKTOptInState
- (BOOL)isEqual:(id)equal;
- (IDSKTOptInState)initWithTimeStamp:(id)stamp status:(unint64_t)status error:(id)error;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSKTOptInState

- (IDSKTOptInState)initWithTimeStamp:(id)stamp status:(unint64_t)status error:(id)error
{
  stampCopy = stamp;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = IDSKTOptInState;
  v11 = [(IDSKTOptInState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timestamp, stamp);
    v12->_status = status;
    objc_storeStrong(&v12->_error, error);
  }

  return v12;
}

- (id)description
{
  v3 = objc_opt_class();
  timestamp = [(IDSKTOptInState *)self timestamp];
  status = [(IDSKTOptInState *)self status];
  error = [(IDSKTOptInState *)self error];
  v7 = [NSString stringWithFormat:@"<%@: %p { timestamp: %@, status: %ld@, error: %@ }>", v3, self, timestamp, status, error];

  return v7;
}

- (unint64_t)hash
{
  timestamp = [(IDSKTOptInState *)self timestamp];
  v4 = [timestamp hash];
  v5 = [(IDSKTOptInState *)self status]^ v4;
  error = [(IDSKTOptInState *)self error];
  v7 = [error hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    timestamp = [v5 timestamp];
    timestamp2 = [(IDSKTOptInState *)self timestamp];
    if ([timestamp isEqualToDate:timestamp2] && (v8 = objc_msgSend(v5, "status"), v8 == -[IDSKTOptInState status](self, "status")))
    {
      error = [v5 error];
      error2 = [(IDSKTOptInState *)self error];
      v11 = [error isEqual:error2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end