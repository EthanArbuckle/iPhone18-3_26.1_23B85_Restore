@interface MRCreateSectionsForRequest
@end

@implementation MRCreateSectionsForRequest

void ___onQueue_MRCreateSectionsForRequest_block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) block];
  v2 = (*(v6 + 2))(v6, 0, *(a1 + 40));
  if (v2)
  {
    v3 = _onClientQueue_MRCreateSectionsForRequest(*(a1 + 48), v6, *(a1 + 56), *(a1 + 40));
    v4 = *(*(a1 + 64) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

@end