@interface MBException
- (id)error;
- (int)errorCode;
@end

@implementation MBException

- (int)errorCode
{
  userInfo = [(MBException *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"MBErrorCode"];
  intValue = [v3 intValue];

  return intValue;
}

- (id)error
{
  errorCode = [(MBException *)self errorCode];
  reason = [(MBException *)self reason];
  v5 = [MBError errorWithCode:errorCode format:@"%@", reason];

  return v5;
}

@end