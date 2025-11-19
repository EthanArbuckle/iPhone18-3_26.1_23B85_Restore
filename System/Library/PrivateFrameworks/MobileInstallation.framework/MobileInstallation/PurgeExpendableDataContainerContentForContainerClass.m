@interface PurgeExpendableDataContainerContentForContainerClass
@end

@implementation PurgeExpendableDataContainerContentForContainerClass

uint64_t ___PurgeExpendableDataContainerContentForContainerClass_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [[MICandidateContainer alloc] initWithContainerURL:v9 identifier:v8 metadata:v7];

  [*(a1 + 32) addObject:v10];
  return 1;
}

uint64_t ___PurgeExpendableDataContainerContentForContainerClass_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

@end