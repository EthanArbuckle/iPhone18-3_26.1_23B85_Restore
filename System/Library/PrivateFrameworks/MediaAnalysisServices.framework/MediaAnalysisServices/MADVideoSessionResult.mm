@interface MADVideoSessionResult
- (MADVideoSessionResult)initWithCoder:(id)coder;
- (MADVideoSessionResult)initWithRequestID:(id)d;
- (id)description;
@end

@implementation MADVideoSessionResult

- (MADVideoSessionResult)initWithRequestID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = MADVideoSessionResult;
  v6 = [(MADVideoSessionResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestID, d);
  }

  return v7;
}

- (MADVideoSessionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MADVideoSessionResult;
  v5 = [(MADVideoSessionResult *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RequestID"];
    requestID = v5->_requestID;
    v5->_requestID = v6;
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"RequestID: %@>", self->_requestID];

  return string;
}

@end