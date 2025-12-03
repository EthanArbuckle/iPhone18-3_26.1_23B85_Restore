@interface String:
- (uint64_t)Int;
- (uint64_t)SQLDataType;
- (uint64_t)Schema;
@end

@implementation String:

- (uint64_t)Int
{
  if (a3)
  {
  }

  return result;
}

- (uint64_t)Schema
{
  result = *self;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS14BiomeSQLParser6SchemaVGMd, &_sSDySS14BiomeSQLParser6SchemaVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

- (uint64_t)SQLDataType
{
  result = *self;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS14BiomeSQLParser11SQLDataTypeOGMd, &_sSDySS14BiomeSQLParser11SQLDataTypeOGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

@end