@interface MKError
- (MKError)initWithDomain:(id)a3 code:(int64_t)a4 message:(id)a5;
@end

@implementation MKError

- (MKError)initWithDomain:(id)a3 code:(int64_t)a4 message:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = MKError;
  v9 = [(MKError *)&v12 initWithDomain:a3 code:a4 userInfo:0];
  v10 = v9;
  if (v9)
  {
    [(MKError *)v9 setMessage:v8];
  }

  return v10;
}

@end