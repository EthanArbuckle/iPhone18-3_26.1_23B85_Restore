@interface String
- (uint64_t):(unint64_t *)self;
@end

@implementation String

- (uint64_t):(unint64_t *)self
{
  result = *self;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySSSaySiGGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

@end