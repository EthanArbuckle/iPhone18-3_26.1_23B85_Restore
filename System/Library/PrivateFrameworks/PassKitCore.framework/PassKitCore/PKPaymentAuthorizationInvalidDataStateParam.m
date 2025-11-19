@interface PKPaymentAuthorizationInvalidDataStateParam
+ (id)paramWithDataType:(int64_t)a3 status:(int64_t)a4 error:(id)a5 clientErrors:(id)a6;
@end

@implementation PKPaymentAuthorizationInvalidDataStateParam

+ (id)paramWithDataType:(int64_t)a3 status:(int64_t)a4 error:(id)a5 clientErrors:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = [a1 param];
  [v12 setDataType:a3];
  [v12 setStatus:a4];
  [v12 setError:v11];

  [v12 setClientErrors:v10];

  return v12;
}

@end