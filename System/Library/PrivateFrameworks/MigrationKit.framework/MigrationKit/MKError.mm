@interface MKError
- (MKError)initWithDomain:(id)domain code:(int64_t)code message:(id)message;
@end

@implementation MKError

- (MKError)initWithDomain:(id)domain code:(int64_t)code message:(id)message
{
  messageCopy = message;
  v12.receiver = self;
  v12.super_class = MKError;
  v9 = [(MKError *)&v12 initWithDomain:domain code:code userInfo:0];
  v10 = v9;
  if (v9)
  {
    [(MKError *)v9 setMessage:messageCopy];
  }

  return v10;
}

@end