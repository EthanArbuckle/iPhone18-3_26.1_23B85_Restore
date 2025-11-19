@interface String
- (uint64_t):(unint64_t *)a1;
@end

@implementation String

- (uint64_t):(unint64_t *)a1
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySSSaySiGGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

@end