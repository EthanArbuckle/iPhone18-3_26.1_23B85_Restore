@interface IDSKTOptInState
- (BOOL)isEqual:(id)a3;
- (IDSKTOptInState)initWithTimeStamp:(id)a3 status:(unint64_t)a4 error:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSKTOptInState

- (IDSKTOptInState)initWithTimeStamp:(id)a3 status:(unint64_t)a4 error:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = IDSKTOptInState;
  v11 = [(IDSKTOptInState *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_timestamp, a3);
    v12->_status = a4;
    objc_storeStrong(&v12->_error, a5);
  }

  return v12;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSKTOptInState *)self timestamp];
  v5 = [(IDSKTOptInState *)self status];
  v6 = [(IDSKTOptInState *)self error];
  v7 = [NSString stringWithFormat:@"<%@: %p { timestamp: %@, status: %ld@, error: %@ }>", v3, self, v4, v5, v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(IDSKTOptInState *)self timestamp];
  v4 = [v3 hash];
  v5 = [(IDSKTOptInState *)self status]^ v4;
  v6 = [(IDSKTOptInState *)self error];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 timestamp];
    v7 = [(IDSKTOptInState *)self timestamp];
    if ([v6 isEqualToDate:v7] && (v8 = objc_msgSend(v5, "status"), v8 == -[IDSKTOptInState status](self, "status")))
    {
      v9 = [v5 error];
      v10 = [(IDSKTOptInState *)self error];
      v11 = [v9 isEqual:v10];
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