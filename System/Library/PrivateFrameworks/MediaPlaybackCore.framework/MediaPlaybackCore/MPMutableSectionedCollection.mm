@interface MPMutableSectionedCollection
@end

@implementation MPMutableSectionedCollection

void __81__MPMutableSectionedCollection_MPCAccumulatorAdditions__mpc_indexPathForElement___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(a1 + 32) == a2)
  {
    v6 = [MEMORY[0x1E696AC88] indexPathWithIndex:?];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    *a4 = 1;
  }
}

void __81__MPMutableSectionedCollection_MPCAccumulatorAdditions__mpc_indexPathForElement___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if (*(a1 + 32) == a2)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v8 = v9;
    *a4 = 1;
  }
}

@end