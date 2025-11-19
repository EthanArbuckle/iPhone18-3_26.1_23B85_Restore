@interface NSPredicate(WFPhotoLibraryFilteringPredicate)
- (id)wf_photoLibraryFilteringPredicate;
@end

@implementation NSPredicate(WFPhotoLibraryFilteringPredicate)

- (id)wf_photoLibraryFilteringPredicate
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277CCA920];
    v3 = a1;
    v4 = [v2 alloc];
    v5 = [v3 compoundPredicateType];
    v6 = [v3 subpredicates];

    v7 = [v6 if_map:&__block_literal_global_243];
    v8 = [v4 initWithType:v5 subpredicates:v7];
  }

  else
  {
    v8 = a1;
  }

  return v8;
}

@end