@interface MADVideoSessionSafetyRequest
- (MADVideoSessionSafetyRequest)init;
- (MADVideoSessionSafetyRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (MADVideoSessionSafetyRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MADVideoSessionSafetyRequest;
  v5 = [(MADVideoSessionRequest *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_enableDetectionTypeN = [v4 decodeBoolForKey:@"EnableDetectionTypeN"];
    v5->_enableDetectionTypeGV = [v4 decodeBoolForKey:@"EnableDetectionTypeGV"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MADVideoSessionSafetyRequest;
  [(MADVideoSessionRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_enableDetectionTypeN forKey:@"EnableDetectionTypeN"];
  [v4 encodeBool:self->_enableDetectionTypeGV forKey:@"EnableDetectionTypeGV"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  if (self->_enableDetectionTypeN)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"EnableDetectionTypeN: %@, ", v6];
  if (self->_enableDetectionTypeGV)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"EnableDetectionTypeGV: %@, ", v7];
  v8 = [(MADVideoSessionRequest *)self requestID];
  [v3 appendFormat:@"RequestID: %@>", v8];

  return v3;
}

@end