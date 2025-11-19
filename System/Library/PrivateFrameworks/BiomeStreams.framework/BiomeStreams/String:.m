@interface String:
- (uint64_t)SQLDataType;
- (uint64_t)Schema;
- (void)SQLDataType;
@end

@implementation String:

- (void)SQLDataType
{
  if (!lazy cache variable for type metadata for [String : SQLDataType])
  {
    type metadata accessor for SQLDataType();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String : SQLDataType]);
    }
  }
}

- (uint64_t)Schema
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS14BiomeSQLParser6SchemaVGMd, &_sSDySS14BiomeSQLParser6SchemaVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

- (uint64_t)SQLDataType
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySS14BiomeSQLParser11SQLDataTypeOGMd, &_sSDySS14BiomeSQLParser11SQLDataTypeOGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

@end