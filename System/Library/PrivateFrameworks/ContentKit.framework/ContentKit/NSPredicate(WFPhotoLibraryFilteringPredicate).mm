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
    selfCopy = self;
    v4 = [v2 alloc];
    compoundPredicateType = [selfCopy compoundPredicateType];
    subpredicates = [selfCopy subpredicates];

    v7 = [subpredicates if_map:&__block_literal_global_243];
    selfCopy2 = [v4 initWithType:compoundPredicateType subpredicates:v7];
  }

  else
  {
    selfCopy2 = self;
  }

  return selfCopy2;
}

@end