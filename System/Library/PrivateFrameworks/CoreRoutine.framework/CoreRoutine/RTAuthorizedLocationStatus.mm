@interface RTAuthorizedLocationStatus
- (BOOL)isEqual:(id)equal;
- (RTAuthorizedLocationStatus)initWithCoder:(id)coder;
- (RTAuthorizedLocationStatus)initWithStatus:(int64_t)status;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation RTAuthorizedLocationStatus

- (RTAuthorizedLocationStatus)initWithStatus:(int64_t)status
{
  v5.receiver = self;
  v5.super_class = RTAuthorizedLocationStatus;
  result = [(RTAuthorizedLocationStatus *)&v5 init];
  if (result)
  {
    result->_eStatus = status;
  }

  return result;
}

- (RTAuthorizedLocationStatus)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"RTAuthorizedLocationStatus"];

  return [(RTAuthorizedLocationStatus *)self initWithStatus:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  eStatus = self->_eStatus;

  return [v4 initWithStatus:eStatus];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    eStatus = self->_eStatus;
    v7 = eStatus == [equalCopy eStatus];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  eStatus = self->_eStatus;
  if (eStatus > 3)
  {
    v5 = @"Invalid.";
  }

  else
  {
    v5 = off_1E80B4D70[eStatus];
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"status, %ld, statusString, %@", eStatus, v5, v2, v3];
}

@end