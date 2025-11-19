@interface NSError
@end

@implementation NSError

uint64_t __71__NSError_HealthRecordsServices___hrs_accumulatedErrorsForUserInfoKey___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __89__NSError_HealthRecordsServices__hrs_userInfoValueForKey_prefixedWith_redactIfNecessary___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %@", a2, a3];
  [v3 addObject:v4];
}

@end