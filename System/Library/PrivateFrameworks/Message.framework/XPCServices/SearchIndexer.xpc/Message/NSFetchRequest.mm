@interface NSFetchRequest
- (void)appendPredicate:(id)predicate;
@end

@implementation NSFetchRequest

- (void)appendPredicate:(id)predicate
{
  predicateCopy = predicate;
  selfCopy = self;
  sub_10031E42C(predicateCopy);
}

@end