@interface MADVideoSessionRequest
- (MADVideoSessionRequest)init;
- (MADVideoSessionRequest)initWithCoder:(id)coder;
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    requestID = v2->_requestID;
    v2->_requestID = uUIDString;
  }

  return v2;
}

- (MADVideoSessionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MADVideoSessionRequest;
  v5 = [(MADVideoSessionRequest *)&v9 init];
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