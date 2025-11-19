@interface LSClaimBindingConfiguration(IconServicesAdditions)
- (uint64_t)_LS_setAddClaimRecordIfMissing:()IconServicesAdditions;
@end

@implementation LSClaimBindingConfiguration(IconServicesAdditions)

- (uint64_t)_LS_setAddClaimRecordIfMissing:()IconServicesAdditions
{
  result = objc_opt_respondsToSelector();
  if (result)
  {

    return [a1 setAddClaimRecordIfMissing:a3];
  }

  return result;
}

@end