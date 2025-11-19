@interface String:
- (unint64_t)String;
- (void)String;
@end

@implementation String:

- (unint64_t)String
{
  result = OUTLINED_FUNCTION_8_1(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_37_0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

- (void)String
{
  if (!lazy cache variable for type metadata for [String : String])
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String : String]);
    }
  }
}

@end