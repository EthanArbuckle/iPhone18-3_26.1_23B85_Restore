@interface WFContentLibraryFiltering
+ (void)getItemsMatchingQuery:(id)query withInput:(id)input compoundPredicate:(id)predicate resultHandler:(id)handler;
+ (void)getItemsMatchingQuery:(id)query withInput:(id)input resultHandler:(id)handler;
+ (void)performFallbackFilteringWithItems:(id)items withContentPredicates:(id)predicates compoundPredicateType:(unint64_t)type originalQuery:(id)query resultHandler:(id)handler;
@end

@implementation WFContentLibraryFiltering

+ (void)getItemsMatchingQuery:(id)query withInput:(id)input resultHandler:(id)handler
{
  v14[1] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  inputCopy = input;
  handlerCopy = handler;
  predicate = [queryCopy predicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = predicate;
  }

  else
  {
    v14[0] = predicate;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v12 = [WFContentCompoundPredicate andPredicateWithSubpredicates:v13];
  }

  [self getItemsMatchingQuery:queryCopy withInput:inputCopy compoundPredicate:v12 resultHandler:handlerCopy];
}

+ (void)getItemsMatchingQuery:(id)query withInput:(id)input compoundPredicate:(id)predicate resultHandler:(id)handler
{
  queryCopy = query;
  inputCopy = input;
  handlerCopy = handler;
  predicateCopy = predicate;
  subpredicates = [predicateCopy subpredicates];
  compoundPredicateType = [predicateCopy compoundPredicateType];

  if ([subpredicates count] == 1 && (compoundPredicateType - 1) <= 1 && (objc_msgSend(subpredicates, "firstObject"), v15 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v15, (isKindOfClass & 1) != 0))
  {
    firstObject = [subpredicates firstObject];
    [self getItemsMatchingQuery:queryCopy withInput:inputCopy compoundPredicate:firstObject resultHandler:handlerCopy];
  }

  else
  {
    [self performCustomFilteringUsingContentPredicates:subpredicates compoundPredicateType:compoundPredicateType forQuery:queryCopy withInput:inputCopy resultHandler:handlerCopy];
  }
}

+ (void)performFallbackFilteringWithItems:(id)items withContentPredicates:(id)predicates compoundPredicateType:(unint64_t)type originalQuery:(id)query resultHandler:(id)handler
{
  itemsCopy = items;
  predicatesCopy = predicates;
  queryCopy = query;
  handlerCopy = handler;
  if ([predicatesCopy count])
  {
    v14 = [[WFContentCompoundPredicate alloc] initWithType:type subpredicates:predicatesCopy];
  }

  else
  {
    v14 = 0;
  }

  v15 = [[WFContentQuery alloc] initWithPredicate:v14];
  if (queryCopy)
  {
    sortDescriptors = [queryCopy sortDescriptors];
    [(WFContentQuery *)v15 setSortDescriptors:sortDescriptors];

    slice = [queryCopy slice];
    [(WFContentQuery *)v15 setSlice:slice, v18];
    userInfo = [queryCopy userInfo];
    [(WFContentQuery *)v15 setUserInfo:userInfo];
  }

  [(WFContentQuery *)v15 runWithObjects:itemsCopy completionHandler:handlerCopy];
}

@end