@interface NSError
@end

@implementation NSError

uint64_t __39__NSError_HMB__hmbIsCKZoneDeletedError__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 _hmbIsCKErrorWithCode:26] & 1) != 0 || (objc_msgSend(v2, "_hmbIsCKErrorWithCode:", 28))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 _hmbHasCKUnderlyingErrorWithCode:2036];
  }

  return v3;
}

@end