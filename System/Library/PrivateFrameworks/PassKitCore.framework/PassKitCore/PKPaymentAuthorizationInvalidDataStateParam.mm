@interface PKPaymentAuthorizationInvalidDataStateParam
+ (id)paramWithDataType:(int64_t)type status:(int64_t)status error:(id)error clientErrors:(id)errors;
@end

@implementation PKPaymentAuthorizationInvalidDataStateParam

+ (id)paramWithDataType:(int64_t)type status:(int64_t)status error:(id)error clientErrors:(id)errors
{
  errorsCopy = errors;
  errorCopy = error;
  param = [self param];
  [param setDataType:type];
  [param setStatus:status];
  [param setError:errorCopy];

  [param setClientErrors:errorsCopy];

  return param;
}

@end