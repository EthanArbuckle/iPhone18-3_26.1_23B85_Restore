@interface CNAutocompleteResultsTableViewModel
@end

@implementation CNAutocompleteResultsTableViewModel

uint64_t __64___CNAutocompleteResultsTableViewModel_numberOfNonEmptySections__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

void __58___CNAutocompleteResultsTableViewModel_enumerateSections___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  (*(v6 + 16))(v6, [a2 unsignedIntegerValue], v7, a4);
}

@end