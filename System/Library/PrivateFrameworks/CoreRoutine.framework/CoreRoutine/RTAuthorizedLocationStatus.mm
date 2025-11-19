@interface RTAuthorizedLocationStatus
- (BOOL)isEqual:(id)a3;
- (RTAuthorizedLocationStatus)initWithCoder:(id)a3;
- (RTAuthorizedLocationStatus)initWithStatus:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation RTAuthorizedLocationStatus

- (RTAuthorizedLocationStatus)initWithStatus:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTAuthorizedLocationStatus;
  result = [(RTAuthorizedLocationStatus *)&v5 init];
  if (result)
  {
    result->_eStatus = a3;
  }

  return result;
}

- (RTAuthorizedLocationStatus)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"RTAuthorizedLocationStatus"];

  return [(RTAuthorizedLocationStatus *)self initWithStatus:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  eStatus = self->_eStatus;

  return [v4 initWithStatus:eStatus];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    eStatus = self->_eStatus;
    v7 = eStatus == [v4 eStatus];
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