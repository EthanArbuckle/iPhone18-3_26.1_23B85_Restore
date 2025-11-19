@interface MADVideoSessionResult
- (MADVideoSessionResult)initWithCoder:(id)a3;
- (MADVideoSessionResult)initWithRequestID:(id)a3;
- (id)description;
@end

@implementation MADVideoSessionResult

- (MADVideoSessionResult)initWithRequestID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MADVideoSessionResult;
  v6 = [(MADVideoSessionResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestID, a3);
  }

  return v7;
}

- (MADVideoSessionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MADVideoSessionResult;
  v5 = [(MADVideoSessionResult *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RequestID"];
    requestID = v5->_requestID;
    v5->_requestID = v6;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"RequestID: %@>", self->_requestID];

  return v3;
}

@end