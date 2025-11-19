@interface MKFModel
@end

@implementation MKFModel

void __21___MKFModel_willSave__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end