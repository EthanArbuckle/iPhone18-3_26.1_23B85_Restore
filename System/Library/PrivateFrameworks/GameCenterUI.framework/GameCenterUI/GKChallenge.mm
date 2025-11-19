@interface GKChallenge
@end

@implementation GKChallenge

void __61__GKChallenge_UI__loadImageWithSource_URLString_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v3 = [*(a1 + 32) defaultImage];
  }

  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  v6 = v3;

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __61__GKChallenge_UI__loadImageWithSource_URLString_withHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

@end