@interface OffloadApps
@end

@implementation OffloadApps

uint64_t ___OffloadApps_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [(MICandidateContainer *)[MICandidateAppContainer alloc] initWithContainerURL:v9 identifier:v8 metadata:v7];

  if ([(MICandidateContainer *)v10 isAppleApp])
  {
    v11 = 32;
LABEL_5:
    [*(a1 + v11) addObject:v10];
    goto LABEL_6;
  }

  if (*(a1 + 48))
  {
    v11 = 40;
    goto LABEL_5;
  }

LABEL_6:

  return 1;
}

uint64_t ___OffloadApps_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 estimatedSize];
  v6 = [v4 estimatedSize];

  v7 = -1;
  if (v5 <= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

@end