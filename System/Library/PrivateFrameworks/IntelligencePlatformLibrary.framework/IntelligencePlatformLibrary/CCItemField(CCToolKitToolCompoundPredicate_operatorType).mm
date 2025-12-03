@interface CCItemField(CCToolKitToolCompoundPredicate_operatorType)
- (uint64_t)toolKitToolCompoundPredicateOperatorType;
@end

@implementation CCItemField(CCToolKitToolCompoundPredicate_operatorType)

- (uint64_t)toolKitToolCompoundPredicateOperatorType
{
  LODWORD(result) = [self uint32Value];
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

@end