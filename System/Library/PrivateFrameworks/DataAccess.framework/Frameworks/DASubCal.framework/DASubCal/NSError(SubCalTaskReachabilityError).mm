@interface NSError(SubCalTaskReachabilityError)
- (BOOL)isSubCalReachabilityError;
@end

@implementation NSError(SubCalTaskReachabilityError)

- (BOOL)isSubCalReachabilityError
{
  domain = [self domain];
  v3 = [domain isEqualToString:*MEMORY[0x277CCA738]];

  return v3 && (([self code] + 1009) & 0xFFFFFFFFFFFFFFFBLL) == 0;
}

@end