@interface NSError(SubCalTaskReachabilityError)
- (BOOL)isSubCalReachabilityError;
@end

@implementation NSError(SubCalTaskReachabilityError)

- (BOOL)isSubCalReachabilityError
{
  v2 = [a1 domain];
  v3 = [v2 isEqualToString:*MEMORY[0x277CCA738]];

  return v3 && (([a1 code] + 1009) & 0xFFFFFFFFFFFFFFFBLL) == 0;
}

@end