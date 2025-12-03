@interface MADVideoSessionSafetyRequest
- (MADVideoSessionSafetyRequest)init;
- (MADVideoSessionSafetyRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVideoSessionSafetyRequest

- (MADVideoSessionSafetyRequest)init
{
  v3.receiver = self;
  v3.super_class = MADVideoSessionSafetyRequest;
  result = [(MADVideoSessionRequest *)&v3 init];
  if (result)
  {
    result->_enableDetectionTypeN = 1;
  }

  return result;
}

- (MADVideoSessionSafetyRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MADVideoSessionSafetyRequest;
  v5 = [(MADVideoSessionRequest *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_enableDetectionTypeN = [coderCopy decodeBoolForKey:@"EnableDetectionTypeN"];
    v5->_enableDetectionTypeGV = [coderCopy decodeBoolForKey:@"EnableDetectionTypeGV"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = MADVideoSessionSafetyRequest;
  [(MADVideoSessionRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_enableDetectionTypeN forKey:@"EnableDetectionTypeN"];
  [coderCopy encodeBool:self->_enableDetectionTypeGV forKey:@"EnableDetectionTypeGV"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  if (self->_enableDetectionTypeN)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [string appendFormat:@"EnableDetectionTypeN: %@, ", v6];
  if (self->_enableDetectionTypeGV)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [string appendFormat:@"EnableDetectionTypeGV: %@, ", v7];
  requestID = [(MADVideoSessionRequest *)self requestID];
  [string appendFormat:@"RequestID: %@>", requestID];

  return string;
}

@end