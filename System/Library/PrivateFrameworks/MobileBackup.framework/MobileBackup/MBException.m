@interface MBException
- (id)error;
- (int)errorCode;
@end

@implementation MBException

- (int)errorCode
{
  v2 = [(MBException *)self userInfo];
  v3 = [v2 objectForKeyedSubscript:@"MBErrorCode"];
  v4 = [v3 intValue];

  return v4;
}

- (id)error
{
  v3 = [(MBException *)self errorCode];
  v4 = [(MBException *)self reason];
  v5 = [MBError errorWithCode:v3 format:@"%@", v4];

  return v5;
}

@end