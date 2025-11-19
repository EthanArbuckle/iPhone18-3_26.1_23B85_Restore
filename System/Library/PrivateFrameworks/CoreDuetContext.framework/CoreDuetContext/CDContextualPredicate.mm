@interface CDContextualPredicate
@end

@implementation CDContextualPredicate

void __56___CDContextualPredicate_andPredicateWithSubpredicates___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 predicateForPreviousState];

  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __55___CDContextualPredicate_orPredicateWithSubpredicates___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 predicateForPreviousState];

  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end