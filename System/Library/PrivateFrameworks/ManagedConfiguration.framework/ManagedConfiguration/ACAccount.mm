@interface ACAccount
@end

@implementation ACAccount

uint64_t __66__ACAccount_UserEnrollment__unenrollAccountWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

@end