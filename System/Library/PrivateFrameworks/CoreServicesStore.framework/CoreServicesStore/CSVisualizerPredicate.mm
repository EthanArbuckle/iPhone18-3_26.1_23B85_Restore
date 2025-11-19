@interface CSVisualizerPredicate
@end

@implementation CSVisualizerPredicate

void __80___CSVisualizerPredicate_getRanges_inDescription_options_limit_searchedInRange___block_invoke()
{
  v0 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$HAYSTACK LIKE[cd] $NEEDLE"];
  v1 = [_CSVisualizerPredicate getRanges:inDescription:options:limit:searchedInRange:]::likePredicate;
  [_CSVisualizerPredicate getRanges:inDescription:options:limit:searchedInRange:]::likePredicate = v0;

  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$HAYSTACK MATCHES[cd] $NEEDLE"];
  v3 = [_CSVisualizerPredicate getRanges:inDescription:options:limit:searchedInRange:]::matchesPredicate;
  [_CSVisualizerPredicate getRanges:inDescription:options:limit:searchedInRange:]::matchesPredicate = v2;
}

@end