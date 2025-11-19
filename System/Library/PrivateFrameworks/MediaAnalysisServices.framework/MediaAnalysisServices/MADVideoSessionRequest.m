@interface MADVideoSessionRequest
- (MADVideoSessionRequest)init;
- (MADVideoSessionRequest)initWithCoder:(id)a3;
- (id)description;
@end

@implementation MADVideoSessionRequest

- (MADVideoSessionRequest)init
{
  v7.receiver = self;
  v7.super_class = MADVideoSessionRequest;
  v2 = [(MADVideoSessionRequest *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    requestID = v2->_requestID;
    v2->_requestID = v4;
  }

  return v2;
}

- (MADVideoSessionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MADVideoSessionRequest;
  v5 = [(MADVideoSessionRequest *)&v9 init];
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