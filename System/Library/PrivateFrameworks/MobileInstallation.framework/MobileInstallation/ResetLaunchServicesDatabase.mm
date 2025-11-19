@interface ResetLaunchServicesDatabase
@end

@implementation ResetLaunchServicesDatabase

uint64_t ___ResetLaunchServicesDatabase_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 isEqualToString:@"com.apple.lsd"];
  if (v10)
  {
    v11 = [[MICandidateContainer alloc] initWithContainerURL:v7 identifier:v8 metadata:v9];
    [*(a1 + 32) addObject:v11];
  }

  return v10 ^ 1u;
}

@end